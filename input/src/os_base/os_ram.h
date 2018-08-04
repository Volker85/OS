#ifndef _OS_RAM_H_
#define _OS_RAM_H_

#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"

/* heap related RAM */
extern unsigned_char_t      HEAP[HEAP_SIZE];

/* stack related RAM  */
extern unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];

#endif
