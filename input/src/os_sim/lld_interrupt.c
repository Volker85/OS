#include "..\os_base\os_firstinc.h"

void LLF_INT_DISABLE(void)
{
#if(CFG_PROCESSOR == MCU_X86)
#else
   /* enable interrupts via setting i bit */
   __asm__ __volatile__ ("cpsid i");
#endif
}
void LLF_INT_ENABLE(void)
{
#if(CFG_PROCESSOR == MCU_X86)
#else
   /* enable interrupts via clearing i bit */
   __asm__ __volatile__ ("cpsie i");
#endif
}
void LLF_DISABLE_INTERRUPTS_ALL_CORES(void)
{
   /* just single core is supported */
   LLF_INT_DISABLE();
}