#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_shutdown.h"
#include "os_exception_isr_handler.h"



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
      OS_SET_SW_BUG(E_OS_BUG_SVC_NUMBER_MISSING, E_FUNC_ISRHANDLER);
      OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
      break;
   }
   }
}