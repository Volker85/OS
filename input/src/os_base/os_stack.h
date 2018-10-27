#ifndef _os_stack_h_
#define _os_stack_h_

#define OS_STACK_SIZE 0x100
/* 0x1 => 0x1 * 256 = 256, 0x10 => 0x10 * 256 = 4096 */
#define OS_STACK_SIZE_END 0x01u

extern unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];

#endif /* _os_stack_h_  */




