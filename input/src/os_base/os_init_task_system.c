#include "os_firstinc.h"
#include "os_task_scheduler.h"

void OS_INIT_TASK_SYSTEM(void)
{
   /* Stack, Task-Function, TaskPrio, Interruptable, CoreId */
   OS_INIT_TASKs();
}
