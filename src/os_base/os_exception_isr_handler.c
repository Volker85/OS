#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"

void OS_ISRHANDLERC0(void)
{
   ISR_TASK_DISPATCH_C0();
}
void OS_ISRHANDLERC1(void)
{
   ISR_TASK_DISPATCH_C1();
}
void OS_ISRHANDLERC2(void)
{
   ISR_TASK_DISPATCH_C2();
}
void OS_ISRHANDLERC3(void)
{
   ISR_TASK_DISPATCH_C3();
}
