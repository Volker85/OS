#include "os_firstinc.h"
#include "OS_shutdown.h"
#include "os_start_ext_prg.h"
Local void OS_DeinitHw(void);
Local void OS_DeinitSw(void);
Local void OS_DeinitMc(void);

void OS_DeinitHw(void)
{
   /* no deinit needed because nothing was initialized */
   /*QAC*/
}
void OS_DeinitSw(void)
{
   /* no deinit of sw needed */
   /*QAC*/
}
void OS_DeinitMc(void)
{
   LLF_MPU_DISABLE();
   LLF_DISABLE_INTERRUPTS_ALL_CORES();
   /*QAC*/
}

void OS_Shutdown(os_reset_type_t reset_typ)
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
   else if(reset_typ == os_reset_hardreset) /* os_reset_hardreset */
   {
      LLF_MCU_RESET_POWER();
   }
   else if (reset_typ == os_reset_exit)
   {
      OS_DeinitHw();
      OS_DeinitSw();
      OS_DeinitMc();
      OS_StartExtPrg((func_ptr_t) 0, (uint32)0, (uint32)0);/* TODO: line is unclear, why is the call done, why to address 0 ??*/
   }
   else
   {
      ;
   }
   OS_SetSwBug(os_bug_reset_exit_or_shutdown_failed, Func_Shutdown);
   while(1)
   {
      /* if you enter here, the reset has failed to be executed.... */
   }
}
