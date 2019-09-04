#include "..\os_base\os_firstinc.h"
#include "..\os_base\os_main.h"
#include "..\os_base\os_task_scheduler.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "..\os_base\os_start_os.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "stdio.h"
#include "time.h"

#if(CFG_PROCESSOR == cMCU_X86)
int main(int argc, char* argv[])
{
   unsigned int i = 0;
   time_t t = time(0);

   OS_StackChkPatternInit();
   OS_StartOs();
   while(i < 1e8)
   {
      /* emulate the interrupts */
      OS_StateHandler();
      i++;
   }

   t = time(0) - t;
   printf("Zeit: %d",t);
   getchar();
   getchar();
   ReferenceUnusedParameter(argc);
   ReferenceUnusedParameter(*argv);

   return 0;
}
#endif