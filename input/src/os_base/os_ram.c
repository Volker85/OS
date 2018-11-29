#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"

/* heap related RAM */
unsigned_char_t      HEAP[HEAP_SIZE];

/* stack related RAM  */
unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
volatile uint32 VAR_HARDFAULT_STATUS_REG;
volatile uint32 VAR_MEM_MANAG_FAULT_STATUS_REG    ;
volatile uint32 VAR_USAGE_FAULT_STATUS_REG    ;
volatile uint32 VAR_FAULT_STATUS_REG    ;
volatile uint32 VAR_MEM_FAULT_ADDR_REG  ;
volatile uint32 VAR_BUS_FAULT_ADDR_REG  ;
volatile uint32 VAR_AUX_FAULT_STATUS_REG;
volatile uint32 VAR_BUS_FAULT_STATUS_REG;
volatile uint32 LINK_REGISTER_HANDLER;