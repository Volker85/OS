#include "os_firstinc.h"
#include "os_common.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_task_queue.h"
#include "os_stack.h"
#inlcude "os_exception.h"

/*
1. running     --(terminate)--> suspend : delete scheduling element
2. running     --(preempt  )--> ready
3. suspend     --(activate )--> ready   : create scheduling element
4. ready       --(start    )--> running : use scheduling element
5. unspecified --(create   )--> suspend
*/


LOCAL void task_0(void* task_ptr);
LOCAL void task_1(void* task_ptr);
LOCAL void task_2(void* task_ptr);
LOCAL task_t** os_task_scheduler(void);
LOCAL void OS_PreemptTask(task_t* task, scheduling_t* scheduling_task);
void OS_ACTIVATE_DISPATCHER(void)
{

   /* configure the TCMP */
   /*
   Dispatcher function for Core 0:
   Write Adresse into the config register (interrupts are requested by SWI/SVC???)
   */
   /*
   CLOCK = HCLK / 8
   vermutlich: CLOCK = 150Mhz / 8 = 18,75 Mhz
   */
#if(CFG_PROCESSOR == MCU_CORTEX_M4)
   *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
   *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
   *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
#endif
}


void OS_SLEEP_TASK(task_t* task, timebig_t usec, scheduling_t* scheduling_task_ptr)
{
   timebig_t time;
   OS_GET_CURRENT_TIME(&time);
   /* sleep Task shall do a preempt task with a defined minimum wait time, the actual wait time is not guaranteed... */
   INT_ADD(&task->wait_act_until, &time, &usec);
   OS_PreemptTask(task,scheduling_task_ptr);
}

unsigned_char_t OS_TASK_STATE_REQUEST(void* temp_task, task_state_t requested_state)
{
   unsigned_char_t RequestState = REJECTED;

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
         RequestState = REJECTED;
         break;
      }
      default:
      {
         task->task_state = Task_unspecified;
         RequestState = ACCEPTED;
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
         RequestState = ACCEPTED;
         break;
      }
      case Task_running: /* 3. terminate task */
      {
         task->task_state = Task_suspended;
         RequestState = ACCEPTED;
         break;
      }
      default:
      {
         /* no change in states allowed */
         OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_TaskStateRequest);
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
         RequestState   = ACCEPTED;
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
         RequestState   = ACCEPTED;
         break;
      }
      case Task_running: /* preempt task transition */
      {
         task->task_state = Task_ready;
         RequestState   = ACCEPTED;
         break;
      }
      case Task_unspecified:
      {
         task->task_state = Task_ready;
         RequestState = ACCEPTED;
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
   if(RequestState == REJECTED)
   {
      TASK_TRANSITION_REJECTED_TASK_ADDR  = task;
      TASK_TRANSITION_REJECTED_STATE      = requested_state;
      TASK_TRANSITION_CURRENT_STATE       = task->task_state;
      OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_TaskStateRequest);
   }
   return RequestState;
}

void OS_CREATE_TASK(task_t* task)
{
   /*5. unspecified --(create   )--> suspend*/
   if(task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_suspended)== ACCEPTED)
         {
            /*QAC*/
         }
         else
         {
            OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_CreateTask);
         }
      }
      else
      {
         OS_SET_SW_BUG(os_bug_null_pointer, Func_CreateTask);
      }
   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer, Func_CreateTask);
   }
}
void OS_PreemptTask(task_t* task, scheduling_t* scheduling_task)
{
   /*2. running     --(preempt  )--> ready*/
   /* Preempt task
   - Disable Interrupts
   - OS_TASK_SAVE_TASK_ENVIRONMENT
   - add to Schedule Queue / delete from RunQueue
   - delete active flag
   - enable Interrupts
   */
   if(task != 0 && scheduling_task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_ready)== ACCEPTED)
         {
            DISABLE_INTERRUPTS();
            OS_TASK_SAVE_TASK_ENVIRONMENT(task);
            OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);

            task->active = FALSE;
            /* reset the prio increase for waiting */
            task->current_prio = task->default_prio;
            ENABLE_INTERRUPTS();
         }
         else
         {
            OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_Preempt_Task);
         }
      }
      else
      {
         OS_SET_SW_BUG(os_bug_null_pointer, Func_Preempt_Task);
      }
   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer, Func_Preempt_Task);
   }
}

void OS_ACTIVATE_TASK(task_t* task)
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
      if(task->state_request(task, Task_ready)==ACCEPTED)
      {
         DISABLE_INTERRUPTS();
         /* 3. suspended to ready (add to runqueue) */
         if(task->idle_task == FALSE)
         {
            if( (task->active == FALSE)
                  || ( (task->active == TRUE) && (task->nr_of_ins_allowed > task->nr_of_ins_activated) )/* check for multiple activation */
              )
            {
               /* only activate if allowed by rule */
               task = ADD_TO_TASK_QUEUE(task);
               ADD_TO_SCHEDULING_QUEUE(task);
               if(task != 0)
               {
                  task->nr_of_ins_activated++;
               }
               else
               {
                  OS_SET_SW_BUG(os_bug_null_pointer,Func_ActivateTask);
               }
            }
            else
            {
               /* multiple activation bug occured */
               OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_ActivateTask);
            }
         }
         else
         {
            ADD_TO_IDLE_TASK_QUEUE(task);
         }
         ENABLE_INTERRUPTS();
      }
      else
      {
         OS_SET_SW_BUG(os_bug_taskstate_request_denied, Func_ActivateTask);
      }
   }
}
void OS_START_TASK(task_t* task, scheduling_t* scheduling_task)
{
   /* OS_START_TASK
   - Disable interrupts
   - restore Environment
   - enable interrupts

   - Start Task
    */
   timebig_t time;

   if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != FALSE)||(task->idle_task != FALSE)))
   {
      if(task->state_request !=0)
      {
         if(task->state_request(task, Task_running)== ACCEPTED)
         {
            DISABLE_INTERRUPTS();
            task->active =  TRUE;
            ASSIGN_NULL(&task->wait_time);
            task->current_prio = task->default_prio;
            OS_TASK_SAVE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
            OS_TASK_RESTORETASK_ENVIRONMENT(task);
            OS_GET_CURRENT_TIME(&time);
            ASSIGN(&task->start_time, &time);
            ENABLE_INTERRUPTS();

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
void OS_TERMINATE_TASK(task_t* task, scheduling_t* scheduling_task)
{
   /* Preempt task
   - Disable Interrupts
   - OS_TASK_SAVE_TASK_ENVIRONMENT
   - add to Schedule Queue / delete from RunQueue
   - delete active flag
   - enable Interrupts
   */
   if(task != 0 && scheduling_task != 0)
   {
      if(task->state_request != 0)
      {
         if(task->state_request(task, Task_suspended)== ACCEPTED)
         {
            DISABLE_INTERRUPTS();
            OS_TASK_SAVE_TASK_ENVIRONMENT(task);
            OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
            DELETE_FROM_TASK_QUEUE(task);
            DELETE_FROM_SCHEDULING_QUEUE(scheduling_task);

            task->active = FALSE;
            /* reset the prio increase for waiting */
            task->current_prio = task->default_prio;
            ENABLE_INTERRUPTS();
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
   scheduling_t* scheduling_task_ptr;
   task_t* task = 0;
   /* get running task */
   task         = GET_RUNNING_TASK();
   scheduling_task_ptr = GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR();
   /* Preempt Task */
   if(task!=0 && scheduling_task_ptr != 0)
   {
      OS_TERMINATE_TASK(task, scheduling_task_ptr);
   }
   /* ask for the next task to be activated... */
   scheduling_task_ptr = os_task_scheduler();
   if(scheduling_task_ptr != 0)
   {
      task = GET_FROM_TASK_QUEUE(scheduling_task_ptr);
   }
   if(task != 0 && scheduling_task_ptr != 0)
   {
      OS_START_TASK(task, scheduling_task_ptr);
   }
}
LOCAL void task_0(void* task_ptr)
{
   REFERENCE_UNUSED_PARAMETER(task_ptr);
   HALT_MCU();/* HLT will be ended by timer interrupt, what shall be done with the rest of the function... ??*/
}
LOCAL void task_1(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   REFERENCE_UNUSED_PARAMETER(task_ptr);
   /* worker task */
   scheduling_task_ptr = GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TERMINATE_TASK(task_ptr,scheduling_task_ptr);
}
LOCAL void task_2(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   REFERENCE_UNUSED_PARAMETER(task_ptr);
   /* worker task */
   scheduling_task_ptr = GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TERMINATE_TASK(task_ptr,scheduling_task_ptr);
}
LOCAL void task_3(void* task_ptr)
{
   scheduling_t* scheduling_task_ptr = 0;
   REFERENCE_UNUSED_PARAMETER(task_ptr);
   /* worker task */
   scheduling_task_ptr = GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR();
   /* do some things */
   TASK1_CALL_NR++;


   /* end */
   OS_TERMINATE_TASK(task_ptr,scheduling_task_ptr);
}
void OS_INIT_TASKs(void)
{
   task_t* task_ptr = 0;
   OS_GET_CURRENT_TIME(&LAST_CURRENT_TIME);

   REFERENCE_UNUSED_PARAMETER (TASK_GROUP_1);
   REFERENCE_UNUSED_PARAMETER (TASK_GROUP_2);
   REFERENCE_UNUSED_PARAMETER (TASK_GROUP_3);
   REFERENCE_UNUSED_PARAMETER (TASK_GROUP_4);
   REFERENCE_UNUSED_PARAMETER (TASK_GROUP_5);

   /*
   set task_state for all tasks to Task_unspecified
   */
   OS_INIT_TASK_QUEUE();

   /* setup idle task */
   task_ptr = &TASK_0_VAR;
   OS_INIT_TASK(task_ptr,                          /* task */
               &TASK_0,                           /* Task Function*/
               1,                                 /* Nr of allowed instances*/
               TRUE,                              /* Idle Task */
               &TASK_GROUP_1,                     /* Task Group */
               (unsigned_char_t*)&TASK_STACK[0],  /* Task_stack */
               200,                                /* Stack Size */
               ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
               Core0,                            /* Cortex M4 has only 1 core */
               0                                   /* default prio */
              );
   ADD_TO_SCHEDULING_QUEUE(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_0_ptr);

   /* setup worker task */
   task_ptr = &TASK_1_VAR;
   OS_INIT_TASK(task_ptr,      /* task */
               &TASK_1,       /* Task Function*/
               1,             /* Nr of allowed instances*/
               FALSE,          /* Idle Task */
               &TASK_GROUP_1, /* Task Group */
               (unsigned_char_t*)&TASK_STACK[1],/* Task_stack */
               200,            /* Stack Size */
               ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
               Core0,
               1                                   /* default prio */
              );
   ADD_TO_SCHEDULING_QUEUE(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_1_ptr);

   /* setup worker task */
   task_ptr = &TASK_2_VAR;
   OS_INIT_TASK(task_ptr,      /* task */
               &TASK_2,       /* Task Function*/
               1,             /* Nr of allowed instances*/
               FALSE,          /* Idle Task */
               &TASK_GROUP_2, /* Task Group */
               (unsigned_char_t*)&TASK_STACK[2],/* Task_stack */
               200,            /* Stack Size */
               ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
               Core0,
               2                                   /* default prio */
              );
   ADD_TO_SCHEDULING_QUEUE(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_2_ptr);

   /* setup worker task */
   task_ptr = &TASK_3_VAR;
   OS_INIT_TASK(task_ptr,      /* task */
               &TASK_3,       /* Task Function*/
               1,             /* Nr of allowed instances*/
               FALSE,          /* Idle Task */
               &TASK_GROUP_3, /* Task Group */
               (unsigned_char_t*)&TASK_STACK[3],/* Task_stack */
               200,           /* Stack Size */
               ePriviligeMode_unpriviliged_thread_mode, /* Unpriviliged Thread Mode */
               Core0,
               3                                   /* default prio */
              );
   ADD_TO_SCHEDULING_QUEUE(task_ptr);
   OS_SaveTaskPtr(task_ptr, Task_3_ptr);
}


LOCAL scheduling_t* os_task_scheduler(void)
{

   scheduling_t*    scheduling_queue_member;
   unsigned_char_t element_nr;

   unsigned_char_t Winner_prio = 0;
   task_t*         task = 0;
   task_t*         Winner_task = 0;
   scheduling_t*   Winner_scheduling_queue_member = 0;
   timebig_t       delta_time;

   timebig_t time;

   OS_GET_CURRENT_TIME(&time);

   INT_SUB(&delta_time, &time, &LAST_CURRENT_TIME);

   ASSIGN(&LAST_CURRENT_TIME,&time);

   REFERENCE_UNUSED_PARAMETER(Winner_task);
   /*
   x const for single task: task->default_prio // low = 0,.....high=100
   x var   for single task: task->current_prio // see prio_std
   x var   for single task: task->wait_time    //
   x var   for single task: task->exe_time
   x const for single task: task->time_to_prio_inc
   x const for single task: task->max_allowed_wait_time
   x const for single task: task->min_allowed_wait_time
   x const for single task: task->overwaittime_per_prio_inc_step //e.g. 100*MinTimeSlice_us
   x const for single task: task->task_group  //to allow processor access control by groups (e.g. user1, user2, user3)
   x const for single task: task->wait_act_until
   (task_group is designed to allow proccessor access control between e.g. Customer Software Task and ASIL D Brake Task
   */
   For_all_tasks_in_queue(element_nr)
   {
      scheduling_queue_member = GET_FROM_SCHEDULING_QUEUE(element_nr);
      /*task will have a pointer on the task_obj, and might be equal to "(task_t*) 0" */
      task             = GET_FROM_TASK_QUEUE(scheduling_queue_member);
      /* increase prio: high numbers->high prio */
      if((task != 0)&&(task->task_queued != FALSE))
      {
         if(IS_GREATER_OR_EQUAL(&task->wait_time, &task->time_to_prio_inc))
         {
            task->current_prio = task->current_prio + task->overwaittime_per_prio_inc_step;
         }
         /* in case wait condition not yet fulfilled, set prio to 0 */
         if(IS_GREATER(&task->wait_act_until, &time))
         {
            task->current_prio = 0;
         }
         if(IS_GREATER(&task->wait_time,&task->max_allowed_wait_time))
         {
            /* set bug */
            OS_SET_SW_BUG(os_bug_task_max_wait_time_reached, Func_TaskScheduler);
         }
         /* not active TASK_RUN_QUEUE elements have no valid task_group!!*/
         if(task->task_group!=0u)
         {
            /* usage the exe time for scheduling strategy */
            if(IS_GREATER(&task->task_group->exe_time, &task->task_group->fair_exe_time) != FALSE)
            {
               timebig_t tTime;
               ASSIGN_UINT32(&tTime, Task_min_time);
               if(IS_GREATER_OR_EQUAL(&task->exe_time, &tTime))/* guarantee min time */
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
      scheduling_queue_member = GET_FROM_SCHEDULING_QUEUE(element_nr);
      task             = GET_FROM_TASK_QUEUE(scheduling_queue_member);
      if(task != 0)
      {
         /*update wait time */
         if(task->idle_task != TRUE)
         {
            INT_ADD(&task->wait_time, &task->wait_time, &delta_time);
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
          OS_SET_SW_BUG(os_bug_null_pointer, Func_TaskScheduler);
      }
      */
   }
   return Winner_scheduling_queue_member;
}




