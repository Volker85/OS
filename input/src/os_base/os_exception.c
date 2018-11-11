#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "os_ram.h"

/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */
void OS_Exception_HARDFAULT(void)
{
   volatile uint32 ERROR_HARDFAULT = 0;
   ERROR_HARDFAULT = *((uint32*)0xE000ED2Cu);
   /*#error "Hardfault generate, use the hardfault exception status register for reason"*/
   while(1){}
}


void OS_Exception_NMI(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}
void OS_Exception_SWI(void)
{
   /* Mode: Supervisor:
     Exception SWI is entered, in case a user mode program executed the assembler code "SWI" (SoftWare Interrupt)    */
   OS_ISRHANDLERC0();
}
void OS_Exception_BUS_FAULT(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_DEBUG(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_MEM_MANAG_FAULT(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_USAGE_FAULT(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_PendSV(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_Systick(void)
{
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_IRQ(void)
{
   OS_ISRHANDLERC0();
}
void OS_Exception_FIQ(void)
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

