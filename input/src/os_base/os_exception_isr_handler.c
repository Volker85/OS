#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_shutdown.h"



void OS_ISRHANDLERC0(uint32 svc_number)
{
   switch(svc_number)/* TODO: Implement needed SVC numbers (need for example for user code to access priviliged parts....) */
   {
   case SVC_00:            /* Handle SVC 00 */
   {
      /* svc_00 implemented as reference only */
      REFERENCE_UNUSED_PARAMETER(svc_number);
      break;
   }
   default:                /* Unknown SVC */
   {
      OS_SET_SW_BUG(os_bug_svc_number_missing, Func_IsrHandler);
      OS_SHUTDOWN(os_reset_hardreset);
      break;
   }
   }
}