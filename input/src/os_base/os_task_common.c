#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_heap.h"

/* Create and delete the task environment is not supported, 
   because we do not allow dynamic RAM allocation for task environment.
   
   
*/


task_t* TASK_PTR[MAX_RUN_QUEUE_SIZE];

void OS_TASK_SAVETASK_ENVIRONMENT(task_t* task)
{
   if(task != 0)
   {
      /*
      http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html#s2
      x86: mov ... esp
      */
      LLF_SAVE_TASK_STACK(task->pStackPointer);
   #if(CFG_PROCESSOR == cMCU_X86)
      LLF_SAVE_REGISTERS(task->EAX,task->EBX,task->ECX,task->EDX);
   #else
      LLF_SAVE_REGISTERS(task->r0,task->r1,task->r2,task->r3);
   #endif
   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer,Func_SaveTaskEnvironment);
   }
   return;
}

void OS_TASK_RESTORETASK_ENVIRONMENT(task_t* task)
{
   if(task!=0)
   {
      LLF_RESTORE_TASK_STACK(task->pStackPointer);
      LLF_RESTORE_REGISTERS(task);
   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer,Func_RestoreTaskEnvironment);
   }
}
void OS_TASK_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr)
{
   LLF_RESTORE_SYSTEM_STACK(system_stack_ptr);
}
void OS_TASK_SAVE_SYSTEM_STACK(uint8* system_stack_ptr)
{
   LLF_SAVE_SYSTEM_STACK(system_stack_ptr);
}
void OS_Task_InitTaskEnvironment(task_t* task)
{
   if(task != 0)
   {
      /* general*/
      task->active                = False;
      /* general purpose registers */
   #if(CFG_PROCESSOR == cMCU_X86)
      task->EAX                             = (unsigned_int32_t)       0;
      task->EBX                             = (unsigned_int32_t)       0;
      task->ECX                             = (unsigned_int32_t)       0;
      task->EDX                             = (unsigned_int32_t)       0;
   #else
      task->r0                             = (unsigned_int32_t)       0;
      task->r1                             = (unsigned_int32_t)       0;
      task->r2                             = (unsigned_int32_t)       0;
      task->r3                             = (unsigned_int32_t)       0;
      task->r4                             = (unsigned_int32_t)       0;
      task->r5                             = (unsigned_int32_t)       0;
      task->r6                             = (unsigned_int32_t)       0;   
      task->r7                             = (unsigned_int32_t)       0;
      task->r8                             = (unsigned_int32_t)       0;
      task->r9                             = (unsigned_int32_t)       0;
      task->r10                             = (unsigned_int32_t)       0;
      task->r11                             = (unsigned_int32_t)       0;
      task->r12                             = (unsigned_int32_t)       0;  
   #endif
      /* task scheduling */
      task->WaitActUntil                     = (unsigned_char_t)         0;
      task->wait_time                        = (unsigned_int32_t)        0;
      task->TimeToPrioInc                    = (unsigned_int32_t)        5;
      task->overwaittime_per_prio_inc_step   = (unsigned_int32_t)        1;/* has to be >=1 */
      task->max_allowed_wait_time            = (unsigned_int32_t)        100000;
      task->exe_time                         = (unsigned_int32_t)        0;
      task->current_prio                     = (unsigned_char_t)         0;
      task->default_prio                     = (unsigned_char_t)         0;/* the default prio for this task before increase of prio due to wait time */

      /* task management */
      task->state_request                    =                           0;
      task->task_state                       =                           Task_unspecified;
      task->task_queued                      =                           False;
      task->FREE                             =                           0;
      task->NrOfInsAllowed                   = (unsigned_char_t)         0;
      task->NrOfInsActivated                 = (unsigned_char_t)         0;
      task->fp                               = (func_p_t)                0;

   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer,Func_CreateTaskEnvironment);
   }
}
#if(USE_STATIC_CREATED_TASKS != False)
void OS_Task_DeleteTaskEnvironment(task_t* task)
{
   if(task!=0 && task->pStackPointerByMalloc!=0)
   {
      os_free(task->pStackPointerByMalloc);/* only possible in case of heap used */
   }
   else
   {
      OS_SET_SW_BUG(os_bug_null_pointer,Func_DeleteTaskEnvironment);
   }

}
task_t* OS_Task_CreateTaskEnvironment(void)
{
   task_t* task = 0; 
   task = (task_t*) os_malloc(sizeof(task_t));/* only possible in case of heap used */
   if(task == 0)
   {  
      OS_SET_SW_BUG(os_bug_null_pointer,Func_CreateTaskEnvironment);
   }
   return task;
}
#endif