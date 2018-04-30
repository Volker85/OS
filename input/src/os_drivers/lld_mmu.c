#include "..\os_base\os_firstinc.h"
/* MCU: STM32F407VG -> MPU */

void LLF_MPU_DISABLE(void)
{
   /*#warn "LLF_MPU_DISABLE not yet implemented"*/
}

void LLF_MPU_ENABLE(void)
{
   /*#warn "LLF_MPU_ENABLE not yet implemented"*/
}

void LLF_MPU_SET_REGION(CoreID_t core_id, void* startAddr, void* endAddr)
{
   ReferenceUnusedParameter(core_id);
   ReferenceUnusedParameter(startAddr);
   ReferenceUnusedParameter(endAddr);
   /*#warn "LLF_MMU_SET_REGION not yet implemented"*/
}

void LLF_MPU_SWITCH_OFF_ALL_REGIONS(CoreID_t core_id)
{
   ReferenceUnusedParameter(core_id);   
}

unsigned_char_t LLF_GET_MPU_PRESENT(void)
{
   unsigned_char_t ret_val;
#if(CFG_PROCESSOR == cMCU_X86)
   ret_val = False;
#else
#define MPU_TYPE ((unsigned_char_t*)0xE000ED90)
   if( *MPU_TYPE != 0)
   {
      ret_val = True;
   }
   else
   {
      ret_val = False;
   }
#endif
   return ret_val;
}
