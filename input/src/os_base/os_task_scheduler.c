#include "os_firstinc.h"
#include "os_common.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_task_queue.h"
#include "os_stack.h"

/*
1. running     --(terminate)--> suspend : delete scheduling element
2. running     --(preempt  )--> ready
3. suspend     --(activate )--> ready   : create scheduling element
4. ready       --(start    )--> running : use scheduling element
5. unspecified --(create   )--> suspend
*/


Local void TASK_0(void* task_ptr);
Local void TASK_1(void* task_ptr);
Local void TASK_2(void* task_ptr);
Local task_t** OS_TaskScheduler();
Local void OS_PreemptTask(task_t* task, scheduling_t* scheduling_task);
void OS_ActivateDispatcher(void)
{

   /* configure the TCMP */
   /*
   Dispatcher function for Core 0:
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
   *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
   *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
   *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
   #endif
}


void OS_SleepTask(task_t* task, timebig_t usec, scheduling_t* scheduling_task_ptr)
{
   timebig_t time;
   OS_GetCurrentTime(&time);   
   /* sleep Task shall do a preempt task with a defined minimum wait time, the actual wait time is not guaranteed... */
   IntAdd(&task->WaitActUntil, &time, &usec);
   OS_PreemptTask(task,scheduling_task_ptr);
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
         OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
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
      case Task_unspecified:
      {
          task->task_state = Task_ready;
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
   default:
   {
      break;
   }
   }
   if(RequestState == Rejected)
   {
      TASK_TRANSITION_REJECTED_TASK_ADDR  = task;
      TASK_TRANSITION_REJECTED_STATE      = requested_state;
      TASK_TRANSITION_CURRENT_STATE       = task->task_state;
      OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
   }
   return RequestState;
}

void OS_CreateTask(task_t* task)
{
   /*5. unspecified --(create   )--> suspend*/
   if(task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_suspended)== Accepted)
         {
            /*QAC*/
         }
         else
         {
            OS_SetSwBug(os_bug_taskstate_request_denied, Func_CreateTask);
         }
      }
      else
      {
         OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
      }
   }
   else
   {
      OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
   }
}
void OS_PreemptTask(task_t* task, scheduling_t* scheduling_task)
{
   /*2. running     --(preempt  )--> ready*/
   /* Preempt task
   - Disable Interrupts
   - OS_TaskSaveTaskEnvironment
   - add to Schedule Queue / delete from RunQueue
   - delete active flag
   - enable Interrupts
   */
   if(task != 0 && scheduling_task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_ready)== Accepted)
         {
            DisableInterrupts();
            OS_TaskSaveTaskEnvironment(task);
            OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);

            task->active = False;
            /* reset the prio increase for waiting */
            task->current_prio = task->default_prio;
            EnableInterrupts();
         }
         else
         {
            OS_SetSwBug(os_bug_taskstate_request_denied, Func_Preempt_Task);
         }
      }
      else
      {
         OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
      }
   }
   else
   {
      OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
   }
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
      if(task->state_request(task, Task_ready)==Accepted)
      {
         DisableInterrupts();
         /* 3. suspended to ready (add to runqueue) */
         if(task->IdleTask == False)
         {
            if( (task->active == False)
                  || ( (task->active == True) && (task->NrOfInsAllowed > task->NrOfInsActivated) )/* check for multiple activation */
              )
            {
               /* only activate if allowed by rule */
               task = AddToTaskQueue(task);
               AddToSchedulingQueue(task);
               if(task != 0)
               {
                  task->NrOfInsActivated++;
               }
               else
               {
                  OS_SetSwBug(os_bug_null_pointer,Func_ActivateTask);
               }
            }
            else
            {
               /* multiple activation bug occured */
               OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
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
         OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
      }
   }
}
void OS_StartTask(task_t* task, scheduling_t* scheduling_task)
{
   /* OS_StartTask
   - Disable interrupts
   - restore Environment
   - enable interrupts

   - Start Task
    */
   timebig_t time;
   
   if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
   {
      if(task->state_request !=0)
      {
         if(task->state_request(task, Task_running)== Accepted)
         {
            DisableInterrupts();
            task->active =  True;
            AssignNull(&task->wait_time);
            task->current_prio = task->default_prio;
            OS_TASK_SAVE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
            OS_TASK_RESTORETASK_ENVIRONMENT(task);
            OS_GetCurrentTime(&time);
            Assign(&task->start_time, &time);
            EnableInterrupts();

            /* task execution shall not happen with disabled interrupts */
            SET_RUNNING_TASK(task, scheduling_task);
            /* change to user mode... */
            if(task->privilige_mode == ePriviligeMode_unpriviliged_thread_mode)
            {
               LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE();
            }

            /* call the task entry function */
            task->fp(task);
         }
         else
         {
            OS_SetSwBug(os_bug_taskstate_request_denied, Func_StartTask);
         }
      }
      else
      {
         OS_SetSwBug(os_bug_null_pointer, Func_StartTask);
      }
   }
   /* allowed in case of empty QUEUE elements (queue elements which have no activate_task yet received
   else
   {
       OS_SetSwBug(os_bug_null_pointer, Func_StartTask);
   }
   */
}
void OS_TerminateTask(task_t* task, scheduling_t* scheduling_task)
{
   /* Preempt task
   - Disable Interrupts
   - OS_TaskSaveTaskEnvironment
   - add to Schedule Queue / delete from RunQueue
   - delete active flag
   - enable Interrupts
   */
   if(task != 0 && scheduling_task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_suspended)== Accepted)
         {
            DisableInterrupts();
            OS_TaskSaveTaskEnvironment(task);
            OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
            DeleteFromTaskQueue(task);
            DeleteFromSchedulingQueue(scheduling_task);

            task->active = False;
            /* reset the prio increase for waiting */
            task->current_prio = task->default_prio;
            EnableInterrupts();
         }
         else
         {
            OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
         }
      }
      else
      {
         OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
      }
   }
   else
   {
      OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
   }
}
void OS_TaskDispatcher(void)
{
   /* called in an certain core context (Core_0/1/2/3)*/


   /*
   1. running     --(terminate)--> suspend
   2. running     --(preempt  )--> ready
   3. suspend     --(activate )--> ready
   4. ready       --(start    )--> running
   5. unspecified --(create   )--> suspend
   */
   scheduling_t* scheduling_task_ptr;
   task_t* task = 0;
   /* get running task */
   task         = GetRunningTask();
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   /* Preempt Task */
   if(task!=0 && scheduling_task_ptr != 0)
   {
      OS_TerminateTask(task, scheduling_task_ptr);
   }
   /* ask for the next task to be activated... */
   scheduling_task_ptr = OS_TaskScheduler();
   if(scheduling_task_ptr != 0)
   {
      task = GetFromTaskQueue(scheduling_task_ptr);
   }
   if(task != 0 && scheduling_task_ptr != 0)
   {
       OS_StartTask(task, scheduling_task_ptr);
   }
}
Local void TASK_0(void* task_ptr)
{
   ReferenceUnusedParameter(task_ptr);
   HaltMcu();/* HLT will be ended by timer interrupt, what shall be done with the rest of the function... ??*/
}
Local void TASK_1(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   ReferenceUnusedParameter(task_ptr);
   /* worker task */
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TerminateTask(task_ptr,scheduling_task_ptr);
}
Local void TASK_2(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   ReferenceUnusedParameter(task_ptr);
   /* worker task */
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TerminateTask(task_ptr,scheduling_task_ptr);
}
Local void TASK_3(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   ReferenceUnusedParameter(task_ptr);
   /* worker task */
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TerminateTask(task_ptr,scheduling_task_ptr);
}
void OS_InitTasks(void)
{
   task_t* task_ptr = 0;
   OS_GetCurrentTime(&LAST_CURRENT_TIME);

   ReferenceUnusedParameter (TASK_GROUP_1);
   ReferenceUnusedParameter (TASK_GROUP_2);
   ReferenceUnusedParameter (TASK_GROUP_3);
   ReferenceUnusedParameter (TASK_GROUP_4);
   ReferenceUnusedParameter (TASK_GROUP_5);

    /*
   set task_state for all tasks to Task_unspecified
    */
   OS_InitTaskQueue();

   /* setup idle task */
   task_ptr = &TASK_0_VAR;
   OS_InitTask(task_ptr,                          /* task */
                &TASK_0,                           /* Task Function*/
                1,                                 /* Nr of allowed instances*/
                True,                              /* Idle Task */
                &TASK_GROUP_1,                     /* Task Group */
                (unsigned_char_t*)&TASK_STACK[0],  /* Task_stack */
                200,                                /* Stack Size */
                ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
                Core0,                            /* Cortex M4 has only 1 core */
                0                                   /* default prio */
               );
   AddToSchedulingQueue(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_0_ptr);

   /* setup worker task */
   task_ptr = &TASK_1_VAR;
   OS_InitTask(task_ptr,      /* task */
                &TASK_1,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_1, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[1],/* Task_stack */
                200,            /* Stack Size */
                ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
                Core0,
                1                                   /* default prio */
               );
   AddToSchedulingQueue(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_1_ptr);

   /* setup worker task */
   task_ptr = &TASK_2_VAR;
   OS_InitTask(task_ptr,      /* task */
                &TASK_2,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_2, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[2],/* Task_stack */
                200,            /* Stack Size */
                ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
                Core0,
                2                                   /* default prio */
               );
   AddToSchedulingQueue(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_2_ptr);

   /* setup worker task */
   task_ptr = &TASK_3_VAR;
   OS_InitTask(task_ptr,      /* task */
                &TASK_3,       /* Task Function*/
                1,             /* Nr of allowed instances*/
                False,          /* Idle Task */
                &TASK_GROUP_3, /* Task Group */
                (unsigned_char_t*)&TASK_STACK[3],/* Task_stack */
                200,           /* Stack Size */
                ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
                Core0,
                3                                   /* default prio */
               );
   AddToSchedulingQueue(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_3_ptr);
}


Local scheduling_t* OS_TaskScheduler(void)
{

   scheduling_t*    scheduling_queue_member;
   unsigned_char_t element_nr;

   unsigned_char_t Winner_prio = 0;
   task_t*         task = 0;
   task_t*         Winner_task = 0;
   scheduling_t*   Winner_scheduling_queue_member = 0;
   timebig_t       delta_time;
   
   timebig_t time;
   
   OS_GetCurrentTime(&time);

   IntSub(&delta_time, &time, &LAST_CURRENT_TIME);
   
   Assign(&LAST_CURRENT_TIME,&time);

   ReferenceUnusedParameter(Winner_task);
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
      scheduling_queue_member = GetFromSchedulingQueue(element_nr);
      /*task will have a pointer on the task_obj, and might be equal to "(task_t*) 0" */
      task             = GetFromTaskQueue(scheduling_queue_member);
      /* increase prio: high numbers->high prio */
      if((task != 0)&&(task->task_queued != False))
      {
         if(IsGreaterOrEqual(&task->wait_time, &task->TimeToPrioInc))
         {
            task->current_prio = task->current_prio + task->overwaittime_per_prio_inc_step;
         }
         /* in case wait condition not yet fulfilled, set prio to 0 */
         if(IsGreater(&task->WaitActUntil, &time))
         {
            task->current_prio = 0;
         }
         if(IsGreater(&task->wait_time,&task->max_allowed_wait_time))
         {
            /* set bug */
            OS_SetSwBug(os_bug_task_max_wait_time_reached, Func_TaskScheduler);
         }
         /* not active TASK_RUN_QUEUE elements have no valid task_group!!*/
         if(task->task_group!=0u)
         {
            /* usage the exe time for scheduling strategy */
            if(IsGreater(&task->task_group->exe_time, &task->task_group->fair_exe_time) != False)
            {
               timebig_t tTime;
               AssignUint32(&tTime, Task_min_time);
               if(IsGreaterOrEqual(&task->exe_time, &tTime))/* guarantee min time */
               {
                  task->current_prio = 0;
               }
            }
         }
         else
         {
            OS_SetSwBug(os_bug_null_pointer, Func_TaskScheduler);
         }
      }
      /* do not set bug, because task =0 is used for empty queue elements
      else
      {
          OS_SetSwBug(os_bug_null_pointer, Func_TaskScheduler);
      }
      */
   }
   For_all_tasks_in_queue(element_nr)
   {
      scheduling_queue_member = GetFromSchedulingQueue(element_nr);
      task             = GetFromTaskQueue(scheduling_queue_member);
      if(task != 0)
      {
         /*update wait time */
         if(task->IdleTask != True)
         {
            IntAdd(&task->wait_time, &task->wait_time, &delta_time);
         }
         /* search for task with highest prio and assign it to Winner_task */
         if(task->current_prio > Winner_prio)
         {
            Winner_prio = task->current_prio;
            Winner_task = task;
            Winner_scheduling_queue_member = scheduling_queue_member;
         }

      }
      /* do not set bug, because task =0 is used for empty queue elements
      else
      {
          OS_SetSwBug(os_bug_null_pointer, Func_TaskScheduler);
      }
      */
   }
   return Winner_scheduling_queue_member;
}




