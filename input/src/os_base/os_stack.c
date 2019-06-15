#include "os_firstinc.h"

void OS_StackCheck(void)
{
   /* the last 64 bytes are reserved for stack check for every stack 
   unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
   unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
   
   the stack is starting at the highest address and growing to lower addresses -> pattern start on OS_STACK[0][0] / OS_MAIN_STACK[0] for 64 bytes
   
   */
   static volatile int stack_pos = 0, nr_of_cores = 0, failed = False;
   for(stack_pos = 0; stack_pos < 64; stack_pos++)
   {
      for(nr_of_cores = 0; nr_of_cores < NR_OF_CORES; nr_of_cores++)
      {
         if(OS_STACK[nr_of_cores][stack_pos] != 0xAA)
         {
            failed = True;
         }   
      }
      if(OS_MAIN_STACK[stack_pos] != 0xAA)
      {
         failed = True;
      }         
   }
   if(failed == True)   
   {
      OS_SetSwBug(os_bug_critical_stack_usage,Func_StackCheck);
      while(1)
      {
         /* allow easy debugging */
      }  
   }   
}
void OS_StackChkPatternInit(void)
{
   volatile static int stack_pos = 0,nr_of_cores = 0;
   for(stack_pos = 0; stack_pos < 64; stack_pos++)
   {
      for(nr_of_cores = 0; nr_of_cores < NR_OF_CORES; nr_of_cores++)
      {
         OS_STACK[nr_of_cores][stack_pos] = 0xAA;
      }
      OS_MAIN_STACK[stack_pos] = 0xAA;
   }    
}   