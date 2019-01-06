#include "os_firstinc.h"
#include "os_task_scheduler.h"

void OS_InitTaskSystem(void)
{
   /* Stack, Task-Function, TaskPrio, Interruptable, CoreId */
   OS_InitTasks();
}
