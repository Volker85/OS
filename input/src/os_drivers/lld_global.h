#ifndef _lld_global_h_
#define _lld_global_h_

#include "lld_core.h"
#include "lld_adc.h"
#include "lld_can.h"
#include "lld_gpio.h"
#include "lld_interrupt.h"
#include "lld_mmu.h"
#include "lld_timer.h"
#include "lld_power.h"
#include "lld_ram.h"
#include "lld_watchdog.h"
#include "..\os_base\os_task_common.h"

extern void LLF_SAVE_TASK_STACK(unsigned_char_t* StackPointer);

extern void LLF_SAVE_REGISTERS(task_t* task);

extern void LLF_RESTORE_TASK_STACK(unsigned_char_t* StackPointer);

extern void LLF_RESTORE_REGISTERS(task_t* task);

extern void LLF_RESTORE_SYSTEM_STACK(uint8* system_stack_ptr);

extern void LLF_SAVE_SYSTEM_STACK(uint8* system_stack_ptr);
#endif /* _lld_global_h_ */
