#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}
unsigned_int32_t OS_GetCurrentTime(void)
{
   //TODO: return a timer register
   /* the only free running counter on STM32F4 is the DWT counter DWT_CYCCNT
   The counter will overflow every 25sec -> provide function OS_ClearCurrentTime to reset the value to 0, and !!! do not use the absolute value for calculations but use the difference between start and stop of timer
   */
   /*
   TODO: What is the expected return of this function, some parts seems to assume a resolution of 1ms, but a resolution of 1 cpu cycle seems to be more reasonable
   */
   return (0);
}
