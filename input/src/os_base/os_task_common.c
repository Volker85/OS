#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_heap.h"

/* Create and delete the task environment is not supported,
   because we do not allow dynamic RAM allocation for task environment.


*/

//TODO: global / static RAM allocation only via OS_RAM.c!!!
task_t* TASK_PTR[MAX_RUN_QUEUE_SIZE];

void OS_TASK_SAVE_TASK_ENVIRONMENT(task_t* task)
{
   if(task != NULL)
   {
      /*
      http://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html#s2
      x86: mov ... esp
      */
      LLF_SAVE_TASK_STACK(task->p_stack_pointer);
#if(CFG_PROCESSOR == MCU_X86)
      LLF_SAVE_REGISTERS(task->eax,task->ebx,task->ecx,task->edx);
#else
      LLF_SAVE_REGISTERS(task->r0,task->r1,task->r2,task->r3);
#endif
   }
   else
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER,E_FUNC_SAVETASKENVIRONMENT);
   }
   return;
}

void OS_TASK_RESTORETASK_ENVIRONMENT(task_t* task)
{
   if(task != NULL)
   {
      LLF_RESTORE_TASK_STACK(task->p_stack_pointer);
      LLF_RESTORE_REGISTERS(task);
   }
   else
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER,E_FUNC_RESTORETASKENVIRONMENT);
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
void OS_TASK_INIT_TASK_ENVIRONMENT(task_t* task)
{
   if(task != NULL)
   {
      /* general*/
      task->active                = FALSE;
      /* general purpose registers */
#if(CFG_PROCESSOR == MCU_X86)
      task->eax                             = (unsigned_int32_t)       0u;
      task->ebx                             = (unsigned_int32_t)       0u;
      task->ecx                             = (unsigned_int32_t)       0u;
      task->edx                             = (unsigned_int32_t)       0u;
#else
      task->r0                             = (unsigned_int32_t)       0u;
      task->r1                             = (unsigned_int32_t)       0u;
      task->r2                             = (unsigned_int32_t)       0u;
      task->r3                             = (unsigned_int32_t)       0u;
      task->r4                             = (unsigned_int32_t)       0u;
      task->r5                             = (unsigned_int32_t)       0u;
      task->r6                             = (unsigned_int32_t)       0u;
      task->r7                             = (unsigned_int32_t)       0u;
      task->r8                             = (unsigned_int32_t)       0u;
      task->r9                             = (unsigned_int32_t)       0u;
      task->r10                             = (unsigned_int32_t)       0u;
      task->r11                             = (unsigned_int32_t)       0u;
      task->r12                             = (unsigned_int32_t)       0u;
#endif
      /* task scheduling */
      ASSIGN_NULL(&task->wait_act_until);
      ASSIGN_NULL(&task->wait_time);
      ASSIGN_UINT32(&task->time_to_prio_inc, 5u);
      task->overwaittime_per_prio_inc_step   = (unsigned_int32_t)        1u;/* has to be >=1 */
      ASSIGN_UINT32(&task->max_allowed_wait_time,         100000u);
      ASSIGN_NULL(&task->exe_time);
      task->current_prio                     = (unsigned_char_t)         0u;
      task->default_prio                     = (unsigned_char_t)         0u;/* the default prio for this task before increase of prio due to wait time */

      /* task management */
      task->state_request                    =                           &OS_TASK_STATE_REQUEST;
      task->task_state                       =                           E_TASK_UNSPECIFIED;
      task->task_queued                      =                           FALSE;
      task->free                             =                           0u;
      task->nr_of_ins_allowed                   = (unsigned_char_t)         0u;
      task->nr_of_ins_activated                 = (unsigned_char_t)         0u;
      task->fp                               = (func_p_t)                0u;

   }
   else
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER,E_FUNC_INITTASKENVIRONMENT);
   }
}
#if(USE_STATIC_CREATED_TASKS != FALSE && DYNAMIC_MEMORY_USED != FALSE)
void OS_TASK_INIT_TASK_ENVIRONMENT(task_t* task)
{
   if(task!=0 && task->p_stack_pointer_by_malloc!=0u)
   {
      OS_free(task->p_stack_pointer_by_malloc);/* only possible in case of heap used */
   }
   else
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER,E_FUNC_DELETETASKENVIRONMENT);
   }

}
task_t* OS_Task_CreateTaskEnvironment(void)
{
   task_t* task = 0u;
   task = (task_t*) OS_MALLOC(sizeof(task_t));/* only possible in case of heap used */
   if(task == 0u)
   {
      OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER,E_FUNC_CREATETASKENVIRONMENT);
   }
   return task;
}
#endif
