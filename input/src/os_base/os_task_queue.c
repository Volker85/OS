#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_queue.h"
#include "os_task_scheduler.h"





/* index 0: current task, 1,2,3,4: next tasks to be executed */
//TODO: check and test that the described processed is fullfilled..
/*
1. after execution of task finished(OS_TERMINATE_TASK):
 - delete run_queue_element         (DELETE_FROM_TASK_QUEUE)
 - delete Scheduling queue entry    (DELETE_FROM_SCHEDULING_QUEUE)
 - shift pointers towards index 0   (UpdateSchedulingQueue)


 2. to add new task (ActivateTask):
 - add element to run_queue at first free element (ADD_TO_TASK_QUEUE)
 - add a reference to the scheduling Queue         (ADD_TO_SCHEDULING_QUEUE)

 3. to start task:
- start the task at index = 0                     (GET_FROM_TASK_QUEUE)

 4. to preempt task:
- take element of index = 0 of SchedulingQueue and save it somewhere else  (UpdateSchedulingQueue)
- shift all entries in SchedulingQueue to 0 by 1                           (UpdateSchedulingQueue)
- add saved element at first free entry in SchedulingQueue                 (UpdateSchedulingQueue)
- eliminate empty SchedulingQueue entries                                  (UpdateSchedulingQueue)
 */


void SET_RUNNING_TASK(task_t* task, scheduling_t* scheduling_task)
{
   RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
   if(task != NULL)
   {
      (&RUNNING_TASK[0u])->active                             = task->active;
      (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
      (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
      (&RUNNING_TASK[0u])->free                               = task->free;
      (&RUNNING_TASK[0u])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
      (&RUNNING_TASK[0u])->nr_of_ins_activated                = task->nr_of_ins_activated;
      ASSIGN(&(&RUNNING_TASK[0u])->wait_act_until, &task->wait_act_until);
      ASSIGN(&(&RUNNING_TASK[0u])->wait_time, &task->wait_time);
      ASSIGN(&(&RUNNING_TASK[0u])->time_to_prio_inc, &task->time_to_prio_inc);
      (&RUNNING_TASK[0u])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
      ASSIGN(&(&RUNNING_TASK[0u])->max_allowed_wait_time, &task->max_allowed_wait_time);
      ASSIGN(&(&RUNNING_TASK[0u])->exe_time, &task->exe_time  );
      ASSIGN(&(&RUNNING_TASK[0u])->start_time, &task->start_time);
      (&RUNNING_TASK[0u])->current_prio                    = task->current_prio;
      (&RUNNING_TASK[0u])->default_prio                    = task->default_prio;
      (&RUNNING_TASK[0u])->fp                              = task->fp;
      (&RUNNING_TASK[0u])->state_request                   = task->state_request;
      (&RUNNING_TASK[0u])->task_state                      = task->task_state;
      (&RUNNING_TASK[0u])->task_group                      = task->task_group;
#if(CFG_PROCESSOR == MCU_X86)
      (&RUNNING_TASK[0u])->eax                             = task->eax;
      (&RUNNING_TASK[0u])->ebx                             = task->ebx;
      (&RUNNING_TASK[0u])->ecx                             = task->ecx;
      (&RUNNING_TASK[0u])->edx                             = task->edx;
#else
      (&RUNNING_TASK[0u])->r0                             = task->r0;
      (&RUNNING_TASK[0u])->r1                             = task->r1;
      (&RUNNING_TASK[0u])->r2                             = task->r2;
      (&RUNNING_TASK[0u])->r3                             = task->r3;
      (&RUNNING_TASK[0u])->r4                             = task->r4;
      (&RUNNING_TASK[0u])->r5                             = task->r5;
      (&RUNNING_TASK[0u])->r6                             = task->r6;
      (&RUNNING_TASK[0u])->r7                             = task->r7;
      (&RUNNING_TASK[0u])->r8                             = task->r8;
      (&RUNNING_TASK[0u])->r9                             = task->r9;
      (&RUNNING_TASK[0u])->r10                            = task->r10;
      (&RUNNING_TASK[0u])->r11                            = task->r11;
      (&RUNNING_TASK[0u])->r12                            = task->r12;
#endif

      (&RUNNING_TASK[0u])->p_stack_pointer                   = task->p_stack_pointer;
      (&RUNNING_TASK[0u])->p_stack_pointer_by_malloc           = task->p_stack_pointer_by_malloc;
      (&RUNNING_TASK[0u])->p_stack_pointer_start              = task->p_stack_pointer_start;
      (&RUNNING_TASK[0u])->stack_size                       = task->stack_size;
      (&RUNNING_TASK[0u])->p_stack_pointer_end                = task->p_stack_pointer_end;
   }
}

/* task queue handling */
void OS_INIT_TASK_QUEUE(void)
{
   if(bTASK_QUEUE_INITIALIZED == FALSE)
   {
      unsigned_char_t element_nr = 0;
      while(element_nr < MAX_RUN_QUEUE_SIZE)
      {
         TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0u;
         OS_TASK_INIT_TASK_ENVIRONMENT(&TASK_RUN_QUEUE[element_nr]);
         element_nr++;
      }
      bTASK_QUEUE_INITIALIZED = TRUE;
   }
}
task_t* ADD_TO_TASK_QUEUE(task_t* task)
{
   unsigned_char_t element_nr = 0u;
   task_t* ret_task = 0u;

   while( (element_nr < MAX_RUN_QUEUE_SIZE)
          &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
        )
   {
      element_nr++;
   }
   /* while loop ended due to free task_array slot ...*/
   if( (element_nr < MAX_RUN_QUEUE_SIZE) && ((&TASK_RUN_QUEUE[element_nr])->task_queued == FALSE) )
   {
      (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
      (&TASK_RUN_QUEUE[element_nr])->task_queued                     = TRUE;
      (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
      (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
      (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
      (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_activated                = task->nr_of_ins_activated;
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_act_until, &task->wait_act_until);
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_time, &task->wait_time);
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->time_to_prio_inc, &task->time_to_prio_inc);
      (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time, &task->max_allowed_wait_time);
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->exe_time, &task->exe_time   );
      ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->start_time, &task->start_time );
      (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
      (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
      (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
      (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
      (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
      (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
#if(CFG_PROCESSOR == MCU_X86)
      (&TASK_RUN_QUEUE[element_nr])->eax                             = task->eax;
      (&TASK_RUN_QUEUE[element_nr])->ebx                             = task->ebx;
      (&TASK_RUN_QUEUE[element_nr])->ecx                             = task->ecx;
      (&TASK_RUN_QUEUE[element_nr])->edx                             = task->edx;
#else
      (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
      (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
      (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
      (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
      (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
      (&TASK_RUN_QUEUE[element_nr])->r5                             = task->r5;
      (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
      (&TASK_RUN_QUEUE[element_nr])->r7                             = task->r7;
      (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
      (&TASK_RUN_QUEUE[element_nr])->r9                             = task->r9;
      (&TASK_RUN_QUEUE[element_nr])->r10                            = task->r10;
      (&TASK_RUN_QUEUE[element_nr])->r11                            = task->r11;
      (&TASK_RUN_QUEUE[element_nr])->r12                            = task->r12;
#endif
      (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
      (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_by_malloc           = task->p_stack_pointer_by_malloc;
      (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_start              = task->p_stack_pointer_start;
      (&TASK_RUN_QUEUE[element_nr])->stack_size                       = task->stack_size;
      (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_end                = task->p_stack_pointer_end;
      ret_task = &TASK_RUN_QUEUE[element_nr];
   }
   return ret_task;
}
void DELETE_FROM_TASK_QUEUE(task_t* task)
{
   task->active                                =   FALSE   ;
   task->task_queued                           =   FALSE   ;
   task->idle_task                              =   FALSE   ;
   task->free                                  =   0u       ;
   task->nr_of_ins_allowed                        =   0u       ;
   task->nr_of_ins_activated                      =   0u       ;
   ASSIGN_NULL(&task->wait_act_until);
   ASSIGN_NULL(&task->wait_time);
   ASSIGN_NULL(&task->time_to_prio_inc);
   task->overwaittime_per_prio_inc_step        =   0u       ;
   ASSIGN_NULL(&task->max_allowed_wait_time);
   ASSIGN_NULL(&task->exe_time);
   ASSIGN_NULL(&task->start_time);
   task->current_prio                          =   0u       ;
   task->default_prio                          =   0u      ;
   task->fp                                    =   0u       ;
   task->state_request                         =   &OS_TASK_STATE_REQUEST       ;
   task->task_state                            =   E_TASK_UNSPECIFIED;
   task->task_group                            =   0u       ;
#if(CFG_PROCESSOR == MCU_X86)
   task->eax                                   =   0u              ;
   task->ebx                                   =   0u             ;
   task->ecx                                   =   0u              ;
   task->edx                                   =   0u              ;
#elif(CFG_PROCESSOR == MCU_CORTEX_M4)
   task->r0                                   =   0u              ;
   task->r1                                   =   0u              ;
   task->r2                                   =   0u              ;
   task->r3                                   =   0u              ;
   task->r4                                   =   0u              ;
   task->r5                                   =   0u              ;
   task->r6                                   =   0u              ;
   task->r7                                   =   0u              ;
   task->r8                                   =   0u              ;
   task->r9                                   =   0u              ;
   task->r10                                  =   0u             ;
   task->r11                                  =   0u             ;
   task->r12                                  =   0u             ;
#else
#error "os_task_queue.c"
#endif
   task->p_stack_pointer                         =   0u       ;
   task->p_stack_pointer_by_malloc                 =   0u       ;
   task->p_stack_pointer_start                    =   0u       ;
   task->stack_size                             =   0u       ;
   task->p_stack_pointer_end                      =   0u       ;
}
task_t* GET_FROM_TASK_QUEUE(scheduling_t* scheduling_queue_element)
{
   return ((task_t*)*scheduling_queue_element);
}
scheduling_t* GET_FROM_SCHEDULING_QUEUE(unsigned_char_t element_nr)
{
   return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
}
/* Pointer Queue Handling*/
void DELETE_FROM_SCHEDULING_QUEUE(scheduling_t* scheduling_queue_element)
{
   *scheduling_queue_element = 0u;
}
void ADD_TO_SCHEDULING_QUEUE(task_t* task)
{
   /*
   Description:
   add "task" into next free slot of TASK_SCHEDULING_QUEUE

   in:     task_t* task (task to be added)
   out:
   */
   unsigned_char_t Add_successful = FALSE;
   unsigned_char_t index = 0u;

   while(  (index < MAX_RUN_QUEUE_SIZE)
           &&(Add_successful == FALSE))
   {
      if(TASK_SCHEDULING_QUEUE[index] == NULL)
      {
         TASK_SCHEDULING_QUEUE[index] = task;
         Add_successful         = TRUE;
      }
      index++;
   }
   return;
}
#if(0)
void UpdateSchedulingQueue(void)
{
   /* eliminate emptry link list entries (should be colleted at the high numbers) */
   unsigned_char_t dest = 0u, src = 0u;

   while (dest < MAX_RUN_PQUEUE_SIZE)
   {
      if(TASK_SCHEDULING_QUEUE[dest] == 0u)
      {
         /* found empty entry ->shift following elements left in array */

         src = dest; /* start from empty entry point */
         while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0u))
         {
            src++;
         }
         if((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]!=0))
         {
            TASK_SCHEDULING_QUEUE[dest] = TASK_SCHEDULING_QUEUE[src];
            TASK_SCHEDULING_QUEUE[src]  = 0u;
         }
      }
      dest++;
   }
}
#endif

/* Idle task queue handling */
task_t* GET_IDLE_TASK(void)
{
   return (&TASK_IDLE_QUEUE[0u]);
}
void ADD_TO_IDLE_TASK_QUEUE(task_t* task)
{
   /* only 1 element for TASK_IDLE_QUEUE allowed */
   if((&TASK_IDLE_QUEUE[0u])->idle_task == FALSE)
   {
      (&TASK_IDLE_QUEUE[0u])->active                                =   task->active           ;
      (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
      (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
      (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
      (&TASK_IDLE_QUEUE[0u])->nr_of_ins_allowed                        =   task->nr_of_ins_allowed   ;
      (&TASK_IDLE_QUEUE[0u])->nr_of_ins_activated                      =   task->nr_of_ins_activated ;
      ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_act_until, &task->wait_act_until);
      ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_time, &task->wait_time);
      ASSIGN(&(&TASK_IDLE_QUEUE[0u])->time_to_prio_inc, &task->time_to_prio_inc);
      (&TASK_IDLE_QUEUE[0u])->overwaittime_per_prio_inc_step       =    task->overwaittime_per_prio_inc_step;
      ASSIGN(&(&TASK_IDLE_QUEUE[0u])->max_allowed_wait_time, &task->max_allowed_wait_time);
      ASSIGN(&(&TASK_IDLE_QUEUE[0u])->exe_time, &task->exe_time);
      (&TASK_IDLE_QUEUE[0u])->current_prio                          =   task->current_prio     ;
      (&TASK_IDLE_QUEUE[0u])->default_prio                          =   task->default_prio     ;
      (&TASK_IDLE_QUEUE[0u])->fp                                    =   task->fp               ;
      (&TASK_IDLE_QUEUE[0u])->state_request                         =   task->state_request    ;
      (&TASK_IDLE_QUEUE[0u])->task_state                            =   E_TASK_READY             ;
      (&TASK_IDLE_QUEUE[0u])->task_group                            =   task->task_group       ;
#if(CFG_PROCESSOR == MCU_X86)
      (&TASK_IDLE_QUEUE[0u])->eax                                   =   task->eax              ;
      (&TASK_IDLE_QUEUE[0u])->ebx                                   =   task->ebx              ;
      (&TASK_IDLE_QUEUE[0u])->ecx                                   =   task->ecx              ;
      (&TASK_IDLE_QUEUE[0u])->edx                                   =   task->edx              ;
#elif(CFG_PROCESSOR == MCU_CORTEX_M4)
      (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
      (&TASK_IDLE_QUEUE[0u])->r1                                   =   task->r1              ;
      (&TASK_IDLE_QUEUE[0u])->r2                                   =   task->r2              ;
      (&TASK_IDLE_QUEUE[0u])->r3                                   =   task->r3              ;
      (&TASK_IDLE_QUEUE[0u])->r4                                   =   task->r4              ;
      (&TASK_IDLE_QUEUE[0u])->r5                                   =   task->r5              ;
      (&TASK_IDLE_QUEUE[0u])->r6                                   =   task->r6              ;
      (&TASK_IDLE_QUEUE[0u])->r7                                   =   task->r7              ;
      (&TASK_IDLE_QUEUE[0u])->r8                                   =   task->r8              ;
      (&TASK_IDLE_QUEUE[0u])->r9                                   =   task->r9              ;
      (&TASK_IDLE_QUEUE[0u])->r10                                  =   task->r10             ;
      (&TASK_IDLE_QUEUE[0u])->r11                                  =   task->r11             ;
      (&TASK_IDLE_QUEUE[0u])->r12                                  =   task->r12             ;
#else
#error "os_task_queue.c"
#endif
      (&TASK_IDLE_QUEUE[0u])->p_stack_pointer                         =   task->p_stack_pointer    ;
      (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_by_malloc                 =   task->p_stack_pointer_by_malloc;
      (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_start                    =   task->p_stack_pointer_start;
      (&TASK_IDLE_QUEUE[0u])->stack_size                             =   task->stack_size        ;
      (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_end                      =   task->p_stack_pointer_end ;
   }
}
task_t* GET_RUNNING_TASK(void)
{
   return (&RUNNING_TASK[0u]);
}
scheduling_t* GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR(void)
{
   return RUNNING_SCHEDULING_QUEUE_ENTRY;
}
void OS_INIT_TASK(
   task_t*          task,
   func_p_t         TaskFunction,
   unsigned_char_t  AllowedInstances,
   unsigned_char_t  idle_task,
   task_group_t*    p_task_group,
   unsigned_char_t* pStackAddr,
   unsigned_int32_t uStackSize,
   privilige_mode_t privilige_mode,
   coreid_t         core,
   unsigned_char_t  default_prio
)
{
   REFERENCE_UNUSED_PARAMETER(core);
   if(task != NULL)
   {
      task->active           = FALSE;
      task->fp               = TaskFunction;
      task->nr_of_ins_allowed   = AllowedInstances;
      task->task_group       = p_task_group;
      task->nr_of_ins_activated = 0u;
      ASSIGN_NULL(&task->wait_act_until);
      task->privilige_mode   = privilige_mode;
      task->default_prio     = default_prio;

      task->overwaittime_per_prio_inc_step = 1u;
      ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);

      task->idle_task      = idle_task;
      task->state_request = &OS_TASK_STATE_REQUEST;
      OS_TASK_STATE_REQUEST(task, E_TASK_UNSPECIFIED);
      OS_CREATE_TASK(task);

      /* just create stack */
      task->p_stack_pointer_by_malloc = pStackAddr;
      task->p_stack_pointer_start    = pStackAddr;/*low addresse */
      task->p_stack_pointer_end      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
      task->stack_size             = uStackSize;
      /* stack register */
      task->p_stack_pointer                    = task->p_stack_pointer_end;/* stack w‰chst von groﬂen zu kleinen adressen.... */
   }
   else
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER, E_FUNC_INITTASK);
   }
}
