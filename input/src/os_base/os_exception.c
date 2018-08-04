#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "os_ram.h"
#include "..\os_drivers\hal_driver_sci.h"

/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */

void OS_Exception_UNDEFINST()
{
   OS_SET_SW_BUG(os_bug_exception_UndefInstruction, Func_os_exception);
   OS_SHUTDOWN(os_reset_hardreset);
}
void OS_Exception_SWI()
{
   /* Mode: Supervisor:
     Exception SWI is entered, in case a user mode program executed the assembler code "SWI" (SoftWare Interrupt)    */
   OS_ISRHANDLERC0();
}
void OS_Exception_ABORT_PREFETCH()
{
   OS_SET_SW_BUG(os_bug_exception_AbortPrefetch,Func_os_exception);
   OS_SHUTDOWN(os_reset_hardreset);
}
void OS_Exception_ABORT_DATA()
{
   OS_SET_SW_BUG(os_bug_exception_AbortData,Func_os_exception);
   OS_SHUTDOWN(os_reset_hardreset);
}
void OS_Exception_IRQ()
{
   OS_ISRHANDLERC0();
}
void OS_Exception_FIQ()
{
   OS_ISRHANDLERC0();
}


ISR TCMP1(void)
{
   OS_ISRHANDLERC0();
}
ISR TCMP2(void)
{
   OS_ISRHANDLERC1();
}
ISR TCMP3(void)
{
   OS_ISRHANDLERC2();
}
ISR TCMP4(void)
{
   OS_ISRHANDLERC3();
}

ISR ISOK_RECV(void)
{
   OS_ISRISOK();
}
ISR ISOK_TRANS(void)
{
   OS_ISRISOK();
}
