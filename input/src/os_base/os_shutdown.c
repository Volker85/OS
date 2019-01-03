#include "os_firstinc.h"
#include "os_shutdown.h"
Local void OS_DEINIT_HW(void);
Local void OS_DEINIT_SW(void);
void OS_DEINIT_HW(void)
{
   /*QAC*/
}
void OS_DEINIT_SW(void)
{
  /*QAC*/
}
void OS_DEINIT_MC(void)
{
   /*QAC*/
}

void OS_SHUTDOWN(os_reset_type_t reset_typ)
{
   /* disable interrupts for all cores -> prevents task activation, etc*/
   LLF_DISABLE_INTERRUPTS_ALL_CORES();

   /* clear mmu config */
   LLF_MPU_DISABLE();

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
      OS_StartExtPrg();      
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
