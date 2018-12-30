#include "os_firstinc.h"
#include "os_shutdown.h"

void OS_SHUTDOWN(os_reset_type_t reset_typ)
{
   /* disable interrupts for all cores -> prevents task activation, etc*/
   LLF_DISABLE_INTERRUPTS_ALL_CORES();

   /* clear mmu config */
   LLF_MPU_DISABLE();

   /* clear all RAM */
   /*LLF_CLEAR_ALL_RAM();*/

   /* save some registers to restore after reset */

   /* power done/reset system */
   if(reset_typ == os_reset_powerdown)
   {
      LLF_MCU_SWITCH_OFF_POWER();
   }
   else if(reset_typ == os_reset_hardreset) /* os_reset_hardreset */
   {
      LLF_MCU_RESET_POWER();
   }
   else if (reset_typ == os_reset_exit)
   {
      OS_DEINIT_HW();
      OS_DEINIT_SW();
      OS_DEINIT_MC();
      OS_CALL_FUNC_POINTER();      
   }   
   else
   {
      ;
   }   
   while(1)
   {
      /* if you enter here, the reset has failed to be executed.... */
   }
}
