#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "..\os_drivers\hal_driver_sci.h"

/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */

void OS_Exception_RESET()
{
   /*
Reset software should carry out the following:
1. Invalidate instruction and data caches (if the implementation requires it)
2. Perform any memory re-mapping required
3. Initialize system memory for operating system or application code
4. Initialize the system stack pointer
5. Initialize the exception vector table
6. Initialize other processor registers as required
7. Initialize on - chip and off - chip peripherals
8. Transfer control to the operating system or application

The operating system initialization code should ensure that at least the following are
carried out:
1. Enable branch prediction
2. Initialize exception and application stack pointer
3. Initialize page tables, enable caches and MMU
4. Execute main program   
   */
   /*#warn "above list implemented?"*/
#if(CFG_PROCESSOR != cMCU_X86)
   /* some code originally take out of:
     * @file      startup_stm32f4xx.s
     * @author    Coocox
     * @version   V1.0
     * @date      03/05/2012
     * @brief     STM32F4xx Devices vector table for RIDE7 toolchain.


   */

#if(0)/*TODO*/
   /* Initialize data and bss */
   unsigned long *pulSrc, *pulDest;

   /* is this really needed???*/
   /* Copy the data segment initializers from flash to SRAM */
   pulSrc = &_sidata;

   for(pulDest = &_data_start; pulDest < &_data_end; )
   {
      *(pulDest++) = *(pulSrc++);
   }
#endif

   LLF_CLEAR_ALL_RAM();

#ifdef __FPU_USED
   /* Enable FPU.*/
   __asm("  LDR.W R0, =0xE000ED88\n"
         "  LDR R1, [R0]\n"
         "  ORR R1, R1, #(0xF << 20)\n"
         "  STR R1, [R0]");
#endif
   /*  Mode: Supervisor  start the OS */
   OS_START_OS();
#endif
}
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