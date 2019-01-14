#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_queue.h"
#include "os_task_scheduler.h"





/* index 0: current task, 1,2,3,4: next tasks to be executed */
/*
1. after execution of task finished(OS_TerminateTask):
 - delete run_queue_element         (DeleteFromTaskQueue)
 - delete Scheduling queue entry    (DeleteFromSchedulingQueue)
 - shift pointers towards index 0   (UpdateSchedulingQueue)


 2. to add new task (ActivateTask):
 - add element to run_queue at first free element (AddToTaskQueue)
 - add a reference to the scheduling Queue         (AddToSchedulingQueue)

 3. to start task:
- start the task at index = 0                     (GetFromTaskQueue)

 4. to preempt task:
- take element of index = 0 of SchedulingQueue and save it somewhere else  (UpdateSchedulingQueue)
- shift all entries in SchedulingQueue to 0 by 1                           (UpdateSchedulingQueue)
- add saved element at first free entry in SchedulingQueue                 (UpdateSchedulingQueue)
- eliminate empty SchedulingQueue entries                                  (UpdateSchedulingQueue)
 */


void SET_RUNNING_TASK(task_t* task, scheduling_t* scheduling_task)
{
   RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
   if(task != 0)
   {
      (&RUNNING_TASK[0])->active                          = task->active;
      (&RUNNING_TASK[0])->task_queued                     = task->task_queued;
      (&RUNNING_TASK[0])->IdleTask                        = task->IdleTask;
      (&RUNNING_TASK[0])->FREE                            = task->FREE;
      (&RUNNING_TASK[0])->NrOfInsAllowed                  = task->NrOfInsAllowed;
      (&RUNNING_TASK[0])->NrOfInsActivated                = task->NrOfInsActivated;
      (&RUNNING_TASK[0])->WaitActUntil                    = task->WaitActUntil;
      (&RUNNING_TASK[0])->wait_time                       = task->wait_time;
      (&RUNNING_TASK[0])->TimeToPrioInc                   = task->TimeToPrioInc;
      (&RUNNING_TASK[0])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
      (&RUNNING_TASK[0])->max_allowed_wait_time           = task->max_allowed_wait_time;
      (&RUNNING_TASK[0])->exe_time                        = task->exe_time;
      (&RUNNING_TASK[0])->start_time                      = task->start_time;
      (&RUNNING_TASK[0])->current_prio                    = task->current_prio;
      (&RUNNING_TASK[0])->default_prio                    = task->default_prio;
      (&RUNNING_TASK[0])->fp                              = task->fp;
      (&RUNNING_TASK[0])->state_request                   = task->state_request;
      (&RUNNING_TASK[0])->task_state                      = task->task_state;
      (&RUNNING_TASK[0])->task_group                      = task->task_group;
   #if(CFG_PROCESSOR == cMCU_X86)
      (&RUNNING_TASK[0])->EAX                             = task->EAX;
      (&RUNNING_TASK[0])->EBX                             = task->EBX;
      (&RUNNING_TASK[0])->ECX                             = task->ECX;
      (&RUNNING_TASK[0])->EDX                             = task->EDX;
   #else
      (&RUNNING_TASK[0])->r0                             = task->r0;
      (&RUNNING_TASK[0])->r1                             = task->r1;
      (&RUNNING_TASK[0])->r2                             = task->r2;
      (&RUNNING_TASK[0])->r3                             = task->r3;
      (&RUNNING_TASK[0])->r4                             = task->r4;
      (&RUNNING_TASK[0])->r5                             = task->r5;
      (&RUNNING_TASK[0])->r6                             = task->r6;
      (&RUNNING_TASK[0])->r7                             = task->r7;
      (&RUNNING_TASK[0])->r8                             = task->r8;
      (&RUNNING_TASK[0])->r9                             = task->r9;
      (&RUNNING_TASK[0])->r10                            = task->r10;
      (&RUNNING_TASK[0])->r11                            = task->r11;
      (&RUNNING_TASK[0])->r12                            = task->r12;
   #endif

      (&RUNNING_TASK[0])->pStackPointer                   = task->pStackPointer;
      (&RUNNING_TASK[0])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
      (&RUNNING_TASK[0])->pStackPointerStart              = task->pStackPointerStart;
      (&RUNNING_TASK[0])->StackSize                       = task->StackSize;
      (&RUNNING_TASK[0])->pStackPointerEnd                = task->pStackPointerEnd;
   }
}

/* task queue handling */
void OS_InitTaskQueue(void)
{
   if(bTASK_QUEUE_INITIALIZED == False)
   {
      unsigned_char_t element_nr = 0;
      while(element_nr < MAX_RUN_QUEUE_SIZE)
      {
         TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0;
         OS_Task_InitTaskEnvironment(&TASK_RUN_QUEUE[element_nr]);
         element_nr++;
      }
      bTASK_QUEUE_INITIALIZED = True;
   }
}
task_t* AddToTaskQueue(task_t* task)
{
   unsigned_char_t element_nr = 0;
   task_t* ret_task = 0;
   
   while( (element_nr < MAX_RUN_QUEUE_SIZE)
          &&((&TASK_RUN_QUEUE[element_nr])->task_queued == True)
        )
   {
      element_nr++;
   }
   /* while loop ended due to free task_array slot ...*/
   if( (element_nr < MAX_RUN_QUEUE_SIZE) && ((&TASK_RUN_QUEUE[element_nr])->task_queued == False) )
   {
      (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
      (&TASK_RUN_QUEUE[element_nr])->task_queued                     = True;
      (&TASK_RUN_QUEUE[element_nr])->IdleTask                        = task->IdleTask;
      (&TASK_RUN_QUEUE[element_nr])->FREE                            = task->FREE;
      (&TASK_RUN_QUEUE[element_nr])->NrOfInsAllowed                  = task->NrOfInsAllowed;
      (&TASK_RUN_QUEUE[element_nr])->NrOfInsActivated                = task->NrOfInsActivated;
      (&TASK_RUN_QUEUE[element_nr])->WaitActUntil                    = task->WaitActUntil;
      (&TASK_RUN_QUEUE[element_nr])->wait_time                       = task->wait_time;
      (&TASK_RUN_QUEUE[element_nr])->TimeToPrioInc                   = task->TimeToPrioInc;
      (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
      (&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time           = task->max_allowed_wait_time;
      (&TASK_RUN_QUEUE[element_nr])->exe_time                        = task->exe_time;
      (&TASK_RUN_QUEUE[element_nr])->start_time                      = task->start_time;
      (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
      (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
      (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
      (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
      (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
      (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
   #if(CFG_PROCESSOR == cMCU_X86)
      (&TASK_RUN_QUEUE[element_nr])->EAX                             = task->EAX;
      (&TASK_RUN_QUEUE[element_nr])->EBX                             = task->EBX;
      (&TASK_RUN_QUEUE[element_nr])->ECX                             = task->ECX;
      (&TASK_RUN_QUEUE[element_nr])->EDX                             = task->EDX;
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
      (&TASK_RUN_QUEUE[element_nr])->pStackPointer                   = task->pStackPointer;
      (&TASK_RUN_QUEUE[element_nr])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
      (&TASK_RUN_QUEUE[element_nr])->pStackPointerStart              = task->pStackPointerStart;
      (&TASK_RUN_QUEUE[element_nr])->StackSize                       = task->StackSize;
      (&TASK_RUN_QUEUE[element_nr])->pStackPointerEnd                = task->pStackPointerEnd;
      ret_task = &TASK_RUN_QUEUE[element_nr];
   }
   return ret_task;
}
void DeleteFromTaskQueue(task_t* task)
{
   task->active                                =   False   ;
   task->task_queued                           =   False   ;
   task->IdleTask                              =   False   ;
   task->FREE                                  =   0       ;
   task->NrOfInsAllowed                        =   0       ;
   task->NrOfInsActivated                      =   0       ;
   task->WaitActUntil                          =   0       ;
   task->wait_time                             =   0       ;
   task->TimeToPrioInc                         =   0       ;
   task->overwaittime_per_prio_inc_step        =   0       ;
   task->max_allowed_wait_time                 =   0       ;
   task->exe_time                              =   0       ;
   task->start_time                            =   0       ;
   task->current_prio                          =   0       ;
   task->default_prio                          =   0       ;
   task->fp                                    =   0       ;
   task->state_request                         =   &task_state_request       ;
   task->task_state                            =   Task_unspecified;
   task->task_group                            =   0       ;
      #if(CFG_PROCESSOR == cMCU_X86)
      task->EAX                                   =   0              ;
      task->EBX                                   =   0             ;
      task->ECX                                   =   0              ;
      task->EDX                                   =   0              ;
      #elif(CFG_PROCESSOR == cMCU_CORTEX_M4)
      task->r0                                   =   0              ;
      task->r1                                   =   0              ;
      task->r2                                   =   0              ;
      task->r3                                   =   0              ;
      task->r4                                   =   0              ;
      task->r5                                   =   0              ;
      task->r6                                   =   0              ;
      task->r7                                   =   0              ;
      task->r8                                   =   0              ;
      task->r9                                   =   0              ;
      task->r10                                  =   0             ;
      task->r11                                  =   0             ;
      task->r12                                  =   0             ;
      #else
      #error "os_task_queue.c"
      #endif
   task->pStackPointer                         =   0       ;
   task->pStackPointerByMalloc                 =   0       ;
   task->pStackPointerStart                    =   0       ;
   task->StackSize                             =   0       ;
   task->pStackPointerEnd                      =   0       ;
}
task_t* GetFromTaskQueue(scheduling_t* scheduling_queue_element)
{
   return ((task_t*)*scheduling_queue_element);
}
scheduling_t* GetFromSchedulingQueue(unsigned_char_t element_nr)
{
   return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
}
/* Pointer Queue Handling*/
void DeleteFromSchedulingQueue(scheduling_t* scheduling_queue_element)
{
   *scheduling_queue_element = 0;
}
void AddToSchedulingQueue(task_t* task)
{
   /*
   Description:
   add "task" into next free slot of TASK_SCHEDULING_QUEUE

   in:     task_t* task (task to be added)
   out:
   */
   unsigned_char_t Add_successful = False;
   unsigned_char_t index = 0;

   while(  (index < MAX_RUN_QUEUE_SIZE)
           &&(Add_successful == False))
   {
      if(TASK_SCHEDULING_QUEUE[index] == 0)
      {
         TASK_SCHEDULING_QUEUE[index] = task;
         Add_successful         = True;
      }
      index++;
   }
   return;
}
void UpdateSchedulingQueue(void)
{
   /* eliminate emptry link list entries (should be colleted at the high numbers) */
   unsigned_char_t dest = 0, src = 0;

   while (dest < MAX_RUN_PQUEUE_SIZE)
   {
      if(TASK_SCHEDULING_QUEUE[dest] == 0)
      {
         /* found empty entry ->shift following elements left in array */

         src = dest; /* start from empty entry point */
         while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0))
         {
            src++;
         }
         if((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]!=0))
         {
            TASK_SCHEDULING_QUEUE[dest] = TASK_SCHEDULING_QUEUE[src];
            TASK_SCHEDULING_QUEUE[src]  = 0;
         }
      }
      dest++;
   }
}

/* Idle task queue handling */
task_t* GetIdleTask(void)
{
   return (&TASK_IDLE_QUEUE[0]);
}
void AddToIdleTaskQueue(task_t* task)
{
   /* only 1 element for TASK_IDLE_QUEUE allowed */
   if((&TASK_IDLE_QUEUE[0])->IdleTask == False)
   {
      (&TASK_IDLE_QUEUE[0])->active                                =   task->active           ;
      (&TASK_IDLE_QUEUE[0])->task_queued                           =   task->task_queued      ;
      (&TASK_IDLE_QUEUE[0])->IdleTask                              =   task->IdleTask         ;
      (&TASK_IDLE_QUEUE[0])->FREE                                  =   task->FREE             ;
      (&TASK_IDLE_QUEUE[0])->NrOfInsAllowed                        =   task->NrOfInsAllowed   ;
      (&TASK_IDLE_QUEUE[0])->NrOfInsActivated                      =   task->NrOfInsActivated ;
      (&TASK_IDLE_QUEUE[0])->WaitActUntil                          =   task->WaitActUntil     ;
      (&TASK_IDLE_QUEUE[0])->wait_time                             =   task->wait_time        ;
      (&TASK_IDLE_QUEUE[0])->TimeToPrioInc                         =   task->TimeToPrioInc    ;
      (&TASK_IDLE_QUEUE[0])->overwaittime_per_prio_inc_step        =   task->overwaittime_per_prio_inc_step;
      (&TASK_IDLE_QUEUE[0])->max_allowed_wait_time                 =   task->max_allowed_wait_time;
      (&TASK_IDLE_QUEUE[0])->exe_time                              =   task->exe_time;
      (&TASK_IDLE_QUEUE[0])->current_prio                          =   task->current_prio     ;
      (&TASK_IDLE_QUEUE[0])->default_prio                          =   task->default_prio     ;
      (&TASK_IDLE_QUEUE[0])->fp                                    =   task->fp               ;
      (&TASK_IDLE_QUEUE[0])->state_request                         =   task->state_request    ;
      (&TASK_IDLE_QUEUE[0])->task_state                            =   Task_ready             ;
      (&TASK_IDLE_QUEUE[0])->task_group                            =   task->task_group       ;
      #if(CFG_PROCESSOR == cMCU_X86)
      (&TASK_IDLE_QUEUE[0])->EAX                                   =   task->EAX              ;
      (&TASK_IDLE_QUEUE[0])->EBX                                   =   task->EBX              ;
      (&TASK_IDLE_QUEUE[0])->ECX                                   =   task->ECX              ;
      (&TASK_IDLE_QUEUE[0])->EDX                                   =   task->EDX              ;
      #elif(CFG_PROCESSOR == cMCU_CORTEX_M4)
      (&TASK_IDLE_QUEUE[0])->r0                                   =   task->r0              ;
      (&TASK_IDLE_QUEUE[0])->r1                                   =   task->r1              ;
      (&TASK_IDLE_QUEUE[0])->r2                                   =   task->r2              ;
      (&TASK_IDLE_QUEUE[0])->r3                                   =   task->r3              ;
      (&TASK_IDLE_QUEUE[0])->r4                                   =   task->r4              ;
      (&TASK_IDLE_QUEUE[0])->r5                                   =   task->r5              ;
      (&TASK_IDLE_QUEUE[0])->r6                                   =   task->r6              ;
      (&TASK_IDLE_QUEUE[0])->r7                                   =   task->r7              ;
      (&TASK_IDLE_QUEUE[0])->r8                                   =   task->r8              ;
      (&TASK_IDLE_QUEUE[0])->r9                                   =   task->r9              ;
      (&TASK_IDLE_QUEUE[0])->r10                                  =   task->r10             ;
      (&TASK_IDLE_QUEUE[0])->r11                                  =   task->r11             ;
      (&TASK_IDLE_QUEUE[0])->r12                                  =   task->r12             ;
      #else
      #error "os_task_queue.c"
      #endif
      (&TASK_IDLE_QUEUE[0])->pStackPointer                         =   task->pStackPointer    ;
      (&TASK_IDLE_QUEUE[0])->pStackPointerByMalloc                 =   task->pStackPointerByMalloc;
      (&TASK_IDLE_QUEUE[0])->pStackPointerStart                    =   task->pStackPointerStart;
      (&TASK_IDLE_QUEUE[0])->StackSize                             =   task->StackSize        ;
      (&TASK_IDLE_QUEUE[0])->pStackPointerEnd                      =   task->pStackPointerEnd ;
   }
}
task_t* GetRunningTask(void)
{
   return (&RUNNING_TASK[0]);
}
scheduling_t* GetRunningSchedulingQueueElementPtr(void)
{
    return RUNNING_SCHEDULING_QUEUE_ENTRY;
}
void OS_InitTask(
   task_t*          task,
   func_p_t         TaskFunction,
   unsigned_char_t  AllowedInstances,
   unsigned_char_t  IdleTask,
   task_group_t*    p_task_group,
   unsigned_char_t* pStackAddr,
   unsigned_int32_t uStackSize,
   privilige_mode_t privilige_mode,
   CoreID_t         core,
   unsigned_char_t  default_prio
)
{
   ReferenceUnusedParameter(core);
   if(task!=0)
   {
      task->active           = False;
      task->fp               = TaskFunction;
      task->NrOfInsAllowed   = AllowedInstances;
      task->task_group       = p_task_group;
      task->NrOfInsActivated = 0;
      task->WaitActUntil     = 0;
      task->privilige_mode   = privilige_mode;
      task->default_prio     = default_prio;

      task->overwaittime_per_prio_inc_step = 1;
      task->max_allowed_wait_time          = 100000;

      task->IdleTask      = IdleTask;
      task->state_request = &task_state_request;
      task_state_request(task, Task_unspecified);
      OS_CreateTask(task);
      if(uStackSize > TASK_STACK_SIZE)
      {
         uStackSize = TASK_STACK_SIZE;
      }

      /* just create stack */
      task->pStackPointerByMalloc = pStackAddr;
      task->pStackPointerStart    = pStackAddr;/*low addresse */
      task->pStackPointerEnd      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
      task->StackSize             = uStackSize;
      /* stack register */
      task->pStackPointer                    = task->pStackPointerEnd;/* stack w‰chst von groﬂen zu kleinen adressen.... */
   }
   else
   {
      OS_SetSwBug(os_bug_null_pointer, Func_InitTask);
   }
}
