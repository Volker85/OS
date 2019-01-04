#ifndef _os_task_scheduler_h_
#define _os_task_scheduler_h_

#include "os_firstinc.h"
#include "os_task_common.h"

#define Task_0_ptr 0
#define Task_1_ptr 1
#define Task_2_ptr 2
#define Task_3_ptr 3

#define OS_SaveTaskPtr(task_ptr, Task_n_ptr)


typedef unsigned task_time_t;

extern void OS_STARTTASK(task_t* task);
extern void OS_ActivateTask(task_t* task);
extern void OS_SLEEPTASK(task_t* task, task_time_t millisec);
extern void OS_INIT_TASK(
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
);
extern void ISR_TASK_DISPATCH(void);
extern void OS_INIT_TASKS(void);
extern unsigned_char_t task_state_request(void* task, task_state_t requested_state);
extern void ISR_TASK_DISPATCH_C0(void);
extern void OS_ACTIVATE_DISPATCHER(void);
extern void OS_TERMINATE_TASK(task_t* task);
extern void OS_TASK_DISPATCHER(void);
#endif /* _os_task_scheduler_h_  */

