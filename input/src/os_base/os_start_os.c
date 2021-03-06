#include "os_firstinc.h"
#include "os_main.h"
#include "os_start_os.h"
#include "os_exception.h"


void OS_START_OS(void)
{
   /* init the fault registers */
   VAR_HARDFAULT_STATUS_REG       = 0u;
   VAR_MEM_MANAG_FAULT_STATUS_REG = 0u;
   VAR_USAGE_FAULT_STATUS_REG     = 0u;
   VAR_FAULT_STATUS_REG           = 0u;
   VAR_MEM_FAULT_ADDR_REG         = 0u;
   VAR_BUS_FAULT_ADDR_REG         = 0u;
   VAR_AUX_FAULT_STATUS_REG       = 0u;
   VAR_BUS_FAULT_STATUS_REG       = 0u;
   LINK_REGISTER_HANDLER          = 0u;
   BACKUP_SYSTICK_CURRENT_VAL_REG = 0u;

#if(CFG_PROCESSOR == MCU_CORTEX_M4)
   /* activate all exception to improve the debug capabilities */
   SYS_HANDLER_CTRL_STATE_ENA_ALL_EXCEP;
#endif

   /* triggers hw & sw init (OS parts), interrupt system init (including MMU) */
   OS_STATE = OS_STATE_INIT;
   OS_STATE_HANDLER();
}
