#ifndef _os_stack_h_
#define _os_stack_h_

#define OS_STACK_SIZE 0x5000u
extern void OS_StackChkPatternInit(void);
extern void OS_StackCheck(void);
#endif /* _os_stack_h_  */




