	.cpu cortex-m4
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 6	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"os_task_queue.c"
@ GNU C89 (GNU Tools for Arm Embedded Processors 7-2018-q2-update) version 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m
@ -iprefix d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../lib/gcc/arm-none-eabi/7.3.1/
@ -isysroot d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c
@ -mcpu=cortex-m4 -mthumb
@ -auxbase-strip E:\NeuOrga\Programmieren\c_cpp\github_os\output\os_base\obj_arm\os_task_queue.s
@ -g3 -O0 -Wall -Wextra -Wpedantic -std=c90 -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
@ -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
@ -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
@ -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
@ -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
@ -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
@ -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
@ -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
@ -fplt -fprefetch-loop-arrays -freg-struct-return
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
@ -fsched-stalled-insns-dep -fsemantic-interposition -fshow-column
@ -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
@ -fssa-backprop -fstdarg-opt -fstrict-volatile-bitfields -fsync-libcalls
@ -ftrapping-math -ftree-cselim -ftree-forwprop -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-reassoc -ftree-scev-cprop
@ -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss
@ -masm-syntax-unified -mlittle-endian -mpic-data-is-text-relative
@ -msched-prolog -mthumb -munaligned-access -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.global	SET_RUNNING_TASK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SET_RUNNING_TASK, %function
SET_RUNNING_TASK:
.LFB0:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.c"
	.loc 1 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task, task
	str	r1, [r7]	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:35:    RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
	.loc 1 35 0
	ldr	r2, .L4	@ tmp147,
	ldr	r3, [r7]	@ tmp148, scheduling_task
	str	r3, [r2]	@ tmp148, RUNNING_SCHEDULING_QUEUE_ENTRY
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:36:    if(task != 0)
	.loc 1 36 0
	ldr	r3, [r7, #4]	@ tmp149, task
	cmp	r3, #0	@ tmp149,
	beq	.L3	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0])->active                          = task->active;
	.loc 1 38 0
	ldr	r3, [r7, #4]	@ tmp150, task
	ldrb	r3, [r3]	@ tmp152, *task_42(D)
	ubfx	r3, r3, #0, #1	@ tmp153, tmp152,,
	uxtb	r1, r3	@ _1, tmp153
	ldr	r2, .L4+4	@ tmp154,
	ldrb	r3, [r2]	@ tmp155, RUNNING_TASK[0].active
	bfi	r3, r1, #0, #1	@ tmp155, _1,,
	strb	r3, [r2]	@ tmp155, RUNNING_TASK[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0])->task_queued                     = task->task_queued;
	.loc 1 39 0
	ldr	r3, [r7, #4]	@ tmp156, task
	ldrb	r3, [r3]	@ tmp158, *task_42(D)
	ubfx	r3, r3, #1, #1	@ tmp159, tmp158,,
	uxtb	r1, r3	@ _2, tmp159
	ldr	r2, .L4+4	@ tmp160,
	ldrb	r3, [r2]	@ tmp161, RUNNING_TASK[0].task_queued
	bfi	r3, r1, #1, #1	@ tmp161, _2,,
	strb	r3, [r2]	@ tmp161, RUNNING_TASK[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0])->IdleTask                        = task->IdleTask;
	.loc 1 40 0
	ldr	r3, [r7, #4]	@ tmp162, task
	ldrb	r3, [r3]	@ tmp164, *task_42(D)
	ubfx	r3, r3, #2, #1	@ tmp165, tmp164,,
	uxtb	r1, r3	@ _3, tmp165
	ldr	r2, .L4+4	@ tmp166,
	ldrb	r3, [r2]	@ tmp167, RUNNING_TASK[0].IdleTask
	bfi	r3, r1, #2, #1	@ tmp167, _3,,
	strb	r3, [r2]	@ tmp167, RUNNING_TASK[0].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0])->FREE                            = task->FREE;
	.loc 1 41 0
	ldr	r3, [r7, #4]	@ tmp168, task
	ldr	r3, [r3]	@ tmp169, *task_42(D)
	ubfx	r1, r3, #3, #29	@ _4, tmp169,,
	ldr	r2, .L4+4	@ tmp170,
	ldr	r3, [r2]	@ tmp171, RUNNING_TASK[0].FREE
	bfi	r3, r1, #3, #29	@ tmp171, _4,,
	str	r3, [r2]	@ tmp171, RUNNING_TASK[0].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0])->NrOfInsAllowed                  = task->NrOfInsAllowed;
	.loc 1 42 0
	ldr	r3, [r7, #4]	@ tmp172, task
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _5, task_42(D)->NrOfInsAllowed
	ldr	r3, .L4+4	@ tmp173,
	strb	r2, [r3, #4]	@ tmp174, RUNNING_TASK[0].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0])->NrOfInsActivated                = task->NrOfInsActivated;
	.loc 1 43 0
	ldr	r3, [r7, #4]	@ tmp175, task
	ldrb	r2, [r3, #5]	@ zero_extendqisi2	@ _6, task_42(D)->NrOfInsActivated
	ldr	r3, .L4+4	@ tmp176,
	strb	r2, [r3, #5]	@ tmp177, RUNNING_TASK[0].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:44:       (&RUNNING_TASK[0])->WaitActUntil                    = task->WaitActUntil;
	.loc 1 44 0
	ldr	r3, [r7, #4]	@ tmp178, task
	ldr	r3, [r3, #8]	@ _7, task_42(D)->WaitActUntil
	ldr	r2, .L4+4	@ tmp179,
	str	r3, [r2, #8]	@ _7, RUNNING_TASK[0].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:45:       (&RUNNING_TASK[0])->wait_time                       = task->wait_time;
	.loc 1 45 0
	ldr	r3, [r7, #4]	@ tmp180, task
	ldr	r3, [r3, #12]	@ _8, task_42(D)->wait_time
	ldr	r2, .L4+4	@ tmp181,
	str	r3, [r2, #12]	@ _8, RUNNING_TASK[0].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:46:       (&RUNNING_TASK[0])->TimeToPrioInc                   = task->TimeToPrioInc;
	.loc 1 46 0
	ldr	r3, [r7, #4]	@ tmp182, task
	ldr	r3, [r3, #16]	@ _9, task_42(D)->TimeToPrioInc
	ldr	r2, .L4+4	@ tmp183,
	str	r3, [r2, #16]	@ _9, RUNNING_TASK[0].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 0
	ldr	r3, [r7, #4]	@ tmp184, task
	ldr	r3, [r3, #20]	@ _10, task_42(D)->overwaittime_per_prio_inc_step
	ldr	r2, .L4+4	@ tmp185,
	str	r3, [r2, #20]	@ _10, RUNNING_TASK[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:48:       (&RUNNING_TASK[0])->max_allowed_wait_time           = task->max_allowed_wait_time;
	.loc 1 48 0
	ldr	r3, [r7, #4]	@ tmp186, task
	ldr	r3, [r3, #24]	@ _11, task_42(D)->max_allowed_wait_time
	ldr	r2, .L4+4	@ tmp187,
	str	r3, [r2, #24]	@ _11, RUNNING_TASK[0].max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:49:       (&RUNNING_TASK[0])->exe_time                        = task->exe_time;
	.loc 1 49 0
	ldr	r3, [r7, #4]	@ tmp188, task
	ldr	r3, [r3, #28]	@ _12, task_42(D)->exe_time
	ldr	r2, .L4+4	@ tmp189,
	str	r3, [r2, #28]	@ _12, RUNNING_TASK[0].exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:50:       (&RUNNING_TASK[0])->start_time                      = task->start_time;
	.loc 1 50 0
	ldr	r3, [r7, #4]	@ tmp190, task
	ldr	r3, [r3, #32]	@ _13, task_42(D)->start_time
	ldr	r2, .L4+4	@ tmp191,
	str	r3, [r2, #32]	@ _13, RUNNING_TASK[0].start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0])->current_prio                    = task->current_prio;
	.loc 1 51 0
	ldr	r3, [r7, #4]	@ tmp192, task
	ldrb	r2, [r3, #36]	@ zero_extendqisi2	@ _14, task_42(D)->current_prio
	ldr	r3, .L4+4	@ tmp193,
	strb	r2, [r3, #36]	@ tmp194, RUNNING_TASK[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0])->default_prio                    = task->default_prio;
	.loc 1 52 0
	ldr	r3, [r7, #4]	@ tmp195, task
	ldrb	r2, [r3, #37]	@ zero_extendqisi2	@ _15, task_42(D)->default_prio
	ldr	r3, .L4+4	@ tmp196,
	strb	r2, [r3, #37]	@ tmp197, RUNNING_TASK[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:53:       (&RUNNING_TASK[0])->fp                              = task->fp;
	.loc 1 53 0
	ldr	r3, [r7, #4]	@ tmp198, task
	ldr	r3, [r3, #44]	@ _16, task_42(D)->fp
	ldr	r2, .L4+4	@ tmp199,
	str	r3, [r2, #44]	@ _16, RUNNING_TASK[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:54:       (&RUNNING_TASK[0])->state_request                   = task->state_request;
	.loc 1 54 0
	ldr	r3, [r7, #4]	@ tmp200, task
	ldr	r3, [r3, #48]	@ _17, task_42(D)->state_request
	ldr	r2, .L4+4	@ tmp201,
	str	r3, [r2, #48]	@ _17, RUNNING_TASK[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0])->task_state                      = task->task_state;
	.loc 1 55 0
	ldr	r3, [r7, #4]	@ tmp202, task
	ldrb	r2, [r3, #52]	@ zero_extendqisi2	@ _18, task_42(D)->task_state
	ldr	r3, .L4+4	@ tmp203,
	strb	r2, [r3, #52]	@ tmp204, RUNNING_TASK[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0])->task_group                      = task->task_group;
	.loc 1 56 0
	ldr	r3, [r7, #4]	@ tmp205, task
	ldr	r3, [r3, #56]	@ _19, task_42(D)->task_group
	ldr	r2, .L4+4	@ tmp206,
	str	r3, [r2, #56]	@ _19, RUNNING_TASK[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0])->r0                             = task->r0;
	.loc 1 63 0
	ldr	r3, [r7, #4]	@ tmp207, task
	ldr	r3, [r3, #60]	@ _20, task_42(D)->r0
	ldr	r2, .L4+4	@ tmp208,
	str	r3, [r2, #60]	@ _20, RUNNING_TASK[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:64:       (&RUNNING_TASK[0])->r1                             = task->r1;
	.loc 1 64 0
	ldr	r3, [r7, #4]	@ tmp209, task
	ldr	r3, [r3, #64]	@ _21, task_42(D)->r1
	ldr	r2, .L4+4	@ tmp210,
	str	r3, [r2, #64]	@ _21, RUNNING_TASK[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:65:       (&RUNNING_TASK[0])->r2                             = task->r2;
	.loc 1 65 0
	ldr	r3, [r7, #4]	@ tmp211, task
	ldr	r3, [r3, #68]	@ _22, task_42(D)->r2
	ldr	r2, .L4+4	@ tmp212,
	str	r3, [r2, #68]	@ _22, RUNNING_TASK[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:66:       (&RUNNING_TASK[0])->r3                             = task->r3;
	.loc 1 66 0
	ldr	r3, [r7, #4]	@ tmp213, task
	ldr	r3, [r3, #72]	@ _23, task_42(D)->r3
	ldr	r2, .L4+4	@ tmp214,
	str	r3, [r2, #72]	@ _23, RUNNING_TASK[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:67:       (&RUNNING_TASK[0])->r4                             = task->r4;
	.loc 1 67 0
	ldr	r3, [r7, #4]	@ tmp215, task
	ldr	r3, [r3, #76]	@ _24, task_42(D)->r4
	ldr	r2, .L4+4	@ tmp216,
	str	r3, [r2, #76]	@ _24, RUNNING_TASK[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:68:       (&RUNNING_TASK[0])->r5                             = task->r5;
	.loc 1 68 0
	ldr	r3, [r7, #4]	@ tmp217, task
	ldr	r3, [r3, #80]	@ _25, task_42(D)->r5
	ldr	r2, .L4+4	@ tmp218,
	str	r3, [r2, #80]	@ _25, RUNNING_TASK[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:69:       (&RUNNING_TASK[0])->r6                             = task->r6;
	.loc 1 69 0
	ldr	r3, [r7, #4]	@ tmp219, task
	ldr	r3, [r3, #84]	@ _26, task_42(D)->r6
	ldr	r2, .L4+4	@ tmp220,
	str	r3, [r2, #84]	@ _26, RUNNING_TASK[0].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:70:       (&RUNNING_TASK[0])->r7                             = task->r7;
	.loc 1 70 0
	ldr	r3, [r7, #4]	@ tmp221, task
	ldr	r3, [r3, #88]	@ _27, task_42(D)->r7
	ldr	r2, .L4+4	@ tmp222,
	str	r3, [r2, #88]	@ _27, RUNNING_TASK[0].r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:71:       (&RUNNING_TASK[0])->r8                             = task->r8;
	.loc 1 71 0
	ldr	r3, [r7, #4]	@ tmp223, task
	ldr	r3, [r3, #92]	@ _28, task_42(D)->r8
	ldr	r2, .L4+4	@ tmp224,
	str	r3, [r2, #92]	@ _28, RUNNING_TASK[0].r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:72:       (&RUNNING_TASK[0])->r9                             = task->r9;
	.loc 1 72 0
	ldr	r3, [r7, #4]	@ tmp225, task
	ldr	r3, [r3, #96]	@ _29, task_42(D)->r9
	ldr	r2, .L4+4	@ tmp226,
	str	r3, [r2, #96]	@ _29, RUNNING_TASK[0].r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:73:       (&RUNNING_TASK[0])->r10                            = task->r10;
	.loc 1 73 0
	ldr	r3, [r7, #4]	@ tmp227, task
	ldr	r3, [r3, #100]	@ _30, task_42(D)->r10
	ldr	r2, .L4+4	@ tmp228,
	str	r3, [r2, #100]	@ _30, RUNNING_TASK[0].r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:74:       (&RUNNING_TASK[0])->r11                            = task->r11;
	.loc 1 74 0
	ldr	r3, [r7, #4]	@ tmp229, task
	ldr	r3, [r3, #104]	@ _31, task_42(D)->r11
	ldr	r2, .L4+4	@ tmp230,
	str	r3, [r2, #104]	@ _31, RUNNING_TASK[0].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:75:       (&RUNNING_TASK[0])->r12                            = task->r12;
	.loc 1 75 0
	ldr	r3, [r7, #4]	@ tmp231, task
	ldr	r3, [r3, #108]	@ _32, task_42(D)->r12
	ldr	r2, .L4+4	@ tmp232,
	str	r3, [r2, #108]	@ _32, RUNNING_TASK[0].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:78:       (&RUNNING_TASK[0])->pStackPointer                   = task->pStackPointer;
	.loc 1 78 0
	ldr	r3, [r7, #4]	@ tmp233, task
	ldr	r3, [r3, #112]	@ _33, task_42(D)->pStackPointer
	ldr	r2, .L4+4	@ tmp234,
	str	r3, [r2, #112]	@ _33, RUNNING_TASK[0].pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:79:       (&RUNNING_TASK[0])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 79 0
	ldr	r3, [r7, #4]	@ tmp235, task
	ldr	r3, [r3, #116]	@ _34, task_42(D)->pStackPointerByMalloc
	ldr	r2, .L4+4	@ tmp236,
	str	r3, [r2, #116]	@ _34, RUNNING_TASK[0].pStackPointerByMalloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:80:       (&RUNNING_TASK[0])->pStackPointerStart              = task->pStackPointerStart;
	.loc 1 80 0
	ldr	r3, [r7, #4]	@ tmp237, task
	ldr	r3, [r3, #120]	@ _35, task_42(D)->pStackPointerStart
	ldr	r2, .L4+4	@ tmp238,
	str	r3, [r2, #120]	@ _35, RUNNING_TASK[0].pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:81:       (&RUNNING_TASK[0])->StackSize                       = task->StackSize;
	.loc 1 81 0
	ldr	r3, [r7, #4]	@ tmp239, task
	ldr	r3, [r3, #124]	@ _36, task_42(D)->StackSize
	ldr	r2, .L4+4	@ tmp240,
	str	r3, [r2, #124]	@ _36, RUNNING_TASK[0].StackSize
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0])->pStackPointerEnd                = task->pStackPointerEnd;
	.loc 1 82 0
	ldr	r3, [r7, #4]	@ tmp241, task
	ldr	r3, [r3, #128]	@ _37, task_42(D)->pStackPointerEnd
	ldr	r2, .L4+4	@ tmp242,
	str	r3, [r2, #128]	@ _37, RUNNING_TASK[0].pStackPointerEnd
.L3:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:84: }
	.loc 1 84 0
	nop
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L5:
	.align	2
.L4:
	.word	RUNNING_SCHEDULING_QUEUE_ENTRY
	.word	RUNNING_TASK
	.cfi_endproc
.LFE0:
	.size	SET_RUNNING_TASK, .-SET_RUNNING_TASK
	.align	1
	.global	OS_InitTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_InitTaskQueue, %function
OS_InitTaskQueue:
.LFB1:
	.loc 1 88 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:89:    if(bTASK_QUEUE_INITIALIZED == False)
	.loc 1 89 0
	ldr	r3, .L11	@ tmp115,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ bTASK_QUEUE_INITIALIZED.0_1, bTASK_QUEUE_INITIALIZED
	cmp	r3, #0	@ bTASK_QUEUE_INITIALIZED.0_1,
	bne	.L10	@,
.LBB2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:91:       unsigned_char_t element_nr = 0;
	.loc 1 91 0
	movs	r3, #0	@ tmp116,
	strb	r3, [r7, #7]	@ tmp117, element_nr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:92:       while(element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 92 0
	b	.L8	@
.L9:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:94:          TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0;
	.loc 1 94 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ _2, element_nr
	ldr	r2, .L11+4	@ tmp118,
	movs	r1, #0	@ tmp119,
	str	r1, [r2, r3, lsl #2]	@ tmp119, TASK_SCHEDULING_QUEUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:95:          OS_Task_InitTaskEnvironment(&TASK_RUN_QUEUE[element_nr]);
	.loc 1 95 0
	ldrb	r2, [r7, #7]	@ zero_extendqisi2	@ _3, element_nr
	mov	r3, r2	@ tmp120, _3
	lsls	r3, r3, #4	@ tmp120, tmp120,
	add	r3, r3, r2	@ tmp120, _3
	lsls	r3, r3, #3	@ tmp121, tmp120,
	ldr	r2, .L11+8	@ tmp122,
	add	r3, r3, r2	@ _4, tmp122
	mov	r0, r3	@, _4
	bl	OS_Task_InitTaskEnvironment	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:96:          element_nr++;
	.loc 1 96 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ element_nr.1_5, element_nr
	adds	r3, r3, #1	@ tmp123, element_nr.1_5,
	strb	r3, [r7, #7]	@ tmp124, element_nr
.L8:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:92:       while(element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 92 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ tmp125, element_nr
	cmp	r3, #9	@ tmp125,
	bls	.L9	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:98:       bTASK_QUEUE_INITIALIZED = True;
	.loc 1 98 0
	ldr	r3, .L11	@ tmp126,
	movs	r2, #1	@ tmp127,
	strb	r2, [r3]	@ tmp128, bTASK_QUEUE_INITIALIZED
.L10:
.LBE2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:100: }
	.loc 1 100 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L12:
	.align	2
.L11:
	.word	bTASK_QUEUE_INITIALIZED
	.word	TASK_SCHEDULING_QUEUE
	.word	TASK_RUN_QUEUE
	.cfi_endproc
.LFE1:
	.size	OS_InitTaskQueue, .-OS_InitTaskQueue
	.align	1
	.global	AddToTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AddToTaskQueue, %function
AddToTaskQueue:
.LFB2:
	.loc 1 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20	@,,
	.cfi_def_cfa_offset 24
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:103:    unsigned_char_t element_nr = 0;
	.loc 1 103 0
	movs	r3, #0	@ tmp191,
	strb	r3, [r7, #15]	@ tmp192, element_nr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:104:    while( (element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 104 0
	b	.L14	@
.L16:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:108:       element_nr++;
	.loc 1 108 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ element_nr.2_1, element_nr
	adds	r3, r3, #1	@ tmp193, element_nr.2_1,
	strb	r3, [r7, #15]	@ tmp194, element_nr
.L14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:104:    while( (element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 104 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ tmp195, element_nr
	cmp	r3, #9	@ tmp195,
	bhi	.L15	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:105:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == True)
	.loc 1 105 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _2, element_nr
	ldr	r1, .L19	@ tmp196,
	mov	r3, r2	@ tmp197, _2
	lsls	r3, r3, #4	@ tmp197, tmp197,
	add	r3, r3, r2	@ tmp197, _2
	lsls	r3, r3, #3	@ tmp198, tmp197,
	add	r3, r3, r1	@ tmp199, tmp196
	ldrb	r3, [r3]	@ tmp201,
	ubfx	r3, r3, #1, #1	@ tmp202, tmp201,,
	uxtb	r3, r3	@ _3, tmp202
	cmp	r3, #1	@ _3,
	beq	.L16	@,
.L15:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:111:    if( (element_nr < MAX_RUN_QUEUE_SIZE) && ((&TASK_RUN_QUEUE[element_nr])->task_queued == False) )
	.loc 1 111 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ tmp203, element_nr
	cmp	r3, #9	@ tmp203,
	bhi	.L17	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:111:    if( (element_nr < MAX_RUN_QUEUE_SIZE) && ((&TASK_RUN_QUEUE[element_nr])->task_queued == False) )
	.loc 1 111 0 is_stmt 0 discriminator 1
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _4, element_nr
	ldr	r1, .L19	@ tmp204,
	mov	r3, r2	@ tmp205, _4
	lsls	r3, r3, #4	@ tmp205, tmp205,
	add	r3, r3, r2	@ tmp205, _4
	lsls	r3, r3, #3	@ tmp206, tmp205,
	add	r3, r3, r1	@ tmp207, tmp204
	ldrb	r3, [r3]	@ tmp209,
	ubfx	r3, r3, #1, #1	@ tmp210, tmp209,,
	uxtb	r3, r3	@ _5, tmp210
	cmp	r3, #0	@ _5,
	bne	.L17	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:113:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 113 0 is_stmt 1
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _6, element_nr
	ldr	r3, [r7, #4]	@ tmp211, task
	ldrb	r3, [r3]	@ tmp213, *task_85(D)
	ubfx	r3, r3, #0, #1	@ tmp214, tmp213,,
	uxtb	r1, r3	@ _7, tmp214
	ldr	r0, .L19	@ tmp215,
	mov	r3, r2	@ tmp216, _6
	lsls	r3, r3, #4	@ tmp216, tmp216,
	add	r3, r3, r2	@ tmp216, _6
	lsls	r3, r3, #3	@ tmp217, tmp216,
	adds	r2, r0, r3	@ tmp218, tmp215, tmp216
	ldrb	r3, [r2]	@ tmp219, TASK_RUN_QUEUE[_6].active
	bfi	r3, r1, #0, #1	@ tmp219, _7,,
	strb	r3, [r2]	@ tmp219, TASK_RUN_QUEUE[_6].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:114:       (&TASK_RUN_QUEUE[element_nr])->task_queued                     = True;
	.loc 1 114 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _8, element_nr
	ldr	r1, .L19	@ tmp220,
	mov	r3, r2	@ tmp221, _8
	lsls	r3, r3, #4	@ tmp221, tmp221,
	add	r3, r3, r2	@ tmp221, _8
	lsls	r3, r3, #3	@ tmp222, tmp221,
	adds	r2, r1, r3	@ tmp223, tmp220, tmp221
	ldrb	r3, [r2]	@ tmp224, TASK_RUN_QUEUE[_8].task_queued
	orr	r3, r3, #2	@ tmp225, tmp226,
	strb	r3, [r2]	@ tmp224, TASK_RUN_QUEUE[_8].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->IdleTask                        = task->IdleTask;
	.loc 1 115 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _9, element_nr
	ldr	r3, [r7, #4]	@ tmp227, task
	ldrb	r3, [r3]	@ tmp229, *task_85(D)
	ubfx	r3, r3, #2, #1	@ tmp230, tmp229,,
	uxtb	r1, r3	@ _10, tmp230
	ldr	r0, .L19	@ tmp231,
	mov	r3, r2	@ tmp232, _9
	lsls	r3, r3, #4	@ tmp232, tmp232,
	add	r3, r3, r2	@ tmp232, _9
	lsls	r3, r3, #3	@ tmp233, tmp232,
	adds	r2, r0, r3	@ tmp234, tmp231, tmp232
	ldrb	r3, [r2]	@ tmp235, TASK_RUN_QUEUE[_9].IdleTask
	bfi	r3, r1, #2, #1	@ tmp235, _10,,
	strb	r3, [r2]	@ tmp235, TASK_RUN_QUEUE[_9].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:116:       (&TASK_RUN_QUEUE[element_nr])->FREE                            = task->FREE;
	.loc 1 116 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _11, element_nr
	ldr	r3, [r7, #4]	@ tmp236, task
	ldr	r3, [r3]	@ tmp237, *task_85(D)
	ubfx	r1, r3, #3, #29	@ _12, tmp237,,
	ldr	r0, .L19	@ tmp238,
	mov	r3, r2	@ tmp239, _11
	lsls	r3, r3, #4	@ tmp239, tmp239,
	add	r3, r3, r2	@ tmp239, _11
	lsls	r3, r3, #3	@ tmp240, tmp239,
	adds	r2, r0, r3	@ tmp241, tmp238, tmp239
	ldr	r3, [r2]	@ tmp242, TASK_RUN_QUEUE[_11].FREE
	bfi	r3, r1, #3, #29	@ tmp242, _12,,
	str	r3, [r2]	@ tmp242, TASK_RUN_QUEUE[_11].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->NrOfInsAllowed                  = task->NrOfInsAllowed;
	.loc 1 117 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _13, element_nr
	ldr	r3, [r7, #4]	@ tmp243, task
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ _14, task_85(D)->NrOfInsAllowed
	ldr	r1, .L19	@ tmp244,
	mov	r3, r2	@ tmp245, _13
	lsls	r3, r3, #4	@ tmp245, tmp245,
	add	r3, r3, r2	@ tmp245, _13
	lsls	r3, r3, #3	@ tmp246, tmp245,
	add	r3, r3, r1	@ tmp247, tmp244
	adds	r3, r3, #4	@ tmp248, tmp247,
	mov	r2, r0	@ tmp249, _14
	strb	r2, [r3]	@ tmp249, TASK_RUN_QUEUE[_13].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->NrOfInsActivated                = task->NrOfInsActivated;
	.loc 1 118 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _15, element_nr
	ldr	r3, [r7, #4]	@ tmp250, task
	ldrb	r0, [r3, #5]	@ zero_extendqisi2	@ _16, task_85(D)->NrOfInsActivated
	ldr	r1, .L19	@ tmp251,
	mov	r3, r2	@ tmp252, _15
	lsls	r3, r3, #4	@ tmp252, tmp252,
	add	r3, r3, r2	@ tmp252, _15
	lsls	r3, r3, #3	@ tmp253, tmp252,
	add	r3, r3, r1	@ tmp254, tmp251
	adds	r3, r3, #5	@ tmp255, tmp254,
	mov	r2, r0	@ tmp256, _16
	strb	r2, [r3]	@ tmp256, TASK_RUN_QUEUE[_15].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:119:       (&TASK_RUN_QUEUE[element_nr])->WaitActUntil                    = task->WaitActUntil;
	.loc 1 119 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _17, element_nr
	ldr	r3, [r7, #4]	@ tmp257, task
	ldr	r1, [r3, #8]	@ _18, task_85(D)->WaitActUntil
	ldr	r0, .L19	@ tmp258,
	mov	r3, r2	@ tmp259, _17
	lsls	r3, r3, #4	@ tmp259, tmp259,
	add	r3, r3, r2	@ tmp259, _17
	lsls	r3, r3, #3	@ tmp260, tmp259,
	add	r3, r3, r0	@ tmp261, tmp258
	adds	r3, r3, #8	@ tmp262, tmp261,
	str	r1, [r3]	@ _18, TASK_RUN_QUEUE[_17].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:120:       (&TASK_RUN_QUEUE[element_nr])->wait_time                       = task->wait_time;
	.loc 1 120 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _19, element_nr
	ldr	r3, [r7, #4]	@ tmp263, task
	ldr	r1, [r3, #12]	@ _20, task_85(D)->wait_time
	ldr	r0, .L19	@ tmp264,
	mov	r3, r2	@ tmp265, _19
	lsls	r3, r3, #4	@ tmp265, tmp265,
	add	r3, r3, r2	@ tmp265, _19
	lsls	r3, r3, #3	@ tmp266, tmp265,
	add	r3, r3, r0	@ tmp267, tmp264
	adds	r3, r3, #12	@ tmp268, tmp267,
	str	r1, [r3]	@ _20, TASK_RUN_QUEUE[_19].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:121:       (&TASK_RUN_QUEUE[element_nr])->TimeToPrioInc                   = task->TimeToPrioInc;
	.loc 1 121 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _21, element_nr
	ldr	r3, [r7, #4]	@ tmp269, task
	ldr	r1, [r3, #16]	@ _22, task_85(D)->TimeToPrioInc
	ldr	r0, .L19	@ tmp270,
	mov	r3, r2	@ tmp271, _21
	lsls	r3, r3, #4	@ tmp271, tmp271,
	add	r3, r3, r2	@ tmp271, _21
	lsls	r3, r3, #3	@ tmp272, tmp271,
	add	r3, r3, r0	@ tmp273, tmp270
	adds	r3, r3, #16	@ tmp274, tmp273,
	str	r1, [r3]	@ _22, TASK_RUN_QUEUE[_21].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:122:       (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 122 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _23, element_nr
	ldr	r3, [r7, #4]	@ tmp275, task
	ldr	r1, [r3, #20]	@ _24, task_85(D)->overwaittime_per_prio_inc_step
	ldr	r0, .L19	@ tmp276,
	mov	r3, r2	@ tmp277, _23
	lsls	r3, r3, #4	@ tmp277, tmp277,
	add	r3, r3, r2	@ tmp277, _23
	lsls	r3, r3, #3	@ tmp278, tmp277,
	add	r3, r3, r0	@ tmp279, tmp276
	adds	r3, r3, #20	@ tmp280, tmp279,
	str	r1, [r3]	@ _24, TASK_RUN_QUEUE[_23].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:123:       (&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time           = task->max_allowed_wait_time;
	.loc 1 123 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _25, element_nr
	ldr	r3, [r7, #4]	@ tmp281, task
	ldr	r1, [r3, #24]	@ _26, task_85(D)->max_allowed_wait_time
	ldr	r0, .L19	@ tmp282,
	mov	r3, r2	@ tmp283, _25
	lsls	r3, r3, #4	@ tmp283, tmp283,
	add	r3, r3, r2	@ tmp283, _25
	lsls	r3, r3, #3	@ tmp284, tmp283,
	add	r3, r3, r0	@ tmp285, tmp282
	adds	r3, r3, #24	@ tmp286, tmp285,
	str	r1, [r3]	@ _26, TASK_RUN_QUEUE[_25].max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:124:       (&TASK_RUN_QUEUE[element_nr])->exe_time                        = task->exe_time;
	.loc 1 124 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _27, element_nr
	ldr	r3, [r7, #4]	@ tmp287, task
	ldr	r1, [r3, #28]	@ _28, task_85(D)->exe_time
	ldr	r0, .L19	@ tmp288,
	mov	r3, r2	@ tmp289, _27
	lsls	r3, r3, #4	@ tmp289, tmp289,
	add	r3, r3, r2	@ tmp289, _27
	lsls	r3, r3, #3	@ tmp290, tmp289,
	add	r3, r3, r0	@ tmp291, tmp288
	adds	r3, r3, #28	@ tmp292, tmp291,
	str	r1, [r3]	@ _28, TASK_RUN_QUEUE[_27].exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:125:       (&TASK_RUN_QUEUE[element_nr])->start_time                      = task->start_time;
	.loc 1 125 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _29, element_nr
	ldr	r3, [r7, #4]	@ tmp293, task
	ldr	r1, [r3, #32]	@ _30, task_85(D)->start_time
	ldr	r0, .L19	@ tmp294,
	mov	r3, r2	@ tmp295, _29
	lsls	r3, r3, #4	@ tmp295, tmp295,
	add	r3, r3, r2	@ tmp295, _29
	lsls	r3, r3, #3	@ tmp296, tmp295,
	add	r3, r3, r0	@ tmp297, tmp294
	adds	r3, r3, #32	@ tmp298, tmp297,
	str	r1, [r3]	@ _30, TASK_RUN_QUEUE[_29].start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:126:       (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
	.loc 1 126 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _31, element_nr
	ldr	r3, [r7, #4]	@ tmp299, task
	ldrb	r0, [r3, #36]	@ zero_extendqisi2	@ _32, task_85(D)->current_prio
	ldr	r1, .L19	@ tmp300,
	mov	r3, r2	@ tmp301, _31
	lsls	r3, r3, #4	@ tmp301, tmp301,
	add	r3, r3, r2	@ tmp301, _31
	lsls	r3, r3, #3	@ tmp302, tmp301,
	add	r3, r3, r1	@ tmp303, tmp300
	adds	r3, r3, #36	@ tmp304, tmp303,
	mov	r2, r0	@ tmp305, _32
	strb	r2, [r3]	@ tmp305, TASK_RUN_QUEUE[_31].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:127:       (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
	.loc 1 127 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _33, element_nr
	ldr	r3, [r7, #4]	@ tmp306, task
	ldrb	r0, [r3, #37]	@ zero_extendqisi2	@ _34, task_85(D)->default_prio
	ldr	r1, .L19	@ tmp307,
	mov	r3, r2	@ tmp308, _33
	lsls	r3, r3, #4	@ tmp308, tmp308,
	add	r3, r3, r2	@ tmp308, _33
	lsls	r3, r3, #3	@ tmp309, tmp308,
	add	r3, r3, r1	@ tmp310, tmp307
	adds	r3, r3, #37	@ tmp311, tmp310,
	mov	r2, r0	@ tmp312, _34
	strb	r2, [r3]	@ tmp312, TASK_RUN_QUEUE[_33].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:128:       (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
	.loc 1 128 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _35, element_nr
	ldr	r3, [r7, #4]	@ tmp313, task
	ldr	r1, [r3, #44]	@ _36, task_85(D)->fp
	ldr	r0, .L19	@ tmp314,
	mov	r3, r2	@ tmp315, _35
	lsls	r3, r3, #4	@ tmp315, tmp315,
	add	r3, r3, r2	@ tmp315, _35
	lsls	r3, r3, #3	@ tmp316, tmp315,
	add	r3, r3, r0	@ tmp317, tmp314
	adds	r3, r3, #44	@ tmp318, tmp317,
	str	r1, [r3]	@ _36, TASK_RUN_QUEUE[_35].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:129:       (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
	.loc 1 129 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _37, element_nr
	ldr	r3, [r7, #4]	@ tmp319, task
	ldr	r1, [r3, #48]	@ _38, task_85(D)->state_request
	ldr	r0, .L19	@ tmp320,
	mov	r3, r2	@ tmp321, _37
	lsls	r3, r3, #4	@ tmp321, tmp321,
	add	r3, r3, r2	@ tmp321, _37
	lsls	r3, r3, #3	@ tmp322, tmp321,
	add	r3, r3, r0	@ tmp323, tmp320
	adds	r3, r3, #48	@ tmp324, tmp323,
	str	r1, [r3]	@ _38, TASK_RUN_QUEUE[_37].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:130:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 130 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _39, element_nr
	ldr	r3, [r7, #4]	@ tmp325, task
	ldrb	r0, [r3, #52]	@ zero_extendqisi2	@ _40, task_85(D)->task_state
	ldr	r1, .L19	@ tmp326,
	mov	r3, r2	@ tmp327, _39
	lsls	r3, r3, #4	@ tmp327, tmp327,
	add	r3, r3, r2	@ tmp327, _39
	lsls	r3, r3, #3	@ tmp328, tmp327,
	add	r3, r3, r1	@ tmp329, tmp326
	adds	r3, r3, #52	@ tmp330, tmp329,
	mov	r2, r0	@ tmp331, _40
	strb	r2, [r3]	@ tmp331, TASK_RUN_QUEUE[_39].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:131:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 131 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _41, element_nr
	ldr	r3, [r7, #4]	@ tmp332, task
	ldr	r1, [r3, #56]	@ _42, task_85(D)->task_group
	ldr	r0, .L19	@ tmp333,
	mov	r3, r2	@ tmp334, _41
	lsls	r3, r3, #4	@ tmp334, tmp334,
	add	r3, r3, r2	@ tmp334, _41
	lsls	r3, r3, #3	@ tmp335, tmp334,
	add	r3, r3, r0	@ tmp336, tmp333
	adds	r3, r3, #56	@ tmp337, tmp336,
	str	r1, [r3]	@ _42, TASK_RUN_QUEUE[_41].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:138:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 138 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _43, element_nr
	ldr	r3, [r7, #4]	@ tmp338, task
	ldr	r1, [r3, #60]	@ _44, task_85(D)->r0
	ldr	r0, .L19	@ tmp339,
	mov	r3, r2	@ tmp340, _43
	lsls	r3, r3, #4	@ tmp340, tmp340,
	add	r3, r3, r2	@ tmp340, _43
	lsls	r3, r3, #3	@ tmp341, tmp340,
	add	r3, r3, r0	@ tmp342, tmp339
	adds	r3, r3, #60	@ tmp343, tmp342,
	str	r1, [r3]	@ _44, TASK_RUN_QUEUE[_43].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:139:       (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
	.loc 1 139 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _45, element_nr
	ldr	r3, [r7, #4]	@ tmp344, task
	ldr	r1, [r3, #64]	@ _46, task_85(D)->r1
	ldr	r0, .L19	@ tmp345,
	mov	r3, r2	@ tmp346, _45
	lsls	r3, r3, #4	@ tmp346, tmp346,
	add	r3, r3, r2	@ tmp346, _45
	lsls	r3, r3, #3	@ tmp347, tmp346,
	add	r3, r3, r0	@ tmp348, tmp345
	adds	r3, r3, #64	@ tmp349, tmp348,
	str	r1, [r3]	@ _46, TASK_RUN_QUEUE[_45].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
	.loc 1 140 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _47, element_nr
	ldr	r3, [r7, #4]	@ tmp350, task
	ldr	r1, [r3, #68]	@ _48, task_85(D)->r2
	ldr	r0, .L19	@ tmp351,
	mov	r3, r2	@ tmp352, _47
	lsls	r3, r3, #4	@ tmp352, tmp352,
	add	r3, r3, r2	@ tmp352, _47
	lsls	r3, r3, #3	@ tmp353, tmp352,
	add	r3, r3, r0	@ tmp354, tmp351
	adds	r3, r3, #68	@ tmp355, tmp354,
	str	r1, [r3]	@ _48, TASK_RUN_QUEUE[_47].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:141:       (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
	.loc 1 141 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _49, element_nr
	ldr	r3, [r7, #4]	@ tmp356, task
	ldr	r1, [r3, #72]	@ _50, task_85(D)->r3
	ldr	r0, .L19	@ tmp357,
	mov	r3, r2	@ tmp358, _49
	lsls	r3, r3, #4	@ tmp358, tmp358,
	add	r3, r3, r2	@ tmp358, _49
	lsls	r3, r3, #3	@ tmp359, tmp358,
	add	r3, r3, r0	@ tmp360, tmp357
	adds	r3, r3, #72	@ tmp361, tmp360,
	str	r1, [r3]	@ _50, TASK_RUN_QUEUE[_49].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:142:       (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
	.loc 1 142 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _51, element_nr
	ldr	r3, [r7, #4]	@ tmp362, task
	ldr	r1, [r3, #76]	@ _52, task_85(D)->r4
	ldr	r0, .L19	@ tmp363,
	mov	r3, r2	@ tmp364, _51
	lsls	r3, r3, #4	@ tmp364, tmp364,
	add	r3, r3, r2	@ tmp364, _51
	lsls	r3, r3, #3	@ tmp365, tmp364,
	add	r3, r3, r0	@ tmp366, tmp363
	adds	r3, r3, #76	@ tmp367, tmp366,
	str	r1, [r3]	@ _52, TASK_RUN_QUEUE[_51].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:143:       (&TASK_RUN_QUEUE[element_nr])->r5                             = task->r5;
	.loc 1 143 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _53, element_nr
	ldr	r3, [r7, #4]	@ tmp368, task
	ldr	r1, [r3, #80]	@ _54, task_85(D)->r5
	ldr	r0, .L19	@ tmp369,
	mov	r3, r2	@ tmp370, _53
	lsls	r3, r3, #4	@ tmp370, tmp370,
	add	r3, r3, r2	@ tmp370, _53
	lsls	r3, r3, #3	@ tmp371, tmp370,
	add	r3, r3, r0	@ tmp372, tmp369
	adds	r3, r3, #80	@ tmp373, tmp372,
	str	r1, [r3]	@ _54, TASK_RUN_QUEUE[_53].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:144:       (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
	.loc 1 144 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _55, element_nr
	ldr	r3, [r7, #4]	@ tmp374, task
	ldr	r1, [r3, #84]	@ _56, task_85(D)->r6
	ldr	r0, .L19	@ tmp375,
	mov	r3, r2	@ tmp376, _55
	lsls	r3, r3, #4	@ tmp376, tmp376,
	add	r3, r3, r2	@ tmp376, _55
	lsls	r3, r3, #3	@ tmp377, tmp376,
	add	r3, r3, r0	@ tmp378, tmp375
	adds	r3, r3, #84	@ tmp379, tmp378,
	str	r1, [r3]	@ _56, TASK_RUN_QUEUE[_55].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:145:       (&TASK_RUN_QUEUE[element_nr])->r7                             = task->r7;
	.loc 1 145 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _57, element_nr
	ldr	r3, [r7, #4]	@ tmp380, task
	ldr	r1, [r3, #88]	@ _58, task_85(D)->r7
	ldr	r0, .L19	@ tmp381,
	mov	r3, r2	@ tmp382, _57
	lsls	r3, r3, #4	@ tmp382, tmp382,
	add	r3, r3, r2	@ tmp382, _57
	lsls	r3, r3, #3	@ tmp383, tmp382,
	add	r3, r3, r0	@ tmp384, tmp381
	adds	r3, r3, #88	@ tmp385, tmp384,
	str	r1, [r3]	@ _58, TASK_RUN_QUEUE[_57].r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:146:       (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
	.loc 1 146 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _59, element_nr
	ldr	r3, [r7, #4]	@ tmp386, task
	ldr	r1, [r3, #92]	@ _60, task_85(D)->r8
	ldr	r0, .L19	@ tmp387,
	mov	r3, r2	@ tmp388, _59
	lsls	r3, r3, #4	@ tmp388, tmp388,
	add	r3, r3, r2	@ tmp388, _59
	lsls	r3, r3, #3	@ tmp389, tmp388,
	add	r3, r3, r0	@ tmp390, tmp387
	adds	r3, r3, #92	@ tmp391, tmp390,
	str	r1, [r3]	@ _60, TASK_RUN_QUEUE[_59].r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:147:       (&TASK_RUN_QUEUE[element_nr])->r9                             = task->r9;
	.loc 1 147 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _61, element_nr
	ldr	r3, [r7, #4]	@ tmp392, task
	ldr	r1, [r3, #96]	@ _62, task_85(D)->r9
	ldr	r0, .L19	@ tmp393,
	mov	r3, r2	@ tmp394, _61
	lsls	r3, r3, #4	@ tmp394, tmp394,
	add	r3, r3, r2	@ tmp394, _61
	lsls	r3, r3, #3	@ tmp395, tmp394,
	add	r3, r3, r0	@ tmp396, tmp393
	b	.L20	@
.L21:
	.align	2
.L19:
	.word	TASK_RUN_QUEUE
.L20:
	adds	r3, r3, #96	@ tmp397, tmp396,
	str	r1, [r3]	@ _62, TASK_RUN_QUEUE[_61].r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:148:       (&TASK_RUN_QUEUE[element_nr])->r10                            = task->r10;
	.loc 1 148 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _63, element_nr
	ldr	r3, [r7, #4]	@ tmp398, task
	ldr	r1, [r3, #100]	@ _64, task_85(D)->r10
	ldr	r0, .L22	@ tmp399,
	mov	r3, r2	@ tmp400, _63
	lsls	r3, r3, #4	@ tmp400, tmp400,
	add	r3, r3, r2	@ tmp400, _63
	lsls	r3, r3, #3	@ tmp401, tmp400,
	add	r3, r3, r0	@ tmp402, tmp399
	adds	r3, r3, #100	@ tmp403, tmp402,
	str	r1, [r3]	@ _64, TASK_RUN_QUEUE[_63].r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:149:       (&TASK_RUN_QUEUE[element_nr])->r11                            = task->r11;
	.loc 1 149 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _65, element_nr
	ldr	r3, [r7, #4]	@ tmp404, task
	ldr	r1, [r3, #104]	@ _66, task_85(D)->r11
	ldr	r0, .L22	@ tmp405,
	mov	r3, r2	@ tmp406, _65
	lsls	r3, r3, #4	@ tmp406, tmp406,
	add	r3, r3, r2	@ tmp406, _65
	lsls	r3, r3, #3	@ tmp407, tmp406,
	add	r3, r3, r0	@ tmp408, tmp405
	adds	r3, r3, #104	@ tmp409, tmp408,
	str	r1, [r3]	@ _66, TASK_RUN_QUEUE[_65].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:150:       (&TASK_RUN_QUEUE[element_nr])->r12                            = task->r12;
	.loc 1 150 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _67, element_nr
	ldr	r3, [r7, #4]	@ tmp410, task
	ldr	r1, [r3, #108]	@ _68, task_85(D)->r12
	ldr	r0, .L22	@ tmp411,
	mov	r3, r2	@ tmp412, _67
	lsls	r3, r3, #4	@ tmp412, tmp412,
	add	r3, r3, r2	@ tmp412, _67
	lsls	r3, r3, #3	@ tmp413, tmp412,
	add	r3, r3, r0	@ tmp414, tmp411
	adds	r3, r3, #108	@ tmp415, tmp414,
	str	r1, [r3]	@ _68, TASK_RUN_QUEUE[_67].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:152:       (&TASK_RUN_QUEUE[element_nr])->pStackPointer                   = task->pStackPointer;
	.loc 1 152 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _69, element_nr
	ldr	r3, [r7, #4]	@ tmp416, task
	ldr	r1, [r3, #112]	@ _70, task_85(D)->pStackPointer
	ldr	r0, .L22	@ tmp417,
	mov	r3, r2	@ tmp418, _69
	lsls	r3, r3, #4	@ tmp418, tmp418,
	add	r3, r3, r2	@ tmp418, _69
	lsls	r3, r3, #3	@ tmp419, tmp418,
	add	r3, r3, r0	@ tmp420, tmp417
	adds	r3, r3, #112	@ tmp421, tmp420,
	str	r1, [r3]	@ _70, TASK_RUN_QUEUE[_69].pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:153:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 153 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _71, element_nr
	ldr	r3, [r7, #4]	@ tmp422, task
	ldr	r1, [r3, #116]	@ _72, task_85(D)->pStackPointerByMalloc
	ldr	r0, .L22	@ tmp423,
	mov	r3, r2	@ tmp424, _71
	lsls	r3, r3, #4	@ tmp424, tmp424,
	add	r3, r3, r2	@ tmp424, _71
	lsls	r3, r3, #3	@ tmp425, tmp424,
	add	r3, r3, r0	@ tmp426, tmp423
	adds	r3, r3, #116	@ tmp427, tmp426,
	str	r1, [r3]	@ _72, TASK_RUN_QUEUE[_71].pStackPointerByMalloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerStart              = task->pStackPointerStart;
	.loc 1 154 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _73, element_nr
	ldr	r3, [r7, #4]	@ tmp428, task
	ldr	r1, [r3, #120]	@ _74, task_85(D)->pStackPointerStart
	ldr	r0, .L22	@ tmp429,
	mov	r3, r2	@ tmp430, _73
	lsls	r3, r3, #4	@ tmp430, tmp430,
	add	r3, r3, r2	@ tmp430, _73
	lsls	r3, r3, #3	@ tmp431, tmp430,
	add	r3, r3, r0	@ tmp432, tmp429
	adds	r3, r3, #120	@ tmp433, tmp432,
	str	r1, [r3]	@ _74, TASK_RUN_QUEUE[_73].pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:155:       (&TASK_RUN_QUEUE[element_nr])->StackSize                       = task->StackSize;
	.loc 1 155 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _75, element_nr
	ldr	r3, [r7, #4]	@ tmp434, task
	ldr	r1, [r3, #124]	@ _76, task_85(D)->StackSize
	ldr	r0, .L22	@ tmp435,
	mov	r3, r2	@ tmp436, _75
	lsls	r3, r3, #4	@ tmp436, tmp436,
	add	r3, r3, r2	@ tmp436, _75
	lsls	r3, r3, #3	@ tmp437, tmp436,
	add	r3, r3, r0	@ tmp438, tmp435
	adds	r3, r3, #124	@ tmp439, tmp438,
	str	r1, [r3]	@ _76, TASK_RUN_QUEUE[_75].StackSize
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:156:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerEnd                = task->pStackPointerEnd;
	.loc 1 156 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _77, element_nr
	ldr	r3, [r7, #4]	@ tmp440, task
	ldr	r1, [r3, #128]	@ _78, task_85(D)->pStackPointerEnd
	ldr	r0, .L22	@ tmp441,
	mov	r3, r2	@ tmp442, _77
	lsls	r3, r3, #4	@ tmp442, tmp442,
	add	r3, r3, r2	@ tmp442, _77
	lsls	r3, r3, #3	@ tmp443, tmp442,
	add	r3, r3, r0	@ tmp444, tmp441
	adds	r3, r3, #128	@ tmp445, tmp444,
	str	r1, [r3]	@ _78, TASK_RUN_QUEUE[_77].pStackPointerEnd
.L17:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:158:    return (&TASK_RUN_QUEUE[element_nr]);
	.loc 1 158 0
	ldrb	r2, [r7, #15]	@ zero_extendqisi2	@ _79, element_nr
	mov	r3, r2	@ tmp446, _79
	lsls	r3, r3, #4	@ tmp446, tmp446,
	add	r3, r3, r2	@ tmp446, _79
	lsls	r3, r3, #3	@ tmp447, tmp446,
	ldr	r2, .L22	@ tmp448,
	add	r3, r3, r2	@ _123, tmp448
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:159: }
	.loc 1 159 0
	mov	r0, r3	@, <retval>
	adds	r7, r7, #20	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L23:
	.align	2
.L22:
	.word	TASK_RUN_QUEUE
	.cfi_endproc
.LFE2:
	.size	AddToTaskQueue, .-AddToTaskQueue
	.align	1
	.global	DeleteFromTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DeleteFromTaskQueue, %function
DeleteFromTaskQueue:
.LFB3:
	.loc 1 161 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:162:    task->active                                =   False   ;
	.loc 1 162 0
	ldr	r2, [r7, #4]	@ tmp110, task
	ldrb	r3, [r2]	@ tmp111, task_2(D)->active
	bfc	r3, #0, #1	@ tmp111,,
	strb	r3, [r2]	@ tmp111, task_2(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:163:    task->task_queued                           =   False   ;
	.loc 1 163 0
	ldr	r2, [r7, #4]	@ tmp112, task
	ldrb	r3, [r2]	@ tmp113, task_2(D)->task_queued
	bfc	r3, #1, #1	@ tmp113,,
	strb	r3, [r2]	@ tmp113, task_2(D)->task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:164:    task->IdleTask                              =   False   ;
	.loc 1 164 0
	ldr	r2, [r7, #4]	@ tmp114, task
	ldrb	r3, [r2]	@ tmp115, task_2(D)->IdleTask
	bfc	r3, #2, #1	@ tmp115,,
	strb	r3, [r2]	@ tmp115, task_2(D)->IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:165:    task->FREE                                  =   0       ;
	.loc 1 165 0
	ldr	r2, [r7, #4]	@ tmp116, task
	ldr	r3, [r2]	@ tmp117, task_2(D)->FREE
	bfc	r3, #3, #29	@ tmp117,,
	str	r3, [r2]	@ tmp117, task_2(D)->FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:166:    task->NrOfInsAllowed                        =   0       ;
	.loc 1 166 0
	ldr	r3, [r7, #4]	@ tmp118, task
	movs	r2, #0	@ tmp119,
	strb	r2, [r3, #4]	@ tmp120, task_2(D)->NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:167:    task->NrOfInsActivated                      =   0       ;
	.loc 1 167 0
	ldr	r3, [r7, #4]	@ tmp121, task
	movs	r2, #0	@ tmp122,
	strb	r2, [r3, #5]	@ tmp123, task_2(D)->NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:168:    task->WaitActUntil                          =   0       ;
	.loc 1 168 0
	ldr	r3, [r7, #4]	@ tmp124, task
	movs	r2, #0	@ tmp125,
	str	r2, [r3, #8]	@ tmp125, task_2(D)->WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:169:    task->wait_time                             =   0       ;
	.loc 1 169 0
	ldr	r3, [r7, #4]	@ tmp126, task
	movs	r2, #0	@ tmp127,
	str	r2, [r3, #12]	@ tmp127, task_2(D)->wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:170:    task->TimeToPrioInc                         =   0       ;
	.loc 1 170 0
	ldr	r3, [r7, #4]	@ tmp128, task
	movs	r2, #0	@ tmp129,
	str	r2, [r3, #16]	@ tmp129, task_2(D)->TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:171:    task->overwaittime_per_prio_inc_step        =   0       ;
	.loc 1 171 0
	ldr	r3, [r7, #4]	@ tmp130, task
	movs	r2, #0	@ tmp131,
	str	r2, [r3, #20]	@ tmp131, task_2(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:172:    task->max_allowed_wait_time                 =   0       ;
	.loc 1 172 0
	ldr	r3, [r7, #4]	@ tmp132, task
	movs	r2, #0	@ tmp133,
	str	r2, [r3, #24]	@ tmp133, task_2(D)->max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:173:    task->exe_time                              =   0       ;
	.loc 1 173 0
	ldr	r3, [r7, #4]	@ tmp134, task
	movs	r2, #0	@ tmp135,
	str	r2, [r3, #28]	@ tmp135, task_2(D)->exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:174:    task->start_time                            =   0       ;
	.loc 1 174 0
	ldr	r3, [r7, #4]	@ tmp136, task
	movs	r2, #0	@ tmp137,
	str	r2, [r3, #32]	@ tmp137, task_2(D)->start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:175:    task->current_prio                          =   0       ;
	.loc 1 175 0
	ldr	r3, [r7, #4]	@ tmp138, task
	movs	r2, #0	@ tmp139,
	strb	r2, [r3, #36]	@ tmp140, task_2(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:176:    task->default_prio                          =   0       ;
	.loc 1 176 0
	ldr	r3, [r7, #4]	@ tmp141, task
	movs	r2, #0	@ tmp142,
	strb	r2, [r3, #37]	@ tmp143, task_2(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:177:    task->fp                                    =   0       ;
	.loc 1 177 0
	ldr	r3, [r7, #4]	@ tmp144, task
	movs	r2, #0	@ tmp145,
	str	r2, [r3, #44]	@ tmp145, task_2(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:178:    task->state_request                         =   &task_state_request       ;
	.loc 1 178 0
	ldr	r3, [r7, #4]	@ tmp146, task
	ldr	r2, .L25	@ tmp147,
	str	r2, [r3, #48]	@ tmp147, task_2(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:179:    task->task_state                            =   Task_unspecified;
	.loc 1 179 0
	ldr	r3, [r7, #4]	@ tmp148, task
	movs	r2, #0	@ tmp149,
	strb	r2, [r3, #52]	@ tmp150, task_2(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:180:    task->task_group                            =   0       ;
	.loc 1 180 0
	ldr	r3, [r7, #4]	@ tmp151, task
	movs	r2, #0	@ tmp152,
	str	r2, [r3, #56]	@ tmp152, task_2(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:187:       task->r0                                   =   0              ;
	.loc 1 187 0
	ldr	r3, [r7, #4]	@ tmp153, task
	movs	r2, #0	@ tmp154,
	str	r2, [r3, #60]	@ tmp154, task_2(D)->r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:188:       task->r1                                   =   0              ;
	.loc 1 188 0
	ldr	r3, [r7, #4]	@ tmp155, task
	movs	r2, #0	@ tmp156,
	str	r2, [r3, #64]	@ tmp156, task_2(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:189:       task->r2                                   =   0              ;
	.loc 1 189 0
	ldr	r3, [r7, #4]	@ tmp157, task
	movs	r2, #0	@ tmp158,
	str	r2, [r3, #68]	@ tmp158, task_2(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:190:       task->r3                                   =   0              ;
	.loc 1 190 0
	ldr	r3, [r7, #4]	@ tmp159, task
	movs	r2, #0	@ tmp160,
	str	r2, [r3, #72]	@ tmp160, task_2(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:191:       task->r4                                   =   0              ;
	.loc 1 191 0
	ldr	r3, [r7, #4]	@ tmp161, task
	movs	r2, #0	@ tmp162,
	str	r2, [r3, #76]	@ tmp162, task_2(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:192:       task->r5                                   =   0              ;
	.loc 1 192 0
	ldr	r3, [r7, #4]	@ tmp163, task
	movs	r2, #0	@ tmp164,
	str	r2, [r3, #80]	@ tmp164, task_2(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:193:       task->r6                                   =   0              ;
	.loc 1 193 0
	ldr	r3, [r7, #4]	@ tmp165, task
	movs	r2, #0	@ tmp166,
	str	r2, [r3, #84]	@ tmp166, task_2(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:194:       task->r7                                   =   0              ;
	.loc 1 194 0
	ldr	r3, [r7, #4]	@ tmp167, task
	movs	r2, #0	@ tmp168,
	str	r2, [r3, #88]	@ tmp168, task_2(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:195:       task->r8                                   =   0              ;
	.loc 1 195 0
	ldr	r3, [r7, #4]	@ tmp169, task
	movs	r2, #0	@ tmp170,
	str	r2, [r3, #92]	@ tmp170, task_2(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:196:       task->r9                                   =   0              ;
	.loc 1 196 0
	ldr	r3, [r7, #4]	@ tmp171, task
	movs	r2, #0	@ tmp172,
	str	r2, [r3, #96]	@ tmp172, task_2(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:197:       task->r10                                  =   0             ;
	.loc 1 197 0
	ldr	r3, [r7, #4]	@ tmp173, task
	movs	r2, #0	@ tmp174,
	str	r2, [r3, #100]	@ tmp174, task_2(D)->r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:198:       task->r11                                  =   0             ;
	.loc 1 198 0
	ldr	r3, [r7, #4]	@ tmp175, task
	movs	r2, #0	@ tmp176,
	str	r2, [r3, #104]	@ tmp176, task_2(D)->r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:199:       task->r12                                  =   0             ;
	.loc 1 199 0
	ldr	r3, [r7, #4]	@ tmp177, task
	movs	r2, #0	@ tmp178,
	str	r2, [r3, #108]	@ tmp178, task_2(D)->r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:203:    task->pStackPointer                         =   0       ;
	.loc 1 203 0
	ldr	r3, [r7, #4]	@ tmp179, task
	movs	r2, #0	@ tmp180,
	str	r2, [r3, #112]	@ tmp180, task_2(D)->pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:204:    task->pStackPointerByMalloc                 =   0       ;
	.loc 1 204 0
	ldr	r3, [r7, #4]	@ tmp181, task
	movs	r2, #0	@ tmp182,
	str	r2, [r3, #116]	@ tmp182, task_2(D)->pStackPointerByMalloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:205:    task->pStackPointerStart                    =   0       ;
	.loc 1 205 0
	ldr	r3, [r7, #4]	@ tmp183, task
	movs	r2, #0	@ tmp184,
	str	r2, [r3, #120]	@ tmp184, task_2(D)->pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:206:    task->StackSize                             =   0       ;
	.loc 1 206 0
	ldr	r3, [r7, #4]	@ tmp185, task
	movs	r2, #0	@ tmp186,
	str	r2, [r3, #124]	@ tmp186, task_2(D)->StackSize
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:207:    task->pStackPointerEnd                      =   0       ;
	.loc 1 207 0
	ldr	r3, [r7, #4]	@ tmp187, task
	movs	r2, #0	@ tmp188,
	str	r2, [r3, #128]	@ tmp188, task_2(D)->pStackPointerEnd
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:208: }
	.loc 1 208 0
	nop
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L26:
	.align	2
.L25:
	.word	task_state_request
	.cfi_endproc
.LFE3:
	.size	DeleteFromTaskQueue, .-DeleteFromTaskQueue
	.align	1
	.global	GetFromTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetFromTaskQueue, %function
GetFromTaskQueue:
.LFB4:
	.loc 1 210 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ scheduling_queue_element, scheduling_queue_element
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:211:    return ((task_t*)*scheduling_queue_element);
	.loc 1 211 0
	ldr	r3, [r7, #4]	@ tmp112, scheduling_queue_element
	ldr	r3, [r3]	@ _3, *scheduling_queue_element_2(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:212: }
	.loc 1 212 0
	mov	r0, r3	@, <retval>
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE4:
	.size	GetFromTaskQueue, .-GetFromTaskQueue
	.align	1
	.global	GetFromSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetFromSchedulingQueue, %function
GetFromSchedulingQueue:
.LFB5:
	.loc 1 214 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	mov	r3, r0	@ tmp113, element_nr
	strb	r3, [r7, #7]	@ tmp114, element_nr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:215:    return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
	.loc 1 215 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ _1, element_nr
	lsls	r3, r3, #2	@ tmp115, _1,
	ldr	r2, .L31	@ tmp116,
	add	r3, r3, r2	@ _3, tmp116
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:216: }
	.loc 1 216 0
	mov	r0, r3	@, <retval>
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L32:
	.align	2
.L31:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE5:
	.size	GetFromSchedulingQueue, .-GetFromSchedulingQueue
	.align	1
	.global	DeleteFromSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DeleteFromSchedulingQueue, %function
DeleteFromSchedulingQueue:
.LFB6:
	.loc 1 219 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ scheduling_queue_element, scheduling_queue_element
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:220:    *scheduling_queue_element = 0;
	.loc 1 220 0
	ldr	r3, [r7, #4]	@ tmp110, scheduling_queue_element
	movs	r2, #0	@ tmp111,
	str	r2, [r3]	@ tmp111, *scheduling_queue_element_2(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:221: }
	.loc 1 221 0
	nop
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE6:
	.size	DeleteFromSchedulingQueue, .-DeleteFromSchedulingQueue
	.align	1
	.global	AddToSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AddToSchedulingQueue, %function
AddToSchedulingQueue:
.LFB7:
	.loc 1 223 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20	@,,
	.cfi_def_cfa_offset 24
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:231:    unsigned_char_t Add_successful = False;
	.loc 1 231 0
	movs	r3, #0	@ tmp114,
	strb	r3, [r7, #15]	@ tmp115, Add_successful
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:232:    unsigned_char_t index = 0;
	.loc 1 232 0
	movs	r3, #0	@ tmp116,
	strb	r3, [r7, #14]	@ tmp117, index
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:234:    while(  (index < MAX_RUN_QUEUE_SIZE)
	.loc 1 234 0
	b	.L35	@
.L38:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:237:       if(TASK_SCHEDULING_QUEUE[index] == 0)
	.loc 1 237 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2	@ _1, index
	ldr	r2, .L41	@ tmp118,
	ldr	r3, [r2, r3, lsl #2]	@ _2, TASK_SCHEDULING_QUEUE
	cmp	r3, #0	@ _2,
	bne	.L36	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:239:          TASK_SCHEDULING_QUEUE[index] = task;
	.loc 1 239 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2	@ _3, index
	ldr	r1, .L41	@ tmp119,
	ldr	r2, [r7, #4]	@ tmp120, task
	str	r2, [r1, r3, lsl #2]	@ tmp120, TASK_SCHEDULING_QUEUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:240:          Add_successful         = True;
	.loc 1 240 0
	movs	r3, #1	@ tmp121,
	strb	r3, [r7, #15]	@ tmp122, Add_successful
.L36:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:242:       index++;
	.loc 1 242 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2	@ index.3_4, index
	adds	r3, r3, #1	@ tmp123, index.3_4,
	strb	r3, [r7, #14]	@ tmp124, index
.L35:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:234:    while(  (index < MAX_RUN_QUEUE_SIZE)
	.loc 1 234 0
	ldrb	r3, [r7, #14]	@ zero_extendqisi2	@ tmp125, index
	cmp	r3, #9	@ tmp125,
	bhi	.L40	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:235:            &&(Add_successful == False))
	.loc 1 235 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ tmp126, Add_successful
	cmp	r3, #0	@ tmp126,
	beq	.L38	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:244:    return;
	.loc 1 244 0
	nop
.L40:
	nop
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:245: }
	.loc 1 245 0
	adds	r7, r7, #20	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L42:
	.align	2
.L41:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE7:
	.size	AddToSchedulingQueue, .-AddToSchedulingQueue
	.align	1
	.global	UpdateSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UpdateSchedulingQueue, %function
UpdateSchedulingQueue:
.LFB8:
	.loc 1 247 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:249:    unsigned_char_t dest = 0, src = 0;
	.loc 1 249 0
	movs	r3, #0	@ tmp122,
	strb	r3, [r7, #7]	@ tmp123, dest
	movs	r3, #0	@ tmp124,
	strb	r3, [r7, #6]	@ tmp125, src
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:251:    while (dest < MAX_RUN_PQUEUE_SIZE)
	.loc 1 251 0
	b	.L44	@
.L49:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:253:       if(TASK_SCHEDULING_QUEUE[dest] == 0)
	.loc 1 253 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ _1, dest
	ldr	r2, .L50	@ tmp126,
	ldr	r3, [r2, r3, lsl #2]	@ _2, TASK_SCHEDULING_QUEUE
	cmp	r3, #0	@ _2,
	bne	.L45	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:257:          src = dest; /* start from empty entry point */
	.loc 1 257 0
	ldrb	r3, [r7, #7]	@ tmp127, dest
	strb	r3, [r7, #6]	@ tmp127, src
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:258:          while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0))
	.loc 1 258 0
	b	.L46	@
.L48:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:260:             src++;
	.loc 1 260 0
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ src.4_3, src
	adds	r3, r3, #1	@ tmp128, src.4_3,
	strb	r3, [r7, #6]	@ tmp129, src
.L46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:258:          while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0))
	.loc 1 258 0
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ tmp130, src
	cmp	r3, #9	@ tmp130,
	bhi	.L47	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:258:          while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0))
	.loc 1 258 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ _4, src
	ldr	r2, .L50	@ tmp131,
	ldr	r3, [r2, r3, lsl #2]	@ _5, TASK_SCHEDULING_QUEUE
	cmp	r3, #0	@ _5,
	beq	.L48	@,
.L47:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:262:          if((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]!=0))
	.loc 1 262 0 is_stmt 1
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ tmp132, src
	cmp	r3, #9	@ tmp132,
	bhi	.L45	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:262:          if((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]!=0))
	.loc 1 262 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ _6, src
	ldr	r2, .L50	@ tmp133,
	ldr	r3, [r2, r3, lsl #2]	@ _7, TASK_SCHEDULING_QUEUE
	cmp	r3, #0	@ _7,
	beq	.L45	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:264:             TASK_SCHEDULING_QUEUE[dest] = TASK_SCHEDULING_QUEUE[src];
	.loc 1 264 0 is_stmt 1
	ldrb	r2, [r7, #6]	@ zero_extendqisi2	@ _8, src
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ _9, dest
	ldr	r1, .L50	@ tmp134,
	ldr	r2, [r1, r2, lsl #2]	@ _10, TASK_SCHEDULING_QUEUE
	ldr	r1, .L50	@ tmp135,
	str	r2, [r1, r3, lsl #2]	@ _10, TASK_SCHEDULING_QUEUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:265:             TASK_SCHEDULING_QUEUE[src]  = 0;
	.loc 1 265 0
	ldrb	r3, [r7, #6]	@ zero_extendqisi2	@ _11, src
	ldr	r2, .L50	@ tmp136,
	movs	r1, #0	@ tmp137,
	str	r1, [r2, r3, lsl #2]	@ tmp137, TASK_SCHEDULING_QUEUE
.L45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:268:       dest++;
	.loc 1 268 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ dest.5_12, dest
	adds	r3, r3, #1	@ tmp138, dest.5_12,
	strb	r3, [r7, #7]	@ tmp139, dest
.L44:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:251:    while (dest < MAX_RUN_PQUEUE_SIZE)
	.loc 1 251 0
	ldrb	r3, [r7, #7]	@ zero_extendqisi2	@ tmp140, dest
	cmp	r3, #9	@ tmp140,
	bls	.L49	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:270: }
	.loc 1 270 0
	nop
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L51:
	.align	2
.L50:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE8:
	.size	UpdateSchedulingQueue, .-UpdateSchedulingQueue
	.align	1
	.global	GetIdleTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetIdleTask, %function
GetIdleTask:
.LFB9:
	.loc 1 274 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:275:    return (&TASK_IDLE_QUEUE[0]);
	.loc 1 275 0
	ldr	r3, .L54	@ _1,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:276: }
	.loc 1 276 0
	mov	r0, r3	@, <retval>
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L55:
	.align	2
.L54:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE9:
	.size	GetIdleTask, .-GetIdleTask
	.align	1
	.global	AddToIdleTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AddToIdleTaskQueue, %function
AddToIdleTaskQueue:
.LFB10:
	.loc 1 278 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 16
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:280:    if((&TASK_IDLE_QUEUE[0])->IdleTask == False)
	.loc 1 280 0
	ldr	r3, .L59	@ tmp147,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _1, TASK_IDLE_QUEUE
	and	r3, r3, #4	@ tmp148, _1,
	uxtb	r3, r3	@ _2, tmp148
	cmp	r3, #0	@ _2,
	bne	.L58	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:282:       (&TASK_IDLE_QUEUE[0])->active                                =   task->active           ;
	.loc 1 282 0
	ldr	r3, [r7, #4]	@ tmp149, task
	ldrb	r3, [r3]	@ tmp151, *task_40(D)
	ubfx	r3, r3, #0, #1	@ tmp152, tmp151,,
	uxtb	r1, r3	@ _3, tmp152
	ldr	r2, .L59	@ tmp153,
	ldrb	r3, [r2]	@ tmp154, TASK_IDLE_QUEUE[0].active
	bfi	r3, r1, #0, #1	@ tmp154, _3,,
	strb	r3, [r2]	@ tmp154, TASK_IDLE_QUEUE[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:283:       (&TASK_IDLE_QUEUE[0])->task_queued                           =   task->task_queued      ;
	.loc 1 283 0
	ldr	r3, [r7, #4]	@ tmp155, task
	ldrb	r3, [r3]	@ tmp157, *task_40(D)
	ubfx	r3, r3, #1, #1	@ tmp158, tmp157,,
	uxtb	r1, r3	@ _4, tmp158
	ldr	r2, .L59	@ tmp159,
	ldrb	r3, [r2]	@ tmp160, TASK_IDLE_QUEUE[0].task_queued
	bfi	r3, r1, #1, #1	@ tmp160, _4,,
	strb	r3, [r2]	@ tmp160, TASK_IDLE_QUEUE[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:284:       (&TASK_IDLE_QUEUE[0])->IdleTask                              =   task->IdleTask         ;
	.loc 1 284 0
	ldr	r3, [r7, #4]	@ tmp161, task
	ldrb	r3, [r3]	@ tmp163, *task_40(D)
	ubfx	r3, r3, #2, #1	@ tmp164, tmp163,,
	uxtb	r1, r3	@ _5, tmp164
	ldr	r2, .L59	@ tmp165,
	ldrb	r3, [r2]	@ tmp166, TASK_IDLE_QUEUE[0].IdleTask
	bfi	r3, r1, #2, #1	@ tmp166, _5,,
	strb	r3, [r2]	@ tmp166, TASK_IDLE_QUEUE[0].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:285:       (&TASK_IDLE_QUEUE[0])->FREE                                  =   task->FREE             ;
	.loc 1 285 0
	ldr	r3, [r7, #4]	@ tmp167, task
	ldr	r3, [r3]	@ tmp168, *task_40(D)
	ubfx	r1, r3, #3, #29	@ _6, tmp168,,
	ldr	r2, .L59	@ tmp169,
	ldr	r3, [r2]	@ tmp170, TASK_IDLE_QUEUE[0].FREE
	bfi	r3, r1, #3, #29	@ tmp170, _6,,
	str	r3, [r2]	@ tmp170, TASK_IDLE_QUEUE[0].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:286:       (&TASK_IDLE_QUEUE[0])->NrOfInsAllowed                        =   task->NrOfInsAllowed   ;
	.loc 1 286 0
	ldr	r3, [r7, #4]	@ tmp171, task
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _7, task_40(D)->NrOfInsAllowed
	ldr	r3, .L59	@ tmp172,
	strb	r2, [r3, #4]	@ tmp173, TASK_IDLE_QUEUE[0].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0])->NrOfInsActivated                      =   task->NrOfInsActivated ;
	.loc 1 287 0
	ldr	r3, [r7, #4]	@ tmp174, task
	ldrb	r2, [r3, #5]	@ zero_extendqisi2	@ _8, task_40(D)->NrOfInsActivated
	ldr	r3, .L59	@ tmp175,
	strb	r2, [r3, #5]	@ tmp176, TASK_IDLE_QUEUE[0].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0])->WaitActUntil                          =   task->WaitActUntil     ;
	.loc 1 288 0
	ldr	r3, [r7, #4]	@ tmp177, task
	ldr	r3, [r3, #8]	@ _9, task_40(D)->WaitActUntil
	ldr	r2, .L59	@ tmp178,
	str	r3, [r2, #8]	@ _9, TASK_IDLE_QUEUE[0].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0])->wait_time                             =   task->wait_time        ;
	.loc 1 289 0
	ldr	r3, [r7, #4]	@ tmp179, task
	ldr	r3, [r3, #12]	@ _10, task_40(D)->wait_time
	ldr	r2, .L59	@ tmp180,
	str	r3, [r2, #12]	@ _10, TASK_IDLE_QUEUE[0].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0])->TimeToPrioInc                         =   task->TimeToPrioInc    ;
	.loc 1 290 0
	ldr	r3, [r7, #4]	@ tmp181, task
	ldr	r3, [r3, #16]	@ _11, task_40(D)->TimeToPrioInc
	ldr	r2, .L59	@ tmp182,
	str	r3, [r2, #16]	@ _11, TASK_IDLE_QUEUE[0].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0])->overwaittime_per_prio_inc_step        =   task->overwaittime_per_prio_inc_step;
	.loc 1 291 0
	ldr	r3, [r7, #4]	@ tmp183, task
	ldr	r3, [r3, #20]	@ _12, task_40(D)->overwaittime_per_prio_inc_step
	ldr	r2, .L59	@ tmp184,
	str	r3, [r2, #20]	@ _12, TASK_IDLE_QUEUE[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0])->max_allowed_wait_time                 =   task->max_allowed_wait_time;
	.loc 1 292 0
	ldr	r3, [r7, #4]	@ tmp185, task
	ldr	r3, [r3, #24]	@ _13, task_40(D)->max_allowed_wait_time
	ldr	r2, .L59	@ tmp186,
	str	r3, [r2, #24]	@ _13, TASK_IDLE_QUEUE[0].max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:293:       (&TASK_IDLE_QUEUE[0])->exe_time                              =   task->exe_time;
	.loc 1 293 0
	ldr	r3, [r7, #4]	@ tmp187, task
	ldr	r3, [r3, #28]	@ _14, task_40(D)->exe_time
	ldr	r2, .L59	@ tmp188,
	str	r3, [r2, #28]	@ _14, TASK_IDLE_QUEUE[0].exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:294:       (&TASK_IDLE_QUEUE[0])->current_prio                          =   task->current_prio     ;
	.loc 1 294 0
	ldr	r3, [r7, #4]	@ tmp189, task
	ldrb	r2, [r3, #36]	@ zero_extendqisi2	@ _15, task_40(D)->current_prio
	ldr	r3, .L59	@ tmp190,
	strb	r2, [r3, #36]	@ tmp191, TASK_IDLE_QUEUE[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:295:       (&TASK_IDLE_QUEUE[0])->default_prio                          =   task->default_prio     ;
	.loc 1 295 0
	ldr	r3, [r7, #4]	@ tmp192, task
	ldrb	r2, [r3, #37]	@ zero_extendqisi2	@ _16, task_40(D)->default_prio
	ldr	r3, .L59	@ tmp193,
	strb	r2, [r3, #37]	@ tmp194, TASK_IDLE_QUEUE[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0])->fp                                    =   task->fp               ;
	.loc 1 296 0
	ldr	r3, [r7, #4]	@ tmp195, task
	ldr	r3, [r3, #44]	@ _17, task_40(D)->fp
	ldr	r2, .L59	@ tmp196,
	str	r3, [r2, #44]	@ _17, TASK_IDLE_QUEUE[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:297:       (&TASK_IDLE_QUEUE[0])->state_request                         =   task->state_request    ;
	.loc 1 297 0
	ldr	r3, [r7, #4]	@ tmp197, task
	ldr	r3, [r3, #48]	@ _18, task_40(D)->state_request
	ldr	r2, .L59	@ tmp198,
	str	r3, [r2, #48]	@ _18, TASK_IDLE_QUEUE[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:298:       (&TASK_IDLE_QUEUE[0])->task_state                            =   Task_ready             ;
	.loc 1 298 0
	ldr	r3, .L59	@ tmp199,
	movs	r2, #2	@ tmp200,
	strb	r2, [r3, #52]	@ tmp201, TASK_IDLE_QUEUE[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0])->task_group                            =   task->task_group       ;
	.loc 1 299 0
	ldr	r3, [r7, #4]	@ tmp202, task
	ldr	r3, [r3, #56]	@ _19, task_40(D)->task_group
	ldr	r2, .L59	@ tmp203,
	str	r3, [r2, #56]	@ _19, TASK_IDLE_QUEUE[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:306:       (&TASK_IDLE_QUEUE[0])->r0                                   =   task->r0              ;
	.loc 1 306 0
	ldr	r3, [r7, #4]	@ tmp204, task
	ldr	r3, [r3, #60]	@ _20, task_40(D)->r0
	ldr	r2, .L59	@ tmp205,
	str	r3, [r2, #60]	@ _20, TASK_IDLE_QUEUE[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:307:       (&TASK_IDLE_QUEUE[0])->r1                                   =   task->r1              ;
	.loc 1 307 0
	ldr	r3, [r7, #4]	@ tmp206, task
	ldr	r3, [r3, #64]	@ _21, task_40(D)->r1
	ldr	r2, .L59	@ tmp207,
	str	r3, [r2, #64]	@ _21, TASK_IDLE_QUEUE[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:308:       (&TASK_IDLE_QUEUE[0])->r2                                   =   task->r2              ;
	.loc 1 308 0
	ldr	r3, [r7, #4]	@ tmp208, task
	ldr	r3, [r3, #68]	@ _22, task_40(D)->r2
	ldr	r2, .L59	@ tmp209,
	str	r3, [r2, #68]	@ _22, TASK_IDLE_QUEUE[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:309:       (&TASK_IDLE_QUEUE[0])->r3                                   =   task->r3              ;
	.loc 1 309 0
	ldr	r3, [r7, #4]	@ tmp210, task
	ldr	r3, [r3, #72]	@ _23, task_40(D)->r3
	ldr	r2, .L59	@ tmp211,
	str	r3, [r2, #72]	@ _23, TASK_IDLE_QUEUE[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:310:       (&TASK_IDLE_QUEUE[0])->r4                                   =   task->r4              ;
	.loc 1 310 0
	ldr	r3, [r7, #4]	@ tmp212, task
	ldr	r3, [r3, #76]	@ _24, task_40(D)->r4
	ldr	r2, .L59	@ tmp213,
	str	r3, [r2, #76]	@ _24, TASK_IDLE_QUEUE[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0])->r5                                   =   task->r5              ;
	.loc 1 311 0
	ldr	r3, [r7, #4]	@ tmp214, task
	ldr	r3, [r3, #80]	@ _25, task_40(D)->r5
	ldr	r2, .L59	@ tmp215,
	str	r3, [r2, #80]	@ _25, TASK_IDLE_QUEUE[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:312:       (&TASK_IDLE_QUEUE[0])->r6                                   =   task->r6              ;
	.loc 1 312 0
	ldr	r3, [r7, #4]	@ tmp216, task
	ldr	r3, [r3, #84]	@ _26, task_40(D)->r6
	ldr	r2, .L59	@ tmp217,
	str	r3, [r2, #84]	@ _26, TASK_IDLE_QUEUE[0].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:313:       (&TASK_IDLE_QUEUE[0])->r7                                   =   task->r7              ;
	.loc 1 313 0
	ldr	r3, [r7, #4]	@ tmp218, task
	ldr	r3, [r3, #88]	@ _27, task_40(D)->r7
	ldr	r2, .L59	@ tmp219,
	str	r3, [r2, #88]	@ _27, TASK_IDLE_QUEUE[0].r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:314:       (&TASK_IDLE_QUEUE[0])->r8                                   =   task->r8              ;
	.loc 1 314 0
	ldr	r3, [r7, #4]	@ tmp220, task
	ldr	r3, [r3, #92]	@ _28, task_40(D)->r8
	ldr	r2, .L59	@ tmp221,
	str	r3, [r2, #92]	@ _28, TASK_IDLE_QUEUE[0].r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:315:       (&TASK_IDLE_QUEUE[0])->r9                                   =   task->r9              ;
	.loc 1 315 0
	ldr	r3, [r7, #4]	@ tmp222, task
	ldr	r3, [r3, #96]	@ _29, task_40(D)->r9
	ldr	r2, .L59	@ tmp223,
	str	r3, [r2, #96]	@ _29, TASK_IDLE_QUEUE[0].r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:316:       (&TASK_IDLE_QUEUE[0])->r10                                  =   task->r10             ;
	.loc 1 316 0
	ldr	r3, [r7, #4]	@ tmp224, task
	ldr	r3, [r3, #100]	@ _30, task_40(D)->r10
	ldr	r2, .L59	@ tmp225,
	str	r3, [r2, #100]	@ _30, TASK_IDLE_QUEUE[0].r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:317:       (&TASK_IDLE_QUEUE[0])->r11                                  =   task->r11             ;
	.loc 1 317 0
	ldr	r3, [r7, #4]	@ tmp226, task
	ldr	r3, [r3, #104]	@ _31, task_40(D)->r11
	ldr	r2, .L59	@ tmp227,
	str	r3, [r2, #104]	@ _31, TASK_IDLE_QUEUE[0].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:318:       (&TASK_IDLE_QUEUE[0])->r12                                  =   task->r12             ;
	.loc 1 318 0
	ldr	r3, [r7, #4]	@ tmp228, task
	ldr	r3, [r3, #108]	@ _32, task_40(D)->r12
	ldr	r2, .L59	@ tmp229,
	str	r3, [r2, #108]	@ _32, TASK_IDLE_QUEUE[0].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:322:       (&TASK_IDLE_QUEUE[0])->pStackPointer                         =   task->pStackPointer    ;
	.loc 1 322 0
	ldr	r3, [r7, #4]	@ tmp230, task
	ldr	r3, [r3, #112]	@ _33, task_40(D)->pStackPointer
	ldr	r2, .L59	@ tmp231,
	str	r3, [r2, #112]	@ _33, TASK_IDLE_QUEUE[0].pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:323:       (&TASK_IDLE_QUEUE[0])->pStackPointerByMalloc                 =   task->pStackPointerByMalloc;
	.loc 1 323 0
	ldr	r3, [r7, #4]	@ tmp232, task
	ldr	r3, [r3, #116]	@ _34, task_40(D)->pStackPointerByMalloc
	ldr	r2, .L59	@ tmp233,
	str	r3, [r2, #116]	@ _34, TASK_IDLE_QUEUE[0].pStackPointerByMalloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:324:       (&TASK_IDLE_QUEUE[0])->pStackPointerStart                    =   task->pStackPointerStart;
	.loc 1 324 0
	ldr	r3, [r7, #4]	@ tmp234, task
	ldr	r3, [r3, #120]	@ _35, task_40(D)->pStackPointerStart
	ldr	r2, .L59	@ tmp235,
	str	r3, [r2, #120]	@ _35, TASK_IDLE_QUEUE[0].pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:325:       (&TASK_IDLE_QUEUE[0])->StackSize                             =   task->StackSize        ;
	.loc 1 325 0
	ldr	r3, [r7, #4]	@ tmp236, task
	ldr	r3, [r3, #124]	@ _36, task_40(D)->StackSize
	ldr	r2, .L59	@ tmp237,
	str	r3, [r2, #124]	@ _36, TASK_IDLE_QUEUE[0].StackSize
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:326:       (&TASK_IDLE_QUEUE[0])->pStackPointerEnd                      =   task->pStackPointerEnd ;
	.loc 1 326 0
	ldr	r3, [r7, #4]	@ tmp238, task
	ldr	r3, [r3, #128]	@ _37, task_40(D)->pStackPointerEnd
	ldr	r2, .L59	@ tmp239,
	str	r3, [r2, #128]	@ _37, TASK_IDLE_QUEUE[0].pStackPointerEnd
.L58:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:328: }
	.loc 1 328 0
	nop
	adds	r7, r7, #12	@,,
	.cfi_def_cfa_offset 4
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L60:
	.align	2
.L59:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE10:
	.size	AddToIdleTaskQueue, .-AddToIdleTaskQueue
	.align	1
	.global	GetRunningTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetRunningTask, %function
GetRunningTask:
.LFB11:
	.loc 1 330 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:331:    return (&RUNNING_TASK[0]);
	.loc 1 331 0
	ldr	r3, .L63	@ _1,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:332: }
	.loc 1 332 0
	mov	r0, r3	@, <retval>
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L64:
	.align	2
.L63:
	.word	RUNNING_TASK
	.cfi_endproc
.LFE11:
	.size	GetRunningTask, .-GetRunningTask
	.align	1
	.global	GetRunningSchedulingQueueElementPtr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetRunningSchedulingQueueElementPtr, %function
GetRunningSchedulingQueueElementPtr:
.LFB12:
	.loc 1 334 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:335:     return RUNNING_SCHEDULING_QUEUE_ENTRY;
	.loc 1 335 0
	ldr	r3, .L67	@ tmp112,
	ldr	r3, [r3]	@ _2, RUNNING_SCHEDULING_QUEUE_ENTRY
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:336: }
	.loc 1 336 0
	mov	r0, r3	@, <retval>
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L68:
	.align	2
.L67:
	.word	RUNNING_SCHEDULING_QUEUE_ENTRY
	.cfi_endproc
.LFE12:
	.size	GetRunningSchedulingQueueElementPtr, .-GetRunningSchedulingQueueElementPtr
	.align	1
	.global	OS_InitTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_InitTask, %function
OS_InitTask:
.LFB13:
	.loc 1 349 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16	@,,
	.cfi_def_cfa_offset 24
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #12]	@ task, task
	str	r1, [r7, #8]	@ TaskFunction, TaskFunction
	mov	r1, r2	@ tmp114, AllowedInstances
	mov	r2, r3	@ tmp116, IdleTask
	mov	r3, r1	@ tmp115, tmp114
	strb	r3, [r7, #7]	@ tmp115, AllowedInstances
	mov	r3, r2	@ tmp117, tmp116
	strb	r3, [r7, #6]	@ tmp117, IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:351:    if(task!=0)
	.loc 1 351 0
	ldr	r3, [r7, #12]	@ tmp118, task
	cmp	r3, #0	@ tmp118,
	beq	.L70	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:353:       task->active           = False;
	.loc 1 353 0
	ldr	r2, [r7, #12]	@ tmp119, task
	ldrb	r3, [r2]	@ tmp120, task_9(D)->active
	bfc	r3, #0, #1	@ tmp120,,
	strb	r3, [r2]	@ tmp120, task_9(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:354:       task->fp               = TaskFunction;
	.loc 1 354 0
	ldr	r3, [r7, #12]	@ tmp121, task
	ldr	r2, [r7, #8]	@ tmp122, TaskFunction
	str	r2, [r3, #44]	@ tmp122, task_9(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:355:       task->NrOfInsAllowed   = AllowedInstances;
	.loc 1 355 0
	ldr	r3, [r7, #12]	@ tmp123, task
	ldrb	r2, [r7, #7]	@ tmp124, AllowedInstances
	strb	r2, [r3, #4]	@ tmp124, task_9(D)->NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:356:       task->task_group       = p_task_group;
	.loc 1 356 0
	ldr	r3, [r7, #12]	@ tmp125, task
	ldr	r2, [r7, #24]	@ tmp126, p_task_group
	str	r2, [r3, #56]	@ tmp126, task_9(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:357:       task->NrOfInsActivated = 0;
	.loc 1 357 0
	ldr	r3, [r7, #12]	@ tmp127, task
	movs	r2, #0	@ tmp128,
	strb	r2, [r3, #5]	@ tmp129, task_9(D)->NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:358:       task->WaitActUntil     = 0;
	.loc 1 358 0
	ldr	r3, [r7, #12]	@ tmp130, task
	movs	r2, #0	@ tmp131,
	str	r2, [r3, #8]	@ tmp131, task_9(D)->WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:359:       task->privilige_mode   = privilige_mode;
	.loc 1 359 0
	ldr	r3, [r7, #12]	@ tmp132, task
	ldrb	r2, [r7, #36]	@ tmp133, privilige_mode
	strb	r2, [r3, #132]	@ tmp133, task_9(D)->privilige_mode
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:360:       task->default_prio     = default_prio;
	.loc 1 360 0
	ldr	r3, [r7, #12]	@ tmp134, task
	ldrb	r2, [r7, #44]	@ tmp135, default_prio
	strb	r2, [r3, #37]	@ tmp135, task_9(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:362:       task->overwaittime_per_prio_inc_step = 1;
	.loc 1 362 0
	ldr	r3, [r7, #12]	@ tmp136, task
	movs	r2, #1	@ tmp137,
	str	r2, [r3, #20]	@ tmp137, task_9(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:363:       task->max_allowed_wait_time          = 100000;
	.loc 1 363 0
	ldr	r3, [r7, #12]	@ tmp138, task
	ldr	r2, .L74	@ tmp139,
	str	r2, [r3, #24]	@ tmp139, task_9(D)->max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:365:       task->IdleTask      = IdleTask;
	.loc 1 365 0
	ldrb	r3, [r7, #6]	@ tmp140, IdleTask
	and	r3, r3, #1	@ tmp141, tmp140,
	uxtb	r1, r3	@ _1, tmp141
	ldr	r2, [r7, #12]	@ tmp142, task
	ldrb	r3, [r2]	@ tmp143, task_9(D)->IdleTask
	bfi	r3, r1, #2, #1	@ tmp143, _1,,
	strb	r3, [r2]	@ tmp143, task_9(D)->IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:366:       task->state_request = &task_state_request;
	.loc 1 366 0
	ldr	r3, [r7, #12]	@ tmp144, task
	ldr	r2, .L74+4	@ tmp145,
	str	r2, [r3, #48]	@ tmp145, task_9(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:367:       task_state_request(task, Task_unspecified);
	.loc 1 367 0
	movs	r1, #0	@,
	ldr	r0, [r7, #12]	@, task
	bl	task_state_request	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       OS_CreateTask(task);
	.loc 1 368 0
	ldr	r0, [r7, #12]	@, task
	bl	OS_CreateTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:369:       if(uStackSize > TASK_STACK_SIZE)
	.loc 1 369 0
	ldr	r3, [r7, #32]	@ tmp146, uStackSize
	cmp	r3, #2000	@ tmp146,
	bls	.L71	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:371:          uStackSize = TASK_STACK_SIZE;
	.loc 1 371 0
	mov	r3, #2000	@ tmp147,
	str	r3, [r7, #32]	@ tmp147, uStackSize
.L71:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:375:       task->pStackPointerByMalloc = pStackAddr;
	.loc 1 375 0
	ldr	r3, [r7, #12]	@ tmp148, task
	ldr	r2, [r7, #28]	@ tmp149, pStackAddr
	str	r2, [r3, #116]	@ tmp149, task_9(D)->pStackPointerByMalloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:376:       task->pStackPointerStart    = pStackAddr;/*low addresse */
	.loc 1 376 0
	ldr	r3, [r7, #12]	@ tmp150, task
	ldr	r2, [r7, #28]	@ tmp151, pStackAddr
	str	r2, [r3, #120]	@ tmp151, task_9(D)->pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:377:       task->pStackPointerEnd      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
	.loc 1 377 0
	ldr	r3, [r7, #32]	@ tmp152, uStackSize
	subs	r3, r3, #1	@ _2, tmp152,
	ldr	r2, [r7, #28]	@ tmp153, pStackAddr
	add	r2, r2, r3	@ _3, _2
	ldr	r3, [r7, #12]	@ tmp154, task
	str	r2, [r3, #128]	@ _3, task_9(D)->pStackPointerEnd
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:378:       task->StackSize             = uStackSize;
	.loc 1 378 0
	ldr	r3, [r7, #12]	@ tmp155, task
	ldr	r2, [r7, #32]	@ tmp156, uStackSize
	str	r2, [r3, #124]	@ tmp156, task_9(D)->StackSize
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:380:       task->pStackPointer                    = task->pStackPointerEnd;/* stack wächst von großen zu kleinen adressen.... */
	.loc 1 380 0
	ldr	r3, [r7, #12]	@ tmp157, task
	ldr	r2, [r3, #128]	@ _4, task_9(D)->pStackPointerEnd
	ldr	r3, [r7, #12]	@ tmp158, task
	str	r2, [r3, #112]	@ _4, task_9(D)->pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:386: }
	.loc 1 386 0
	b	.L73	@
.L70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:384:       OS_SetSwBug(os_bug_null_pointer, Func_InitTask);
	.loc 1 384 0
	movs	r1, #10	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L73:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:386: }
	.loc 1 386 0
	nop
	adds	r7, r7, #16	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L75:
	.align	2
.L74:
	.word	100000
	.word	task_state_request
	.cfi_endproc
.LFE13:
	.size	OS_InitTask, .-OS_InitTask
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9a5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF671
	.byte	0x1
	.4byte	.LASF672
	.4byte	.LASF673
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF517
	.byte	0x2
	.byte	0x1d
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF515
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF516
	.uleb128 0x2
	.4byte	.LASF518
	.byte	0x2
	.byte	0x22
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF519
	.uleb128 0x2
	.4byte	.LASF520
	.byte	0x2
	.byte	0x23
	.4byte	0x4d
	.uleb128 0x4
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF530
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2b
	.4byte	0xa6
	.uleb128 0x6
	.4byte	.LASF521
	.byte	0
	.uleb128 0x6
	.4byte	.LASF522
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF523
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF524
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF525
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF527
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF528
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF529
	.byte	0x3
	.byte	0x36
	.4byte	0x64
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x5
	.4byte	.LASF531
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x37
	.4byte	0x128
	.uleb128 0x6
	.4byte	.LASF532
	.byte	0
	.uleb128 0x6
	.4byte	.LASF533
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF534
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF535
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF536
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF538
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF540
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF541
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF542
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF543
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF546
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF547
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF548
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x4
	.4byte	0x152
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF551
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF552
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF553
	.byte	0x4
	.byte	0xb
	.4byte	0x128
	.uleb128 0x5
	.4byte	.LASF554
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x10
	.4byte	0x181
	.uleb128 0x6
	.4byte	.LASF555
	.byte	0
	.uleb128 0x6
	.4byte	.LASF556
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF558
	.byte	0x4
	.byte	0x16
	.4byte	0x15d
	.uleb128 0x5
	.4byte	.LASF559
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x1b6
	.uleb128 0x6
	.4byte	.LASF560
	.byte	0
	.uleb128 0x6
	.4byte	.LASF561
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF562
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF563
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF564
	.byte	0x5
	.byte	0xe
	.4byte	0x18c
	.uleb128 0x2
	.4byte	.LASF565
	.byte	0x5
	.byte	0x13
	.4byte	0x1cc
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	0x1dd
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF566
	.byte	0x5
	.byte	0x15
	.4byte	0x1ea
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1f0
	.uleb128 0xb
	.4byte	0x29
	.4byte	0x204
	.uleb128 0x9
	.4byte	0x1dd
	.uleb128 0x9
	.4byte	0x1b6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF570
	.byte	0x8
	.byte	0x5
	.byte	0x17
	.4byte	0x229
	.uleb128 0xd
	.4byte	.LASF567
	.byte	0x5
	.byte	0x19
	.4byte	0x42
	.byte	0
	.uleb128 0xd
	.4byte	.LASF568
	.byte	0x5
	.byte	0x1a
	.4byte	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF569
	.byte	0x5
	.byte	0x1c
	.4byte	0x204
	.uleb128 0xc
	.4byte	.LASF571
	.byte	0x88
	.byte	0x5
	.byte	0x1e
	.4byte	0x416
	.uleb128 0xe
	.4byte	.LASF572
	.byte	0x5
	.byte	0x20
	.4byte	0x416
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF573
	.byte	0x5
	.byte	0x21
	.4byte	0x416
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF574
	.byte	0x5
	.byte	0x22
	.4byte	0x416
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF575
	.byte	0x5
	.byte	0x23
	.4byte	0x416
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF576
	.byte	0x5
	.byte	0x24
	.4byte	0x29
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF577
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF578
	.byte	0x5
	.byte	0x26
	.4byte	0x42
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF579
	.byte	0x5
	.byte	0x27
	.4byte	0x42
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF580
	.byte	0x5
	.byte	0x28
	.4byte	0x42
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF581
	.byte	0x5
	.byte	0x29
	.4byte	0x42
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF582
	.byte	0x5
	.byte	0x2a
	.4byte	0x42
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF567
	.byte	0x5
	.byte	0x2b
	.4byte	0x42
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF583
	.byte	0x5
	.byte	0x2c
	.4byte	0x42
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF584
	.byte	0x5
	.byte	0x2d
	.4byte	0x29
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF585
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF586
	.byte	0x5
	.byte	0x2f
	.4byte	0x42
	.byte	0x28
	.uleb128 0xf
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x1c1
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF587
	.byte	0x5
	.byte	0x31
	.4byte	0x1df
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF588
	.byte	0x5
	.byte	0x32
	.4byte	0x1b6
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF589
	.byte	0x5
	.byte	0x33
	.4byte	0x41d
	.byte	0x38
	.uleb128 0xf
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x42
	.byte	0x3c
	.uleb128 0xf
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x42
	.byte	0x40
	.uleb128 0xf
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x42
	.byte	0x44
	.uleb128 0xf
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x42
	.byte	0x48
	.uleb128 0xf
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x42
	.byte	0x4c
	.uleb128 0xf
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x42
	.byte	0x50
	.uleb128 0xf
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x42
	.byte	0x54
	.uleb128 0xf
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x42
	.byte	0x58
	.uleb128 0xf
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x42
	.byte	0x5c
	.uleb128 0xf
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x42
	.byte	0x60
	.uleb128 0xf
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x42
	.byte	0x64
	.uleb128 0xf
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x42
	.byte	0x68
	.uleb128 0xf
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x42
	.byte	0x6c
	.uleb128 0xd
	.4byte	.LASF590
	.byte	0x5
	.byte	0x48
	.4byte	0x423
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF591
	.byte	0x5
	.byte	0x49
	.4byte	0x423
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF592
	.byte	0x5
	.byte	0x4a
	.4byte	0x423
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF593
	.byte	0x5
	.byte	0x4b
	.4byte	0x42
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF594
	.byte	0x5
	.byte	0x4c
	.4byte	0x423
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF595
	.byte	0x5
	.byte	0x4d
	.4byte	0x181
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF596
	.uleb128 0x7
	.byte	0x4
	.4byte	0x229
	.uleb128 0x7
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF597
	.byte	0x5
	.byte	0x4f
	.4byte	0x234
	.uleb128 0x2
	.4byte	.LASF598
	.byte	0x5
	.byte	0x50
	.4byte	0x43f
	.uleb128 0x7
	.byte	0x4
	.4byte	0x429
	.uleb128 0x10
	.4byte	0x43f
	.4byte	0x455
	.uleb128 0x11
	.4byte	0x416
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF600
	.byte	0x5
	.byte	0x5b
	.4byte	0x445
	.uleb128 0x2
	.4byte	.LASF599
	.byte	0x5
	.byte	0x5d
	.4byte	0x416
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x47c
	.uleb128 0x13
	.4byte	0x416
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF601
	.byte	0x6
	.byte	0xb
	.4byte	0x46b
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x49e
	.uleb128 0x11
	.4byte	0x416
	.byte	0
	.uleb128 0x13
	.4byte	0x416
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF602
	.byte	0x6
	.byte	0xe
	.4byte	0x487
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4ba
	.uleb128 0x13
	.4byte	0x416
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x6
	.byte	0xf
	.4byte	0x4a9
	.uleb128 0x10
	.4byte	0xb1
	.4byte	0x4d5
	.uleb128 0x11
	.4byte	0x416
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x4c5
	.uleb128 0x12
	.4byte	.LASF604
	.byte	0x6
	.byte	0x10
	.4byte	0x4d5
	.uleb128 0x12
	.4byte	.LASF605
	.byte	0x6
	.byte	0x11
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x6
	.byte	0x12
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF607
	.byte	0x6
	.byte	0x13
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF608
	.byte	0x6
	.byte	0x14
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF609
	.byte	0x6
	.byte	0x15
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF610
	.byte	0x6
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF611
	.byte	0x6
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x6
	.byte	0x18
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x6
	.byte	0x19
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF614
	.byte	0x6
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF615
	.byte	0x6
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF616
	.byte	0x6
	.byte	0x1c
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF617
	.byte	0x6
	.byte	0x1d
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF618
	.byte	0x6
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x6
	.byte	0x1f
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x6
	.byte	0x20
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x6
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x6
	.byte	0x22
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x6
	.byte	0x23
	.4byte	0x5f
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x5cd
	.uleb128 0x11
	.4byte	0x416
	.byte	0x9
	.uleb128 0x13
	.4byte	0x416
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x6
	.byte	0x25
	.4byte	0x5b6
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x6
	.byte	0x26
	.4byte	0x460
	.uleb128 0x10
	.4byte	0x434
	.4byte	0x5f3
	.uleb128 0x11
	.4byte	0x416
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x6
	.byte	0x27
	.4byte	0x5e3
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x6
	.byte	0x28
	.4byte	0x609
	.uleb128 0x7
	.byte	0x4
	.4byte	0x434
	.uleb128 0x10
	.4byte	0x429
	.4byte	0x61f
	.uleb128 0x11
	.4byte	0x416
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x6
	.byte	0x29
	.4byte	0x60f
	.uleb128 0x10
	.4byte	0x429
	.4byte	0x63a
	.uleb128 0x11
	.4byte	0x416
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x6
	.byte	0x2a
	.4byte	0x62a
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x6
	.byte	0x2b
	.4byte	0x62a
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x6
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x6
	.byte	0x2d
	.4byte	0x429
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x6
	.byte	0x2d
	.4byte	0x429
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x6
	.byte	0x2d
	.4byte	0x429
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x6
	.byte	0x2d
	.4byte	0x429
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x6
	.byte	0x2e
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x6
	.byte	0x2e
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x6
	.byte	0x2e
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x6
	.byte	0x2e
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x6
	.byte	0x2e
	.4byte	0x229
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x6
	.byte	0x2f
	.4byte	0x43f
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x6
	.byte	0x30
	.4byte	0x1b6
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x6
	.byte	0x31
	.4byte	0x1b6
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x6
	.byte	0x32
	.4byte	0x6ea
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6f0
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x151
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79e
	.uleb128 0x16
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x152
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.4byte	.LASF646
	.byte	0x1
	.2byte	0x153
	.4byte	0x1c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.4byte	.LASF647
	.byte	0x1
	.2byte	0x154
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x16
	.4byte	.LASF574
	.byte	0x1
	.2byte	0x155
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x16
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x156
	.4byte	0x41d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x157
	.4byte	0x423
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.4byte	.LASF650
	.byte	0x1
	.2byte	0x158
	.4byte	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.4byte	.LASF595
	.byte	0x1
	.2byte	0x159
	.4byte	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x15a
	.4byte	0x152
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x15b
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x14d
	.4byte	0x7b4
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x43f
	.uleb128 0x17
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x149
	.4byte	0x43f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x115
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f6
	.uleb128 0x16
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x115
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x111
	.4byte	0x43f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.4byte	.LASF657
	.byte	0x1
	.byte	0xf6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x83e
	.uleb128 0x1a
	.4byte	.LASF658
	.byte	0x1
	.byte	0xf9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1b
	.ascii	"src\000"
	.byte	0x1
	.byte	0xf9
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x19
	.4byte	.LASF659
	.byte	0x1
	.byte	0xde
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87e
	.uleb128 0x1c
	.4byte	.LASF645
	.byte	0x1
	.byte	0xde
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF660
	.byte	0x1
	.byte	0xe7
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1a
	.4byte	.LASF661
	.byte	0x1
	.byte	0xe8
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x19
	.4byte	.LASF662
	.byte	0x1
	.byte	0xda
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a2
	.uleb128 0x1c
	.4byte	.LASF663
	.byte	0x1
	.byte	0xda
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF665
	.byte	0x1
	.byte	0xd5
	.4byte	0x609
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ca
	.uleb128 0x1c
	.4byte	.LASF664
	.byte	0x1
	.byte	0xd5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF666
	.byte	0x1
	.byte	0xd1
	.4byte	0x43f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f2
	.uleb128 0x1c
	.4byte	.LASF663
	.byte	0x1
	.byte	0xd1
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.4byte	.LASF667
	.byte	0x1
	.byte	0xa0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x916
	.uleb128 0x1c
	.4byte	.LASF645
	.byte	0x1
	.byte	0xa0
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF668
	.byte	0x1
	.byte	0x65
	.4byte	0x43f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.uleb128 0x1c
	.4byte	.LASF645
	.byte	0x1
	.byte	0x65
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.4byte	.LASF664
	.byte	0x1
	.byte	0x67
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF669
	.byte	0x1
	.byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97a
	.uleb128 0x1f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x1a
	.4byte	.LASF664
	.byte	0x1
	.byte	0x5b
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF674
	.byte	0x1
	.byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF645
	.byte	0x1
	.byte	0x21
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF670
	.byte	0x1
	.byte	0x21
	.4byte	0x609
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 7 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF438
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF473
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF474
	.file 9 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF475
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF487
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF490
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF491
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 16 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x4
	.file 17 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 18 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.43c007aef09d1282d02dfc36843d1273,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0
	.4byte	.LASF417
	.byte	0x6
	.uleb128 0
	.4byte	.LASF418
	.byte	0x6
	.uleb128 0
	.4byte	.LASF419
	.byte	0x6
	.uleb128 0
	.4byte	.LASF420
	.byte	0x6
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x6
	.uleb128 0
	.4byte	.LASF423
	.byte	0x6
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_base_types.h.2.f3c0267f175f5cbacca6b71710665a02,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF450
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.eb6279ca092455f62aa554ec1864872d,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF472
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.a73335dbec9f276504b3b94e79d1d898,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF486
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.95.eb4fc951d6d8ca08a3f35501d742a960,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF489
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_stack.h.2.a33fb8b396f31bed4bacb411e67ef75c,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF494
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_heap.h.2.89074aae455d2462b5952479e3530dd1,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF500
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_main.h.2.1f66ae3841c27bd36097fa1d2e1fe6a7,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF504
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.9428c7964838a07bb4b1cac6c50ee9b2,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF508
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.125feba674fa85672711aed1ca8ea199,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF514
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF671:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O0 -std=c90\000"
.LASF205:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF147:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF329:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF299:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF219:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF126:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF446:
	.ascii	"CPP_VERSION_2003 2\000"
.LASF241:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF450:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF319:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF540:
	.ascii	"Func_TerminateTask\000"
.LASF187:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF293:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF116:
	.ascii	"__UINT8_C(c) c\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF331:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF347:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF258:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF631:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF160:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF82:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF627:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF65:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF463:
	.ascii	"cMCU_X86 3\000"
.LASF292:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF457:
	.ascii	"Rejected 0\000"
.LASF265:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF281:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF344:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF165:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF257:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF462:
	.ascii	"DynamicMemoryUsed False\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF575:
	.ascii	"FREE\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF596:
	.ascii	"unsigned int\000"
.LASF558:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF454:
	.ascii	"FALSE False\000"
.LASF118:
	.ascii	"__UINT16_C(c) c\000"
.LASF369:
	.ascii	"__NO_INLINE__ 1\000"
.LASF16:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF35:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF322:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF213:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF19:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF571:
	.ascii	"task_s\000"
.LASF5:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF123:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF24:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF2:
	.ascii	"__GNUC__ 7\000"
.LASF246:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF662:
	.ascii	"DeleteFromSchedulingQueue\000"
.LASF364:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF158:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF53:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF465:
	.ascii	"NR_OF_CORES 1\000"
.LASF69:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF9:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF30:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF39:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF234:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF173:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF194:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF321:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF655:
	.ascii	"AddToIdleTaskQueue\000"
.LASF554:
	.ascii	"privilige_mode_e\000"
.LASF62:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF659:
	.ascii	"AddToSchedulingQueue\000"
.LASF46:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF494:
	.ascii	"OS_STACK_SIZE_END 0x01u\000"
.LASF90:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF592:
	.ascii	"pStackPointerStart\000"
.LASF489:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF26:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF235:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF625:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF580:
	.ascii	"TimeToPrioInc\000"
.LASF271:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF466:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF106:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF652:
	.ascii	"GetRunningSchedulingQueueElementPtr\000"
.LASF67:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF218:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF249:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF286:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF202:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF556:
	.ascii	"ePriviligeMode_priviliged_thread_mode\000"
.LASF77:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF582:
	.ascii	"max_allowed_wait_time\000"
.LASF312:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF328:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF317:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF470:
	.ascii	"Privilige_level_enter_kernel_mode() ;\000"
.LASF132:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF572:
	.ascii	"active\000"
.LASF196:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF363:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF57:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF561:
	.ascii	"Task_suspended\000"
.LASF104:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF606:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF108:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF538:
	.ascii	"Func_StartTask\000"
.LASF438:
	.ascii	"_os_firstinc_h_ \000"
.LASF595:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF327:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF531:
	.ascii	"os_sw_bugs_function_e\000"
.LASF458:
	.ascii	"Local static\000"
.LASF634:
	.ascii	"TASK_2_VAR\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
.LASF63:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF198:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF211:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF353:
	.ascii	"__SA_IBIT__ 16\000"
.LASF283:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF129:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF630:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF452:
	.ascii	"False 0\000"
.LASF145:
	.ascii	"__FLT_DIG__ 6\000"
.LASF614:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF503:
	.ascii	"os_running 1\000"
.LASF354:
	.ascii	"__DA_FBIT__ 31\000"
.LASF546:
	.ascii	"Func_os_exception\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF37:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF661:
	.ascii	"index\000"
.LASF138:
	.ascii	"__GCC_IEC_559 0\000"
.LASF641:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF622:
	.ascii	"TASK3_CALL_NR\000"
.LASF289:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF589:
	.ascii	"task_group\000"
.LASF76:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF200:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF410:
	.ascii	"__THUMBEL__ 1\000"
.LASF117:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF193:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF253:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF115:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF536:
	.ascii	"Func_DeleteTaskEnvironment\000"
.LASF95:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF279:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF48:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF276:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF320:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF288:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF618:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF143:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF485:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF287:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF307:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF274:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF453:
	.ascii	"True 1\000"
.LASF54:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF18:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF59:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF225:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF524:
	.ascii	"os_bug_task_max_wait_time_reached\000"
.LASF290:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF491:
	.ascii	"_OS_RAM_H_ \000"
.LASF166:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF650:
	.ascii	"uStackSize\000"
.LASF240:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF262:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF87:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF651:
	.ascii	"core\000"
.LASF309:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF335:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF301:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF183:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF624:
	.ascii	"TASK_STACK\000"
.LASF206:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF23:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF102:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF478:
	.ascii	"MinTimeSlice_s (1.0/SchedulerFrequency)\000"
.LASF252:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF361:
	.ascii	"__USA_IBIT__ 16\000"
.LASF541:
	.ascii	"Func_TaskScheduler\000"
.LASF275:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF243:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF616:
	.ascii	"DBG_RLD_VALUE\000"
.LASF547:
	.ascii	"Func_CreateTask\000"
.LASF475:
	.ascii	"_os_task_common_h_ \000"
.LASF298:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF120:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF560:
	.ascii	"Task_unspecified\000"
.LASF611:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF459:
	.ascii	"Local_inline static __inline__\000"
.LASF584:
	.ascii	"current_prio\000"
.LASF528:
	.ascii	"os_bug_exception_AbortData\000"
.LASF169:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF22:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF311:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF124:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF557:
	.ascii	"ePriviligeMode_priviliged_handler_mode\000"
.LASF131:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF264:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF250:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF542:
	.ascii	"Func_InitTask\000"
.LASF533:
	.ascii	"Func_SaveTaskEnvironment\000"
.LASF639:
	.ascii	"TASK_GROUP_4\000"
.LASF352:
	.ascii	"__SA_FBIT__ 15\000"
.LASF204:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF672:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_queue.c\000"
.LASF505:
	.ascii	"_os_task_queue_h_ \000"
.LASF171:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF479:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF55:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF223:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF588:
	.ascii	"task_state\000"
.LASF559:
	.ascii	"task_state_e\000"
.LASF449:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF83:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF199:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF626:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF242:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF484:
	.ascii	"TASK_STACK_SIZE 2000\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF71:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF593:
	.ascii	"StackSize\000"
.LASF41:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF149:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF564:
	.ascii	"task_state_t\000"
.LASF324:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF297:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF664:
	.ascii	"element_nr\000"
.LASF244:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF296:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF256:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF277:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF568:
	.ascii	"fair_exe_time\000"
.LASF471:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF619:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF207:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF555:
	.ascii	"ePriviligeMode_unpriviliged_thread_mode\000"
.LASF366:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF189:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF306:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF142:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF607:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF609:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF66:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF603:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF590:
	.ascii	"pStackPointer\000"
.LASF188:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF599:
	.ascii	"scheduler_time_t\000"
.LASF212:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF140:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF512:
	.ascii	"Task_2_ptr 2\000"
.LASF604:
	.ascii	"OS_SW_BUG\000"
.LASF226:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF670:
	.ascii	"scheduling_task\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF58:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF666:
	.ascii	"GetFromTaskQueue\000"
.LASF455:
	.ascii	"TRUE True\000"
.LASF300:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF237:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF316:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF642:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF280:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF461:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF105:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF360:
	.ascii	"__USA_FBIT__ 16\000"
.LASF99:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF496:
	.ascii	"HEAP_SIZE 10000\000"
.LASF100:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF305:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF499:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF565:
	.ascii	"func_p_t\000"
.LASF91:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF233:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF270:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF472:
	.ascii	"HaltMcu() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF47:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF191:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF209:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF159:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF103:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF310:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF349:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF474:
	.ascii	"_lld_core_h_ \000"
.LASF529:
	.ascii	"os_sw_bugs_t\000"
.LASF532:
	.ascii	"Func_NoFunction\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF216:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF304:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF346:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF215:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF291:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF585:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF348:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF43:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF21:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF669:
	.ascii	"OS_InitTaskQueue\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF136:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF50:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF180:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF12:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF31:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF172:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF645:
	.ascii	"task\000"
.LASF339:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF358:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF623:
	.ascii	"TASK4_CALL_NR\000"
.LASF673:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF613:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF318:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF107:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF17:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF313:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF127:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF527:
	.ascii	"os_bug_exception_AbortPrefetch\000"
.LASF156:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF587:
	.ascii	"state_request\000"
.LASF549:
	.ascii	"Core0\000"
.LASF550:
	.ascii	"Core1\000"
.LASF551:
	.ascii	"Core2\000"
.LASF552:
	.ascii	"Core3\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF632:
	.ascii	"TASK_0_VAR\000"
.LASF612:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF14:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF602:
	.ascii	"OS_STACK\000"
.LASF653:
	.ascii	"GetRunningTask\000"
.LASF162:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF574:
	.ascii	"IdleTask\000"
.LASF633:
	.ascii	"TASK_1_VAR\000"
.LASF526:
	.ascii	"os_bug_exception_UndefInstruction\000"
.LASF128:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF32:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF674:
	.ascii	"SET_RUNNING_TASK\000"
.LASF70:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF96:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF167:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF78:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF517:
	.ascii	"unsigned_char_t\000"
.LASF583:
	.ascii	"start_time\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF520:
	.ascii	"uint32\000"
.LASF497:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF263:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF75:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF315:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF267:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF502:
	.ascii	"os_init 0\000"
.LASF573:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF326:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF261:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF181:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF356:
	.ascii	"__TA_FBIT__ 63\000"
.LASF185:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF139:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF101:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF514:
	.ascii	"OS_SaveTaskPtr(task_ptr,Task_n_ptr) \000"
.LASF646:
	.ascii	"TaskFunction\000"
.LASF174:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF285:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF566:
	.ascii	"func_p_state_change_t\000"
.LASF152:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF570:
	.ascii	"task_group_s\000"
.LASF27:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF303:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF86:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF229:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF643:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF284:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF509:
	.ascii	"_os_task_scheduler_h_ \000"
.LASF594:
	.ascii	"pStackPointerEnd\000"
.LASF362:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF81:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF36:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF251:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF476:
	.ascii	"_os_task_config_h_ \000"
.LASF521:
	.ascii	"os_bug_no_bug\000"
.LASF507:
	.ascii	"Last_task (MAX_RUN_QUEUE_SIZE-1)\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF333:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF665:
	.ascii	"GetFromSchedulingQueue\000"
.LASF367:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF473:
	.ascii	"_lld_global_h_ \000"
.LASF154:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF591:
	.ascii	"pStackPointerByMalloc\000"
.LASF52:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF336:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF34:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF342:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF539:
	.ascii	"Func_PreemptTask\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF467:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
.LASF68:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF562:
	.ascii	"Task_ready\000"
.LASF51:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF439:
	.ascii	"_BASE_TYPES_H_ \000"
.LASF150:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF448:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF620:
	.ascii	"TASK1_CALL_NR\000"
.LASF97:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF84:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF248:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF644:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF340:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF345:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF667:
	.ascii	"DeleteFromTaskQueue\000"
.LASF483:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF269:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF92:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF537:
	.ascii	"Func_InitTaskEnvironment\000"
.LASF238:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF236:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF114:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF40:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF597:
	.ascii	"task_t\000"
.LASF543:
	.ascii	"Func_ActivateTask\000"
.LASF60:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF663:
	.ascii	"scheduling_queue_element\000"
.LASF469:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF176:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF334:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF444:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF511:
	.ascii	"Task_1_ptr 1\000"
.LASF272:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF368:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF245:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF217:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF208:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF482:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF119:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF343:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF654:
	.ascii	"OS_InitTask\000"
.LASF610:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF186:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF38:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF74:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF668:
	.ascii	"AddToTaskQueue\000"
.LASF179:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF523:
	.ascii	"os_bug_null_pointer\000"
.LASF481:
	.ascii	"NUMBER_OF_TASKS 10\000"
.LASF338:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF259:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF490:
	.ascii	"_LED_H_ \000"
.LASF232:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF447:
	.ascii	"CPP_VERSION_2007 3\000"
.LASF134:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF133:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF255:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF113:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF332:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF359:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF401:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF72:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF506:
	.ascii	"First_task (0)\000"
.LASF15:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF42:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF79:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF480:
	.ascii	"Task_min_time (1e0)\000"
.LASF647:
	.ascii	"AllowedInstances\000"
.LASF153:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF49:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF464:
	.ascii	"cMCU_CORTEX_M4 4\000"
.LASF44:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF175:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF28:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF308:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF268:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF278:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF350:
	.ascii	"__HA_FBIT__ 7\000"
.LASF85:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF144:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF121:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF80:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF122:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF314:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF254:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF341:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF222:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF657:
	.ascii	"UpdateSchedulingQueue\000"
.LASF351:
	.ascii	"__HA_IBIT__ 8\000"
.LASF519:
	.ascii	"long unsigned int\000"
.LASF513:
	.ascii	"Task_3_ptr 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF629:
	.ascii	"RUNNING_TASK\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF20:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF617:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF135:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF456:
	.ascii	"Accepted 1\000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF64:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF530:
	.ascii	"os_sw_bugs_e\000"
.LASF266:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF210:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF601:
	.ascii	"HEAP\000"
.LASF500:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF510:
	.ascii	"Task_0_ptr 0\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF615:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF525:
	.ascii	"os_bug_Task_unspecified\000"
.LASF660:
	.ascii	"Add_successful\000"
.LASF61:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF98:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF515:
	.ascii	"unsigned char\000"
.LASF230:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF231:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF445:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF576:
	.ascii	"NrOfInsAllowed\000"
.LASF355:
	.ascii	"__DA_IBIT__ 32\000"
.LASF581:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF182:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF112:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF605:
	.ascii	"OS_STATE\000"
.LASF495:
	.ascii	"_os_heap_h_ \000"
.LASF25:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF534:
	.ascii	"Func_RestoreTaskEnvironment\000"
.LASF111:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF635:
	.ascii	"TASK_3_VAR\000"
.LASF498:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF563:
	.ascii	"Task_running\000"
.LASF337:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF151:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF195:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3\000"
.LASF586:
	.ascii	"task_number\000"
.LASF29:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4\000"
.LASF486:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
.LASF325:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF477:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF504:
	.ascii	"os_shutdown 2\000"
.LASF567:
	.ascii	"exe_time\000"
.LASF260:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF656:
	.ascii	"GetIdleTask\000"
.LASF365:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF148:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF203:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF224:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF73:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF170:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF460:
	.ascii	"Global_inline __inline__\000"
.LASF522:
	.ascii	"os_bug_taskstate_request_denied\000"
.LASF649:
	.ascii	"pStackAddr\000"
.LASF56:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF518:
	.ascii	"unsigned_int32_t\000"
.LASF579:
	.ascii	"wait_time\000"
.LASF157:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF13:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF33:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF88:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF295:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF302:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF168:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF45:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF228:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF163:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF545:
	.ascii	"Func_Preempt_Task\000"
.LASF501:
	.ascii	"_os_main_h_ \000"
.LASF516:
	.ascii	"short unsigned int\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF569:
	.ascii	"task_group_t\000"
.LASF294:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF227:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF214:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF221:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF600:
	.ascii	"TASK_PTR\000"
.LASF628:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF146:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF488:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
.LASF468:
	.ascii	"EnableInterrupts() LLF_INT_ENABLE()\000"
.LASF247:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF451:
	.ascii	"_os_common_h_ \000"
.LASF178:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF110:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF487:
	.ascii	"_os_init_task_system_h_ \000"
.LASF544:
	.ascii	"Func_TaskStateRequest\000"
.LASF621:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF190:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF177:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF220:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF137:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF125:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF548:
	.ascii	"CoreID_e\000"
.LASF508:
	.ascii	"For_all_tasks_in_queue(var) for((var) = First_task;"
	.ascii	" (var) <= Last_task; (var)++)\000"
.LASF636:
	.ascii	"TASK_GROUP_1\000"
.LASF637:
	.ascii	"TASK_GROUP_2\000"
.LASF638:
	.ascii	"TASK_GROUP_3\000"
.LASF192:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF640:
	.ascii	"TASK_GROUP_5\000"
.LASF330:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF273:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF608:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF323:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF553:
	.ascii	"CoreID_t\000"
.LASF648:
	.ascii	"p_task_group\000"
.LASF109:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF357:
	.ascii	"__TA_IBIT__ 64\000"
.LASF239:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF578:
	.ascii	"WaitActUntil\000"
.LASF89:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF658:
	.ascii	"dest\000"
.LASF493:
	.ascii	"OS_STACK_SIZE 0x5000u\000"
.LASF282:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF161:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF598:
	.ascii	"scheduling_t\000"
.LASF577:
	.ascii	"NrOfInsActivated\000"
.LASF184:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF535:
	.ascii	"Func_CreateTaskEnvironment\000"
.LASF492:
	.ascii	"_os_stack_h_ \000"
.LASF201:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF197:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF155:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF130:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF164:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
