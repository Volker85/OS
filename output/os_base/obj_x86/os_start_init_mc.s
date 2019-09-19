	.file	"os_start_init_mc.c"
	.text
Ltext0:
	.globl	_OS_INIT_MC
	.def	_OS_INIT_MC;	.scl	2;	.type	32;	.endef
_OS_INIT_MC:
LFB0:
	.file 1 "C:/Users/president/Desktop/sbx/input/src/os_base/os_start_init_mc.c"
	.loc 1 6 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 16 4
	call	_OS_MMU_SETUP
	.loc 1 17 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
Letext0:
	.file 2 "c:/users/president/desktop/sbx/input/src/os_base/os_base_types.h"
	.file 3 "c:/users/president/desktop/sbx/input/src/os_base/os_common.h"
	.file 4 "c:/users/president/desktop/sbx/input/src/os_sim/lld_core.h"
	.file 5 "c:/users/president/desktop/sbx/input/src/os_base/os_task_common.h"
	.file 6 "C:/Users/president/Desktop/sbx/input/src/os_base/os_main.h"
	.file 7 "c:/users/president/desktop/sbx/input/src/os_base/os_ram.h"
	.file 8 "c:/users/president/desktop/sbx/input/src/os_base/os_ram_stack.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x1076
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 8.2.0 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_start_init_mc.c\0"
	.ascii "C:\\Program\\MinGW\\bin\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x2
	.byte	0x11
	.byte	0x18
	.long	0xb9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.ascii "uint8\0"
	.byte	0x2
	.byte	0x15
	.byte	0x18
	.long	0xb9
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.ascii "unsigned_int32_t\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.long	0x123
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.ascii "uint32\0"
	.byte	0x2
	.byte	0x1d
	.byte	0x18
	.long	0x123
	.uleb128 0x4
	.long	0x144
	.uleb128 0x5
	.ascii "os_sw_bugs_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x332
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.long	0x332
	.uleb128 0x6
	.ascii "E_OS_BUG_NO_BUG\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_OS_BUG_TASKSTATE_REQUEST_DENIED\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_OS_BUG_NULL_POINTER\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "E_OS_BUG_TASK_UNSPECIFIED\0"
	.byte	0x4
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\0"
	.byte	0x5
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_ABORTPREFETCH\0"
	.byte	0x6
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_ABORTDATA\0"
	.byte	0x7
	.uleb128 0x6
	.ascii "E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\0"
	.byte	0x8
	.uleb128 0x6
	.ascii "E_OS_BUG_CRITICAL_STACK_USAGE\0"
	.byte	0x9
	.uleb128 0x6
	.ascii "E_OS_BUG_SVC_NUMBER_MISSING\0"
	.byte	0xa
	.uleb128 0x6
	.ascii "E_OS_BUG_MAX_WAIT_TIME_REACHED\0"
	.byte	0xb
	.uleb128 0x6
	.ascii "E_OS_BUG_DIVISION_BY_ZERO\0"
	.byte	0xc
	.uleb128 0x6
	.ascii "E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\0"
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.ascii "os_sw_bugs_t\0"
	.byte	0x3
	.byte	0x3f
	.byte	0x1b
	.long	0x158
	.uleb128 0x4
	.long	0x342
	.uleb128 0x7
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x63
	.byte	0x10
	.long	0x380
	.uleb128 0x8
	.ascii "number\0"
	.byte	0x3
	.byte	0x6c
	.byte	0xa
	.long	0x380
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xd9
	.long	0x390
	.uleb128 0xa
	.long	0x332
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.long	0x35c
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.long	0x390
	.uleb128 0x5
	.ascii "privilige_mode_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x332
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x450
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x4
	.byte	0x16
	.byte	0x20
	.long	0x3b2
	.uleb128 0x5
	.ascii "task_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x332
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x4cd
	.uleb128 0x6
	.ascii "E_TASK_UNSPECIFIED\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_TASK_SUSPENDED\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_TASK_READY\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_TASK_RUNNING\0"
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.long	0x469
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.long	0x4f3
	.uleb128 0xb
	.byte	0x4
	.long	0x4f9
	.uleb128 0xc
	.long	0x504
	.uleb128 0xd
	.long	0x504
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.long	0x524
	.uleb128 0xb
	.byte	0x4
	.long	0x52a
	.uleb128 0xf
	.long	0xa1
	.long	0x53e
	.uleb128 0xd
	.long	0x504
	.uleb128 0xd
	.long	0x4cd
	.byte	0
	.uleb128 0x7
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.long	0x579
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.long	0x3a0
	.byte	0
	.uleb128 0x8
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.long	0x3a0
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.long	0x53e
	.uleb128 0x7
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.long	0x83a
	.uleb128 0x11
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.long	0x332
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.long	0x332
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.ascii "idle_task\0"
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.long	0x332
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.ascii "free\0"
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.long	0x332
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "nr_of_ins_allowed\0"
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.long	0xa1
	.byte	0x4
	.uleb128 0x8
	.ascii "nr_of_ins_activated\0"
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.long	0xa1
	.byte	0x5
	.uleb128 0x8
	.ascii "wait_act_until\0"
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.long	0x3a0
	.byte	0x6
	.uleb128 0x8
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.long	0x3a0
	.byte	0x16
	.uleb128 0x8
	.ascii "time_to_prio_inc\0"
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.long	0x3a0
	.byte	0x26
	.uleb128 0x8
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.long	0x144
	.byte	0x38
	.uleb128 0x8
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.long	0x3a0
	.byte	0x3c
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.long	0x3a0
	.byte	0x4c
	.uleb128 0x8
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.long	0x3a0
	.byte	0x5c
	.uleb128 0x8
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.long	0xa1
	.byte	0x6c
	.uleb128 0x8
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.long	0xa1
	.byte	0x6d
	.uleb128 0x8
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.long	0x10a
	.byte	0x70
	.uleb128 0x8
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.long	0x4e2
	.byte	0x74
	.uleb128 0x8
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.long	0x506
	.byte	0x78
	.uleb128 0x8
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.long	0x4cd
	.byte	0x7c
	.uleb128 0x8
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.long	0x83a
	.byte	0x80
	.uleb128 0x8
	.ascii "eax\0"
	.byte	0x5
	.byte	0x36
	.byte	0x15
	.long	0x10a
	.byte	0x84
	.uleb128 0x8
	.ascii "ebx\0"
	.byte	0x5
	.byte	0x37
	.byte	0x15
	.long	0x10a
	.byte	0x88
	.uleb128 0x8
	.ascii "ecx\0"
	.byte	0x5
	.byte	0x38
	.byte	0x15
	.long	0x10a
	.byte	0x8c
	.uleb128 0x8
	.ascii "edx\0"
	.byte	0x5
	.byte	0x39
	.byte	0x15
	.long	0x10a
	.byte	0x90
	.uleb128 0x8
	.ascii "p_stack_pointer\0"
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.long	0x840
	.byte	0x94
	.uleb128 0x8
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.long	0x840
	.byte	0x98
	.uleb128 0x8
	.ascii "p_stack_pointer_start\0"
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.long	0x840
	.byte	0x9c
	.uleb128 0x8
	.ascii "stack_size\0"
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.long	0x10a
	.byte	0xa0
	.uleb128 0x8
	.ascii "p_stack_pointer_end\0"
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.long	0x840
	.byte	0xa4
	.uleb128 0x8
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.long	0x450
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x579
	.uleb128 0xb
	.byte	0x4
	.long	0xa1
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.long	0x58e
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.long	0x86a
	.uleb128 0xb
	.byte	0x4
	.long	0x846
	.uleb128 0x9
	.long	0x86a
	.long	0x880
	.uleb128 0xa
	.long	0x332
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_PTR\0"
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.long	0x870
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.long	0x3a0
	.uleb128 0x5
	.ascii "os_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x332
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.long	0x8fb
	.uleb128 0x6
	.ascii "OS_STATE_INIT\0"
	.byte	0
	.uleb128 0x6
	.ascii "OS_STATE_RUNNING\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_STATE_SHUTDOWN\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "os_state_t\0"
	.byte	0x6
	.byte	0xa
	.byte	0x19
	.long	0x8aa
	.uleb128 0x4
	.long	0x8fb
	.uleb128 0x9
	.long	0xa1
	.long	0x924
	.uleb128 0x13
	.long	0x332
	.word	0x270f
	.byte	0
	.uleb128 0x12
	.ascii "HEAP\0"
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.long	0x913
	.uleb128 0x9
	.long	0x357
	.long	0x941
	.uleb128 0xa
	.long	0x332
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.long	0x931
	.uleb128 0x12
	.ascii "OS_SW_BUG\0"
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.long	0x941
	.uleb128 0x12
	.ascii "OS_STATE\0"
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.long	0x90e
	.uleb128 0x12
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "DBG_CURR_VAL\0"
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "TASK1_CALL_NR\0"
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "TASK2_CALL_NR\0"
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "TASK3_CALL_NR\0"
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "TASK4_CALL_NR\0"
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.long	0x153
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_ADDR\0"
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.long	0xb83
	.uleb128 0xb
	.byte	0x4
	.long	0x153
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_POS\0"
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK0_STACK_ADDR\0"
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.long	0xb83
	.uleb128 0x12
	.ascii "TASK0_STACK_POS\0"
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK0_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK1_STACK_ADDR\0"
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.long	0xb83
	.uleb128 0x12
	.ascii "TASK1_STACK_POS\0"
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK1_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK2_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.long	0xb83
	.uleb128 0x12
	.ascii "TASK2_STACK_POS\0"
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK2_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK3_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.long	0xb83
	.uleb128 0x12
	.ascii "TASK3_STACK_POS\0"
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK3_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK4_STACK_ADDR\0"
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.long	0xb83
	.uleb128 0x12
	.ascii "TASK4_STACK_POS\0"
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.long	0x153
	.uleb128 0x12
	.ascii "TASK4_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.long	0x153
	.uleb128 0x9
	.long	0xa1
	.long	0xd77
	.uleb128 0x13
	.long	0x332
	.word	0x7cf
	.byte	0
	.uleb128 0x12
	.ascii "TASK0_STACK\0"
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.long	0xd66
	.uleb128 0x12
	.ascii "TASK1_STACK\0"
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.long	0xd66
	.uleb128 0x12
	.ascii "TASK2_STACK\0"
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.long	0xd66
	.uleb128 0x12
	.ascii "TASK3_STACK\0"
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.long	0xd66
	.uleb128 0x12
	.ascii "TASK4_STACK\0"
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.long	0xd66
	.uleb128 0x12
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.long	0x891
	.uleb128 0x9
	.long	0x855
	.long	0xe05
	.uleb128 0xa
	.long	0x332
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.long	0xdf5
	.uleb128 0x12
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.long	0xe4a
	.uleb128 0xb
	.byte	0x4
	.long	0x855
	.uleb128 0x9
	.long	0x846
	.long	0xe60
	.uleb128 0xa
	.long	0x332
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.long	0xe50
	.uleb128 0x9
	.long	0x846
	.long	0xe87
	.uleb128 0xa
	.long	0x332
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "RUNNING_TASK\0"
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.long	0xe77
	.uleb128 0x12
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.long	0xe77
	.uleb128 0x12
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.long	0xa1
	.uleb128 0x12
	.ascii "TASK_0_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.long	0x846
	.uleb128 0x12
	.ascii "TASK_1_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.long	0x846
	.uleb128 0x12
	.ascii "TASK_2_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.long	0x846
	.uleb128 0x12
	.ascii "TASK_3_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.long	0x846
	.uleb128 0x12
	.ascii "TASK_GROUP_1\0"
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.long	0x579
	.uleb128 0x12
	.ascii "TASK_GROUP_2\0"
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.long	0x579
	.uleb128 0x12
	.ascii "TASK_GROUP_3\0"
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.long	0x579
	.uleb128 0x12
	.ascii "TASK_GROUP_4\0"
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.long	0x579
	.uleb128 0x12
	.ascii "TASK_GROUP_5\0"
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.long	0x579
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.long	0x86a
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.long	0x4cd
	.uleb128 0x12
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.long	0x4cd
	.uleb128 0x12
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.long	0x90e
	.uleb128 0x12
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.long	0x3a0
	.uleb128 0x9
	.long	0xa1
	.long	0x104a
	.uleb128 0x13
	.long	0x332
	.word	0x3ff
	.byte	0
	.uleb128 0x12
	.ascii "OS_MAIN_STACK\0"
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.long	0x1039
	.uleb128 0x14
	.ascii "OS_INIT_MC\0"
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"dr"
Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"8.2.0\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1013\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD_TS_18661_3__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750796873653722224568e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MANT_DIG__ 113\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DIG__ 33\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DECIMAL_DIG__ 36\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ _\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_GNU_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STRICT_ANSI__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT80__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__tune_i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_X86_ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "CFG_PROCESSOR 3\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 9 "C:/Users/president/Desktop/sbx/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_FIRSTINC_H_ \0"
	.file 10 "c:/users/president/desktop/sbx/input/src/os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_CONFIG_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "INTEGER_LLP64_IL32P64 1u\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "INTEGER_LP64_I32LP64 2u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "INTEGER_ILP64 3u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "INTEGER_SILP64 4u\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "INTEGER_MODEL INTEGER_LLP64_IL32P64\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CPP_VERSION_NONE 0u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CPP_VERSION_1998 1u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "CPP_VERSION_2003 2u\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "CPP_VERSION_2007 3u\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "CPP_VERSION_2011 4u\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "ISO_CPP_VERSION CPP_VERSION_1998\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "BIG_INT_SIZE 16u\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "NR_OF_CORES 1u\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "MCU_CLOCK_IN_HZ ((uint32)168000000u)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DYNAMIC_MEMORY_USED FALSE\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "LOOPTIME_IN_USEC ((uint32)10000u)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "HEAP_SIZE 10000u\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "MIN_BLOCK_SIZE_HEAP 8u\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "HEAP_OFFSET_FOR_SIZE 0u\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "HEAP_OFFSET_FOR_USED_SIZE 4u\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "HEAP_OFFSET_FOR_CHUNK 8u\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "OS_MAIN_STACK_SIZE 0x400u\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "OS_PROCESS_STACK_TASK1_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "OS_PROCESS_STACK_TASK2_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "OS_PROCESS_STACK_TASK3_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "OS_PROCESS_STACK_TASK4_SIZE 0x200u\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_BASE_TYPES_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_COMMON_H_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "FALSE 0u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "TRUE 1u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "False FALSE\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "True TRUE\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "ACCEPTED 1u\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "REJECTED 0u\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "LOCAL static\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "LOCAL_INLINE static __inline__\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "GLOBAL_INLINE __inline__\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "NULL ((void*)0)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "MCU_X86 3\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "MCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "DWT_CTRL ((volatile uint32*)0xE0001000u)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "DWT_CYCCNT ((volatile uint32*)0xE0001004u)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "DWT_LAR ((volatile uint32*)0xE0001FB0u)\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DISABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "ENABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PRIVILIGE_LEVEL_SAVE_CURRENT() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PRIVILIGE_LEVEL_RESTORE_SAVED() \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "HALT_MCU() \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "AMOUNT_SW_BUG_FUNCTIONS 22\0"
	.byte	0x4
	.file 11 "c:/users/president/desktop/sbx/input/src/os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_GLOBAL_H_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_CORE_H_ \0"
	.file 12 "c:/users/president/desktop/sbx/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 13 "c:/users/president/desktop/sbx/input/src/os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_INTERRUPT_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "OS_INTERRUPT_SWI_1 asm(\"swi 1\")\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_INTERRUPT_SWI_2 asm(\"swi 2\")\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "OS_INTERRUPT_SWI_3 asm(\"swi 3\")\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "OS_INTERRUPT_SWI_4 asm(\"swi 4\")\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "OS_INTERRUPT_SWI_5 asm(\"swi 5\")\0"
	.byte	0x4
	.file 14 "c:/users/president/desktop/sbx/input/src/os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_MMU_H_ \0"
	.byte	0x4
	.file 15 "c:/users/president/desktop/sbx/input/src/os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_TIMER_H_ \0"
	.byte	0x4
	.file 16 "c:/users/president/desktop/sbx/input/src/os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_POWER_H_ \0"
	.byte	0x4
	.file 17 "c:/users/president/desktop/sbx/input/src/os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_RAM_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_COMMON_H_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.file 18 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_CONFIG_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "TASK_MIN_TIME (1e0)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "NUMBER_OF_TASKS 10u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "TASK0_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "TASK1_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "TASK2_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TASK3_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "TASK4_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "MS_PER_SEC 1000u\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "USE_STATIC_CREATED_TASKS TRUE\0"
	.byte	0x4
	.file 19 "C:/Users/president/Desktop/sbx/input/src/os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_INIT_TASK_SYSTEM_H_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5f
	.ascii "OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 20 "c:/users/president/desktop/sbx/input/src/os_user_code/led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 21 "C:/Users/president/Desktop/sbx/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STACK_H_ \0"
	.byte	0x4
	.file 22 "C:/Users/president/Desktop/sbx/input/src/os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_HEAP_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_MAIN_H_ \0"
	.byte	0x4
	.file 23 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_STACK_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 24 "C:/Users/president/Desktop/sbx/input/src/os_base/os_start_init_mc.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_START_INIT_MC_H_ \0"
	.byte	0x4
	.file 25 "C:/Users/president/Desktop/sbx/input/src/os_base/os_memory_mmu.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_MEMORY_MMU_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "MPU_RNR ((volatile uint32*)0xE000ED98u)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MPU_RBAR ((volatile uint32*)0xE000ED9Cu)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MPU_RASR ((volatile uint32*)0xE000EDA0u)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "MPU_ASR_NON_CACHABLE 0x00080000u\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "MPU_ASR_STRONGLY_ORDERED 0x00000000u\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "MPU_ASR_ACCESS_PRIV_NOACCESS_UNPRIV_NOACCESS 0x00000000u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "MPU_ASR_ACCESS_PRIV_RO_UNPRIV_RO 0x07000000u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "MPU_ASR_ACCESS_PRIV_RW_UNPRIV_RW 0x03000000u\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "MPU_ASR_ACCESS_PRIV_RW_UNPRIV_NOACCESS 0x01000000u\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "MPU_ASR_REGION_SIZE_FLASH 0x20000000u\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "MPU_ASR_REGION_SIZE_RAM 0x20000000u\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "MPU_ASR_REGION_SIZE_PERIPHERIE 0x20000000u\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "MPU_ASR_REGION_SIZE_STACK_COOKIE 0x00000010u\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "MPU_ASR_REGION_ENABLE 0x00000001u\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "exe_time\0"
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_OS_MMU_SETUP;	.scl	2;	.type	32;	.endef
