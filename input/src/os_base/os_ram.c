#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"
#include "os_main.h"

/* heap related RAM */
#if(DYNAMIC_MEMORY_USED != FALSE)
unsigned_char_t      HEAP[HEAP_SIZE];
#endif
#if(OS_MAIN_STACK_SIZE <= 64)
#error "stack of 64 bytes minimum is needed for stack check pattern"
#endif

//TODO: assign the RAM to the correct linker section (task, ....), no RAM should go to default section
/* stack related RAM  */
volatile uint32* OS_MAIN_STACK_ADDR;
volatile uint32  OS_MAIN_STACK_POS;
volatile uint32  OS_MAIN_STACK_USAGE_PERCENT;
volatile uint32* TASK0_STACK_ADDR;
volatile uint32  TASK0_STACK_POS;
volatile uint32  TASK0_STACK_USAGE_PERCENT;
volatile uint32* TASK1_STACK_ADDR;
volatile uint32  TASK1_STACK_POS;
volatile uint32  TASK1_STACK_USAGE_PERCENT;
volatile uint32* TASK2_STACK_ADDR;
volatile uint32  TASK2_STACK_POS;
volatile uint32  TASK2_STACK_USAGE_PERCENT;
volatile uint32* TASK3_STACK_ADDR;
volatile uint32  TASK3_STACK_POS;
volatile uint32  TASK3_STACK_USAGE_PERCENT;
volatile uint32* TASK4_STACK_ADDR;
volatile uint32  TASK4_STACK_POS;
volatile uint32  TASK4_STACK_USAGE_PERCENT;
volatile os_sw_bugs_t OS_SW_BUG[AMOUNT_SW_BUG_FUNCTIONS];
volatile os_state_t OS_STATE;
volatile os_state_t SYSTEM_STATE_ACCEPTED;
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

unsigned_char_t   TASK0_STACK[TASK0_STACK_SIZE];
unsigned_char_t   TASK1_STACK[TASK1_STACK_SIZE];
unsigned_char_t   TASK2_STACK[TASK2_STACK_SIZE];
unsigned_char_t   TASK3_STACK[TASK3_STACK_SIZE];
unsigned_char_t   TASK4_STACK[TASK4_STACK_SIZE];
scheduler_time_t  LAST_CURRENT_TIME;
scheduling_t      TASK_SCHEDULING_QUEUE[MAX_RUN_PQUEUE_SIZE];
scheduling_t*     RUNNING_SCHEDULING_QUEUE_ENTRY;
task_t            TASK_RUN_QUEUE[MAX_RUN_QUEUE_SIZE];
task_t            RUNNING_TASK[1];/* stores the running task */
task_t            TASK_IDLE_QUEUE[1];
unsigned_char_t   bTASK_QUEUE_INITIALIZED;
task_t TASK_0_VAR, TASK_1_VAR, TASK_2_VAR, TASK_3_VAR;
task_group_t TASK_GROUP_1, TASK_GROUP_2, TASK_GROUP_3, TASK_GROUP_4, TASK_GROUP_5;
task_t*           TASK_TRANSITION_REJECTED_TASK_ADDR;
task_state_t      TASK_TRANSITION_REJECTED_STATE;
task_state_t      TASK_TRANSITION_CURRENT_STATE;
timebig_t LOCAL_SYSTEM_TIME;