#include "os_firstinc.h"

void OS_STACK_CHECK(void)
{
   /* the last 64 bytes are reserved for stack check for every stack
   unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];

   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_MAIN_STACK[0u] for 64 bytes

   */
   static volatile uint32 stack_pos = 0u, stack_used = FALSE;
   STACK_ADDR = (volatile uint32*)-1u;
   STACK_POS =  (volatile uint32) -1u;
   STACK_USAGE_PERCENT = 0u;

   for(stack_pos = 0; stack_pos < OS_STACK_SIZE; stack_pos++)
   {
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < STACK_POS)
         {
            STACK_POS  = (volatile uint32 )stack_pos;
            STACK_ADDR = (volatile uint32*)&OS_MAIN_STACK[stack_pos];
         }
      }
   }
   STACK_USAGE_PERCENT = (OS_STACK_SIZE - STACK_POS) * 100u / OS_STACK_SIZE;

   if((stack_used == TRUE) && (STACK_USAGE_PERCENT > 80u))
   {
      OS_SET_SW_BUG(E_OS_BUG_CRITICAL_STACK_USAGE,E_FUNC_STACKCHECK);
      REFERENCE_UNUSED_PARAMETER(STACK_POS);
      REFERENCE_UNUSED_PARAMETER(STACK_ADDR);
      while(1)
      {
         /* allow easy debugging */
      }
   }
}
#if(CFG_PROCESSOR == MCU_X86)
/* this is done for CortexM4 in function INIT_OS_STACK() on assembler level, because no stack is allowed to be used during init, otherwise the SW will crash... */
void OS_STACK_CHK_PATTERN_INIT(void)
{
   uint32 stack_pos = 0u;
   /* init the stack with 0xAA (only the highest 64 bytes leave out, because they might be already in use by SW) */
   for(stack_pos = 0u; stack_pos < (OS_STACK_SIZE-64u); stack_pos++)
   {
      OS_MAIN_STACK[stack_pos] = 0xAAu;
   }
}
#endif