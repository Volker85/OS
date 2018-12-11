#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"

void OS_ISRHANDLERC0(void)
{
   ISR_TASK_DISPATCH_C0();
}