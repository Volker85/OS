#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SetSwBug(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}
unsigned_int32_t OS_GetCurrentTime(void)
{
   return (0);
}
