#include "os_firstinc.h"
#include "os_exception_isr_handler.h"
/*
isr_vec_table concept seems to be usable for ARM and PowerPC MCUs
(perhaps different tables needed)
needs to be linked by default to adresse 0x0 -> linker command file needed
*/
func_ptr_t isr_vec_table[] =
{
   &OS_Exception_RESET,			/* reset */
   &OS_Exception_UNDEFINST,		/* undefined instruction */
   &OS_Exception_SWI,				/* software interrupt */
   &OS_Exception_ABORT_PREFETCH,	/* abort prefetch */
   &OS_Exception_ABORT_DATA,		/* abort data */
   0,								/* reserved */
   &OS_Exception_IRQ,				/* irq */
   &OS_Exception_FIQ				/* fiq */
};