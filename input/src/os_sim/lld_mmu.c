#include "..\os_base\os_firstinc.h"

void LLF_MPU_DISABLE(void)
{
   /* OS_SIM: no MMU implemented, always assume switched off MMU */
}

void LLF_MPU_ENABLE(void)
{
   /* OS_SIM: no MMU implemented, always assume switched off MMU */
}

uint32 LLF_GET_MPU_PRESENT(void)
{
   /* OS_SIM: no MMU implemented, always assume switched off MMU */
   return False;
}
