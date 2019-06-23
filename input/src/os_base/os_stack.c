#include "os_firstinc.h"

void OS_StackCheck(uint32 amount_bytes_to_check)
{
   #if(1)
   /* the last 64 bytes are reserved for stack check for every stack 
   unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
   unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
   
   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_STACK[0][0] / OS_MAIN_STACK[0] for 64 bytes
   
   */
   static volatile uint32 stack_pos = 0, nr_of_cores = 0, failed = False;
   CRITICAL_ADDR = (volatile uint32*)-1;
   CRITICAL_POS =  (volatile uint32) -1;
   CRITICAL_STACK_USAGE_PERCENT = 0u;

   for(stack_pos = 0; stack_pos < amount_bytes_to_check; stack_pos++)
   {
      for(nr_of_cores = 0; nr_of_cores < NR_OF_CORES; nr_of_cores++)
      {
         if(OS_STACK[nr_of_cores][stack_pos] != 0xAA)
         {
            failed = True;
            if(stack_pos < CRITICAL_POS)
            {
               CRITICAL_POS  = (volatile uint32 )stack_pos;
               CRITICAL_ADDR = (volatile uint32*)&OS_STACK[nr_of_cores][stack_pos];
            }   
         }   
      }
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         failed = True;
         if(stack_pos < CRITICAL_POS)
         {
            CRITICAL_POS  = (volatile uint32 )stack_pos;
            CRITICAL_ADDR = (volatile uint32*)&OS_MAIN_STACK[stack_pos];
         }          
      }         
   }
   CRITICAL_STACK_USAGE_PERCENT = (OS_STACK_SIZE - CRITICAL_POS) * 100u / OS_STACK_SIZE;
   
   if((failed == True) && (CRITICAL_STACK_USAGE_PERCENT > 80u))
   {
      OS_SetSwBug(os_bug_critical_stack_usage,Func_StackCheck);
      ReferenceUnusedParameter(CRITICAL_POS);
      ReferenceUnusedParameter(CRITICAL_ADDR);
      while(1)
      {
         /* allow easy debugging */
      }  
   }   
   #endif
}
void OS_StackChkPatternInit(void)
{
   uint32 stack_pos = 0,nr_of_cores = 0;
   /* init the stack with 0xAA (only the highest 64 bytes leave out, because they might be already in use by SW) */
   for(stack_pos = 0; stack_pos < (OS_STACK_SIZE-64); stack_pos++)
   {
      for(nr_of_cores = 0; nr_of_cores < NR_OF_CORES; nr_of_cores++)
      {
         OS_STACK[nr_of_cores][stack_pos] = 0xAA;
      }
      OS_MAIN_STACK[stack_pos] = 0xAA;
   }    
}   