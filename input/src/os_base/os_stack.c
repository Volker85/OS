#include "os_firstinc.h"

void OS_StackCheck(void)
{
   /* the last 64 bytes are reserved for stack check for every stack
   unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];

   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_MAIN_STACK[0] for 64 bytes

   */
   static volatile uint32 stack_pos = 0, stack_used = False;
   STACK_ADDR = (volatile uint32*)-1;
   STACK_POS =  (volatile uint32) -1;
   STACK_USAGE_PERCENT = 0u;

   for(stack_pos = 0; stack_pos < OS_STACK_SIZE; stack_pos++)
   {
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         stack_used = True;
         if(stack_pos < STACK_POS)
         {
            STACK_POS  = (volatile uint32 )stack_pos;
            STACK_ADDR = (volatile uint32*)&OS_MAIN_STACK[stack_pos];
         }
      }
   }
   STACK_USAGE_PERCENT = (OS_STACK_SIZE - STACK_POS) * 100u / OS_STACK_SIZE;

   if((stack_used == True) && (STACK_USAGE_PERCENT > 80u))
   {
      OS_SetSwBug(os_bug_critical_stack_usage,Func_StackCheck);
      ReferenceUnusedParameter(STACK_POS);
      ReferenceUnusedParameter(STACK_ADDR);
      while(1)
      {
         /* allow easy debugging */
      }
   }
}
#if(CFG_PROCESSOR == cMCU_X86)
void OS_StackChkPatternInit(void)
{
   uint32 stack_pos = 0,nr_of_cores = 0;
   /* init the stack with 0xAA (only the highest 64 bytes leave out, because they might be already in use by SW) */
   for(stack_pos = 0; stack_pos < (OS_STACK_SIZE-64); stack_pos++)
   {
      OS_MAIN_STACK[stack_pos] = 0xAA;
   }
}
#endif