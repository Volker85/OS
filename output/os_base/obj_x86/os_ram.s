	.file	"os_ram.c"
	.text
Ltext0:
	.comm	_HEAP, 10000, 5
	.comm	_OS_STACK, 256, 5
	.comm	_OS_MAIN_STACK, 256, 5
	.comm	_OS_STATE, 4, 2
	.comm	_VAR_HARDFAULT_STATUS_REG, 4, 2
	.comm	_VAR_MEM_MANAG_FAULT_STATUS_REG, 4, 2
	.comm	_VAR_USAGE_FAULT_STATUS_REG, 4, 2
	.comm	_VAR_FAULT_STATUS_REG, 4, 2
	.comm	_VAR_MEM_FAULT_ADDR_REG, 4, 2
	.comm	_VAR_BUS_FAULT_ADDR_REG, 4, 2
	.comm	_VAR_AUX_FAULT_STATUS_REG, 4, 2
	.comm	_VAR_BUS_FAULT_STATUS_REG, 4, 2
	.comm	_LINK_REGISTER_HANDLER, 4, 2
	.comm	_BACKUP_SYSTICK_CURRENT_VAL_REG, 4, 2
	.comm	_RAM_CHECK_FAILURE_DETECTED, 4, 2
	.comm	_RAM_CHECK_FAILURE_ADDR, 4, 2
	.comm	_DBG_RLD_VALUE, 4, 2
	.comm	_DBG_CURR_VAL, 4, 2
	.comm	_DBG_CTRL_VALUE, 4, 2
	.comm	_DBG_CALIB_VALUE, 4, 2
	.comm	_TASK1_CALL_NR, 4, 2
	.comm	_TASK2_CALL_NR, 4, 2
	.comm	_TASK3_CALL_NR, 4, 2
	.comm	_TASK4_CALL_NR, 4, 2
	.comm	_REGISTER_R0, 4, 2
	.comm	_REGISTER_R1, 4, 2
	.comm	_REGISTER_R2, 4, 2
	.comm	_REGISTER_R3, 4, 2
	.comm	_REGISTER_R4, 4, 2
	.comm	_REGISTER_R5, 4, 2
	.comm	_REGISTER_R6, 4, 2
	.comm	_REGISTER_R7, 4, 2
	.comm	_REGISTER_R8, 4, 2
	.comm	_REGISTER_R9, 4, 2
	.comm	_REGISTER_R10, 4, 2
	.comm	_REGISTER_R11, 4, 2
	.comm	_TASK_STACK, 1000, 5
	.comm	_LAST_CURRENT_TIME, 4, 2
	.comm	_pTASK_RUN_QUEUE, 20, 2
	.comm	_TASK_RUN_QUEUE, 500, 5
	.comm	_RUNNING_TASK, 100, 5
	.comm	_TASK_IDLE_QUEUE, 100, 5
	.comm	_bTASK_QUEUE_INITIALIZED, 1, 0
Letext0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_ram.c"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xaf7
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.c\0"
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x1
	.byte	0x1d
	.long	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.ascii "unsigned_int32_t\0"
	.byte	0x1
	.byte	0x22
	.long	0xd8
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.ascii "uint32\0"
	.byte	0x1
	.byte	0x23
	.long	0xd8
	.uleb128 0x4
	.ascii "privilige_mode_e\0"
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.long	0x190
	.uleb128 0x5
	.ascii "ePriviligeMode_unpriviliged_thread_mode\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "ePriviligeMode_priviliged_thread_mode\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "ePriviligeMode_priviliged_handler_mode\0"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x2
	.byte	0x16
	.long	0xfb
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x7
	.long	0x1fe
	.uleb128 0x5
	.ascii "Task_unspecified\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "Task_suspended\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "Task_ready\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "Task_running\0"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x3
	.byte	0xe
	.long	0x1a8
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x3
	.byte	0x13
	.long	0x222
	.uleb128 0x6
	.byte	0x4
	.long	0x228
	.uleb128 0x7
	.long	0x233
	.uleb128 0x8
	.long	0x233
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x3
	.byte	0x15
	.long	0x252
	.uleb128 0x6
	.byte	0x4
	.long	0x258
	.uleb128 0xa
	.long	0x82
	.long	0x26c
	.uleb128 0x8
	.long	0x233
	.uleb128 0x8
	.long	0x1fe
	.byte	0
	.uleb128 0xb
	.ascii "task_group_s\0"
	.byte	0x8
	.byte	0x3
	.byte	0x16
	.long	0x2a4
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x3
	.byte	0x18
	.long	0xc0
	.byte	0
	.uleb128 0xd
	.ascii "fair_exe_time\0"
	.byte	0x3
	.byte	0x19
	.long	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x3
	.byte	0x1b
	.long	0x26c
	.uleb128 0xb
	.ascii "task_s\0"
	.byte	0x64
	.byte	0x3
	.byte	0x1d
	.long	0x52c
	.uleb128 0xe
	.ascii "active\0"
	.byte	0x3
	.byte	0x1f
	.long	0x52c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.ascii "task_queued\0"
	.byte	0x3
	.byte	0x20
	.long	0x52c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.ascii "IdleTask\0"
	.byte	0x3
	.byte	0x21
	.long	0x52c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.ascii "FREE\0"
	.byte	0x3
	.byte	0x22
	.long	0x52c
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "NrOfInsAllowed\0"
	.byte	0x3
	.byte	0x23
	.long	0x82
	.byte	0x4
	.uleb128 0xd
	.ascii "NrOfInsActivated\0"
	.byte	0x3
	.byte	0x24
	.long	0x82
	.byte	0x5
	.uleb128 0xd
	.ascii "WaitActUntil\0"
	.byte	0x3
	.byte	0x25
	.long	0xc0
	.byte	0x8
	.uleb128 0xd
	.ascii "wait_time\0"
	.byte	0x3
	.byte	0x26
	.long	0xc0
	.byte	0xc
	.uleb128 0xd
	.ascii "TimeToPrioInc\0"
	.byte	0x3
	.byte	0x27
	.long	0xc0
	.byte	0x10
	.uleb128 0xd
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x3
	.byte	0x28
	.long	0xc0
	.byte	0x14
	.uleb128 0xd
	.ascii "max_allowed_wait_time\0"
	.byte	0x3
	.byte	0x29
	.long	0xc0
	.byte	0x18
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x3
	.byte	0x2a
	.long	0xc0
	.byte	0x1c
	.uleb128 0xd
	.ascii "start_time\0"
	.byte	0x3
	.byte	0x2b
	.long	0xc0
	.byte	0x20
	.uleb128 0xd
	.ascii "current_prio\0"
	.byte	0x3
	.byte	0x2c
	.long	0x82
	.byte	0x24
	.uleb128 0xd
	.ascii "default_prio\0"
	.byte	0x3
	.byte	0x2d
	.long	0x82
	.byte	0x25
	.uleb128 0xd
	.ascii "task_number\0"
	.byte	0x3
	.byte	0x2e
	.long	0xc0
	.byte	0x28
	.uleb128 0xd
	.ascii "fp\0"
	.byte	0x3
	.byte	0x2f
	.long	0x212
	.byte	0x2c
	.uleb128 0xd
	.ascii "state_request\0"
	.byte	0x3
	.byte	0x30
	.long	0x235
	.byte	0x30
	.uleb128 0xd
	.ascii "task_state\0"
	.byte	0x3
	.byte	0x31
	.long	0x1fe
	.byte	0x34
	.uleb128 0xd
	.ascii "task_group\0"
	.byte	0x3
	.byte	0x32
	.long	0x53c
	.byte	0x38
	.uleb128 0xd
	.ascii "EAX\0"
	.byte	0x3
	.byte	0x34
	.long	0xc0
	.byte	0x3c
	.uleb128 0xd
	.ascii "EBX\0"
	.byte	0x3
	.byte	0x35
	.long	0xc0
	.byte	0x40
	.uleb128 0xd
	.ascii "ECX\0"
	.byte	0x3
	.byte	0x36
	.long	0xc0
	.byte	0x44
	.uleb128 0xd
	.ascii "EDX\0"
	.byte	0x3
	.byte	0x37
	.long	0xc0
	.byte	0x48
	.uleb128 0xd
	.ascii "pStackPointer\0"
	.byte	0x3
	.byte	0x47
	.long	0x542
	.byte	0x4c
	.uleb128 0xd
	.ascii "pStackPointerByMalloc\0"
	.byte	0x3
	.byte	0x48
	.long	0x542
	.byte	0x50
	.uleb128 0xd
	.ascii "pStackPointerStart\0"
	.byte	0x3
	.byte	0x49
	.long	0x542
	.byte	0x54
	.uleb128 0xd
	.ascii "StackSize\0"
	.byte	0x3
	.byte	0x4a
	.long	0xc0
	.byte	0x58
	.uleb128 0xd
	.ascii "pStackPointerEnd\0"
	.byte	0x3
	.byte	0x4b
	.long	0x542
	.byte	0x5c
	.uleb128 0xd
	.ascii "privilige_mode\0"
	.byte	0x3
	.byte	0x4c
	.long	0x190
	.byte	0x60
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x2a4
	.uleb128 0x6
	.byte	0x4
	.long	0x82
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x3
	.byte	0x4e
	.long	0x2b8
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x3
	.byte	0x5b
	.long	0x52c
	.uleb128 0xf
	.long	0x82
	.long	0x57f
	.uleb128 0x10
	.long	0x57f
	.word	0x270f
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x11
	.ascii "HEAP\0"
	.byte	0x4
	.byte	0x6
	.long	0x56e
	.uleb128 0x5
	.byte	0x3
	.long	_HEAP
	.uleb128 0xf
	.long	0x82
	.long	0x5b3
	.uleb128 0x12
	.long	0x57f
	.byte	0
	.uleb128 0x12
	.long	0x57f
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.ascii "OS_STACK\0"
	.byte	0x4
	.byte	0x9
	.long	0x59d
	.uleb128 0x5
	.byte	0x3
	.long	_OS_STACK
	.uleb128 0xf
	.long	0x82
	.long	0x5d9
	.uleb128 0x12
	.long	0x57f
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.ascii "OS_MAIN_STACK\0"
	.byte	0x4
	.byte	0xa
	.long	0x5c9
	.uleb128 0x5
	.byte	0x3
	.long	_OS_MAIN_STACK
	.uleb128 0x11
	.ascii "OS_STATE\0"
	.byte	0x4
	.byte	0xb
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_OS_STATE
	.uleb128 0x13
	.long	0xed
	.uleb128 0x11
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0xc
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_HARDFAULT_STATUS_REG
	.uleb128 0x11
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0xd
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_MEM_MANAG_FAULT_STATUS_REG
	.uleb128 0x11
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0xe
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_USAGE_FAULT_STATUS_REG
	.uleb128 0x11
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0xf
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_FAULT_STATUS_REG
	.uleb128 0x11
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x4
	.byte	0x10
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_MEM_FAULT_ADDR_REG
	.uleb128 0x11
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x4
	.byte	0x11
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_BUS_FAULT_ADDR_REG
	.uleb128 0x11
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0x12
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_AUX_FAULT_STATUS_REG
	.uleb128 0x11
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x4
	.byte	0x13
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_VAR_BUS_FAULT_STATUS_REG
	.uleb128 0x11
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x4
	.byte	0x14
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_LINK_REGISTER_HANDLER
	.uleb128 0x11
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x4
	.byte	0x15
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_BACKUP_SYSTICK_CURRENT_VAL_REG
	.uleb128 0x11
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x4
	.byte	0x19
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_DBG_RLD_VALUE
	.uleb128 0x11
	.ascii "DBG_CURR_VAL\0"
	.byte	0x4
	.byte	0x1a
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_DBG_CURR_VAL
	.uleb128 0x11
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x4
	.byte	0x1b
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_DBG_CTRL_VALUE
	.uleb128 0x11
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x4
	.byte	0x1c
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_DBG_CALIB_VALUE
	.uleb128 0x11
	.ascii "TASK1_CALL_NR\0"
	.byte	0x4
	.byte	0x1e
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_TASK1_CALL_NR
	.uleb128 0x11
	.ascii "TASK2_CALL_NR\0"
	.byte	0x4
	.byte	0x1f
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_TASK2_CALL_NR
	.uleb128 0x11
	.ascii "TASK3_CALL_NR\0"
	.byte	0x4
	.byte	0x20
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_TASK3_CALL_NR
	.uleb128 0x11
	.ascii "TASK4_CALL_NR\0"
	.byte	0x4
	.byte	0x21
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_TASK4_CALL_NR
	.uleb128 0xf
	.long	0x82
	.long	0x87e
	.uleb128 0x12
	.long	0x57f
	.byte	0x4
	.uleb128 0x12
	.long	0x57f
	.byte	0xc7
	.byte	0
	.uleb128 0x11
	.ascii "TASK_STACK\0"
	.byte	0x4
	.byte	0x30
	.long	0x868
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_STACK
	.uleb128 0x11
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x4
	.byte	0x31
	.long	0x556
	.uleb128 0x5
	.byte	0x3
	.long	_LAST_CURRENT_TIME
	.uleb128 0xf
	.long	0x8c5
	.long	0x8c5
	.uleb128 0x12
	.long	0x57f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x548
	.uleb128 0x11
	.ascii "pTASK_RUN_QUEUE\0"
	.byte	0x4
	.byte	0x32
	.long	0x8b5
	.uleb128 0x5
	.byte	0x3
	.long	_pTASK_RUN_QUEUE
	.uleb128 0xf
	.long	0x548
	.long	0x8f8
	.uleb128 0x12
	.long	0x57f
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x4
	.byte	0x33
	.long	0x8e8
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_RUN_QUEUE
	.uleb128 0xf
	.long	0x548
	.long	0x924
	.uleb128 0x12
	.long	0x57f
	.byte	0
	.byte	0
	.uleb128 0x11
	.ascii "RUNNING_TASK\0"
	.byte	0x4
	.byte	0x34
	.long	0x914
	.uleb128 0x5
	.byte	0x3
	.long	_RUNNING_TASK
	.uleb128 0x11
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x4
	.byte	0x35
	.long	0x914
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_IDLE_QUEUE
	.uleb128 0x11
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x4
	.byte	0x36
	.long	0x82
	.uleb128 0x5
	.byte	0x3
	.long	_bTASK_QUEUE_INITIALIZED
	.uleb128 0x11
	.ascii "RAM_CHECK_FAILURE_DETECTED\0"
	.byte	0x4
	.byte	0x16
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_RAM_CHECK_FAILURE_DETECTED
	.uleb128 0x11
	.ascii "RAM_CHECK_FAILURE_ADDR\0"
	.byte	0x4
	.byte	0x17
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	_RAM_CHECK_FAILURE_ADDR
	.uleb128 0x11
	.ascii "REGISTER_R0\0"
	.byte	0x4
	.byte	0x23
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R0
	.uleb128 0x11
	.ascii "REGISTER_R1\0"
	.byte	0x4
	.byte	0x24
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R1
	.uleb128 0x11
	.ascii "REGISTER_R2\0"
	.byte	0x4
	.byte	0x25
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R2
	.uleb128 0x11
	.ascii "REGISTER_R3\0"
	.byte	0x4
	.byte	0x26
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R3
	.uleb128 0x11
	.ascii "REGISTER_R4\0"
	.byte	0x4
	.byte	0x27
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R4
	.uleb128 0x11
	.ascii "REGISTER_R5\0"
	.byte	0x4
	.byte	0x28
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R5
	.uleb128 0x11
	.ascii "REGISTER_R6\0"
	.byte	0x4
	.byte	0x29
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R6
	.uleb128 0x11
	.ascii "REGISTER_R7\0"
	.byte	0x4
	.byte	0x2a
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R7
	.uleb128 0x11
	.ascii "REGISTER_R8\0"
	.byte	0x4
	.byte	0x2b
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R8
	.uleb128 0x11
	.ascii "REGISTER_R9\0"
	.byte	0x4
	.byte	0x2c
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R9
	.uleb128 0x11
	.ascii "REGISTER_R10\0"
	.byte	0x4
	.byte	0x2d
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R10
	.uleb128 0x11
	.ascii "REGISTER_R11\0"
	.byte	0x4
	.byte	0x2e
	.long	0x233
	.uleb128 0x5
	.byte	0x3
	.long	_REGISTER_R11
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x14
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
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
	.uleb128 0x4
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_firstinc_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2
	.ascii "_BASE_TYPES_H_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "INTEGER_LLP64_IL32P64 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "INTEGER_LP64_I32LP64 2\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "INTEGER_ILP64 3\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "INTEGER_SILP64 4\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "CPP_VERSION_NONE 0\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "CPP_VERSION_1998 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "CPP_VERSION_2003 2\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CPP_VERSION_2007 3\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CPP_VERSION_2011 4\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "ISO_CPP_VERSION CPP_VERSION_1998\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "INTEGER_MODEL INTEGER_LLP64_IL32P64\0"
	.byte	0x4
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_common_h_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "False 0\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "True 1\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "FALSE False\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "TRUE True\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "Accepted 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "Rejected 0\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "Local static\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "Local_inline static __inline__\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "Global_inline __inline__\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "ReferenceUnusedParameter(x) ((x) = (x))\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "cMCU_X86 3\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "cMCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "NR_OF_CORES 1\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "MCU_CLOCK_IN_HZ ((uint32)168000000u)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "DisableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "EnableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "Privilige_level_save_current() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "Privilige_level_enter_kernel_mode() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "Privilige_level_restore_saved() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "HaltMcu() \0"
	.byte	0x4
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_interrupt_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "os_interrupt_swi_1 asm(\"swi 1\")\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "os_interrupt_swi_2 asm(\"swi 2\")\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "os_interrupt_swi_3 asm(\"swi 3\")\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "os_interrupt_swi_4 asm(\"swi 4\")\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "os_interrupt_swi_5 asm(\"swi 5\")\0"
	.byte	0x4
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_ram_h_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_common_h_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_config_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "SchedulerFrequency (1.0e3)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MinTimeSlice_s (1.0/SchedulerFrequency)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "Task_min_time (1e0)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "NUMBER_OF_TASKS 5\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TASK_STACK_SIZE 200\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "MS_PER_SEC (1000)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "USE_STATIC_CREATED_TASKS True\0"
	.byte	0x4
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_init_task_system_h_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5d
	.ascii "os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x4
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_stack_h_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "OS_STACK_SIZE 0x100\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_STACK_SIZE_END 0x01u\0"
	.byte	0x4
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_heap_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "HEAP_SIZE 10000\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MIN_BLOCK_SIZE_HEAP 8\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "HEAP_OFFSET_FOR_SIZE 0\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "HEAP_OFFSET_FOR_USED_SIZE 4\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "HEAP_OFFSET_FOR_CHUNK 8\0"
	.byte	0x4
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_main_h_ \0"
	.byte	0x1
	.uleb128 0x3
	.ascii "os_init 0\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "os_running 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "os_shutdown 2\0"
	.byte	0x4
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x4
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "exe_time\0"
	.ident	"GCC: (GNU) 4.9.3"
