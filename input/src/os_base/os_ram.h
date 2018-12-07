#ifndef _OS_RAM_H_
#define _OS_RAM_H_

#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"
#include "os_main.h"

/* heap related RAM */
extern unsigned_char_t HEAP[HEAP_SIZE];

/* stack related RAM  */
extern unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
extern unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
extern volatile uint32 OS_STATE;
extern volatile uint32 VAR_HARDFAULT_STATUS_REG;
extern volatile uint32 VAR_MEM_MANAG_FAULT_STATUS_REG    ;
extern volatile uint32 VAR_USAGE_FAULT_STATUS_REG    ;
extern volatile uint32 VAR_FAULT_STATUS_REG    ;
extern volatile uint32 VAR_MEM_FAULT_ADDR_REG  ;
extern volatile uint32 VAR_BUS_FAULT_ADDR_REG  ;
extern volatile uint32 VAR_AUX_FAULT_STATUS_REG;
extern volatile uint32 VAR_BUS_FAULT_STATUS_REG;
extern volatile uint32 LINK_REGISTER_HANDLER;
extern volatile uint32 BACKUP_SYSTICK_CURRENT_VAL_REG;
#endif
