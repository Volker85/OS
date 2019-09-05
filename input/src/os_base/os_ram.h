#ifndef _OS_RAM_H_
#define _OS_RAM_H_

#include "os_firstinc.h"
#include "os_stack.h"
#include "os_heap.h"
#include "os_main.h"
#include "os_task_config.h"
#include "os_task_common.h"
/* heap related RAM */
extern unsigned_char_t HEAP[HEAP_SIZE];

/* stack related RAM  */
extern volatile os_sw_bugs_t OS_SW_BUG[15];
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
extern volatile uint32 DBG_RLD_VALUE;
extern volatile uint32 DBG_CURR_VAL;
extern volatile uint32 DBG_CTRL_VALUE;
extern volatile uint32 DBG_CALIB_VALUE;
extern volatile uint32 TASK1_CALL_NR;
extern volatile uint32 TASK2_CALL_NR;
extern volatile uint32 TASK3_CALL_NR;
extern volatile uint32 TASK4_CALL_NR;

extern volatile uint32* STACK_ADDR;
extern volatile uint32  STACK_POS;
extern volatile uint32  STACK_USAGE_PERCENT;
extern unsigned_char_t   TASK_STACK[MAX_RUN_QUEUE_SIZE][TASK_STACK_SIZE];
extern scheduler_time_t  LAST_CURRENT_TIME;
extern scheduling_t      TASK_SCHEDULING_QUEUE[MAX_RUN_PQUEUE_SIZE];
extern scheduling_t*     RUNNING_SCHEDULING_QUEUE_ENTRY;
extern task_t            TASK_RUN_QUEUE[MAX_RUN_QUEUE_SIZE];
extern task_t            RUNNING_TASK[1];/* stores the running task */
extern task_t            TASK_IDLE_QUEUE[1];
extern unsigned_char_t   bTASK_QUEUE_INITIALIZED;
extern task_t TASK_0_VAR, TASK_1_VAR, TASK_2_VAR, TASK_3_VAR;
extern task_group_t TASK_GROUP_1, TASK_GROUP_2, TASK_GROUP_3, TASK_GROUP_4, TASK_GROUP_5;
extern task_t*           TASK_TRANSITION_REJECTED_TASK_ADDR;
extern task_state_t      TASK_TRANSITION_REJECTED_STATE;
extern task_state_t      TASK_TRANSITION_CURRENT_STATE;
extern volatile void* SAVED_STACK_POINTER;
extern volatile uint8 SYSTEM_STATE_ACCEPTED;
extern timebig_t LOCAL_SYSTEM_TIME;
#endif
