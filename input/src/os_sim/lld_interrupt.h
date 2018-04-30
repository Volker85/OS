#ifndef _lld_interrupt_h_
#define _lld_interrupt_h_
#include "..\os_base\os_firstinc.h"

#define os_interrupt_swi_1 asm("swi 1")
#define os_interrupt_swi_2 asm("swi 2")
#define os_interrupt_swi_3 asm("swi 3")
#define os_interrupt_swi_4 asm("swi 4")
#define os_interrupt_swi_5 asm("swi 5")

extern void LLF_INT_DISABLE(void);
extern void LLF_INT_ENABLE(void);
extern void LLF_DISABLE_INTERRUPTS_ALL_CORES(void);
#endif /* _lld_interrupt_h_ */
