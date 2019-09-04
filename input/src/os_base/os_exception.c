#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
#include "os_exception.h"
#include "os_shutdown.h"
#include "os_start_os.h"
#include "..\os_base\os_task_queue.h"
#include "..\os_base\os_task_scheduler.h"
/* the Interrupt table is set via the code linked to 0x00 and following ...   */
/* interrupts are disabled during RESET exception and will be enabled by task system */

/*All infos regarding faults are stored in seperate variables (not in a shared structure)
 because the debugger can read from addresses only, but does not know padding of structures.... */

#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
Local __inline__ void OS_Exception_Read_Status_Registers(void)
{
   VAR_HARDFAULT_STATUS_REG = *HARDFAULT_STATUS_REG;
   VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
   VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
   VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
   VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
   VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
   VAR_AUX_FAULT_STATUS_REG = *AUX_FAULT_STATUS_REG;
}
#endif
/* 0x00000000 Stack -> not implemented via function, see stack.c        */
/* 0x00000004 OS_Exception_RESET -> implemented in os_exception_reset.s */
/* 0x00000008 OS_Exception_NMI */
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
  
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x0000000C OS_Exception_HARDFAULT */
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
 
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x00000010 OS_Exception_MEM_MANAG_FAULT */
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
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x00000014 OS_Exception_BUS_FAULT */
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
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x00000018 OS_Exception_BUS_FAULT */
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
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x0000001C reserved */
/* 0x00000020 reserved */
/* 0x00000024 reserved */
/* 0x00000028 reserved */
/* 0x0000002C OS_Exception_SVC -> implemented in lld_global */
/* 0x00000030 OS_Exception_DEBUG */
void OS_Exception_DEBUG(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   OS_Exception_Read_Status_Registers();
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x00000034 reserved */
/* 0x00000038 OS_Exception_PendSV */
void OS_Exception_PendSV(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
/* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif
}
/* 0x0000003C OS_Exception_Systick */
void OS_Exception_Systick(void)
{
   OS_UpdateCurrentTime();
   
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   task_t* task;
   scheduling_t* scheduling_task_ptr;
   BigInt Diff;
   timebig_t time;
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();

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

   /*
   CLOCK = HCLK / 8
   vermutlich: CLOCK = 150Mhz / 8 = 18,75 Mhz
   */
   *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
   *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
   *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;

   DBG_RLD_VALUE  = *SYSTICK_RLD_VAL_REG;
   DBG_CURR_VAL   = *SYSTICK_CURRENT_VAL_REG;
   DBG_CTRL_VALUE = *SYSTICK_CTRL_STAT_REG;
   DBG_CALIB_VALUE = *SYSTICK_CALIB_VAL_REG;
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
   /* disable running task */
   task = GetRunningTask();
   scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
   if(task != 0u)
   {
      OS_TaskSaveTaskEnvironment(task);
      OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
      task->active = False;
      /*task->exe_time += (OS_GetCurrentTime() - task->start_time);*/
      OS_GetCurrentTime(&time);
      IntSub(&Diff, &time, &task->start_time);
      IntAdd(&task->exe_time, &task->exe_time, &Diff);
      /*task->task_group->exe_time += (OS_GetCurrentTime() - task->start_time);*/
      IntAdd(&task->task_group->exe_time, &task->task_group->exe_time, &Diff);
      SET_RUNNING_TASK(0,0);
      OS_TerminateTask(task,scheduling_task_ptr);
   }
   /* call OS_StateHandler to determine what steps needs to be performed next */
   OS_StateHandler();
#endif
}
/* 0x00000040...0x00000040+4n IRQ */
void OS_Exception_IRQ(void)
{
#if(CFG_PROCESSOR == cMCU_CORTEX_M4)
   __asm__ __volatile__ ("LDR r0,%0;\
                          STR r14,[r0];"
                        :"=m"(LINK_REGISTER_HANDLER)
                        :
                        :"r0"
                        );
   OS_Exception_Read_Status_Registers();
   
   /* run all exceptions in handler mode */
   LLF_EXCEPTION_TO_HANDLER_MODE();
   
   OS_Shutdown(os_reset_hardreset);
#endif   
}