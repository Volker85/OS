#include "os_firstinc.h"
#include "os_common.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_task_queue.h"
#include "os_stack.h"

/*
1. running     --(terminate)--> suspend
2. running     --(preempt  )--> ready
3. suspend     --(activate )--> ready
4. ready       --(start    )--> running
5. unspecified --(create   )--> suspend
*/

Local void OS_STARTTASK(task_t* task);
Local void TASK_0(void* task_ptr);
Local void TASK_1(void* task_ptr);
Local void TASK_2(void* task_ptr);
Local task_t* OS_TaskScheduler();

Local unsigned_char_t   TASK_STACK[MAX_RUN_QUEUE_SIZE][TASK_STACK_SIZE];
Local scheduler_time_t LAST_CURRENT_TIME = 0;


void OS_ACTIVATE_DISPATCHER(void)
{

   /* configure the TCMP */
   /*
   Dispatcher function for Core 0:
    -> ISR_TASK_DISPATCH_C0
   Write Adresse into the config register (interrupts are requested by SWI/SVC???)
   */
   #define SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)
   #define SYSTICK_RLD_VAL_REG   ((uint32*)0xE000E014)
   #define SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)
   #define SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)
   #define SYSTICK_STAT_REG_ENABLE  ((uint32)0x00000001)
   #define LOOPTIME_IN_USEC ((uint32)10000u)
   /*
   CLOCK = HCLK / 8
   vermutlich: CLOCK = 150Mhz / 8 = 18,75 Mhz
   */
   #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   *SYSTICK_RLD_VAL_REG = *SYSTICK_RLD_VAL_REG | (((uint32)MCU_CLOCK_IN_HZ * LOOPTIME_IN_USEC) / ((uint32)1000000));
   *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
   *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
   #endif
}


void OS_SLEEPTASK(task_t* task, task_time_t millisec)
{
   task->WaitActUntil = Get_current_time() + millisec;
}

unsigned_char_t task_state_request(void* temp_task, task_state_t requested_state)
{
   unsigned_char_t RequestState = Rejected;

   task_t* task = (task_t*) temp_task;

   switch(requested_state)
   {
   case Task_unspecified:/* 1. create new task */
   {
      switch(task->task_state)
      {
      case Task_ready:
      case Task_running:
      case Task_suspended:
      {
         RequestState = Rejected;
         break;
      }
      default:
      {
         task->task_state = Task_unspecified;
         RequestState = Accepted;
         break;
      }
      }
      break;
   }
   case Task_suspended:
   {
      switch(task->task_state)
      {
      case Task_unspecified: /* 2. create task transition */
      {
         /* no checks */
         task->task_state = Task_suspended;
         RequestState = Accepted;
         break;
      }
      case Task_running: /* 3. terminate task */
      {
         task->task_state = Task_suspended;
         RequestState = Accepted;
         break;
      }
      default:
      {
         /* no change in states allowed */
         break;
      }
      }
      break;
   }
   case Task_running:
   {
      switch(task->task_state)
      {
      case Task_ready: /* 4. start task transition */
      {
         task->task_state = Task_running;
         RequestState   = Accepted;
         break;
      }
      default:
      {
         /* no change in states allowed */
         break;
      }
      }
      break;

   }
   case Task_ready:
   {
      switch(task->task_state)
      {
      case Task_suspended: /* activate task transition */
      {
         task->task_state = Task_ready;
         RequestState   = Accepted;
         break;
      }
      case Task_running: /* preempt task transition */
      {
         task->task_state = Task_ready;
         RequestState   = Accepted;
         break;
      }
      default:
      {
         /* no change in states allowed */
         break;
      }
      }
      break;
   }
   default:
   {
      break;
   }
   }
   if(RequestState == Rejected)
   {
      OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_TaskStateRequest);
   }
   return RequestState;
}
void OS_ActivateTask(task_t* task)
{
   /*
   Activate Task:
   - Disable Interrupts
   - Add to schedule Queue
   - Enable Interrupts

   in case of valid request, the content, where the "task_t* task" is point to is stored in TASK_RUN_QUEUE
   */
   if(task != 0)
   {
      if((task->IdleTask != False)||(task->state_request(task, Task_ready)==Accepted))
      {
         DisableInterrupts();
         /* 3. suspended to ready (add to runqueue) */
         if(task->IdleTask == False)
         {
            if( (task->active == False)
                  || ( (task->active == True) && (task->NrOfInsAllowed > task->NrOfInsActivated) )
              )
            {
               /* only activate if allowed by rule */
               task = AddToTaskQueue(task);

               AddToLinkList(task);
               UpdateLinkList();
               task->NrOfInsActivated++;
            }
            else
            {
               /* multiple activation bug occured */
            }
         }
         else
         {
            AddToIdleTaskQueue(task);
         }
         EnableInterrupts();
      }
      else
      {
         OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_ActivateTask);
      }
   }
}
Local void OS_STARTTASK(task_t* task)
{
   /* OS_STARTTASK
   - Disable interrupts
   - restore Environment
   - enable interrupts

   - Start Task
    */
   if(task != 0 && ((task->task_queued != False)||(task->IdleTask != False)))
   {
      if(task->state_request !=0)
      {
         if(task->state_request(task, Task_running)== Accepted)
         {
            DisableInterrupts();
            task->active =  True;
            task->wait_time = 0;
            task->current_prio = task->default_prio;
            OS_TASK_SAVE_SYSTEM_STACK(&OS_STACK[GET_CORE_ID()][0]);
            OS_TASK_RESTORETASK_ENVIRONMENT(task);
            task->start_time = Get_current_time();
            EnableInterrupts();

            /* task execution shall not happen with disabled interrupts */
            SET_RUNNING_TASK(task);
            /* change to user mode... */
            if(task->task_kernel_mode == False)
            {
               LLF_CHANGE_TO_USER_MODE();
            }            
  
            /* call the task entry function */  
            task->fp(task);
         }
         else
         {
            OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_StartTask);
         }

      }
      else
      {
         OS_SET_SW_BUG(os_bug_null_pointer, Func_StartTask);
      }
   }
   /* allowed in case of empty QUEUE elements (queue elements which have no activate_task yet received
   else
   {
       OS_SET_SW_BUG(os_bug_null_pointer, Func_StartTask);
   }
   */
}
void OS_TERMINATE_TASK(task_t* task)
{
   /* Preempt task
   - Disable Interrupts
   - os_TASK_SAVETASK_ENVIRONMENT
   - add to Schedule Queue / delete from RunQueue
   - delete active flag
   - enable Interrupts
   */
   if(task != 0)
   {
      if(task->state_request != 0)
      {
         if((task->IdleTask != False)||(task->state_request(task, Task_ready)== Accepted))
         {
            DisableInterrupts();
            OS_TASK_SAVETASK_ENVIRONMENT(task);
            OS_TASK_RESTORE_SYSTEM_STACK(&OS_STACK[GET_CORE_ID()][0]);

            task->active = False;
            /* reset the prio increase for waiting */
            task->current_prio = task->default_prio;
            EnableInterrupts();
         }
         else
         {
            OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_TerminateTask);
         }
      }
      else
      {
         OS_SET_SW_BUG(os_bug_null_pointer, Func_TerminateTask);
      }

   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer, Func_TerminateTask);
   }
}
void OS_TASK_DISPATCHER(void)
{
   /* called in an certain core context (Core_0/1/2/3)*/


   /*
   1. running     --(terminate)--> suspend
   2. running     --(preempt  )--> ready
   3. suspend     --(activate )--> ready
   4. ready       --(start    )--> running
   5. unspecified --(create   )--> suspend
   */
   task_t* task = 0;
   /* get running task */
   task = GetRunningTask(); /* bug: at first call of TaskSheduler*//* might reply tasks in state ready->wrong*/

   /* Preempt Task */
   if(task!=0)
   {
      OS_TERMINATE_TASK(task);   
   }   
   

   /* ask for the next task to be activated... */
   task = OS_TaskScheduler();

   OS_STARTTASK(task);
}
Local void TASK_0(void* task_ptr)
{
   ReferenceUnusedParameter(task_ptr);
   HaltMcu();/* HLT will be ended by timer interrupt, what shall be done with the rest of the function... ??*/
}
Local void TASK_1(void* task_ptr)
{
   ReferenceUnusedParameter(task_ptr);
   /* worker task */

   /* do some things */
   /*while(1) {}*/
   OS_SLEEPTASK((task_t*)task_ptr, 100000000);

   /* end */
}
Local void TASK_2(void* task_ptr)
{
   ReferenceUnusedParameter(task_ptr);
   /* worker task */

   /* do some things */
   /*while(1) {}*/

   /* end */
}
Local void TASK_3(void* task_ptr)
{
   ReferenceUnusedParameter(task_ptr);
   /* worker task */

   /* do some things */
   /*while(1) {}*/

   /* end */
}
void OS_INIT_TASKS(void)
{
   Local task_t task_0, task_1, task_2, task_3;
   Local task_group_t TASK_GROUP_1;
   Local task_group_t TASK_GROUP_2;
   Local task_group_t TASK_GROUP_3;
   Local task_group_t TASK_GROUP_4;
   Local task_group_t TASK_GROUP_5;
   task_t* task_ptr = 0;
   LAST_CURRENT_TIME = Get_current_time();

   ReferenceUnusedParameter (TASK_GROUP_1);
   ReferenceUnusedParameter (TASK_GROUP_2);
   ReferenceUnusedParameter (TASK_GROUP_3);
   ReferenceUnusedParameter (TASK_GROUP_4);
   ReferenceUnusedParameter (TASK_GROUP_5);

    /*
   set task_state for all tasks to Task_unspecified
    */
   OS_INIT_TASK_QUEUE();

   /* setup idle task */
   task_ptr = &task_0;
   OS_INIT_TASK(task_ptr,                          /* task */
                &TASK_0,                           /* Task Function*/
                1,                                 /* Nr of allowed instances*/
                True,                              /* Idle Task */
                &TASK_GROUP_1,                     /* Task Group */
                (unsigned_char_t*)&TASK_STACK[0],  /* Task_stack */
                200,                                /* Stack Size */
                True                                /* Kernel Mode */
               );
   OS_SaveTaskPtr(task_ptr, Task_0_ptr);

   /*set the idle-task as first running task, otherwise preempt might fail */
   SET_RUNNING_TASK(task_ptr);

   /* setup worker task */
   task_ptr = &task_1;
   OS_INIT_TASK(task_ptr,      /* task */
                &TASK_1,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_1, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[1],/* Task_stack */
                200,            /* Stack Size */
                False           /* Kernel Mode */
               );
   OS_SaveTaskPtr(task_ptr, Task_1_ptr);

   /* setup worker task */
   task_ptr = &task_2;
   OS_INIT_TASK(task_ptr,      /* task */
                &TASK_2,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_2, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[2],/* Task_stack */
                200,            /* Stack Size */
                False           /* Kernel Mode */
               );
   OS_SaveTaskPtr(task_ptr, Task_2_ptr);

   /* setup worker task */
   task_ptr = &task_3;
   OS_INIT_TASK(task_ptr,      /* task */
                &TASK_3,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_3, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[3],/* Task_stack */
                200,           /* Stack Size */
                True                                /* Kernel Mode */
               );
   OS_SaveTaskPtr(task_ptr, Task_3_ptr);   
}


Local task_t* OS_TaskScheduler(void)
{
   Local task_t* task = 0;
   Local unsigned_char_t Winner_prio = 0;
   task_t*         Winner_task = 0;
   Local link_list_t*    link_list_member;
   unsigned_char_t       element_nr;

   scheduler_time_t delta_time = Get_current_time() - LAST_CURRENT_TIME;
   LAST_CURRENT_TIME = Get_current_time();

   /*
   x const for single task: task->default_prio // low = 0,.....high=100
   x var   for single task: task->current_prio // see prio_std
   x var   for single task: task->wait_time    //
   x var   for single task: task->exe_time
   x const for single task: task->TimeToPrioInc
   x const for single task: task->max_allowed_wait_time
   x const for single task: task->min_allowed_wait_time
   x const for single task: task->overwaittime_per_prio_inc_step //e.g. 100*MinTimeSlice_us
   x const for single task: task->task_group  //to allow processor access control by groups (e.g. user1, user2, user3)
   x const for single task: task->WaitActUntil
   (task_group is designed to allow proccessor access control between e.g. Customer Software Task and ASIL D Brake Task
   */
   For_all_tasks_in_queue(element_nr)
   {
      link_list_member = GetFromLinkList(element_nr);
      /*task will have a pointer on the task_obj, and might be equal to "(task_t*) 0" */
      task             = GetFromTaskQueue(link_list_member);
      /* increase prio: high numbers->high prio */
      if((task != 0)&&(task->task_queued != False))
      {
         if(task->wait_time >= task->TimeToPrioInc)
         {
            task->current_prio = task->current_prio + task->overwaittime_per_prio_inc_step;
         }
         /* in case wait condition not yet fulfilled, set prio to 0 */
         if(task->WaitActUntil > Get_current_time())
         {
            task->current_prio = 0;
         }
         if(task->wait_time > task->max_allowed_wait_time)
         {
            /* set bug */
            OS_SET_SW_BUG(os_bug_task_max_wait_time_reached, Func_TaskScheduler);
         }
         /* not active TASK_RUN_QUEUE elements have no valid task_group!!*/
         if(task->task_group!=0)
         {
            /* usage the exe time for scheduling strategy */
            if(task->task_group->exe_time > task->task_group->fair_exe_time)
            {
               if(task->exe_time > Task_min_time)/* guarantee min time */
               {
                  task->current_prio = 0;

               }
            }
         }
         else
         {
            OS_SET_SW_BUG(os_bug_null_pointer, Func_TaskScheduler);
         }
      }
      /* do not set bug, because task =0 is used for empty queue elements
      else
      {
          OS_SET_SW_BUG(os_bug_null_pointer, Func_TaskScheduler);
      }
      */
   }
   For_all_tasks_in_queue(element_nr)
   {
      link_list_member = GetFromLinkList(element_nr);
      task             = GetFromTaskQueue(link_list_member);
      if(task != 0)
      {
         /*update wait time */
         if(task->IdleTask != True)
         {
            task->wait_time += delta_time;
         }
         /* search for task with highest prio and assign it to Winner_task */
         if(task->current_prio > Winner_prio)
         {
            Winner_prio = task->current_prio;
            Winner_task = task;
         }

      }
      /* do not set bug, because task =0 is used for empty queue elements
      else
      {
          OS_SET_SW_BUG(os_bug_null_pointer, Func_TaskScheduler);
      }
      */
   }
   /* prevent deathlook by permanently winning same task */
   if(Winner_task != 0)
   {
      Winner_task->current_prio = 0;
   }
   else
   {
      Winner_task = GetIdleTask();
   }
   return Winner_task;
}

void ISR_TASK_DISPATCH_C0(void)
{
   /*#warn "task scheduler should know which core it is running, to select the correct task to terminate/suspend/active..."*/
   OS_TASK_DISPATCHER();

}


