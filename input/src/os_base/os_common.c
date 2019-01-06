#include "os_firstinc.h"
#include "os_task_common.h"

void OS_SET_SW_BUG(os_sw_bugs_t bug_nr, os_sw_bugs_function_t task_func_nr)
{
   OS_SW_BUG[task_func_nr] = bug_nr;
}
unsigned_int32_t Get_current_time(void)
{
   return (0);
}