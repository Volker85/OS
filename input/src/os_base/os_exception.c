#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "os_ram.h"
#include "..\os_base\os_task_queue.h"
#include "..\os_base\os_task_scheduler.h"
/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
Local __inline__ void OS_Exception_Read_Status_Registers(void)
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
#endif

void OS_Exception_HARDFAULT(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}


void OS_Exception_NMI(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}
void OS_Exception_SWI(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   /* Mode: Supervisor:
     Exception SWI is entered, in case a user mode program executed the assembler code "SWI" (SoftWare Interrupt)    */
   OS_ISRHANDLERC0();
#endif
}
void OS_Exception_BUS_FAULT(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}

void OS_Exception_DEBUG(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}

void OS_Exception_MEM_MANAG_FAULT(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}

void OS_Exception_USAGE_FAULT(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}

void OS_Exception_PendSV(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   while(1){}
   OS_Shutdown(os_reset_hardreset);
#endif
}

void OS_Exception_Systick(void)
{  
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   task_t* task;
   scheduling_t* scheduling_task_ptr;

   DBG_RLD_VALUE = 0xFFFFFFFF;
   DBG_CURR_VAL = 0xFFFFFFFF;
   DBG_CTRL_VALUE = 0xFFFFFFFF;
   DBG_CALIB_VALUE = 0xFFFFFFFF;
   /* the systick timer is stopped during debug... see CorteM4 manual */

   task = 0u;
   /* configure the TCMP */
   /*
   Dispatcher function for Core 0:
    Write Adresse into the config register (interrupts are requested by SWI/SVC???)
   */
   #define SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)
   #define SYSTICK_RLD_VAL_REG   ((uint32*)0xE000E014)
   #define SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)
   #define SYSTICK_CALIB_VAL_REG ((uint32*)0xE000E01C)
   #define SYSTICK_STAT_REG_CLKSRC_AHB ((uint32)0x00000004)
   #define SYSTICK_STAT_REG_CLKSRC_AHB_8 ((uint32)0x00000000)
   #define SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)
   #define SYSTICK_STAT_REG_ENABLE  ((uint32)0x00000001)
   #define LOOPTIME_IN_USEC ((uint32)10000u)
   /*
   CLOCK = HCLK / 8
   vermutlich: CLOCK = 150Mhz / 8 = 18,75 Mhz
   */
   #if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
   *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
   *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;

   DBG_RLD_VALUE  = *SYSTICK_RLD_VAL_REG;
   DBG_CURR_VAL   = *SYSTICK_CURRENT_VAL_REG;
   DBG_CTRL_VALUE = *SYSTICK_CTRL_STAT_REG;
   DBG_CALIB_VALUE = *SYSTICK_CALIB_VAL_REG;
   #endif
   /*
   4.4.1. SysTick Control and Status Register

The SysTick SYST_CSR register enables the SysTick features. The register resets to 0x00000000, or to 0x00000004 if your device does not implement a reference clock. See the register summary in Table 4.32 for its attributes. The bit assignments are:

Table 4.33. SysTick SYST_CSR register bit assignments
Bits	Name	Function
[31:17]	-	Reserved.
[16]	COUNTFLAG

Returns 1 if timer counted to 0 since last time this was read.
[15:3]	-	Reserved.
[2]	CLKSOURCE

Indicates the clock source:

0 = external clock

1 = processor clock.
[1]	TICKINT

Enables SysTick exception request:

0 = counting down to zero does not assert the SysTick exception request

1 = counting down to zero asserts the SysTick exception request.

Software can use COUNTFLAG to determine if SysTick has ever counted to zero.
[0]	ENABLE

Enables the counter:

0 = counter disabled

1 = counter enabled.

When ENABLE is set to 1, the counter loads the RELOAD value from the SYST_RVR register and then counts down. On reaching 0, it sets the COUNTFLAG to 1 and optionally asserts the SysTick depending on the value of TICKINT. It then loads the RELOAD value again, and begins counting.
   */
   /*stack check*/
   if(((void*)&scheduling_task_ptr) < SAVED_STACK_POINTER)
   {
      SAVED_STACK_POINTER = (void*)&scheduling_task_ptr;
   }   
   
   /* disable running task */
   task = GetRunningTask();
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   if(task != 0u)
   {
      OS_TaskSaveTaskEnvironment(task);
      OS_TASK_RESTORE_SYSTEM_STACK(&OS_STACK[OS_GetCoreId()][0]);
      task->active = False;
      task->exe_time += (OS_GetCurrentTime() - task->start_time);
      task->task_group->exe_time += (OS_GetCurrentTime() - task->start_time);
      SET_RUNNING_TASK(0,0);
      OS_TerminateTask(task,scheduling_task_ptr);
   }
   OS_StateHandler();
#endif
}

void OS_Exception_IRQ(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   OS_ISRHANDLERC0();
#endif
}
void OS_Exception_FIQ(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   OS_ISRHANDLERC0();
#endif
}
