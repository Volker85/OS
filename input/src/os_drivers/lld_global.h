#ifndef _lld_global_h_
#define _lld_global_h_


#include "lld_core.h"
#include "..\os_base\os_task_common.h"
extern void LLF_INT_ENABLE(void);
extern void LLF_INT_DISABLE(void);
extern void LLF_DISABLE_INTERRUPTS_ALL_CORES(void);
extern void LLF_WAIT_FOR_INTERRUPT(void);
extern void LLF_MCU_RESET_POWER(void);
extern uint32 LLF_GET_MPU_PRESENT(void);
extern void LLF_CLEAR_ALL_RAM(void);
extern void LLF_MCU_SWITCH_OFF_POWER(void);
extern void LLF_MPU_DISABLE(void);
extern void LLF_MPU_ENABLE(void);
extern void LLF_SAVE_REGISTERS(uint32 r0, uint32 r1, uint32 r2, uint32 r3);
extern void LLF_RESTORE_TASK_STACK(unsigned_char_t* StackPointer);
extern void LLF_RESTORE_REGISTERS(task_t* task);
extern void LLF_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);
extern void LLF_SAVE_TASK_STACK(unsigned_char_t* StackPointer);
extern void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);
#endif /* _lld_global_h_ */