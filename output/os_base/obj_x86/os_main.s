	.file	"os_main.c"
	.text
Ltext0:
	.def	_os_determine_next_task_activation;	.scl	3;	.type	32;	.endef
_os_determine_next_task_activation:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_main.c"
	.loc 1 51 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 53 0
	movl	_call_nr.1442, %eax
	cmpl	$4, %eax
	ja	L11
	movl	L4(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L4:
	.long	L3
	.long	L5
	.long	L6
	.long	L7
	.long	L8
	.text
L3:
	.loc 1 56 0
	movl	$_TASK_1_VAR, (%esp)
	call	_OS_ACTIVATE_TASK
	.loc 1 57 0
	movl	_call_nr.1442, %eax
	incl	%eax
	movl	%eax, _call_nr.1442
	.loc 1 58 0
	jmp	L1
L5:
	.loc 1 60 0
	movl	$_TASK_2_VAR, (%esp)
	call	_OS_ACTIVATE_TASK
	.loc 1 61 0
	movl	_call_nr.1442, %eax
	incl	%eax
	movl	%eax, _call_nr.1442
	.loc 1 62 0
	jmp	L1
L6:
	.loc 1 64 0
	movl	$_TASK_3_VAR, (%esp)
	call	_OS_ACTIVATE_TASK
	.loc 1 65 0
	movl	_call_nr.1442, %eax
	incl	%eax
	movl	%eax, _call_nr.1442
	.loc 1 66 0
	jmp	L1
L7:
	.loc 1 68 0
	movl	_call_nr.1442, %eax
	incl	%eax
	movl	%eax, _call_nr.1442
	.loc 1 69 0
	jmp	L1
L8:
	.loc 1 72 0
	call	_GET_RUNNING_TASK
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	je	L10
	.loc 1 74 0
	movl	$0, _call_nr.1442
	.loc 1 76 0
	jmp	L1
L10:
	jmp	L1
L11:
	.loc 1 78 0
	nop
L1:
	.loc 1 81 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_STATE_HANDLER
	.def	_OS_STATE_HANDLER;	.scl	2;	.type	32;	.endef
_OS_STATE_HANDLER:
LFB1:
	.loc 1 84 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 89 0
	movl	_OS_STATE, %eax
	cmpl	$1, %eax
	je	L14
	cmpl	$1, %eax
	jb	L15
	cmpl	$2, %eax
	je	L16
	.loc 1 164 0
	jmp	L17
L15:
	.loc 1 94 0
	call	_OS_INIT_MC
	.loc 1 97 0
	call	_OS_INIT_HW
	.loc 1 98 0
	call	_OS_INIT_SW
	.loc 1 103 0
	movl	$_TASK_0_VAR, (%esp)
	call	_OS_ACTIVATE_TASK
	.loc 1 104 0
	call	_GET_IDLE_TASK
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_OS_START_TASK
	.loc 1 105 0
	call	_OS_ACTIVATE_DISPATCHER
	.loc 1 107 0
	movl	$1, _OS_STATE
	.loc 1 109 0
	call	_LLF_INT_ENABLE
	.loc 1 110 0
	jmp	L17
L14:
	.loc 1 119 0
	movl	_call_nr.1454, %eax
	movl	$5, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L18
	.loc 1 121 0
	call	_os_determine_next_task_activation
L18:
	.loc 1 123 0
	movl	_call_nr.1454, %eax
	incl	%eax
	movl	%eax, _call_nr.1454
	.loc 1 125 0
	call	_OS_TASK_DISPATCHER
	.loc 1 126 0
	movl	_SYSTEM_STATE_ACCEPTED, %eax
	cmpl	$2, %eax
	jne	L19
	.loc 1 128 0
	movl	$2, _OS_STATE
	.loc 1 129 0
	movl	$0, _sys_req_reset_state.1453
	.loc 1 131 0
	jmp	L17
L19:
	jmp	L17
L16:
	.loc 1 135 0
	call	_LLF_INT_DISABLE
	.loc 1 136 0
	movl	_sys_req_reset_state.1453, %eax
	cmpl	$1, %eax
	je	L21
	cmpl	$1, %eax
	jb	L22
	cmpl	$2, %eax
	je	L23
	jmp	L25
L21:
	.loc 1 140 0
	movl	$0, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SHUTDOWN
	.loc 1 141 0
	jmp	L24
L22:
	.loc 1 145 0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_OS_SHUTDOWN
	.loc 1 146 0
	jmp	L24
L23:
	.loc 1 150 0
	movl	$0, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SHUTDOWN
	.loc 1 151 0
	jmp	L24
L25:
	.loc 1 155 0
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	call	_OS_SHUTDOWN
	.loc 1 156 0
	movl	$19, 4(%esp)
	movl	$8, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 157 0
	nop
L24:
	.loc 1 160 0
	nop
L17:
	.loc 1 168 0
	call	_OS_STACK_CHECK
	.loc 1 175 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
.lcomm _call_nr.1442,4,4
.lcomm _call_nr.1454,4,4
	.data
	.align 4
_sys_req_reset_state.1453:
	.long	1
	.text
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_main.h"
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/OS_shutdown.h"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xbe8
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x2
	.byte	0x11
	.long	0xa2
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
	.long	0xa2
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
	.long	0x10a
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
	.long	0x10a
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x2d
	.long	0x30d
	.uleb128 0x5
	.ascii "E_OS_BUG_NO_BUG\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_OS_BUG_TASKSTATE_REQUEST_DENIED\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_OS_BUG_NULL_POINTER\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "E_OS_BUG_TASK_UNSPECIFIED\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_ABORTPREFETCH\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_ABORTDATA\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "E_OS_BUG_CRITICAL_STACK_USAGE\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "E_OS_BUG_SVC_NUMBER_MISSING\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "E_OS_BUG_MAX_WAIT_TIME_REACHED\0"
	.sleb128 11
	.uleb128 0x5
	.ascii "E_OS_BUG_DIVISION_BY_ZERO\0"
	.sleb128 12
	.uleb128 0x5
	.ascii "E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\0"
	.sleb128 13
	.byte	0
	.uleb128 0x4
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x42
	.long	0x525
	.uleb128 0x5
	.ascii "E_FUNC_NOFUNCTION\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_FUNC_SAVETASKENVIRONMENT\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_FUNC_RESTORETASKENVIRONMENT\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "E_FUNC_CREATETASKENVIRONMENT\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "E_FUNC_DELETETASKENVIRONMENT\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "E_FUNC_INITTASKENVIRONMENT\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "E_FUNC_STARTTASK\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "E_FUNC_PREEMPTTASK\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "E_FUNC_TERMINATETASK\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "E_FUNC_TASKSCHEDULER\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "E_FUNC_INITTASK\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "E_FUNC_ACTIVATETASK\0"
	.sleb128 11
	.uleb128 0x5
	.ascii "E_FUNC_TASKSTATEREQUEST\0"
	.sleb128 12
	.uleb128 0x5
	.ascii "E_FUNC_PREEMPT_TASK\0"
	.sleb128 13
	.uleb128 0x5
	.ascii "E_FUNC_OS_EXCEPTION\0"
	.sleb128 14
	.uleb128 0x5
	.ascii "E_FUNC_CREATETASK\0"
	.sleb128 15
	.uleb128 0x5
	.ascii "E_FUNC_SHUTDOWN\0"
	.sleb128 16
	.uleb128 0x5
	.ascii "E_FUNC_STACKCHECK\0"
	.sleb128 17
	.uleb128 0x5
	.ascii "E_FUNC_ISRHANDLER\0"
	.sleb128 18
	.uleb128 0x5
	.ascii "E_FUNC_STATE_HANDLER\0"
	.sleb128 19
	.uleb128 0x5
	.ascii "E_FUNC_INTDIV\0"
	.sleb128 20
	.uleb128 0x5
	.ascii "E_FUNC_SHIFT_LEFT\0"
	.sleb128 21
	.byte	0
	.uleb128 0x6
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x62
	.long	0x547
	.uleb128 0x7
	.ascii "number\0"
	.byte	0x3
	.byte	0x6b
	.long	0x547
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xc2
	.long	0x557
	.uleb128 0x9
	.long	0x557
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x6c
	.long	0x525
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x6e
	.long	0x563
	.uleb128 0x4
	.ascii "privilige_mode_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.long	0x61b
	.uleb128 0x5
	.ascii "E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\0"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x4
	.byte	0x16
	.long	0x583
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.long	0x691
	.uleb128 0x5
	.ascii "E_TASK_UNSPECIFIED\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_TASK_SUSPENDED\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_TASK_READY\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "E_TASK_RUNNING\0"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x5
	.byte	0xe
	.long	0x633
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.long	0x6b5
	.uleb128 0xa
	.byte	0x4
	.long	0x6bb
	.uleb128 0xb
	.long	0x6c6
	.uleb128 0xc
	.long	0x6c6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.long	0x6e5
	.uleb128 0xa
	.byte	0x4
	.long	0x6eb
	.uleb128 0xe
	.long	0x8b
	.long	0x6ff
	.uleb128 0xc
	.long	0x6c6
	.uleb128 0xc
	.long	0x691
	.byte	0
	.uleb128 0x6
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.long	0x737
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.long	0x572
	.byte	0
	.uleb128 0x7
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.long	0x572
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.long	0x6ff
	.uleb128 0x6
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.long	0x9d8
	.uleb128 0x10
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.long	0x9d8
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.long	0x9d8
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.ascii "idle_task\0"
	.byte	0x5
	.byte	0x23
	.long	0x9d8
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.ascii "free\0"
	.byte	0x5
	.byte	0x24
	.long	0x9d8
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x7
	.ascii "nr_of_ins_allowed\0"
	.byte	0x5
	.byte	0x25
	.long	0x8b
	.byte	0x4
	.uleb128 0x7
	.ascii "nr_of_ins_activated\0"
	.byte	0x5
	.byte	0x26
	.long	0x8b
	.byte	0x5
	.uleb128 0x7
	.ascii "wait_act_until\0"
	.byte	0x5
	.byte	0x27
	.long	0x572
	.byte	0x6
	.uleb128 0x7
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.long	0x572
	.byte	0x16
	.uleb128 0x7
	.ascii "time_to_prio_inc\0"
	.byte	0x5
	.byte	0x29
	.long	0x572
	.byte	0x26
	.uleb128 0x7
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.long	0x12b
	.byte	0x38
	.uleb128 0x7
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.long	0x572
	.byte	0x3c
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.long	0x572
	.byte	0x4c
	.uleb128 0x7
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.long	0x572
	.byte	0x5c
	.uleb128 0x7
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.long	0x8b
	.byte	0x6c
	.uleb128 0x7
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2f
	.long	0x8b
	.byte	0x6d
	.uleb128 0x7
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.long	0xf2
	.byte	0x70
	.uleb128 0x7
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.long	0x6a5
	.byte	0x74
	.uleb128 0x7
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.long	0x6c8
	.byte	0x78
	.uleb128 0x7
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.long	0x691
	.byte	0x7c
	.uleb128 0x7
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.long	0x9e8
	.byte	0x80
	.uleb128 0x7
	.ascii "eax\0"
	.byte	0x5
	.byte	0x36
	.long	0xf2
	.byte	0x84
	.uleb128 0x7
	.ascii "ebx\0"
	.byte	0x5
	.byte	0x37
	.long	0xf2
	.byte	0x88
	.uleb128 0x7
	.ascii "ecx\0"
	.byte	0x5
	.byte	0x38
	.long	0xf2
	.byte	0x8c
	.uleb128 0x7
	.ascii "edx\0"
	.byte	0x5
	.byte	0x39
	.long	0xf2
	.byte	0x90
	.uleb128 0x7
	.ascii "p_stack_pointer\0"
	.byte	0x5
	.byte	0x49
	.long	0x9ee
	.byte	0x94
	.uleb128 0x7
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x5
	.byte	0x4a
	.long	0x9ee
	.byte	0x98
	.uleb128 0x7
	.ascii "p_stack_pointer_start\0"
	.byte	0x5
	.byte	0x4b
	.long	0x9ee
	.byte	0x9c
	.uleb128 0x7
	.ascii "stack_size\0"
	.byte	0x5
	.byte	0x4c
	.long	0xf2
	.byte	0xa0
	.uleb128 0x7
	.ascii "p_stack_pointer_end\0"
	.byte	0x5
	.byte	0x4d
	.long	0x9ee
	.byte	0xa4
	.uleb128 0x7
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4e
	.long	0x61b
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xa
	.byte	0x4
	.long	0x737
	.uleb128 0xa
	.byte	0x4
	.long	0x8b
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.long	0x74b
	.uleb128 0x4
	.ascii "os_state_e\0"
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.long	0xa4d
	.uleb128 0x5
	.ascii "OS_STATE_INIT\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "OS_STATE_RUNNING\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "OS_STATE_SHUTDOWN\0"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.ascii "os_state_t\0"
	.byte	0x6
	.byte	0xa
	.long	0xa02
	.uleb128 0x4
	.ascii "os_reset_type_s\0"
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.long	0xab8
	.uleb128 0x5
	.ascii "E_OS_RESET_HARDRESET\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_OS_RESET_POWERDOWN\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_OS_RESET_EXIT\0"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.ascii "os_reset_type_t\0"
	.byte	0x7
	.byte	0x8
	.long	0xa5f
	.uleb128 0x11
	.ascii "os_determine_next_task_activation\0"
	.byte	0x1
	.byte	0x32
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xb18
	.uleb128 0x12
	.ascii "call_nr\0"
	.byte	0x1
	.byte	0x34
	.long	0x12b
	.uleb128 0x5
	.byte	0x3
	.long	_call_nr.1442
	.byte	0
	.uleb128 0x13
	.ascii "OS_STATE_HANDLER\0"
	.byte	0x1
	.byte	0x53
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xb71
	.uleb128 0x12
	.ascii "sys_req_reset_state\0"
	.byte	0x1
	.byte	0x56
	.long	0xab8
	.uleb128 0x5
	.byte	0x3
	.long	_sys_req_reset_state.1453
	.uleb128 0x12
	.ascii "call_nr\0"
	.byte	0x1
	.byte	0x57
	.long	0x12b
	.uleb128 0x5
	.byte	0x3
	.long	_call_nr.1454
	.byte	0
	.uleb128 0x14
	.ascii "OS_STATE\0"
	.byte	0x8
	.byte	0xf
	.long	0xb81
	.uleb128 0x15
	.long	0xa4d
	.uleb128 0x14
	.ascii "TASK_0_VAR\0"
	.byte	0x8
	.byte	0x41
	.long	0x9f4
	.uleb128 0x14
	.ascii "TASK_1_VAR\0"
	.byte	0x8
	.byte	0x41
	.long	0x9f4
	.uleb128 0x14
	.ascii "TASK_2_VAR\0"
	.byte	0x8
	.byte	0x41
	.long	0x9f4
	.uleb128 0x14
	.ascii "TASK_3_VAR\0"
	.byte	0x8
	.byte	0x41
	.long	0x9f4
	.uleb128 0x14
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x8
	.byte	0x46
	.long	0xb81
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.ascii "__GNUC__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"4.9.3\"\0"
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
	.ascii "__GXX_ABI_VERSION 1002\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 2147483647L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 4294967295U\0"
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
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
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
	.ascii "__DBL_MAX__ ((double)1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)\0"
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
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
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
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__tune_i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_32__ 1\0"
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
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_FIRSTINC_H_ \0"
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_config.h"
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
	.uleb128 0x12
	.ascii "MCU_X86 3\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "MCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "DWT_CTRL ((volatile uint32*)0xE0001000u)\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "DWT_CYCCNT ((volatile uint32*)0xE0001004u)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "DWT_LAR ((volatile uint32*)0xE0001FB0u)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "DISABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "ENABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PRIVILIGE_LEVEL_SAVE_CURRENT() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PRIVILIGE_LEVEL_RESTORE_SAVED() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "HALT_MCU() \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "AMOUNT_SW_BUG_FUNCTIONS 22\0"
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
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
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
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
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_MMU_H_ \0"
	.byte	0x4
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_TIMER_H_ \0"
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_POWER_H_ \0"
	.byte	0x4
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
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
	.uleb128 0xc
	.byte	0x4
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
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
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
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
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
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
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x15
	.byte	0x4
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STACK_H_ \0"
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x17
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
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x4
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.file 26 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram_stack.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_STACK_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 27 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1b
	.byte	0x4
	.file 28 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1c
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
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_SHUTDOWN_H_ \0"
	.byte	0x4
	.file 29 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_start_init_mc.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_START_INIT_MC_H_ \0"
	.byte	0x4
	.file 30 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_start_init_hw.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_START_INIT_HW_H_ \0"
	.byte	0x4
	.file 31 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_start_init_sw.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_START_INIT_SW_H_ \0"
	.byte	0x4
	.file 32 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_QUEUE_H_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "FIRST_TASK (0u)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "LAST_TASK (MAX_RUN_QUEUE_SIZE-1u)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK; (var) <= LAST_TASK; (var)++)\0"
	.byte	0x4
	.file 33 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_main.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "exe_time\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	_OS_ACTIVATE_TASK;	.scl	2;	.type	32;	.endef
	.def	_GET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_MC;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_HW;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_SW;	.scl	2;	.type	32;	.endef
	.def	_GET_IDLE_TASK;	.scl	2;	.type	32;	.endef
	.def	_OS_START_TASK;	.scl	2;	.type	32;	.endef
	.def	_OS_ACTIVATE_DISPATCHER;	.scl	2;	.type	32;	.endef
	.def	_LLF_INT_ENABLE;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_DISPATCHER;	.scl	2;	.type	32;	.endef
	.def	_LLF_INT_DISABLE;	.scl	2;	.type	32;	.endef
	.def	_OS_SHUTDOWN;	.scl	2;	.type	32;	.endef
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
	.def	_OS_STACK_CHECK;	.scl	2;	.type	32;	.endef
