#include "..\os_base\os_firstinc.h"
#include "..\os_base\os_main.h"
#include "..\os_base\os_task_scheduler.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "..\os_base\os_start_os.h"
#include "..\os_base\os_exception_isr_handler.h"
#include "stdio.h"
#include "time.h"

#if(CFG_PROCESSOR == MCU_X86)
int main(int argc, char* argv[])
{
   unsigned int i = 0u;
   time_t t = time(0u);

   OS_STACK_CHK_PATTERN_INIT();
   OS_START_OS();
   while(i < 1e8)
   {
      /* emulate the interrupts */
      OS_STATE_HANDLER();
      i++;
   }

   t = time(0u) - t;
   printf("Zeit: %d",t);
   getchar();
   getchar();
   REFERENCE_UNUSED_PARAMETER(argc);
   REFERENCE_UNUSED_PARAMETER(*argv);

   return 0u;
}
#endif