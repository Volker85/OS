#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_shutdown.h"



void OS_ISRHANDLERC0(uint32 svc_number)
{    
    switch(svc_number)
    {        
    case SVC_00:            /* Handle SVC 00 */    
    {
       /* svc_00 implemented as reference only */
       ReferenceUnusedParameter(svc_number);
       break;
    }
    default:                /* Unknown SVC */            
    {
       OS_SetSwBug(os_bug_svc_number_missing, Func_IsrHandler);
       OS_Shutdown(os_reset_hardreset);
       break;
    }
    }   
}