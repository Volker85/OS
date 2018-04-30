#include "os_firstinc.h"
#include "os_acl.h"
#include "os_task_common.h"
#include "os_task_queue.h"


/*#warn "rework of acl needed"*/
Local void SYS_CALL_FUNC_READ_FILE(void);
Local void SYS_CALL_FUNC_WRITE_FILE(void);
Local void SYS_CALL_FUNC_READ_FILE_RIGHTS(void);
Local void SYS_CALL_FUNC_WRITE_FILE_RIGHTS(void);
Local_inline uint8 GET_SYS_CALL_ALLOWED_FOR_CURRENT_TASK(uint32 REQUEST_ID, task_t* task);

const uint8 ALLOWED_TASK_LIST_READ_FILE[NR_OF_CONFIGURED_TASKS] = 
{
   0x11,0x22,0x33,0x44,0x55
};
const uint8 ALLOWED_TASK_LIST_WRITE_FILE[NR_OF_CONFIGURED_TASKS] = 
{
   0x11,0x22,0x33,0x44,0x55
};
const uint8 ALLOWED_TASK_LIST_READ_FILE_RIGHTS[NR_OF_CONFIGURED_TASKS] = 
{
   0x11,0x22,0x33,0x44,0x55
};
const uint8 ALLOWED_TASK_LIST_WRITE_FILE_RIGHTS[NR_OF_CONFIGURED_TASKS] = 
{
   0x11,0x22,0x33,0x44,0x55
};
const sys_call_t SYS_CALL[] = 
{
   {
      SYS_CALL_NR_READ_FILE,/**/
      (void*)&ALLOWED_TASK_LIST_READ_FILE,
      &SYS_CALL_FUNC_READ_FILE
   },
   {
      SYS_CALL_NR_WRITE_FILE,/**/
      (void*)&ALLOWED_TASK_LIST_WRITE_FILE,
      &SYS_CALL_FUNC_WRITE_FILE
   }, 
   {
      SYS_CALL_NR_READ_FILE_RIGHTS,/**/
      (void*)&ALLOWED_TASK_LIST_READ_FILE_RIGHTS,
      &SYS_CALL_FUNC_READ_FILE_RIGHTS
   },     
   {
      SYS_CALL_NR_WRITE_FILE_RIGHTS,/**/
      (void*)&ALLOWED_TASK_LIST_WRITE_FILE_RIGHTS,
      &SYS_CALL_FUNC_WRITE_FILE_RIGHTS
   }  
};


/*
   right management for users / tasks ...
*/
/*
   concept: allow certain functions to request kernel services
   RQ: Trusted Functions are not running in supervisor mode, but kernel provides them via interface !some! needed rights!!
   RQ: Needed rights need to be configured precisly,
   RQ: complete tasks get rights assigned (rwx syntax for addresse spaces), direct access is not allowed, rwx enforced by kernel mode interfaces checks
   problem: how to identify, who called this interface: Every tasks has it's own request buffer for the kernel mode interfaces (under mmu protection) und can therefore easily be identified.
   SYSTEM_CALL(uint8 TASK_ID, REQUEST_ID, REQUEST_ARG ....) -> in case TASK_2 is writing into request buffer of task
*/
void SYSTEM_CALL(uint32 REQUEST_ID, uint32 NR_PARAMETERS, ...)
{

   /*
   5.5.1. SWI

   Software interrupt.
   Syntax

   SWI immed_8

   where:

   immed_8

       is a numeric expression evaluating to an integerin the range 0-255.

   Usage
   --------------------
   The SWI instruction causes a SWI exception. This means that the processor state changes to ARM,
   the processor mode changes to Supervisor, the CPSR is saved to the Supervisor Mode SPSR,
   and execution branches to the SWI vector (see the Handling Processor Exceptions chapter in ADS Developer Guide).

   immed_8 is ignored by the processor. However, it is present in bits[7:0] of the instruction opcode.
   It can be retrieved by the exception handler to determine what service is being requested.


   Condition flags
   --------------------
   This instruction does not affect the flags.


   Architectures
   --------------------
   This instruction is available in all T variants of the ARM architecture.


   Example
   --------------------
       SWI 12

   */

#if(CFG_PROCESSOR == cMCU_X86)
   /* TODO: "variable parameter list is missing here" */
   if(GET_SYS_CALL_ALLOWED_FOR_CURRENT_TASK(REQUEST_ID, GetRunningTask())!=False)
   {
      SYS_CALL[REQUEST_ID].func_ptr();     
   }
#else
   switch(REQUEST_ID)
   {
   case 1:
      os_interrupt_swi_1;
      break;
   case 2:
      os_interrupt_swi_2;
      break;
   default:
      break;
   }
#endif
}

Local_inline uint8 GET_SYS_CALL_ALLOWED_FOR_CURRENT_TASK(uint32 REQUEST_ID, task_t* task)
{
   uint8 sys_call_allowed = False;
   
   if(REQUEST_ID < (sizeof(SYS_CALL)/sizeof(sys_call_t)) )
   {
      if( *((uint8*)&SYS_CALL[REQUEST_ID].TASK_PERMISSION+task->task_number)  == PERMISSION_GRANTED)
      {
         sys_call_allowed = True;
      }
   }   
   return sys_call_allowed; 
}


void SYS_CALL_FUNC_READ_FILE(void)
{

}
void SYS_CALL_FUNC_WRITE_FILE(void)
{

}
void SYS_CALL_FUNC_READ_FILE_RIGHTS(void)
{

}
void SYS_CALL_FUNC_WRITE_FILE_RIGHTS(void)
{

}
