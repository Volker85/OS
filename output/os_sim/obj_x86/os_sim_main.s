	.file	"os_sim_main.c"
	.text
Ltext0:
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB1:
	.file 1 "c:/program/mingw/include/stdio.h"
	.loc 1 422 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 424 35
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 425 14
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vprintf
	movl	%eax, %ebx
	.loc 1 427 10
	movl	%ebx, %eax
	.loc 1 428 1
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Zeit: %d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB12:
	.file 2 "C:/Users/president/Desktop/sbx/input/src/os_sim/os_sim_main.c"
	.loc 2 12 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 2 12 1
	call	___main
LVL0:
	.loc 2 13 17
	movl	$0, 28(%esp)
	.loc 2 14 15
	movl	$0, (%esp)
	call	_time
	movl	%eax, 24(%esp)
	.loc 2 16 4
	call	_OS_STACK_CHK_PATTERN_INIT
	.loc 2 17 4
	call	_OS_START_OS
	.loc 2 18 9
	jmp	L4
L5:
	.loc 2 21 7
	call	_OS_STATE_HANDLER
	.loc 2 22 8
	incl	28(%esp)
L4:
	.loc 2 18 9
	cmpl	$99999999, 28(%esp)
	jbe	L5
	.loc 2 25 8
	movl	$0, (%esp)
	call	_time
	.loc 2 25 6
	subl	24(%esp), %eax
	movl	%eax, 24(%esp)
	.loc 2 26 4
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 2 27 4
	call	_getchar
	.loc 2 28 4
	call	_getchar
	.loc 2 30 4
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 32 11
	movl	$0, %eax
	.loc 2 33 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
Letext0:
	.file 3 "c:/users/president/desktop/sbx/input/src/os_base/os_base_types.h"
	.file 4 "c:/users/president/desktop/sbx/input/src/os_base/os_common.h"
	.file 5 "c:/users/president/desktop/sbx/input/src/os_sim/lld_core.h"
	.file 6 "c:/users/president/desktop/sbx/input/src/os_base/os_task_common.h"
	.file 7 "c:/users/president/desktop/sbx/input/src/os_base/os_main.h"
	.file 8 "c:/users/president/desktop/sbx/input/src/os_base/os_ram.h"
	.file 9 "c:/users/president/desktop/sbx/input/src/os_base/os_ram_stack.h"
	.file 10 "c:/program/mingw/include/sys/types.h"
	.file 11 "c:/program/mingw/include/time.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x1279
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 8.2.0 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_sim\\os_sim_main.c\0"
	.ascii "C:\\Program\\MinGW\\bin\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x3
	.byte	0x11
	.byte	0x18
	.long	0xb3
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
	.byte	0x3
	.byte	0x15
	.byte	0x18
	.long	0xb3
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
	.byte	0x3
	.byte	0x1b
	.byte	0x18
	.long	0x11d
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
	.byte	0x3
	.byte	0x1d
	.byte	0x18
	.long	0x11d
	.uleb128 0x4
	.long	0x13e
	.uleb128 0x5
	.ascii "os_sw_bugs_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32c
	.byte	0x4
	.byte	0x2e
	.byte	0x6
	.long	0x32c
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
	.byte	0x4
	.byte	0x3f
	.byte	0x1b
	.long	0x152
	.uleb128 0x4
	.long	0x33c
	.uleb128 0x7
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x4
	.byte	0x63
	.byte	0x10
	.long	0x37a
	.uleb128 0x8
	.ascii "number\0"
	.byte	0x4
	.byte	0x6c
	.byte	0xa
	.long	0x37a
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xd3
	.long	0x38a
	.uleb128 0xa
	.long	0x32c
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x4
	.byte	0x6d
	.byte	0x3
	.long	0x356
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x4
	.byte	0x6f
	.byte	0x11
	.long	0x38a
	.uleb128 0x5
	.ascii "privilige_mode_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32c
	.byte	0x5
	.byte	0x10
	.byte	0x6
	.long	0x44a
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
	.byte	0x5
	.byte	0x16
	.byte	0x20
	.long	0x3ac
	.uleb128 0x5
	.ascii "task_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32c
	.byte	0x6
	.byte	0x7
	.byte	0x6
	.long	0x4c7
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
	.byte	0x6
	.byte	0xe
	.byte	0x1b
	.long	0x463
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x6
	.byte	0x13
	.byte	0x1b
	.long	0x4ed
	.uleb128 0xb
	.byte	0x4
	.long	0x4f3
	.uleb128 0xc
	.long	0x4fe
	.uleb128 0xd
	.long	0x4fe
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x6
	.byte	0x15
	.byte	0x1b
	.long	0x51e
	.uleb128 0xb
	.byte	0x4
	.long	0x524
	.uleb128 0xf
	.long	0x9b
	.long	0x538
	.uleb128 0xd
	.long	0x4fe
	.uleb128 0xd
	.long	0x4c7
	.byte	0
	.uleb128 0x7
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x6
	.byte	0x18
	.byte	0x8
	.long	0x573
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x6
	.byte	0x1a
	.byte	0xe
	.long	0x39a
	.byte	0
	.uleb128 0x8
	.ascii "fair_exe_time\0"
	.byte	0x6
	.byte	0x1b
	.byte	0xe
	.long	0x39a
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x6
	.byte	0x1d
	.byte	0x1d
	.long	0x538
	.uleb128 0x7
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x6
	.byte	0x1f
	.byte	0x8
	.long	0x834
	.uleb128 0x11
	.ascii "active\0"
	.byte	0x6
	.byte	0x21
	.byte	0xd
	.long	0x32c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "task_queued\0"
	.byte	0x6
	.byte	0x22
	.byte	0xd
	.long	0x32c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.ascii "idle_task\0"
	.byte	0x6
	.byte	0x23
	.byte	0xd
	.long	0x32c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.ascii "free\0"
	.byte	0x6
	.byte	0x24
	.byte	0xd
	.long	0x32c
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "nr_of_ins_allowed\0"
	.byte	0x6
	.byte	0x25
	.byte	0x14
	.long	0x9b
	.byte	0x4
	.uleb128 0x8
	.ascii "nr_of_ins_activated\0"
	.byte	0x6
	.byte	0x26
	.byte	0x14
	.long	0x9b
	.byte	0x5
	.uleb128 0x8
	.ascii "wait_act_until\0"
	.byte	0x6
	.byte	0x27
	.byte	0xe
	.long	0x39a
	.byte	0x6
	.uleb128 0x8
	.ascii "wait_time\0"
	.byte	0x6
	.byte	0x28
	.byte	0xe
	.long	0x39a
	.byte	0x16
	.uleb128 0x8
	.ascii "time_to_prio_inc\0"
	.byte	0x6
	.byte	0x29
	.byte	0xe
	.long	0x39a
	.byte	0x26
	.uleb128 0x8
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x6
	.byte	0x2a
	.byte	0xb
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.ascii "max_allowed_wait_time\0"
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.long	0x39a
	.byte	0x3c
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x6
	.byte	0x2c
	.byte	0xe
	.long	0x39a
	.byte	0x4c
	.uleb128 0x8
	.ascii "start_time\0"
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.long	0x39a
	.byte	0x5c
	.uleb128 0x8
	.ascii "current_prio\0"
	.byte	0x6
	.byte	0x2e
	.byte	0x14
	.long	0x9b
	.byte	0x6c
	.uleb128 0x8
	.ascii "default_prio\0"
	.byte	0x6
	.byte	0x2f
	.byte	0x14
	.long	0x9b
	.byte	0x6d
	.uleb128 0x8
	.ascii "task_number\0"
	.byte	0x6
	.byte	0x30
	.byte	0x15
	.long	0x104
	.byte	0x70
	.uleb128 0x8
	.ascii "fp\0"
	.byte	0x6
	.byte	0x31
	.byte	0xd
	.long	0x4dc
	.byte	0x74
	.uleb128 0x8
	.ascii "state_request\0"
	.byte	0x6
	.byte	0x32
	.byte	0x1a
	.long	0x500
	.byte	0x78
	.uleb128 0x8
	.ascii "task_state\0"
	.byte	0x6
	.byte	0x33
	.byte	0x11
	.long	0x4c7
	.byte	0x7c
	.uleb128 0x8
	.ascii "task_group\0"
	.byte	0x6
	.byte	0x34
	.byte	0x12
	.long	0x834
	.byte	0x80
	.uleb128 0x8
	.ascii "eax\0"
	.byte	0x6
	.byte	0x36
	.byte	0x15
	.long	0x104
	.byte	0x84
	.uleb128 0x8
	.ascii "ebx\0"
	.byte	0x6
	.byte	0x37
	.byte	0x15
	.long	0x104
	.byte	0x88
	.uleb128 0x8
	.ascii "ecx\0"
	.byte	0x6
	.byte	0x38
	.byte	0x15
	.long	0x104
	.byte	0x8c
	.uleb128 0x8
	.ascii "edx\0"
	.byte	0x6
	.byte	0x39
	.byte	0x15
	.long	0x104
	.byte	0x90
	.uleb128 0x8
	.ascii "p_stack_pointer\0"
	.byte	0x6
	.byte	0x49
	.byte	0x15
	.long	0x83a
	.byte	0x94
	.uleb128 0x8
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x6
	.byte	0x4a
	.byte	0x15
	.long	0x83a
	.byte	0x98
	.uleb128 0x8
	.ascii "p_stack_pointer_start\0"
	.byte	0x6
	.byte	0x4b
	.byte	0x15
	.long	0x83a
	.byte	0x9c
	.uleb128 0x8
	.ascii "stack_size\0"
	.byte	0x6
	.byte	0x4c
	.byte	0x16
	.long	0x104
	.byte	0xa0
	.uleb128 0x8
	.ascii "p_stack_pointer_end\0"
	.byte	0x6
	.byte	0x4d
	.byte	0x15
	.long	0x83a
	.byte	0xa4
	.uleb128 0x8
	.ascii "privilige_mode\0"
	.byte	0x6
	.byte	0x4e
	.byte	0x15
	.long	0x44a
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x573
	.uleb128 0xb
	.byte	0x4
	.long	0x9b
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x6
	.byte	0x50
	.byte	0x17
	.long	0x588
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x6
	.byte	0x51
	.byte	0x11
	.long	0x864
	.uleb128 0xb
	.byte	0x4
	.long	0x840
	.uleb128 0x9
	.long	0x864
	.long	0x87a
	.uleb128 0xa
	.long	0x32c
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_PTR\0"
	.byte	0x6
	.byte	0x5b
	.byte	0x10
	.long	0x86a
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x6
	.byte	0x5d
	.byte	0x13
	.long	0x39a
	.uleb128 0x5
	.ascii "os_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32c
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.long	0x8f5
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
	.byte	0x7
	.byte	0xa
	.byte	0x19
	.long	0x8a4
	.uleb128 0x4
	.long	0x8f5
	.uleb128 0x9
	.long	0x9b
	.long	0x91e
	.uleb128 0x13
	.long	0x32c
	.word	0x270f
	.byte	0
	.uleb128 0x12
	.ascii "HEAP\0"
	.byte	0x8
	.byte	0xb
	.byte	0x18
	.long	0x90d
	.uleb128 0x9
	.long	0x351
	.long	0x93b
	.uleb128 0xa
	.long	0x32c
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.long	0x92b
	.uleb128 0x12
	.ascii "OS_SW_BUG\0"
	.byte	0x8
	.byte	0xe
	.byte	0x1e
	.long	0x93b
	.uleb128 0x12
	.ascii "OS_STATE\0"
	.byte	0x8
	.byte	0xf
	.byte	0x1c
	.long	0x908
	.uleb128 0x12
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x10
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x11
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x12
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x13
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x8
	.byte	0x14
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x8
	.byte	0x15
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x16
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x8
	.byte	0x17
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x8
	.byte	0x18
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x8
	.byte	0x19
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x8
	.byte	0x1a
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "DBG_CURR_VAL\0"
	.byte	0x8
	.byte	0x1b
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x8
	.byte	0x1c
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x8
	.byte	0x1d
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK1_CALL_NR\0"
	.byte	0x8
	.byte	0x1e
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK2_CALL_NR\0"
	.byte	0x8
	.byte	0x1f
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK3_CALL_NR\0"
	.byte	0x8
	.byte	0x20
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK4_CALL_NR\0"
	.byte	0x8
	.byte	0x21
	.byte	0x18
	.long	0x14d
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_ADDR\0"
	.byte	0x8
	.byte	0x23
	.byte	0x19
	.long	0xb7d
	.uleb128 0xb
	.byte	0x4
	.long	0x14d
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_POS\0"
	.byte	0x8
	.byte	0x24
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x25
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK0_STACK_ADDR\0"
	.byte	0x8
	.byte	0x26
	.byte	0x19
	.long	0xb7d
	.uleb128 0x12
	.ascii "TASK0_STACK_POS\0"
	.byte	0x8
	.byte	0x27
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK0_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x28
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK1_STACK_ADDR\0"
	.byte	0x8
	.byte	0x29
	.byte	0x19
	.long	0xb7d
	.uleb128 0x12
	.ascii "TASK1_STACK_POS\0"
	.byte	0x8
	.byte	0x2a
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK1_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x2b
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK2_STACK_ADDR\0"
	.byte	0x8
	.byte	0x2c
	.byte	0x19
	.long	0xb7d
	.uleb128 0x12
	.ascii "TASK2_STACK_POS\0"
	.byte	0x8
	.byte	0x2d
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK2_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x2e
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK3_STACK_ADDR\0"
	.byte	0x8
	.byte	0x2f
	.byte	0x19
	.long	0xb7d
	.uleb128 0x12
	.ascii "TASK3_STACK_POS\0"
	.byte	0x8
	.byte	0x30
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK3_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x31
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK4_STACK_ADDR\0"
	.byte	0x8
	.byte	0x32
	.byte	0x19
	.long	0xb7d
	.uleb128 0x12
	.ascii "TASK4_STACK_POS\0"
	.byte	0x8
	.byte	0x33
	.byte	0x19
	.long	0x14d
	.uleb128 0x12
	.ascii "TASK4_STACK_USAGE_PERCENT\0"
	.byte	0x8
	.byte	0x34
	.byte	0x19
	.long	0x14d
	.uleb128 0x9
	.long	0x9b
	.long	0xd71
	.uleb128 0x13
	.long	0x32c
	.word	0x7cf
	.byte	0
	.uleb128 0x12
	.ascii "TASK0_STACK\0"
	.byte	0x8
	.byte	0x35
	.byte	0x1a
	.long	0xd60
	.uleb128 0x12
	.ascii "TASK1_STACK\0"
	.byte	0x8
	.byte	0x36
	.byte	0x1a
	.long	0xd60
	.uleb128 0x12
	.ascii "TASK2_STACK\0"
	.byte	0x8
	.byte	0x37
	.byte	0x1a
	.long	0xd60
	.uleb128 0x12
	.ascii "TASK3_STACK\0"
	.byte	0x8
	.byte	0x38
	.byte	0x1a
	.long	0xd60
	.uleb128 0x12
	.ascii "TASK4_STACK\0"
	.byte	0x8
	.byte	0x39
	.byte	0x1a
	.long	0xd60
	.uleb128 0x12
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x8
	.byte	0x3a
	.byte	0x1a
	.long	0x88b
	.uleb128 0x9
	.long	0x84f
	.long	0xdff
	.uleb128 0xa
	.long	0x32c
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x8
	.byte	0x3b
	.byte	0x1a
	.long	0xdef
	.uleb128 0x12
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x8
	.byte	0x3c
	.byte	0x1a
	.long	0xe44
	.uleb128 0xb
	.byte	0x4
	.long	0x84f
	.uleb128 0x9
	.long	0x840
	.long	0xe5a
	.uleb128 0xa
	.long	0x32c
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x8
	.byte	0x3d
	.byte	0x1a
	.long	0xe4a
	.uleb128 0x9
	.long	0x840
	.long	0xe81
	.uleb128 0xa
	.long	0x32c
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "RUNNING_TASK\0"
	.byte	0x8
	.byte	0x3e
	.byte	0x1a
	.long	0xe71
	.uleb128 0x12
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.long	0xe71
	.uleb128 0x12
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x8
	.byte	0x40
	.byte	0x1a
	.long	0x9b
	.uleb128 0x12
	.ascii "TASK_0_VAR\0"
	.byte	0x8
	.byte	0x41
	.byte	0xf
	.long	0x840
	.uleb128 0x12
	.ascii "TASK_1_VAR\0"
	.byte	0x8
	.byte	0x41
	.byte	0x1b
	.long	0x840
	.uleb128 0x12
	.ascii "TASK_2_VAR\0"
	.byte	0x8
	.byte	0x41
	.byte	0x27
	.long	0x840
	.uleb128 0x12
	.ascii "TASK_3_VAR\0"
	.byte	0x8
	.byte	0x41
	.byte	0x33
	.long	0x840
	.uleb128 0x12
	.ascii "TASK_GROUP_1\0"
	.byte	0x8
	.byte	0x42
	.byte	0x15
	.long	0x573
	.uleb128 0x12
	.ascii "TASK_GROUP_2\0"
	.byte	0x8
	.byte	0x42
	.byte	0x23
	.long	0x573
	.uleb128 0x12
	.ascii "TASK_GROUP_3\0"
	.byte	0x8
	.byte	0x42
	.byte	0x31
	.long	0x573
	.uleb128 0x12
	.ascii "TASK_GROUP_4\0"
	.byte	0x8
	.byte	0x42
	.byte	0x3f
	.long	0x573
	.uleb128 0x12
	.ascii "TASK_GROUP_5\0"
	.byte	0x8
	.byte	0x42
	.byte	0x4d
	.long	0x573
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x8
	.byte	0x43
	.byte	0x1a
	.long	0x864
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x8
	.byte	0x44
	.byte	0x1a
	.long	0x4c7
	.uleb128 0x12
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x8
	.byte	0x45
	.byte	0x1a
	.long	0x4c7
	.uleb128 0x12
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x8
	.byte	0x46
	.byte	0x1c
	.long	0x908
	.uleb128 0x12
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x8
	.byte	0x47
	.byte	0x12
	.long	0x39a
	.uleb128 0x9
	.long	0x9b
	.long	0x1044
	.uleb128 0x13
	.long	0x32c
	.word	0x3ff
	.byte	0
	.uleb128 0x12
	.ascii "OS_MAIN_STACK\0"
	.byte	0x9
	.byte	0xc
	.byte	0x18
	.long	0x1033
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x14
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0x1083
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x15
	.long	0x1083
	.uleb128 0x7
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0xd2
	.byte	0x10
	.long	0x1120
	.uleb128 0x8
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.long	0x1120
	.byte	0
	.uleb128 0x8
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0xd5
	.byte	0x8
	.long	0x1126
	.byte	0x4
	.uleb128 0x8
	.ascii "_base\0"
	.byte	0x1
	.byte	0xd6
	.byte	0x9
	.long	0x1120
	.byte	0x8
	.uleb128 0x8
	.ascii "_flag\0"
	.byte	0x1
	.byte	0xd7
	.byte	0x8
	.long	0x1126
	.byte	0xc
	.uleb128 0x8
	.ascii "_file\0"
	.byte	0x1
	.byte	0xd8
	.byte	0x8
	.long	0x1126
	.byte	0x10
	.uleb128 0x8
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0xd9
	.byte	0x8
	.long	0x1126
	.byte	0x14
	.uleb128 0x8
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0xda
	.byte	0x8
	.long	0x1126
	.byte	0x18
	.uleb128 0x8
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0xdb
	.byte	0x9
	.long	0x1120
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x1083
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.ascii "FILE\0"
	.byte	0x1
	.byte	0xdc
	.byte	0x3
	.long	0x1090
	.uleb128 0x9
	.long	0x112d
	.long	0x1145
	.uleb128 0x16
	.byte	0
	.uleb128 0x12
	.ascii "_iob\0"
	.byte	0x1
	.byte	0xef
	.byte	0x15
	.long	0x113a
	.uleb128 0x2
	.ascii "__time32_t\0"
	.byte	0xa
	.byte	0x8b
	.byte	0x13
	.long	0x132
	.uleb128 0x2
	.ascii "time_t\0"
	.byte	0xa
	.byte	0x95
	.byte	0x17
	.long	0x1152
	.uleb128 0x17
	.ascii "daylight\0"
	.byte	0xb
	.word	0x17d
	.byte	0x16
	.long	0x1126
	.uleb128 0x17
	.ascii "timezone\0"
	.byte	0xb
	.word	0x17e
	.byte	0x16
	.long	0x132
	.uleb128 0x9
	.long	0x1120
	.long	0x11a8
	.uleb128 0xa
	.long	0x32c
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.ascii "tzname\0"
	.byte	0xb
	.word	0x17f
	.byte	0x16
	.long	0x1198
	.uleb128 0x18
	.ascii "main\0"
	.byte	0x2
	.byte	0xb
	.byte	0x5
	.long	0x1126
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x120e
	.uleb128 0x19
	.ascii "argc\0"
	.byte	0x2
	.byte	0xb
	.byte	0xe
	.long	0x1126
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.ascii "argv\0"
	.byte	0x2
	.byte	0xb
	.byte	0x1a
	.long	0x120e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.ascii "i\0"
	.byte	0x2
	.byte	0xd
	.byte	0x11
	.long	0x32c
	.uleb128 0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x1a
	.ascii "t\0"
	.byte	0x2
	.byte	0xe
	.byte	0xb
	.long	0x1165
	.uleb128 0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x1120
	.uleb128 0x1b
	.ascii "printf\0"
	.byte	0x1
	.word	0x1a5
	.byte	0x5
	.long	0x1126
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1276
	.uleb128 0x1c
	.ascii "__format\0"
	.byte	0x1
	.word	0x1a5
	.byte	0x19
	.long	0x1276
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.uleb128 0x1e
	.ascii "__retval\0"
	.byte	0x1
	.word	0x1a7
	.byte	0x10
	.long	0x1126
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1e
	.ascii "__local_argv\0"
	.byte	0x1
	.word	0x1a8
	.byte	0x15
	.long	0x106b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x108b
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2
	.file 12 "c:/users/president/desktop/sbx/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_FIRSTINC_H_ \0"
	.file 13 "c:/users/president/desktop/sbx/input/src/os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_BASE_TYPES_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4
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
	.file 14 "c:/users/president/desktop/sbx/input/src/os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_GLOBAL_H_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_CORE_H_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 15 "c:/users/president/desktop/sbx/input/src/os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
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
	.file 16 "c:/users/president/desktop/sbx/input/src/os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_MMU_H_ \0"
	.byte	0x4
	.file 17 "c:/users/president/desktop/sbx/input/src/os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_TIMER_H_ \0"
	.byte	0x4
	.file 18 "c:/users/president/desktop/sbx/input/src/os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_POWER_H_ \0"
	.byte	0x4
	.file 19 "c:/users/president/desktop/sbx/input/src/os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_RAM_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_COMMON_H_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.file 20 "c:/users/president/desktop/sbx/input/src/os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
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
	.file 21 "c:/users/president/desktop/sbx/input/src/os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
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
	.file 22 "c:/users/president/desktop/sbx/input/src/os_user_code/led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 23 "c:/users/president/desktop/sbx/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STACK_H_ \0"
	.byte	0x4
	.file 24 "c:/users/president/desktop/sbx/input/src/os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_HEAP_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_MAIN_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_STACK_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x7
	.byte	0x4
	.file 25 "c:/users/president/desktop/sbx/input/src/os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_SCHEDULER_H_ \0"
	.byte	0x1
	.uleb128 0x7
	.ascii "TASK_0_PTR 0u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "TASK_1_PTR 1u\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "TASK_2_PTR 2u\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "TASK_3_PTR 3u\0"
	.byte	0x4
	.file 26 "c:/users/president/desktop/sbx/input/src/os_base/os_exception_isr_handler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_EXCEPTION_ISR_HANDLER_H_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "SVC_00 0x00\0"
	.byte	0x4
	.file 27 "c:/users/president/desktop/sbx/input/src/os_base/os_start_os.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STARTOS_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x32
	.ascii "_STDIO_H \0"
	.file 28 "c:/program/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x22
	.ascii "__MINGW_H \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__MINGW32_VERSION 5002002L\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__MINGW32_MAJOR_VERSION 5\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__MINGW32_MINOR_VERSION 2\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__MINGW32_PATCHLEVEL 2\0"
	.file 29 "c:/program/mingw/include/msvcrtver.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x22
	.ascii "_MSVCRTVER_H \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__MSVCR60_DLL 0x0600\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__MSVCR61_DLL 0x0601\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__MSVCR70_DLL 0x0700\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__MSVCR71_DLL 0x0701\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__MSVCR80_DLL 0x0800\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__MSVCR90_DLL 0x0900\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__MSVCR100_DLL 0x1000\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__MSVCR110_DLL 0x1100\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__MSVCR120_DLL 0x1200\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__MSVCRT_VERSION__ __MSVCR60_DLL\0"
	.byte	0x4
	.file 30 "c:/program/mingw/include/w32api.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x22
	.ascii "_W32API_H \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__W32API_VERSION 5002002L\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__W32API_MAJOR_VERSION 5\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__W32API_MINOR_VERSION 2\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__W32API_PATCHLEVEL 2\0"
	.file 31 "c:/program/mingw/include/sdkddkver.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x22
	.ascii "_SDKDDKVER_H \0"
	.byte	0x1
	.uleb128 0x29
	.ascii "OSVERSION_MASK 0xFFFF0000\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "SPVERSION_MASK 0x0000FF00\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "SUBVERSION_MASK 0x000000FF\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "OSVER(ver) ((ver) & OSVERSION_MASK)\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "SPVER(ver) (((ver) & SPVERSION_MASK) >> 8)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "SUBVER(ver) ((ver) & SUBVERSION_MASK)\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "WINNTVER(ver) ((ver) >> 16)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "NTDDI_VERSION_FROM_WIN32_WINNT(ver) _NTDDI_VERSION_FROM_WIN32_WINNT(ver)\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_NTDDI_VERSION_FROM_WIN32_WINNT(ver) ver ##0000\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_WIN32_WINNT_NT4 0x0400\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_WIN32_WINNT_NT4E 0x0401\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_WIN32_WINNT_NT4SP3 0x0403\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_WIN32_WINDOWS_95 0x0400\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_WIN32_WINDOWS_98 0x0410\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_WIN32_WINDOWS_ME 0x0490\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_WIN32_WINNT_WIN2K 0x0500\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_WIN32_WINNT_WINXP 0x0501\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_WIN32_WINNT_WS03 0x0502\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_WIN32_WINNT_WIN6 0x0600\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_WIN32_WINNT_VISTA 0x0600\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_WIN32_WINNT_WS08 0x0600\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_WIN32_WINNT_LONGHORN 0x0600\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_WIN32_WINNT_WIN7 0x0601\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_WIN32_WINNT_WIN8 0x0602\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_WIN32_WINNT_WINBLUE 0x0603\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_WIN32_IE_IE50 0x0500\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_WIN32_IE_IE501 0x0501\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "_WIN32_IE_IE55 0x0550\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "_WIN32_IE_IE56 0x0560\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "_WIN32_IE_IE60 0x0600\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "_WIN32_IE_IE60SP1 0x0601\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "_WIN32_IE_IE60SP2 0x0603\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_WIN32_IE_IE70 0x0700\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "_WIN32_IE_IE80 0x0800\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "_WIN32_IE_IE30 0x0300\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "_WIN32_IE_IE301 0x0301\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "_WIN32_IE_IE302 0x0302\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "_WIN32_IE_IE40 0x0400\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "_WIN32_IE_IE401 0x0401\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__NTDDI_WIN5 0x05000000\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__NTDDI_WIN51 0x05010000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__NTDDI_WIN52 0x05020000\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__NTDDI_WIN6 0x06000000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__NTDDI_WIN61 0x06010000\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__NTDDI_WIN62 0x06020000\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__NTDDI_WIN63 0x06030000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__NTDDI_SP0 0x00000000\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__NTDDI_SP1 0x00000100\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__NTDDI_SP2 0x00000200\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__NTDDI_SP3 0x00000300\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__NTDDI_SP4 0x00000400\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "NTDDI_WIN2K __NTDDI_WIN5 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "NTDDI_WIN2KSP1 __NTDDI_WIN5 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "NTDDI_WIN2KSP2 __NTDDI_WIN5 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "NTDDI_WIN2KSP3 __NTDDI_WIN5 + __NTDDI_SP3\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "NTDDI_WIN2KSP4 __NTDDI_WIN5 + __NTDDI_SP4\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "NTDDI_WINXP __NTDDI_WIN51 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "NTDDI_WINXPSP1 __NTDDI_WIN51 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "NTDDI_WINXPSP2 __NTDDI_WIN51 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "NTDDI_WINXPSP3 __NTDDI_WIN51 + __NTDDI_SP3\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "NTDDI_WS03 __NTDDI_WIN52 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "NTDDI_WS03SP1 __NTDDI_WIN52 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "NTDDI_WS03SP2 __NTDDI_WIN52 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "NTDDI_VISTA __NTDDI_WIN6 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "NTDDI_VISTASP1 __NTDDI_WIN6 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "NTDDI_VISTASP2 __NTDDI_WIN6 + __NTDDI_SP2\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "NTDDI_LONGHORN NTDDI_VISTA\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "NTDDI_WIN6 NTDDI_VISTA\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "NTDDI_WIN6SP1 NTDDI_VISTASP1\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "NTDDI_WIN6SP2 NTDDI_VISTASP2\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "NTDDI_WS08 __NTDDI_WIN6 + __NTDDI_SP1\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "NTDDI_WIN7 __NTDDI_WIN61 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "NTDDI_WIN8 __NTDDI_WIN62 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "NTDDI_WINBLUE __NTDDI_WIN63 + __NTDDI_SP0\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "_WIN32_WINNT _WIN32_WINNT_WIN2K\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "WINVER _WIN32_WINNT\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "NTDDI_VERSION NTDDI_VERSION_FROM_WIN32_WINNT(_WIN32_WINNT)\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "_WIN32_IE _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "_M_IX86 300\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_M_IX86_FP 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4f
	.ascii "Windows95 _WIN32_WINDOWS_95\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "Windows98 _WIN32_WINDOWS_98\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "WindowsME _WIN32_WINDOWS_ME\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "WindowsNT4 _WIN32_WINNT_NT4\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "Windows2000 _WIN32_WINNT_WIN2K\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "WindowsXP _WIN32_WINNT_WINXP\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "Windows2003 _WIN32_WINNT_WS03\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "WindowsVista _WIN32_WINNT_VISTA\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "IE3 _WIN32_IE_IE30\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "IE301 _WIN32_IE_IE301\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "IE302 _WIN32_IE_IE302\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "IE4 _WIN32_IE_IE40\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "IE401 _WIN32_IE_IE401\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "IE5 _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "IE5a _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "IE5b _WIN32_IE_IE50\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "IE501 _WIN32_IE_IE501\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "IE55 _WIN32_IE_IE55\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "IE56 _WIN32_IE_IE56\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "IE6 _WIN32_IE_IE60\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "IE601 _WIN32_IE_IE60SP1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "IE602 _WIN32_IE_IE60SP2\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "IE7 _WIN32_IE_IE70\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__AW_SUFFIXED__(__NAME__) __NAME__ ##A\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__AW_EXTENDED__(__NAME__) __AW_SUFFIXED__(__NAME__ ##_)\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__AW_STRING_A__(__TEXT__) __TEXT__\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__AW__WCHAR_T__(__TEXT__) __AW_STRING_A__(L ##__TEXT__)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__AW_STRING_W__(__TEXT__) __AW__WCHAR_T__(__TEXT__)\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__AW_ALIAS__(__NAME__) __AW_SUFFIXED__(__NAME__) __NAME__\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__AW_ALIAS_EX__(__NAME__) __AW_EXTENDED__(__NAME__) __NAME__\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_EXTERN_C extern\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_BEGIN_C_DECLS \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_END_C_DECLS \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x6d
	.ascii "__CRT_GLOB_USE_MSVCRT__ 0x0001\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__CRT_GLOB_USE_MINGW__ 0x0002\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__CRT_GLOB_USE_SINGLE_QUOTE__ 0x0010\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__CRT_GLOB_BRACKET_GROUPS__ 0x0020\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__CRT_GLOB_ESCAPE_CHAR__ (char)(127)\0"
	.file 32 "c:/program/mingw/include/features.h"
	.byte	0x3
	.uleb128 0xae
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x3d
	.ascii "__MINGW_FEATURES__ (__MINGW_FEATURES_BEGIN__) __MINGW_FEATURE_IGNORE__ (__MINGW_ANSI_STDIO__) __MINGW_FEATURE_IGNORE__ (__MINGW_LC_MESSAGES__) __MINGW_FEATURE_IGNORE__ (__MINGW_LC_ENVVARS__) __MINGW_FEATURES_END__\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xbb
	.ascii "__MINGW_FEATURE_ENABLE__(__FEATURE__) | (__FEATURE__)\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__MINGW_FEATURE_IGNORE__(__FEATURE__) \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__MINGW_FEATURES_BEGIN__ 0x0000000000000000ULL\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__MINGW_FEATURES_UNSET__ 0x0000000000000000ULL\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__MINGW_FEATURES_END__ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__MINGW_ANSI_STDIO__ 0x0000000000000001ULL\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "__MINGW_LC_EXTENSIONS__ 0x0000000000000050ULL\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "__MINGW_LC_MESSAGES__ 0x0000000000000010ULL\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "__MINGW_LC_ENVVARS__ 0x0000000000000040ULL\0"
	.byte	0x2
	.uleb128 0xd1
	.ascii "__attribute__\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__MINGW_IMPORT extern __attribute__((__dllimport__))\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "_CRTIMP \0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0x11f
	.ascii "__int32 long\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "__small char\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "__hyper long long\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "__CRT_INLINE extern __inline__\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "_CRTALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x151
	.ascii "__CRT_ALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x15f
	.ascii "__JMPSTUB__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x160
	.ascii "__LIBIMPL__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x166
	.ascii "__UNUSED_PARAM(x) x __attribute__((__unused__))\0"
	.byte	0x1
	.uleb128 0x16d
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x16e
	.ascii "__MINGW_ATTRIB_CONST __attribute__((__const__))\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__((__malloc__))\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "__MINGW_ATTRIB_PURE __attribute__((__pure__))\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__((__nonnull__(arg)))\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__((__deprecated__))\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "__MINGW_NOTHROW __attribute__((__nothrow__))\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "__USE_MINGW_ANSI_STDIO __MINGW_ANSI_STDIO__\0"
	.byte	0x1
	.uleb128 0x1bd
	.ascii "__paste(prefix,suffix) prefix ## suffix\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "__valueless(token) ((token - 0) == 0) && (__paste(token,10) == 10)\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "__POSIX_1996_DEPRECATED \0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "__POSIX_2001_DEPRECATED \0"
	.byte	0x1
	.uleb128 0x22a
	.ascii "__POSIX_2008_DEPRECATED \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x40
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__need_wint_t \0"
	.file 33 "c:/program/mingw/lib/gcc/mingw32/8.2.0/include/stddef.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x21
	.byte	0x1
	.uleb128 0xbb
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x2
	.uleb128 0x126
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "_WINT_T \0"
	.byte	0x2
	.uleb128 0x167
	.ascii "__need_wint_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x55
	.ascii "__need___off64_t \0"
	.file 34 "c:/program/mingw/include/sys/types.h"
	.byte	0x3
	.uleb128 0x5f
	.uleb128 0x22
	.byte	0x2
	.uleb128 0x54
	.ascii "__need_off_t\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "__need___off64_t\0"
	.byte	0x2
	.uleb128 0x84
	.ascii "__need_ssize_t\0"
	.byte	0x2
	.uleb128 0xa3
	.ascii "__need_time_t\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x65
	.ascii "__need___va_list \0"
	.file 35 "c:/program/mingw/lib/gcc/mingw32/8.2.0/include/stdarg.h"
	.byte	0x3
	.uleb128 0x66
	.uleb128 0x23
	.byte	0x2
	.uleb128 0x22
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x67
	.ascii "__VALIST __builtin_va_list\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "_IOREAD 1\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "_IOWRT 2\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "_IORW 0x0080\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "FILENAME_MAX (260)\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "FOPEN_MAX (20)\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "TMP_MAX 32767\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "L_tmpnam (16)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "_IONBF 0x0004\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "_IOMYBUF 0x0008\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "_IOEOF 0x0010\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "_IOERR 0x0020\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_IOSTRG 0x0040\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "stdin (&_iob[STDIN_FILENO])\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "stdout (&_iob[STDOUT_FILENO])\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "stderr (&_iob[STDERR_FILENO])\0"
	.byte	0x2
	.uleb128 0x12f
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __Wformat(F)\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "__Wformat_mingw_printf(F,A) __attribute__((__format__(__mingw_printf__,F,A)))\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "__Wformat(F) __Wformat_ ##F __mingw_ ##F\0"
	.byte	0x1
	.uleb128 0x149
	.ascii "__Wformat_printf __Wformat_mingw_printf(1,2)\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "__Wformat_fprintf __Wformat_mingw_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "__Wformat_sprintf __Wformat_mingw_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "__Wformat_vprintf __Wformat_mingw_printf(1,0)\0"
	.byte	0x1
	.uleb128 0x14d
	.ascii "__Wformat_vfprintf __Wformat_mingw_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x14e
	.ascii "__Wformat_vsprintf __Wformat_mingw_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "__Wformat_snprintf __Wformat_mingw_printf(3,4)\0"
	.byte	0x1
	.uleb128 0x154
	.ascii "__Wformat_vsnprintf __Wformat_mingw_printf(3,0)\0"
	.byte	0x1
	.uleb128 0x163
	.ascii "_MSVC_PRINTF_QUIRKS 0x0100U\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "_QUERY_MSVC_PRINTF_QUIRKS ~0U, 0U\0"
	.byte	0x1
	.uleb128 0x165
	.ascii "_DISABLE_MSVC_PRINTF_QUIRKS ~_MSVC_PRINTF_QUIRKS, 0U\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "_ENABLE_MSVC_PRINTF_QUIRKS ~0U, _MSVC_PRINTF_QUIRKS\0"
	.byte	0x2
	.uleb128 0x17d
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "__mingw_stdio_redirect__ static __inline__ __cdecl __MINGW_NOTHROW\0"
	.byte	0x2
	.uleb128 0x1f4
	.ascii "__Wformat\0"
	.byte	0x2
	.uleb128 0x1f5
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x1f6
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __Wformat(F)\0"
	.byte	0x1
	.uleb128 0x1f7
	.ascii "__Wformat_msvcrt_printf(F,A) __attribute__((__format__(__ms_printf__,F,A)))\0"
	.byte	0x1
	.uleb128 0x1f8
	.ascii "__Wformat(F) __Wformat_ms_ ##F __msvcrt_ ##F\0"
	.byte	0x1
	.uleb128 0x1fa
	.ascii "__Wformat_ms_printf __Wformat_msvcrt_printf(1,2)\0"
	.byte	0x1
	.uleb128 0x1fb
	.ascii "__Wformat_ms_fprintf __Wformat_msvcrt_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "__Wformat_ms_sprintf __Wformat_msvcrt_printf(2,3)\0"
	.byte	0x1
	.uleb128 0x1fd
	.ascii "__Wformat_ms_vprintf __Wformat_msvcrt_printf(1,0)\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "__Wformat_ms_vfprintf __Wformat_msvcrt_printf(2,0)\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "__Wformat_ms_vsprintf __Wformat_msvcrt_printf(2,0)\0"
	.byte	0x2
	.uleb128 0x208
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x2
	.uleb128 0x209
	.ascii "__Wformat\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "feof(__F) ((__F)->_flag & _IOEOF)\0"
	.byte	0x1
	.uleb128 0x373
	.ascii "ferror(__F) ((__F)->_flag & _IOERR)\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x2
	.uleb128 0x2b
	.ascii "__need_time_h\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__need_time_t 1\0"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0x2
	.uleb128 0x54
	.ascii "__need_off_t\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "__need___off64_t\0"
	.byte	0x2
	.uleb128 0x84
	.ascii "__need_ssize_t\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__have_typedef_time_t 1\0"
	.byte	0x2
	.uleb128 0xa3
	.ascii "__need_time_t\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x34
	.ascii "__need_struct_timespec\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "__need_wchar_decls\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_TIME_H \0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "CLOCKS_PER_SEC ((clock_t)(1000))\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "CLK_TCK CLOCKS_PER_SEC\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__need_struct_timespec 1\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "__need_wchar_decls 1\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__struct_timespec_defined 1\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__need_size_t \0"
	.byte	0x3
	.uleb128 0xb2
	.uleb128 0x21
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x196
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x222
	.ascii "__need_time_t\0"
	.byte	0x2
	.uleb128 0x223
	.ascii "__need_struct_timespec\0"
	.byte	0x2
	.uleb128 0x224
	.ascii "__need_wchar_decls\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "exe_time\0"
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_OS_STACK_CHK_PATTERN_INIT;	.scl	2;	.type	32;	.endef
	.def	_OS_START_OS;	.scl	2;	.type	32;	.endef
	.def	_OS_STATE_HANDLER;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
