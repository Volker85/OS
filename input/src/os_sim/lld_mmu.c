#include "..\os_base\os_firstinc.h"

void LLF_MPU_DISABLE(void)
{
   /*#warn "LLF_MPU_DISABLE not yet implemented"*/
}

void LLF_MPU_ENABLE(void)
{
   /*#warn "LLF_MPU_ENABLE not yet implemented"*/
}

void LLF_MPU_SWITCH_OFF_ALL_REGIONS(void)
{  
      /* OS_SIM: no MMU implemented, always assume switched off MMU */
}
unsigned_char_t LLF_GET_MPU_PRESENT(void)
{
   /* OS_SIM: no MMU implemented, always assume switched off MMU */
   return False;
}
