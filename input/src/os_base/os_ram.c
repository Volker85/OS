#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"

/* heap related RAM */
unsigned_char_t      HEAP[HEAP_SIZE];

/* stack related RAM  */
unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];