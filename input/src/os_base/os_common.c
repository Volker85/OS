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
   TODO: Scale the output to 1us
   TODO: do not use elementar types (e.g. uint32) but use a structure / object which supports 128 bit at least to reprasentate the elapsed cylces, the elapsed time in us / ms / s / min / h.....
   */
   return (0);
}

void OS_ResetCurrentTime(void)
{
   // reset the counter DWT_CYCCNT to 0
}