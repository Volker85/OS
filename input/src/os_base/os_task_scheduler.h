#ifndef _OS_TASK_SCHEDULER_H_
#define _OS_TASK_SCHEDULER_H_

#include "os_firstinc.h"
#include "os_task_common.h"

#define TASK_0_PTR 0u
#define TASK_1_PTR 1u
#define TASK_2_PTR 2u
#define TASK_3_PTR 3u




extern void OS_START_TASK(task_t* task, scheduling_t* scheduling_task);
extern void OS_ACTIVATE_TASK(task_t* task);
extern void OS_SLEEP_TASK(task_t* task, timebig_t usec, scheduling_t* scheduling_task_ptr);
extern void OS_INIT_TASK(
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
);
extern void OS_INIT_TASKS(void);
extern unsigned_char_t OS_TASK_STATE_REQUEST(void* task, task_state_t requested_state);
extern void OS_ACTIVATE_DISPATCHER(void);
extern void OS_TERMINATE_TASK(task_t* task, scheduling_t* scheduling_task);
extern void OS_TASK_DISPATCHER(void);
extern void OS_CREATE_TASK(task_t* task);
#endif /* _OS_TASK_SCHEDULER_H_  */

