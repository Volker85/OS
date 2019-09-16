#include "os_firstinc.h"

void OS_STACK_CHECK(void)
{ 
   /* the last 64 bytes are reserved for stack check for every stack
   unsigned_char_t OS_MAIN_STACK[OS_MAIN_STACK_SIZE];

   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_MAIN_STACK[0u] for 64 bytes

   */
   static volatile uint32 stack_pos = 0u, stack_used = FALSE;
   OS_MAIN_STACK_ADDR = (volatile uint32*)-1u;
   OS_MAIN_STACK_POS =  (volatile uint32) -1u;
   OS_MAIN_STACK_USAGE_PERCENT = 0u;

   for(stack_pos = 0; stack_pos < OS_MAIN_STACK_SIZE; stack_pos++)
   {
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < OS_MAIN_STACK_POS)
         {
            OS_MAIN_STACK_POS  = (volatile uint32 )stack_pos;
            OS_MAIN_STACK_ADDR = (volatile uint32*)&OS_MAIN_STACK[stack_pos];
         }
      }
   }
   for(stack_pos = 0; stack_pos < TASK0_STACK_SIZE; stack_pos++)
   {
      if(TASK0_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < TASK0_STACK_POS)
         {
            TASK0_STACK_POS  = (volatile uint32 )stack_pos;
            TASK0_STACK_ADDR = (volatile uint32*)&TASK0_STACK[stack_pos];
         }
      }
   }
   for(stack_pos = 0; stack_pos < TASK1_STACK_SIZE; stack_pos++)
   {
      if(TASK1_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < TASK1_STACK_POS)
         {
            TASK1_STACK_POS  = (volatile uint32 )stack_pos;
            TASK1_STACK_ADDR = (volatile uint32*)&TASK1_STACK[stack_pos];
         }
      }
   }
   for(stack_pos = 0; stack_pos < TASK2_STACK_SIZE; stack_pos++)
   {
      if(TASK2_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < TASK2_STACK_POS)
         {
            TASK2_STACK_POS  = (volatile uint32 )stack_pos;
            TASK2_STACK_ADDR = (volatile uint32*)&TASK2_STACK[stack_pos];
         }
      }
   }
   for(stack_pos = 0; stack_pos < TASK3_STACK_SIZE; stack_pos++)
   {
      if(TASK3_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < TASK3_STACK_POS)
         {
            TASK3_STACK_POS  = (volatile uint32 )stack_pos;
            TASK3_STACK_ADDR = (volatile uint32*)&TASK3_STACK[stack_pos];
         }
      }
   }
   for(stack_pos = 0; stack_pos < TASK4_STACK_SIZE; stack_pos++)
   {
      if(TASK4_STACK[stack_pos] != 0xAA)
      {
         stack_used = TRUE;
         if(stack_pos < TASK4_STACK_POS)
         {
            TASK4_STACK_POS  = (volatile uint32 )stack_pos;
            TASK4_STACK_ADDR = (volatile uint32*)&TASK4_STACK[stack_pos];
         }
      }
   }   
   OS_MAIN_STACK_USAGE_PERCENT = (OS_MAIN_STACK_SIZE - OS_MAIN_STACK_POS) * 100u / OS_MAIN_STACK_SIZE;
   TASK0_STACK_USAGE_PERCENT   = (TASK0_STACK_SIZE - TASK0_STACK_POS) * 100u / TASK0_STACK_SIZE;
   TASK1_STACK_USAGE_PERCENT   = (TASK1_STACK_SIZE - TASK1_STACK_POS) * 100u / TASK1_STACK_SIZE;
   TASK2_STACK_USAGE_PERCENT   = (TASK2_STACK_SIZE - TASK2_STACK_POS) * 100u / TASK2_STACK_SIZE;
   TASK3_STACK_USAGE_PERCENT   = (TASK3_STACK_SIZE - TASK3_STACK_POS) * 100u / TASK3_STACK_SIZE;
   TASK4_STACK_USAGE_PERCENT   = (TASK4_STACK_SIZE - TASK4_STACK_POS) * 100u / TASK4_STACK_SIZE;

   if((stack_used == TRUE) && ((OS_MAIN_STACK_USAGE_PERCENT > 80u) || (TASK0_STACK_USAGE_PERCENT > 80u) || (TASK1_STACK_USAGE_PERCENT > 80u) || (TASK2_STACK_USAGE_PERCENT > 80u) || (TASK3_STACK_USAGE_PERCENT > 80u) || (TASK4_STACK_USAGE_PERCENT > 80u)))
   {
      OS_SET_SW_BUG(E_OS_BUG_CRITICAL_STACK_USAGE,E_FUNC_STACKCHECK);
      while(1)
      {
         /* allow easy debugging */
      }
   }
}
#if(CFG_PROCESSOR == MCU_X86)
/* this is done for CortexM4 in function INIT_OS_MAIN_STACK() on assembler level, because no stack is allowed to be used during init, otherwise the SW will crash... */
void OS_STACK_CHK_PATTERN_INIT(void)
{
   uint32 stack_pos = 0u;
   /* init the stack with 0xAA (only the highest 64 bytes leave out, because they might be already in use by SW) */
   for(stack_pos = 0u; stack_pos < (OS_MAIN_STACK_SIZE-64u); stack_pos++)
   {
      OS_MAIN_STACK[stack_pos] = 0xAAu;
   }
   for(stack_pos = 0u; stack_pos < (TASK0_STACK_SIZE-64u); stack_pos++)
   {
      TASK0_STACK[stack_pos] = 0xAAu;
   }
   for(stack_pos = 0u; stack_pos < (TASK1_STACK_SIZE-64u); stack_pos++)
   {
      TASK1_STACK[stack_pos] = 0xAAu;
   }
   for(stack_pos = 0u; stack_pos < (TASK2_STACK_SIZE-64u); stack_pos++)
   {
      TASK2_STACK[stack_pos] = 0xAAu;
   }
   for(stack_pos = 0u; stack_pos < (TASK3_STACK_SIZE-64u); stack_pos++)
   {
      TASK3_STACK[stack_pos] = 0xAAu;
   }   
   for(stack_pos = 0u; stack_pos < (TASK4_STACK_SIZE-64u); stack_pos++)
   {
      TASK4_STACK[stack_pos] = 0xAAu;
   }      
}
#endif