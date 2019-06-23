#ifndef _os_stack_h_
#define _os_stack_h_
/* value for OS_STACK_SIZE needs to be equal to be value defined in os_exception_reset.s */
#define OS_STACK_SIZE 0x200u
extern void OS_StackChkPatternInit(void);
extern void OS_StackCheck(uint32 amount_bytes_to_check);
#endif /* _os_stack_h_  */




