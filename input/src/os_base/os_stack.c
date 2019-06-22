#include "os_firstinc.h"

void OS_StackCheck(uint32 amount_bytes_to_check)
{
   /* the last 64 bytes are reserved for stack check for every stack 
   unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
   unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
   
   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_STACK[0][0] / OS_MAIN_STACK[0] for 64 bytes
   
   */
   static volatile uint32 stack_pos = 0, nr_of_cores = 0, failed = False;
   static volatile uint32* critical_addr = (volatile uint32*)-1;
   static volatile uint32  critical_pos =  (volatile uint32) -1;
   static volatile uint32  critical_stack_usage_percent = 0u;

   for(stack_pos = 0; stack_pos < amount_bytes_to_check; stack_pos++)
   {
      for(nr_of_cores = 0; nr_of_cores < NR_OF_CORES; nr_of_cores++)
      {
         if(OS_STACK[nr_of_cores][stack_pos] != 0xAA)
         {
            failed = True;
            if(stack_pos < critical_pos)
            {
               critical_pos  = (volatile uint32 )stack_pos;
               critical_addr = (volatile uint32*)&OS_STACK[nr_of_cores][stack_pos];
            }   
         }   
      }
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         failed = True;
         if(stack_pos < critical_pos)
         {
            critical_pos  = (volatile uint32 )stack_pos;
            critical_addr = (volatile uint32*)&OS_MAIN_STACK[stack_pos];
         }          
      }         
   }
   critical_stack_usage_percent = (OS_STACK_SIZE - critical_pos) * 100u / OS_STACK_SIZE;
   
   if((failed == True) && (critical_stack_usage_percent > 80u))
   {
      OS_SetSwBug(os_bug_critical_stack_usage,Func_StackCheck);
      ReferenceUnusedParameter(critical_pos);
      ReferenceUnusedParameter(critical_addr);
      while(1)
      {
         /* allow easy debugging */
      }  
   }   
}
void OS_StackChkPatternInit(void)
{
   static volatile uint32 stack_pos = 0,nr_of_cores = 0;
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