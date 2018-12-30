#include "os_firstinc.h"
void OS_INIT_SW(void)
{
   /* RAM clear done in OS_INIT_MC (because no RAM usage allowed and possible before clearing the RAM) */
   /* every block which needs initialisation part from 0x00 value needs to be initialized here */
   OS_INIT_TASK_SYSTEM();
}
