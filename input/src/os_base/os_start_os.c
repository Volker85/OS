#include "os_firstinc.h"
#include "os_main.h"

void OS_START_OS(void)
{
   /* triggers hw & sw init (OS parts), interrupt system init (including MMU) */
   OS_STATE_HANDLER();
}