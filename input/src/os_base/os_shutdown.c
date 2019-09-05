#include "os_firstinc.h"
#include "OS_shutdown.h"
#include "os_start_ext_prg.h"
LOCAL void os_deinit_hw(void);
LOCAL void os_deinit_sw(void);
LOCAL void os_deinit_mc(void);

void os_deinit_hw(void)
{
   /* no deinit needed because nothing was initialized */
   /*QAC*/
}
void os_deinit_sw(void)
{
   /* no deinit of sw needed */
   /*QAC*/
}
void os_deinit_mc(void)
{
   LLF_MPU_DISABLE();
   LLF_DISABLE_INTERRUPTS_ALL_CORES();
   /*QAC*/
}

void OS_SHUTDOWN(os_reset_type_t reset_typ, func_ptr_t addr)
{
   /* disable interrupts for all cores -> prevents task activation, etc*/
   LLF_DISABLE_INTERRUPTS_ALL_CORES();

   /* clear mmu config */
   LLF_MPU_DISABLE();

   /* power done/reset system */
   if(reset_typ == os_reset_powerdown)
   {
      LLF_MCU_SWITCH_OFF_POWER();
   }
   else if(reset_typ == E_OS_RESET_HARDRESET) /* E_OS_RESET_HARDRESET */
   {
      LLF_MCU_RESET_POWER();
   }
   else if (reset_typ == os_reset_exit)
   {
      os_deinit_hw();
      os_deinit_sw();
      os_deinit_mc();
      OS_START_EXT_PRG((func_ptr_t)addr, (uint32)0u, (uint32)0u);
   }
   else
   {
      ;
   }
   OS_SET_SW_BUG(os_bug_reset_exit_or_shutdown_failed, Func_Shutdown);
   while(1)
   {
      /* if you enter here, the reset has failed to be executed.... */
   }
}
