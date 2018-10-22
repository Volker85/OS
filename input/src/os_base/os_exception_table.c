#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
/*
isr_vec_table concept seems to be usable for ARM and PowerPC MCUs
(perhaps different tables needed)
needs to be linked by default to adresse 0x0 -> linker command file needed
*/
/*
2.1.2. Stacks

The processor uses a full descending stack.
 This means the stack pointer holds the address 
 of the last stacked item in memory. 
 When the processor pushes a new item onto the stack,
 it decrements the stack pointer and then writes the
 item to the new memory location. 
 The processor implements two stacks, 
 the main stack and the process stack, 
 with a pointer for each held in independent registers,
 see Stack Pointer.
*/
func_ptr_t isr_vec_table[] =
{
   (func_ptr_t)(&OS_MAIN_STACK+OS_STACK_SIZE-1),   /* 0x0000 initial StackPointer value */
   &OS_Exception_RESET,			   /* 0x0004 Reset                      */
   &OS_Exception_NMI,		      /* 0x0008 Non Maskable Interrupt     */
   &OS_Exception_HARDFAULT,      /* 0x000C Hardfault                  */ 
   &OS_Exception_MEM_MANAG_FAULT,/* 0x0010 Memory management fault    */
   &OS_Exception_BUS_FAULT,	/* 0x0014 Bus fault                  */
   0,                            /* 0x0018 usage fault                */ 
   0,                            /* 0x001C reservered                 */   
   0,                            /* 0x0020 reservered                 */   
   0,                            /* 0x0024 reservered                 */   
   0,                            /* 0x0028 reservered                 */   
   &OS_Exception_SWI,				/* 0x002C Supervisor Call            */
   0,                            /* 0x0030 reserved for debug         */
   0,                            /* 0x0034 reserved                   */
   0,                            /* 0x0038 PendSV                     */
   0                             /* 0x003C Systick                    */
};