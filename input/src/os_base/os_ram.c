#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"

/* heap related RAM */
unsigned_char_t      HEAP[HEAP_SIZE];

/* stack related RAM  */
unsigned_char_t OS_STACK[NR_OF_CORES][OS_STACK_SIZE];
unsigned_char_t OS_MAIN_STACK[OS_STACK_SIZE];
volatile os_sw_bugs_t OS_SW_BUG[15];
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

volatile uint32 DBG_RLD_VALUE;
volatile uint32 DBG_CURR_VAL;
volatile uint32 DBG_CTRL_VALUE;
volatile uint32 DBG_CALIB_VALUE;

volatile uint32 TASK1_CALL_NR;
volatile uint32 TASK2_CALL_NR;
volatile uint32 TASK3_CALL_NR;
volatile uint32 TASK4_CALL_NR;

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

unsigned_char_t   TASK_STACK[MAX_RUN_QUEUE_SIZE][TASK_STACK_SIZE];
scheduler_time_t LAST_CURRENT_TIME;
scheduling_t      TASK_SCHEDULING_QUEUE[MAX_RUN_PQUEUE_SIZE];
scheduling_t*     RUNNING_SCHEDULING_QUEUE_ENTRY;
task_t            TASK_RUN_QUEUE[MAX_RUN_QUEUE_SIZE];
task_t            RUNNING_TASK[1];/* stores the running task */
task_t            TASK_IDLE_QUEUE[1];
unsigned_char_t   bTASK_QUEUE_INITIALIZED;
task_t TASK_0_VAR, TASK_1_VAR, TASK_2_VAR, TASK_3_VAR;
task_group_t TASK_GROUP_1, TASK_GROUP_2, TASK_GROUP_3, TASK_GROUP_4, TASK_GROUP_5;
