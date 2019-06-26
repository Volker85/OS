#include "os_firstinc.h"
#include "os_task_common.h"
#include "os_task_scheduler.h"
#include "os_shutdown.h"

#define SVC_00 0x00
#define SVC_01 0x01

void OS_ISRHANDLERC0(uint32 svc_number)
{    
    switch(svc_number)
    {        
    case SVC_00:            /* Handle SVC 00 */    
    {
       /*TODO*/
       break;
    }
    case SVC_01:            /* Handle SVC 01 */            
    {
       /*TODO*/
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