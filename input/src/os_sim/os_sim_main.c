#include "..\os_base\os_firstinc.h"
#include "..\os_base\os_main.h"
#include "..\os_base\os_task_scheduler.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "..\os_base\os_start_os.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "stdio.h"
#include "time.h"

int main(int argc, char* argv[])
{
#if(CFG_PROCESSOR == cMCU_X86)
   unsigned int i = 0;
   time_t t = time(0);

   OS_START_OS();
   while(i < 1e6)
   {
      /* emulate the interrupts */
      OS_STATE_HANDLER();
      OS_ISRHANDLERC0();
#if(0)
      OS_ISRHANDLERC1();
      OS_ISRHANDLERC2();
      OS_ISRHANDLERC3();
#endif
      i++;
   }

   t = time(0) - t;
   printf("Zeit: %d",t);
   getchar();
   getchar();
   ReferenceUnusedParameter(argc);
   ReferenceUnusedParameter(*argv);
#endif
   return 0;
}
