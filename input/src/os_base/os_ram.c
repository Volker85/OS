#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"

/* heap related RAM */
unsigned_char_t      HEAP[HEAP_SIZE];

/* stack related RAM  */
unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
volatile uint32 OS_STATE;
volatile uint32 VAR_HARDFAULT_STATUS_REG;
volatile uint32 VAR_MEM_MANAG_FAULT_STATUS_REG    ;
volatile uint32 VAR_USAGE_FAULT_STATUS_REG    ;
volatile uint32 VAR_FAULT_STATUS_REG    ;
volatile uint32 VAR_MEM_FAULT_ADDR_REG  ;
volatile uint32 VAR_BUS_FAULT_ADDR_REG  ;
volatile uint32 VAR_AUX_FAULT_STATUS_REG;
volatile uint32 VAR_BUS_FAULT_STATUS_REG;
volatile uint32 LINK_REGISTER_HANDLER;
volatile uint32 BACKUP_SYSTICK_CURRENT_VAL_REG;
volatile uint32 RAM_CHECK_FAILURE_DETECTED;
volatile uint32 RAM_CHECK_FAILURE_ADDR;

void* REGISTER_R0;
void* REGISTER_R1;
void* REGISTER_R2;
void* REGISTER_R3;
void* REGISTER_R4;
void* REGISTER_R5;
void* REGISTER_R6;
void* REGISTER_R7;
void* REGISTER_R8;
void* REGISTER_R9;
void* REGISTER_R10;
void* REGISTER_R11;