#include "os_firstinc.h"
#include "os_shutdown.h"

void OS_SHUTDOWN(os_reset_type_t reset_typ)
{
   /* disable interrupts for all cores -> prevents task activation, etc*/
   LLF_DISABLE_INTERRUPTS_ALL_CORES();

   /* clear mmu config */
   LLF_MPU_DISABLE();
   /* switch off WATCHDOG */
   LLF_SWITCH_OFF_WATCHDOG();

   /* clear all RAM */
   LLF_CLEAR_ALL_RAM();

   /* save some registers to restore after reset */

   /* power done/reset system */
   if(reset_typ == os_reset_powerdown)
   {
      LLF_MCU_SWITCH_OFF_POWER();
   }
   else /* os_reset_hardreset */
   {
      LLF_MCU_RESET_POWER();
   }
}
