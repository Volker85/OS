#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "os_ram.h"

/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */
Local void OS_Exception_Read_Status_Registers(void)
{
   #define HARDFAULT_STATUS_REG ((volatile uint32*)0xE000ED2Cu)
   #define MEM_MANAG_FAULT_STATUS_REG     ((volatile uint8*)0xE000ED28u)
   #define BUS_FAULT_STATUS_REG     ((volatile uint8*)0xE000ED29u)
   #define USAGE_FAULT_STATUS_REG     ((volatile uint16*)0xE000ED2Au)
   #define MEM_FAULT_ADDR_REG   ((volatile uint32*)0xE000ED34u) 
   #define BUS_FAULT_ADDR_REG   ((volatile uint32*)0xE000ED38u)
   #define AUX_FAULT_STATUS_REG ((volatile uint32*)0xE000ED3Cu)
   VAR_HARDFAULT_STATUS_REG = *HARDFAULT_STATUS_REG;
   VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
   VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
   VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
   VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
   VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
   VAR_AUX_FAULT_STATUS_REG = *AUX_FAULT_STATUS_REG; 
}


void OS_Exception_HARDFAULT(void)
{
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}


void OS_Exception_NMI(void)
{
   OS_Exception_Read_Status_Registers();
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
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_DEBUG(void)
{
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_MEM_MANAG_FAULT(void)
{
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_SHUTDOWN(os_reset_hardreset);
}

void OS_Exception_USAGE_FAULT(void)
{
   OS_Exception_Read_Status_Registers();
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

