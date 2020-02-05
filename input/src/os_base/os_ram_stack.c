#include "os_firstinc.h"
#include "os_stack.h"

#if(OS_MAIN_STACK_SIZE <= 64)
#error "stack of 64 bytes minimum is needed for stack check pattern"
#endif

/* stack related RAM  *///TODO: every task should have its own stack under MPU protection seperated from other stacks
unsigned_char_t OS_MAIN_STACK[OS_MAIN_STACK_SIZE];