#include "..\os_base\os_firstinc.h"
Global_inline LLF_CLEAR_ALL_RAM(void)
{
      /* Zero fill the bss segment.  This is done with inline assembly since this
      will clear the value of pulDest if it is not kept in a register. */
   __asm("  ldr     r0, =_ram_start\n"
         "  ldr     r1, =_ram_end\n"
         "  mov     r2, #0\n"
         "  .thumb_func\n"
         "zero_loop:\n"
         "    cmp     r0, r1\n"
         "    it      lt\n"
         "    strlt   r2, [r0], #4\n"
         "    blt     zero_loop");
}