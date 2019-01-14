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
	.file	"os_task_scheduler.c"
@ GNU C89 (GNU Tools for Arm Embedded Processors 7-2018-q2-update) version 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m
@ -iprefix d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../lib/gcc/arm-none-eabi/7.3.1/
@ -isysroot d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c
@ -mcpu=cortex-m4 -mthumb
@ -auxbase-strip E:\NeuOrga\Programmieren\c_cpp\github_os\output\os_base\obj_arm\os_task_scheduler.s
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
	.global	OS_ActivateDispatcher
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_ActivateDispatcher, %function
OS_ActivateDispatcher:
.LFB0:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.c"
	.loc 1 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	ldr	r3, .L2	@ _1,
	ldr	r3, [r3]	@ _2, *_1
	and	r3, r3, #-16777216	@ _3, _2,
	ldr	r2, .L2	@ _4,
	orr	r3, r3, #1679360	@ _5, _3,
	orr	r3, r3, #640	@ _5, _5,
	str	r3, [r2]	@ _5, *_4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:42:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
	.loc 1 42 0
	ldr	r3, .L2+4	@ _6,
	movs	r2, #0	@ tmp120,
	str	r2, [r3]	@ tmp120, *_6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:43:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 43 0
	ldr	r3, .L2+8	@ _7,
	ldr	r3, [r3]	@ _8, *_7
	ldr	r2, .L2+8	@ _9,
	orr	r3, r3, #3	@ _10, _8,
	str	r3, [r2]	@ _10, *_9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:45: }
	.loc 1 45 0
	nop
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7}	@
	.cfi_restore 7
	.cfi_def_cfa_offset 0
	bx	lr	@
.L3:
	.align	2
.L2:
	.word	-536813548
	.word	-536813544
	.word	-536813552
	.cfi_endproc
.LFE0:
	.size	OS_ActivateDispatcher, .-OS_ActivateDispatcher
	.align	1
	.global	OS_SleepTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_SleepTask, %function
OS_SleepTask:
.LFB1:
	.loc 1 49 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
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
	str	r1, [r7, #8]	@ millisec, millisec
	str	r2, [r7, #4]	@ scheduling_task_ptr, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:51:    task->WaitActUntil = OS_GetCurrentTime() + millisec;
	.loc 1 51 0
	bl	OS_GetCurrentTime	@
	mov	r2, r0	@ _1,
	ldr	r3, [r7, #8]	@ tmp112, millisec
	add	r2, r2, r3	@ _2, tmp112
	ldr	r3, [r7, #12]	@ tmp113, task
	str	r2, [r3, #8]	@ _2, task_6(D)->WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:52:    OS_PreemptTask(task,scheduling_task_ptr);
	.loc 1 52 0
	ldr	r1, [r7, #4]	@, scheduling_task_ptr
	ldr	r0, [r7, #12]	@, task
	bl	OS_PreemptTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:53: }
	.loc 1 53 0
	nop
	adds	r7, r7, #16	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
	.cfi_endproc
.LFE1:
	.size	OS_SleepTask, .-OS_SleepTask
	.align	1
	.global	task_state_request
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	task_state_request, %function
task_state_request:
.LFB2:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16	@,,
	.cfi_def_cfa_offset 24
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ temp_task, temp_task
	mov	r3, r1	@ tmp122, requested_state
	strb	r3, [r7, #3]	@ tmp123, requested_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:57:    unsigned_char_t RequestState = Rejected;
	.loc 1 57 0
	movs	r3, #0	@ tmp124,
	strb	r3, [r7, #15]	@ tmp125, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:59:    task_t* task = (task_t*) temp_task;
	.loc 1 59 0
	ldr	r3, [r7, #4]	@ tmp126, temp_task
	str	r3, [r7, #8]	@ tmp126, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:61:    switch(requested_state)
	.loc 1 61 0
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ _1, requested_state
	cmp	r3, #3	@ _1,
	bhi	.L30	@
	adr	r2, .L8	@ tmp178,
	ldr	pc, [r2, r3, lsl #2]	@ tmp178, _1
	.p2align 2
.L8:
	.word	.L7+1
	.word	.L9+1
	.word	.L10+1
	.word	.L11+1
	.p2align 1
.L7:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:65:       switch(task->task_state)
	.loc 1 65 0
	ldr	r3, [r7, #8]	@ tmp127, task
	ldrb	r3, [r3, #52]	@ zero_extendqisi2	@ _2, task_24->task_state
	subs	r3, r3, #1	@ tmp128, _3,
	cmp	r3, #2	@ tmp128,
	bhi	.L12	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:71:          RequestState = Rejected;
	.loc 1 71 0
	movs	r3, #0	@ tmp129,
	strb	r3, [r7, #15]	@ tmp130, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:72:          break;
	.loc 1 72 0
	b	.L14	@
.L12:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:76:          task->task_state = Task_unspecified;
	.loc 1 76 0
	ldr	r3, [r7, #8]	@ tmp131, task
	movs	r2, #0	@ tmp132,
	strb	r2, [r3, #52]	@ tmp133, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:77:          RequestState = Accepted;
	.loc 1 77 0
	movs	r3, #1	@ tmp134,
	strb	r3, [r7, #15]	@ tmp135, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:78:          break;
	.loc 1 78 0
	nop
.L14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:81:       break;
	.loc 1 81 0
	b	.L15	@
.L9:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:85:       switch(task->task_state)
	.loc 1 85 0
	ldr	r3, [r7, #8]	@ tmp136, task
	ldrb	r3, [r3, #52]	@ zero_extendqisi2	@ _4, task_24->task_state
	cmp	r3, #0	@ _5,
	beq	.L17	@,
	cmp	r3, #3	@ _5,
	beq	.L18	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:103:          break;
	.loc 1 103 0
	b	.L19	@
.L17:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:90:          task->task_state = Task_suspended;
	.loc 1 90 0
	ldr	r3, [r7, #8]	@ tmp137, task
	movs	r2, #1	@ tmp138,
	strb	r2, [r3, #52]	@ tmp139, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:91:          RequestState = Accepted;
	.loc 1 91 0
	movs	r3, #1	@ tmp140,
	strb	r3, [r7, #15]	@ tmp141, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:92:          break;
	.loc 1 92 0
	b	.L19	@
.L18:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:96:          task->task_state = Task_suspended;
	.loc 1 96 0
	ldr	r3, [r7, #8]	@ tmp142, task
	movs	r2, #1	@ tmp143,
	strb	r2, [r3, #52]	@ tmp144, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:97:          RequestState = Accepted;
	.loc 1 97 0
	movs	r3, #1	@ tmp145,
	strb	r3, [r7, #15]	@ tmp146, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:98:          break;
	.loc 1 98 0
	nop
.L19:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:106:       break;
	.loc 1 106 0
	b	.L15	@
.L11:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:110:       switch(task->task_state)
	.loc 1 110 0
	ldr	r3, [r7, #8]	@ tmp147, task
	ldrb	r3, [r3, #52]	@ zero_extendqisi2	@ _6, task_24->task_state
	cmp	r3, #2	@ _7,
	beq	.L21	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:121:          break;
	.loc 1 121 0
	b	.L22	@
.L21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:114:          task->task_state = Task_running;
	.loc 1 114 0
	ldr	r3, [r7, #8]	@ tmp148, task
	movs	r2, #3	@ tmp149,
	strb	r2, [r3, #52]	@ tmp150, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:115:          RequestState   = Accepted;
	.loc 1 115 0
	movs	r3, #1	@ tmp151,
	strb	r3, [r7, #15]	@ tmp152, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:116:          break;
	.loc 1 116 0
	nop
.L22:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:124:       break;
	.loc 1 124 0
	b	.L15	@
.L10:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:129:       switch(task->task_state)
	.loc 1 129 0
	ldr	r3, [r7, #8]	@ tmp153, task
	ldrb	r3, [r3, #52]	@ zero_extendqisi2	@ _8, task_24->task_state
	cmp	r3, #1	@ _9,
	beq	.L24	@,
	cmp	r3, #3	@ _9,
	beq	.L25	@,
	cmp	r3, #0	@ _9,
	beq	.L26	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:152:          break;
	.loc 1 152 0
	b	.L27	@
.L24:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:133:          task->task_state = Task_ready;
	.loc 1 133 0
	ldr	r3, [r7, #8]	@ tmp154, task
	movs	r2, #2	@ tmp155,
	strb	r2, [r3, #52]	@ tmp156, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:134:          RequestState   = Accepted;
	.loc 1 134 0
	movs	r3, #1	@ tmp157,
	strb	r3, [r7, #15]	@ tmp158, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:135:          break;
	.loc 1 135 0
	b	.L27	@
.L25:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:139:          task->task_state = Task_ready;
	.loc 1 139 0
	ldr	r3, [r7, #8]	@ tmp159, task
	movs	r2, #2	@ tmp160,
	strb	r2, [r3, #52]	@ tmp161, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:140:          RequestState   = Accepted;
	.loc 1 140 0
	movs	r3, #1	@ tmp162,
	strb	r3, [r7, #15]	@ tmp163, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:141:          break;
	.loc 1 141 0
	b	.L27	@
.L26:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:145:           task->task_state = Task_ready;
	.loc 1 145 0
	ldr	r3, [r7, #8]	@ tmp164, task
	movs	r2, #2	@ tmp165,
	strb	r2, [r3, #52]	@ tmp166, task_24->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:146:           RequestState = Accepted;
	.loc 1 146 0
	movs	r3, #1	@ tmp167,
	strb	r3, [r7, #15]	@ tmp168, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:147:           break;
	.loc 1 147 0
	nop
.L27:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:155:       break;
	.loc 1 155 0
	b	.L15	@
.L30:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:159:       break;
	.loc 1 159 0
	nop
.L15:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:162:    if(RequestState == Rejected)
	.loc 1 162 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ tmp169, RequestState
	cmp	r3, #0	@ tmp169,
	bne	.L28	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:164:       TASK_TRANSITION_REJECTED_TASK_ADDR  = task;
	.loc 1 164 0
	ldr	r2, .L31	@ tmp170,
	ldr	r3, [r7, #8]	@ tmp171, task
	str	r3, [r2]	@ tmp171, TASK_TRANSITION_REJECTED_TASK_ADDR
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:165:       TASK_TRANSITION_REJECTED_STATE      = requested_state;
	.loc 1 165 0
	ldr	r2, .L31+4	@ tmp172,
	ldrb	r3, [r7, #3]	@ tmp173, requested_state
	strb	r3, [r2]	@ tmp173, TASK_TRANSITION_REJECTED_STATE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:166:       TASK_TRANSITION_CURRENT_STATE       = task->task_state;
	.loc 1 166 0
	ldr	r3, [r7, #8]	@ tmp174, task
	ldrb	r2, [r3, #52]	@ zero_extendqisi2	@ _10, task_24->task_state
	ldr	r3, .L31+8	@ tmp175,
	strb	r2, [r3]	@ tmp176, TASK_TRANSITION_CURRENT_STATE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:167:       OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
	.loc 1 167 0
	movs	r1, #12	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
.L28:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171:    return RequestState;
	.loc 1 171 0
	ldrb	r3, [r7, #15]	@ zero_extendqisi2	@ _46, RequestState
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:172: }
	.loc 1 172 0
	mov	r0, r3	@, <retval>
	adds	r7, r7, #16	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L32:
	.align	2
.L31:
	.word	TASK_TRANSITION_REJECTED_TASK_ADDR
	.word	TASK_TRANSITION_REJECTED_STATE
	.word	TASK_TRANSITION_CURRENT_STATE
	.cfi_endproc
.LFE2:
	.size	task_state_request, .-task_state_request
	.align	1
	.global	OS_CreateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_CreateTask, %function
OS_CreateTask:
.LFB3:
	.loc 1 175 0
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
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:177:    if(task != 0)
	.loc 1 177 0
	ldr	r3, [r7, #4]	@ tmp113, task
	cmp	r3, #0	@ tmp113,
	beq	.L34	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:179:       if(task->state_request != 0)
	.loc 1 179 0
	ldr	r3, [r7, #4]	@ tmp114, task
	ldr	r3, [r3, #48]	@ _1, task_7(D)->state_request
	cmp	r3, #0	@ _1,
	beq	.L35	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:181:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 181 0
	ldr	r3, [r7, #4]	@ tmp115, task
	ldr	r3, [r3, #48]	@ _2, task_7(D)->state_request
	movs	r1, #1	@,
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _2
.LVL0:
	mov	r3, r0	@ tmp116,
	cmp	r3, #1	@ _3,
	beq	.L39	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:187:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_CreateTask);
	.loc 1 187 0
	movs	r1, #15	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:199: }
	.loc 1 199 0
	b	.L39	@
.L35:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:192:          OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
	.loc 1 192 0
	movs	r1, #15	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:199: }
	.loc 1 199 0
	b	.L39	@
.L34:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:197:       OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
	.loc 1 197 0
	movs	r1, #15	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L39:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:199: }
	.loc 1 199 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
	.cfi_endproc
.LFE3:
	.size	OS_CreateTask, .-OS_CreateTask
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_PreemptTask, %function
OS_PreemptTask:
.LFB4:
	.loc 1 201 0
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
	str	r0, [r7, #4]	@ task, task
	str	r1, [r7]	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:210:    if(task != 0 && scheduling_task != 0)
	.loc 1 210 0
	ldr	r3, [r7, #4]	@ tmp117, task
	cmp	r3, #0	@ tmp117,
	beq	.L41	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:210:    if(task != 0 && scheduling_task != 0)
	.loc 1 210 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]	@ tmp118, scheduling_task
	cmp	r3, #0	@ tmp118,
	beq	.L41	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:212:       if(task->state_request != 0)
	.loc 1 212 0 is_stmt 1
	ldr	r3, [r7, #4]	@ tmp119, task
	ldr	r3, [r3, #48]	@ _1, task_11(D)->state_request
	cmp	r3, #0	@ _1,
	beq	.L42	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:214:          if(task->state_request(task, Task_ready)== Accepted)
	.loc 1 214 0
	ldr	r3, [r7, #4]	@ tmp120, task
	ldr	r3, [r3, #48]	@ _2, task_11(D)->state_request
	movs	r1, #2	@,
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _2
.LVL1:
	mov	r3, r0	@ tmp121,
	cmp	r3, #1	@ _3,
	bne	.L43	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:216:             DisableInterrupts();
	.loc 1 216 0
	bl	LLF_INT_DISABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:217:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 217 0
	ldr	r0, [r7, #4]	@, task
	bl	OS_TaskSaveTaskEnvironment	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:218:             OS_TASK_RESTORE_SYSTEM_STACK(&OS_STACK[OS_GetCoreId()][0]);
	.loc 1 218 0
	bl	OS_GetCoreId	@
	mov	r3, r0	@ tmp122,
	mov	r2, r3	@ _5, _4
	mov	r3, r2	@ tmp123, _5
	lsls	r3, r3, #2	@ tmp123, tmp123,
	add	r3, r3, r2	@ tmp123, _5
	lsls	r3, r3, #12	@ tmp124, tmp123,
	ldr	r2, .L47	@ tmp125,
	add	r3, r3, r2	@ _6, tmp125
	mov	r0, r3	@, _6
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:220:             task->active = False;
	.loc 1 220 0
	ldr	r2, [r7, #4]	@ tmp126, task
	ldrb	r3, [r2]	@ tmp127, task_11(D)->active
	bfc	r3, #0, #1	@ tmp127,,
	strb	r3, [r2]	@ tmp127, task_11(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:222:             task->current_prio = task->default_prio;
	.loc 1 222 0
	ldr	r3, [r7, #4]	@ tmp128, task
	ldrb	r2, [r3, #37]	@ zero_extendqisi2	@ _7, task_11(D)->default_prio
	ldr	r3, [r7, #4]	@ tmp129, task
	strb	r2, [r3, #36]	@ tmp130, task_11(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:223:             EnableInterrupts();
	.loc 1 223 0
	bl	LLF_INT_ENABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:212:       if(task->state_request != 0)
	.loc 1 212 0
	b	.L46	@
.L43:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:227:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_Preempt_Task);
	.loc 1 227 0
	movs	r1, #13	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:212:       if(task->state_request != 0)
	.loc 1 212 0
	b	.L46	@
.L42:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:232:          OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
	.loc 1 232 0
	movs	r1, #13	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:212:       if(task->state_request != 0)
	.loc 1 212 0
	b	.L46	@
.L41:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:238:       OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
	.loc 1 238 0
	movs	r1, #13	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:240: }
	.loc 1 240 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L48:
	.align	2
.L47:
	.word	OS_STACK
	.cfi_endproc
.LFE4:
	.size	OS_PreemptTask, .-OS_PreemptTask
	.align	1
	.global	OS_ActivateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_ActivateTask, %function
OS_ActivateTask:
.LFB5:
	.loc 1 243 0
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
	str	r0, [r7, #4]	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:252:    if(task != 0)
	.loc 1 252 0
	ldr	r3, [r7, #4]	@ tmp122, task
	cmp	r3, #0	@ tmp122,
	beq	.L56	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:254:       if(task->state_request(task, Task_ready)==Accepted)
	.loc 1 254 0
	ldr	r3, [r7, #4]	@ tmp123, task
	ldr	r3, [r3, #48]	@ _1, task_17(D)->state_request
	movs	r1, #2	@,
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _1
.LVL2:
	mov	r3, r0	@ tmp124,
	cmp	r3, #1	@ _2,
	bne	.L51	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:256:          DisableInterrupts();
	.loc 1 256 0
	bl	LLF_INT_DISABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:258:          if(task->IdleTask == False)
	.loc 1 258 0
	ldr	r3, [r7, #4]	@ tmp125, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _3, *task_17(D)
	and	r3, r3, #4	@ tmp126, _3,
	uxtb	r3, r3	@ _4, tmp126
	cmp	r3, #0	@ _4,
	bne	.L52	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:260:             if( (task->active == False)
	.loc 1 260 0
	ldr	r3, [r7, #4]	@ tmp127, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _5, *task_17(D)
	and	r3, r3, #1	@ tmp128, _5,
	uxtb	r3, r3	@ _6, tmp128
	cmp	r3, #0	@ _6,
	beq	.L53	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:261:                   || ( (task->active == True) && (task->NrOfInsAllowed > task->NrOfInsActivated) )/* check for multiple activation */
	.loc 1 261 0
	ldr	r3, [r7, #4]	@ tmp129, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _7, *task_17(D)
	and	r3, r3, #1	@ tmp130, _7,
	uxtb	r3, r3	@ _8, tmp130
	cmp	r3, #0	@ _8,
	beq	.L55	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:261:                   || ( (task->active == True) && (task->NrOfInsAllowed > task->NrOfInsActivated) )/* check for multiple activation */
	.loc 1 261 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]	@ tmp131, task
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ _9, task_17(D)->NrOfInsAllowed
	ldr	r3, [r7, #4]	@ tmp132, task
	ldrb	r3, [r3, #5]	@ zero_extendqisi2	@ _10, task_17(D)->NrOfInsActivated
	cmp	r2, r3	@ _9, _10
	bls	.L55	@,
.L53:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:265:                task = AddToTaskQueue(task);
	.loc 1 265 0 is_stmt 1
	ldr	r0, [r7, #4]	@, task
	bl	AddToTaskQueue	@
	str	r0, [r7, #4]	@, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:267:                AddToSchedulingQueue(task);
	.loc 1 267 0
	ldr	r0, [r7, #4]	@, task
	bl	AddToSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:268:                task->NrOfInsActivated++;
	.loc 1 268 0
	ldr	r3, [r7, #4]	@ tmp133, task
	ldrb	r3, [r3, #5]	@ zero_extendqisi2	@ _11, task_24->NrOfInsActivated
	adds	r3, r3, #1	@ tmp134, _11,
	uxtb	r2, r3	@ _13, tmp134
	ldr	r3, [r7, #4]	@ tmp135, task
	strb	r2, [r3, #5]	@ tmp136, task_24->NrOfInsActivated
	b	.L55	@
.L52:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:277:             AddToIdleTaskQueue(task);
	.loc 1 277 0
	ldr	r0, [r7, #4]	@, task
	bl	AddToIdleTaskQueue	@
.L55:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:279:          EnableInterrupts();
	.loc 1 279 0
	bl	LLF_INT_ENABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:286: }
	.loc 1 286 0
	b	.L56	@
.L51:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:283:          OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
	.loc 1 283 0
	movs	r1, #11	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
.L56:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:286: }
	.loc 1 286 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
	.cfi_endproc
.LFE5:
	.size	OS_ActivateTask, .-OS_ActivateTask
	.align	1
	.global	OS_StartTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_StartTask, %function
OS_StartTask:
.LFB6:
	.loc 1 288 0
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
	str	r0, [r7, #4]	@ task, task
	str	r1, [r7]	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:296:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 296 0
	ldr	r3, [r7, #4]	@ tmp124, task
	cmp	r3, #0	@ tmp124,
	beq	.L64	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:296:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 296 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]	@ tmp125, scheduling_task
	cmp	r3, #0	@ tmp125,
	beq	.L64	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:296:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 296 0 discriminator 2
	ldr	r3, [r7, #4]	@ tmp126, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _1, *task_18(D)
	and	r3, r3, #2	@ tmp127, _1,
	uxtb	r3, r3	@ _2, tmp127
	cmp	r3, #0	@ _2,
	bne	.L59	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:296:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 296 0 discriminator 3
	ldr	r3, [r7, #4]	@ tmp128, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _3, *task_18(D)
	and	r3, r3, #4	@ tmp129, _3,
	uxtb	r3, r3	@ _4, tmp129
	cmp	r3, #0	@ _4,
	beq	.L64	@,
.L59:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:298:       if(task->state_request !=0)
	.loc 1 298 0 is_stmt 1
	ldr	r3, [r7, #4]	@ tmp130, task
	ldr	r3, [r3, #48]	@ _5, task_18(D)->state_request
	cmp	r3, #0	@ _5,
	beq	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:300:          if(task->state_request(task, Task_running)== Accepted)
	.loc 1 300 0
	ldr	r3, [r7, #4]	@ tmp131, task
	ldr	r3, [r3, #48]	@ _6, task_18(D)->state_request
	movs	r1, #3	@,
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _6
.LVL3:
	mov	r3, r0	@ tmp132,
	cmp	r3, #1	@ _7,
	bne	.L61	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:302:             DisableInterrupts();
	.loc 1 302 0
	bl	LLF_INT_DISABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:303:             task->active =  True;
	.loc 1 303 0
	ldr	r2, [r7, #4]	@ tmp133, task
	ldrb	r3, [r2]	@ tmp134, task_18(D)->active
	orr	r3, r3, #1	@ tmp135, tmp136,
	strb	r3, [r2]	@ tmp134, task_18(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:304:             task->wait_time = 0;
	.loc 1 304 0
	ldr	r3, [r7, #4]	@ tmp137, task
	movs	r2, #0	@ tmp138,
	str	r2, [r3, #12]	@ tmp138, task_18(D)->wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:305:             task->current_prio = task->default_prio;
	.loc 1 305 0
	ldr	r3, [r7, #4]	@ tmp139, task
	ldrb	r2, [r3, #37]	@ zero_extendqisi2	@ _8, task_18(D)->default_prio
	ldr	r3, [r7, #4]	@ tmp140, task
	strb	r2, [r3, #36]	@ tmp141, task_18(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:306:             OS_TASK_SAVE_SYSTEM_STACK(&OS_STACK[OS_GetCoreId()][0]);
	.loc 1 306 0
	bl	OS_GetCoreId	@
	mov	r3, r0	@ tmp142,
	mov	r2, r3	@ _10, _9
	mov	r3, r2	@ tmp143, _10
	lsls	r3, r3, #2	@ tmp143, tmp143,
	add	r3, r3, r2	@ tmp143, _10
	lsls	r3, r3, #12	@ tmp144, tmp143,
	ldr	r2, .L65	@ tmp145,
	add	r3, r3, r2	@ _11, tmp145
	mov	r0, r3	@, _11
	bl	OS_TASK_SAVE_SYSTEM_STACK	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:307:             OS_TASK_RESTORETASK_ENVIRONMENT(task);
	.loc 1 307 0
	ldr	r0, [r7, #4]	@, task
	bl	OS_TASK_RESTORETASK_ENVIRONMENT	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:308:             task->start_time = OS_GetCurrentTime();
	.loc 1 308 0
	bl	OS_GetCurrentTime	@
	mov	r2, r0	@ _12,
	ldr	r3, [r7, #4]	@ tmp146, task
	str	r2, [r3, #32]	@ _12, task_18(D)->start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:309:             EnableInterrupts();
	.loc 1 309 0
	bl	LLF_INT_ENABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:312:             SET_RUNNING_TASK(task, scheduling_task);
	.loc 1 312 0
	ldr	r1, [r7]	@, scheduling_task
	ldr	r0, [r7, #4]	@, task
	bl	SET_RUNNING_TASK	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:314:             if(task->privilige_mode == ePriviligeMode_unpriviliged_thread_mode)
	.loc 1 314 0
	ldr	r3, [r7, #4]	@ tmp147, task
	ldrb	r3, [r3, #132]	@ zero_extendqisi2	@ _13, task_18(D)->privilige_mode
	cmp	r3, #0	@ _13,
	bne	.L62	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:316:                LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE();
	.loc 1 316 0
	bl	LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE	@
.L62:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:320:             task->fp(task);
	.loc 1 320 0
	ldr	r3, [r7, #4]	@ tmp148, task
	ldr	r3, [r3, #44]	@ _14, task_18(D)->fp
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _14
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:339: }
	.loc 1 339 0
	b	.L64	@
.L61:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:324:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_StartTask);
	.loc 1 324 0
	movs	r1, #6	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:339: }
	.loc 1 339 0
	b	.L64	@
.L60:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:330:          OS_SetSwBug(os_bug_null_pointer, Func_StartTask);
	.loc 1 330 0
	movs	r1, #6	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L64:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:339: }
	.loc 1 339 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L66:
	.align	2
.L65:
	.word	OS_STACK
	.cfi_endproc
.LFE6:
	.size	OS_StartTask, .-OS_StartTask
	.align	1
	.global	OS_TerminateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TerminateTask, %function
OS_TerminateTask:
.LFB7:
	.loc 1 341 0
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
	str	r0, [r7, #4]	@ task, task
	str	r1, [r7]	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:349:    if(task != 0 && scheduling_task != 0)
	.loc 1 349 0
	ldr	r3, [r7, #4]	@ tmp117, task
	cmp	r3, #0	@ tmp117,
	beq	.L68	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:349:    if(task != 0 && scheduling_task != 0)
	.loc 1 349 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]	@ tmp118, scheduling_task
	cmp	r3, #0	@ tmp118,
	beq	.L68	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:351:       if(task->state_request != 0)
	.loc 1 351 0 is_stmt 1
	ldr	r3, [r7, #4]	@ tmp119, task
	ldr	r3, [r3, #48]	@ _1, task_11(D)->state_request
	cmp	r3, #0	@ _1,
	beq	.L69	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:353:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 353 0
	ldr	r3, [r7, #4]	@ tmp120, task
	ldr	r3, [r3, #48]	@ _2, task_11(D)->state_request
	movs	r1, #1	@,
	ldr	r0, [r7, #4]	@, task
	blx	r3	@ _2
.LVL5:
	mov	r3, r0	@ tmp121,
	cmp	r3, #1	@ _3,
	bne	.L70	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:355:             DisableInterrupts();
	.loc 1 355 0
	bl	LLF_INT_DISABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:356:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 356 0
	ldr	r0, [r7, #4]	@, task
	bl	OS_TaskSaveTaskEnvironment	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:357:             OS_TASK_RESTORE_SYSTEM_STACK(&OS_STACK[OS_GetCoreId()][0]);
	.loc 1 357 0
	bl	OS_GetCoreId	@
	mov	r3, r0	@ tmp122,
	mov	r2, r3	@ _5, _4
	mov	r3, r2	@ tmp123, _5
	lsls	r3, r3, #2	@ tmp123, tmp123,
	add	r3, r3, r2	@ tmp123, _5
	lsls	r3, r3, #12	@ tmp124, tmp123,
	ldr	r2, .L74	@ tmp125,
	add	r3, r3, r2	@ _6, tmp125
	mov	r0, r3	@, _6
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:358:             DeleteFromTaskQueue(task);
	.loc 1 358 0
	ldr	r0, [r7, #4]	@, task
	bl	DeleteFromTaskQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:359:             DeleteFromSchedulingQueue(scheduling_task);
	.loc 1 359 0
	ldr	r0, [r7]	@, scheduling_task
	bl	DeleteFromSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:361:             task->active = False;
	.loc 1 361 0
	ldr	r2, [r7, #4]	@ tmp126, task
	ldrb	r3, [r2]	@ tmp127, task_11(D)->active
	bfc	r3, #0, #1	@ tmp127,,
	strb	r3, [r2]	@ tmp127, task_11(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:363:             task->current_prio = task->default_prio;
	.loc 1 363 0
	ldr	r3, [r7, #4]	@ tmp128, task
	ldrb	r2, [r3, #37]	@ zero_extendqisi2	@ _7, task_11(D)->default_prio
	ldr	r3, [r7, #4]	@ tmp129, task
	strb	r2, [r3, #36]	@ tmp130, task_11(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:364:             EnableInterrupts();
	.loc 1 364 0
	bl	LLF_INT_ENABLE	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:351:       if(task->state_request != 0)
	.loc 1 351 0
	b	.L73	@
.L70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:368:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 368 0
	movs	r1, #8	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:351:       if(task->state_request != 0)
	.loc 1 351 0
	b	.L73	@
.L69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:373:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 373 0
	movs	r1, #8	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:351:       if(task->state_request != 0)
	.loc 1 351 0
	b	.L73	@
.L68:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:379:       OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 379 0
	movs	r1, #8	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L73:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:381: }
	.loc 1 381 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L75:
	.align	2
.L74:
	.word	OS_STACK
	.cfi_endproc
.LFE7:
	.size	OS_TerminateTask, .-OS_TerminateTask
	.align	1
	.global	OS_TaskDispatcher
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TaskDispatcher, %function
OS_TaskDispatcher:
.LFB8:
	.loc 1 383 0
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
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:395:    task_t* task = 0;
	.loc 1 395 0
	movs	r3, #0	@ tmp110,
	str	r3, [r7, #4]	@ tmp110, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:397:    task         = GetRunningTask();
	.loc 1 397 0
	bl	GetRunningTask	@
	str	r0, [r7, #4]	@, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:398:    scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
	.loc 1 398 0
	bl	GetRunningSchedulingQueueElementPtr	@
	str	r0, [r7]	@, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:400:    if(task!=0 && scheduling_task_ptr != 0)
	.loc 1 400 0
	ldr	r3, [r7, #4]	@ tmp111, task
	cmp	r3, #0	@ tmp111,
	beq	.L77	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:400:    if(task!=0 && scheduling_task_ptr != 0)
	.loc 1 400 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]	@ tmp112, scheduling_task_ptr
	cmp	r3, #0	@ tmp112,
	beq	.L77	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:402:       OS_TerminateTask(task, scheduling_task_ptr);
	.loc 1 402 0 is_stmt 1
	ldr	r1, [r7]	@, scheduling_task_ptr
	ldr	r0, [r7, #4]	@, task
	bl	OS_TerminateTask	@
.L77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:407:    scheduling_task_ptr = OS_TaskScheduler();
	.loc 1 407 0
	bl	OS_TaskScheduler	@
	str	r0, [r7]	@, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:408:    if(scheduling_task_ptr != 0)
	.loc 1 408 0
	ldr	r3, [r7]	@ tmp113, scheduling_task_ptr
	cmp	r3, #0	@ tmp113,
	beq	.L78	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:410:       task = GetFromTaskQueue(scheduling_task_ptr);
	.loc 1 410 0
	ldr	r0, [r7]	@, scheduling_task_ptr
	bl	GetFromTaskQueue	@
	str	r0, [r7, #4]	@, task
.L78:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:412:    if(task != 0 && scheduling_task_ptr != 0)
	.loc 1 412 0
	ldr	r3, [r7, #4]	@ tmp114, task
	cmp	r3, #0	@ tmp114,
	beq	.L80	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:412:    if(task != 0 && scheduling_task_ptr != 0)
	.loc 1 412 0 is_stmt 0 discriminator 1
	ldr	r3, [r7]	@ tmp115, scheduling_task_ptr
	cmp	r3, #0	@ tmp115,
	beq	.L80	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:414:        OS_StartTask(task, scheduling_task_ptr);
	.loc 1 414 0 is_stmt 1
	ldr	r1, [r7]	@, scheduling_task_ptr
	ldr	r0, [r7, #4]	@, task
	bl	OS_StartTask	@
.L80:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:416: }
	.loc 1 416 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
	.cfi_endproc
.LFE8:
	.size	OS_TaskDispatcher, .-OS_TaskDispatcher
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_0, %function
TASK_0:
.LFB9:
	.loc 1 418 0
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
	str	r0, [r7, #4]	@ task_ptr, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:420:    HaltMcu();/* HLT will be ended by timer interrupt, what shall be done with the rest of the function... ??*/
	.loc 1 420 0
	bl	LLF_WAIT_FOR_INTERRUPT	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:421: }
	.loc 1 421 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
	.cfi_endproc
.LFE9:
	.size	TASK_0, .-TASK_0
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_1, %function
TASK_1:
.LFB10:
	.loc 1 423 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16	@,,
	.cfi_def_cfa_offset 24
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]	@ task_ptr, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:424:    scheduling_t* scheduling_task_ptr = 0;
	.loc 1 424 0
	movs	r3, #0	@ tmp112,
	str	r3, [r7, #12]	@ tmp112, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:427:    scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
	.loc 1 427 0
	bl	GetRunningSchedulingQueueElementPtr	@
	str	r0, [r7, #12]	@, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:430:    TASK1_CALL_NR++;
	.loc 1 430 0
	ldr	r3, .L84	@ tmp113,
	ldr	r3, [r3]	@ TASK1_CALL_NR.0_1, TASK1_CALL_NR
	adds	r3, r3, #1	@ _2, TASK1_CALL_NR.0_1,
	ldr	r2, .L84	@ tmp114,
	str	r3, [r2]	@ _2, TASK1_CALL_NR
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:431:    OS_SleepTask((task_t*)task_ptr, 10, scheduling_task_ptr);
	.loc 1 431 0
	ldr	r2, [r7, #12]	@, scheduling_task_ptr
	movs	r1, #10	@,
	ldr	r0, [r7, #4]	@, task_ptr
	bl	OS_SleepTask	@
.L83:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:433:    while(1) {}
	.loc 1 433 0 discriminator 1
	b	.L83	@
.L85:
	.align	2
.L84:
	.word	TASK1_CALL_NR
	.cfi_endproc
.LFE10:
	.size	TASK_1, .-TASK_1
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_2, %function
TASK_2:
.LFB11:
	.loc 1 438 0
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
	str	r0, [r7, #4]	@ task_ptr, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:443:    TASK2_CALL_NR++;
	.loc 1 443 0
	ldr	r3, .L88	@ tmp112,
	ldr	r3, [r3]	@ TASK2_CALL_NR.1_1, TASK2_CALL_NR
	adds	r3, r3, #1	@ _2, TASK2_CALL_NR.1_1,
	ldr	r2, .L88	@ tmp113,
	str	r3, [r2]	@ _2, TASK2_CALL_NR
.L87:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:445:    while(1) {}
	.loc 1 445 0 discriminator 1
	b	.L87	@
.L89:
	.align	2
.L88:
	.word	TASK2_CALL_NR
	.cfi_endproc
.LFE11:
	.size	TASK_2, .-TASK_2
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_3, %function
TASK_3:
.LFB12:
	.loc 1 450 0
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
	str	r0, [r7, #4]	@ task_ptr, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:455:    TASK3_CALL_NR++;
	.loc 1 455 0
	ldr	r3, .L92	@ tmp112,
	ldr	r3, [r3]	@ TASK3_CALL_NR.2_1, TASK3_CALL_NR
	adds	r3, r3, #1	@ _2, TASK3_CALL_NR.2_1,
	ldr	r2, .L92	@ tmp113,
	str	r3, [r2]	@ _2, TASK3_CALL_NR
.L91:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:457:    while(1) {}
	.loc 1 457 0 discriminator 1
	b	.L91	@
.L93:
	.align	2
.L92:
	.word	TASK3_CALL_NR
	.cfi_endproc
.LFE12:
	.size	TASK_3, .-TASK_3
	.align	1
	.global	OS_InitTasks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_InitTasks, %function
OS_InitTasks:
.LFB13:
	.loc 1 462 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #32	@,,
	.cfi_def_cfa_offset 40
	add	r7, sp, #24	@,,
	.cfi_def_cfa 7, 16
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:463:    task_t* task_ptr = 0;
	.loc 1 463 0
	movs	r3, #0	@ tmp111,
	str	r3, [r7, #4]	@ tmp111, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:464:    LAST_CURRENT_TIME = OS_GetCurrentTime();
	.loc 1 464 0
	bl	OS_GetCurrentTime	@
	mov	r2, r0	@ _1,
	ldr	r3, .L95	@ tmp112,
	str	r2, [r3]	@ _1, LAST_CURRENT_TIME
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:475:    OS_InitTaskQueue();
	.loc 1 475 0
	bl	OS_InitTaskQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:478:    task_ptr = &TASK_0_VAR;
	.loc 1 478 0
	ldr	r3, .L95+4	@ tmp113,
	str	r3, [r7, #4]	@ tmp113, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:479:    OS_InitTask(task_ptr,                          /* task */
	.loc 1 479 0
	movs	r3, #0	@ tmp114,
	str	r3, [sp, #20]	@ tmp114,
	movs	r3, #0	@ tmp115,
	str	r3, [sp, #16]	@ tmp115,
	movs	r3, #0	@ tmp116,
	str	r3, [sp, #12]	@ tmp116,
	movs	r3, #200	@ tmp117,
	str	r3, [sp, #8]	@ tmp117,
	ldr	r3, .L95+8	@ tmp118,
	str	r3, [sp, #4]	@ tmp118,
	ldr	r3, .L95+12	@ tmp119,
	str	r3, [sp]	@ tmp119,
	movs	r3, #1	@,
	movs	r2, #1	@,
	ldr	r1, .L95+16	@,
	ldr	r0, [r7, #4]	@, task_ptr
	bl	OS_InitTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:490:    AddToSchedulingQueue(task_ptr);
	.loc 1 490 0
	ldr	r0, [r7, #4]	@, task_ptr
	bl	AddToSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:494:    task_ptr = &TASK_1_VAR;
	.loc 1 494 0
	ldr	r3, .L95+20	@ tmp120,
	str	r3, [r7, #4]	@ tmp120, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:495:    OS_InitTask(task_ptr,      /* task */
	.loc 1 495 0
	movs	r3, #1	@ tmp121,
	str	r3, [sp, #20]	@ tmp121,
	movs	r3, #0	@ tmp122,
	str	r3, [sp, #16]	@ tmp122,
	movs	r3, #0	@ tmp123,
	str	r3, [sp, #12]	@ tmp123,
	movs	r3, #200	@ tmp124,
	str	r3, [sp, #8]	@ tmp124,
	ldr	r3, .L95+24	@ tmp125,
	str	r3, [sp, #4]	@ tmp125,
	ldr	r3, .L95+12	@ tmp126,
	str	r3, [sp]	@ tmp126,
	movs	r3, #0	@,
	movs	r2, #1	@,
	ldr	r1, .L95+28	@,
	ldr	r0, [r7, #4]	@, task_ptr
	bl	OS_InitTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:506:    AddToSchedulingQueue(task_ptr);               
	.loc 1 506 0
	ldr	r0, [r7, #4]	@, task_ptr
	bl	AddToSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:510:    task_ptr = &TASK_2_VAR;
	.loc 1 510 0
	ldr	r3, .L95+32	@ tmp127,
	str	r3, [r7, #4]	@ tmp127, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:511:    OS_InitTask(task_ptr,      /* task */
	.loc 1 511 0
	movs	r3, #2	@ tmp128,
	str	r3, [sp, #20]	@ tmp128,
	movs	r3, #0	@ tmp129,
	str	r3, [sp, #16]	@ tmp129,
	movs	r3, #0	@ tmp130,
	str	r3, [sp, #12]	@ tmp130,
	movs	r3, #200	@ tmp131,
	str	r3, [sp, #8]	@ tmp131,
	ldr	r3, .L95+36	@ tmp132,
	str	r3, [sp, #4]	@ tmp132,
	ldr	r3, .L95+40	@ tmp133,
	str	r3, [sp]	@ tmp133,
	movs	r3, #0	@,
	movs	r2, #1	@,
	ldr	r1, .L95+44	@,
	ldr	r0, [r7, #4]	@, task_ptr
	bl	OS_InitTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:522:    AddToSchedulingQueue(task_ptr);               
	.loc 1 522 0
	ldr	r0, [r7, #4]	@, task_ptr
	bl	AddToSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:526:    task_ptr = &TASK_3_VAR;
	.loc 1 526 0
	ldr	r3, .L95+48	@ tmp134,
	str	r3, [r7, #4]	@ tmp134, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:527:    OS_InitTask(task_ptr,      /* task */
	.loc 1 527 0
	movs	r3, #3	@ tmp135,
	str	r3, [sp, #20]	@ tmp135,
	movs	r3, #0	@ tmp136,
	str	r3, [sp, #16]	@ tmp136,
	movs	r3, #0	@ tmp137,
	str	r3, [sp, #12]	@ tmp137,
	movs	r3, #200	@ tmp138,
	str	r3, [sp, #8]	@ tmp138,
	ldr	r3, .L95+52	@ tmp139,
	str	r3, [sp, #4]	@ tmp139,
	ldr	r3, .L95+56	@ tmp140,
	str	r3, [sp]	@ tmp140,
	movs	r3, #0	@,
	movs	r2, #1	@,
	ldr	r1, .L95+60	@,
	ldr	r0, [r7, #4]	@, task_ptr
	bl	OS_InitTask	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:538:    AddToSchedulingQueue(task_ptr);               
	.loc 1 538 0
	ldr	r0, [r7, #4]	@, task_ptr
	bl	AddToSchedulingQueue	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:540: }
	.loc 1 540 0
	nop
	adds	r7, r7, #8	@,,
	.cfi_def_cfa_offset 8
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r7, pc}	@
.L96:
	.align	2
.L95:
	.word	LAST_CURRENT_TIME
	.word	TASK_0_VAR
	.word	TASK_STACK
	.word	TASK_GROUP_1
	.word	TASK_0
	.word	TASK_1_VAR
	.word	TASK_STACK+2000
	.word	TASK_1
	.word	TASK_2_VAR
	.word	TASK_STACK+4000
	.word	TASK_GROUP_2
	.word	TASK_2
	.word	TASK_3_VAR
	.word	TASK_STACK+6000
	.word	TASK_GROUP_3
	.word	TASK_3
	.cfi_endproc
.LFE13:
	.size	OS_InitTasks, .-OS_InitTasks
	.global	__aeabi_ui2d
	.global	__aeabi_dcmpgt
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TaskScheduler, %function
OS_TaskScheduler:
.LFB14:
	.loc 1 544 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}	@
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28	@,,
	.cfi_def_cfa_offset 40
	add	r7, sp, #0	@,,
	.cfi_def_cfa_register 7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:549:    unsigned_char_t Winner_prio = 0;
	.loc 1 549 0
	movs	r3, #0	@ tmp141,
	strb	r3, [r7, #22]	@ tmp142, Winner_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:550:    task_t*         task = 0;
	.loc 1 550 0
	movs	r3, #0	@ tmp143,
	str	r3, [r7, #12]	@ tmp143, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:551:    task_t*         Winner_task = 0;
	.loc 1 551 0
	movs	r3, #0	@ tmp144,
	str	r3, [r7, #8]	@ tmp144, Winner_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:552:    scheduling_t*   Winner_scheduling_queue_member = 0;
	.loc 1 552 0
	movs	r3, #0	@ tmp145,
	str	r3, [r7, #16]	@ tmp145, Winner_scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:553:    scheduler_time_t delta_time = OS_GetCurrentTime() - LAST_CURRENT_TIME;
	.loc 1 553 0
	bl	OS_GetCurrentTime	@
	mov	r2, r0	@ _1,
	ldr	r3, .L113	@ tmp146,
	ldr	r3, [r3]	@ LAST_CURRENT_TIME.3_2, LAST_CURRENT_TIME
	subs	r3, r2, r3	@ tmp147, _1, LAST_CURRENT_TIME.3_2
	str	r3, [r7, #4]	@ tmp147, delta_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:555:    LAST_CURRENT_TIME = OS_GetCurrentTime();
	.loc 1 555 0
	bl	OS_GetCurrentTime	@
	mov	r2, r0	@ _3,
	ldr	r3, .L113	@ tmp148,
	str	r2, [r3]	@ _3, LAST_CURRENT_TIME
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:571:    For_all_tasks_in_queue(element_nr)
	.loc 1 571 0
	movs	r3, #0	@ tmp149,
	strb	r3, [r7, #23]	@ tmp150, element_nr
	b	.L98	@
.L106:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:573:       scheduling_queue_member = GetFromSchedulingQueue(element_nr);
	.loc 1 573 0
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ tmp151, element_nr
	mov	r0, r3	@, tmp151
	bl	GetFromSchedulingQueue	@
	str	r0, [r7]	@, scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:575:       task             = GetFromTaskQueue(scheduling_queue_member);
	.loc 1 575 0
	ldr	r0, [r7]	@, scheduling_queue_member
	bl	GetFromTaskQueue	@
	str	r0, [r7, #12]	@, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:577:       if((task != 0)&&(task->task_queued != False))
	.loc 1 577 0
	ldr	r3, [r7, #12]	@ tmp152, task
	cmp	r3, #0	@ tmp152,
	beq	.L99	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:577:       if((task != 0)&&(task->task_queued != False))
	.loc 1 577 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]	@ tmp153, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _4, *task_70
	and	r3, r3, #2	@ tmp154, _4,
	uxtb	r3, r3	@ _5, tmp154
	cmp	r3, #0	@ _5,
	beq	.L99	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:579:          if(task->wait_time >= task->TimeToPrioInc)
	.loc 1 579 0 is_stmt 1
	ldr	r3, [r7, #12]	@ tmp155, task
	ldr	r2, [r3, #12]	@ _6, task_70->wait_time
	ldr	r3, [r7, #12]	@ tmp156, task
	ldr	r3, [r3, #16]	@ _7, task_70->TimeToPrioInc
	cmp	r2, r3	@ _6, _7
	bcc	.L100	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:581:             task->current_prio = task->current_prio + task->overwaittime_per_prio_inc_step;
	.loc 1 581 0
	ldr	r3, [r7, #12]	@ tmp157, task
	ldrb	r2, [r3, #36]	@ zero_extendqisi2	@ _8, task_70->current_prio
	ldr	r3, [r7, #12]	@ tmp158, task
	ldr	r3, [r3, #20]	@ _9, task_70->overwaittime_per_prio_inc_step
	uxtb	r3, r3	@ _10, _9
	add	r3, r3, r2	@ tmp159, _8
	uxtb	r2, r3	@ _11, tmp159
	ldr	r3, [r7, #12]	@ tmp160, task
	strb	r2, [r3, #36]	@ tmp161, task_70->current_prio
.L100:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:584:          if(task->WaitActUntil > OS_GetCurrentTime())
	.loc 1 584 0
	ldr	r3, [r7, #12]	@ tmp162, task
	ldr	r4, [r3, #8]	@ _12, task_70->WaitActUntil
	bl	OS_GetCurrentTime	@
	mov	r3, r0	@ _13,
	cmp	r4, r3	@ _12, _13
	bls	.L101	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:586:             task->current_prio = 0;
	.loc 1 586 0
	ldr	r3, [r7, #12]	@ tmp163, task
	movs	r2, #0	@ tmp164,
	strb	r2, [r3, #36]	@ tmp165, task_70->current_prio
.L101:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:588:          if(task->wait_time > task->max_allowed_wait_time)
	.loc 1 588 0
	ldr	r3, [r7, #12]	@ tmp166, task
	ldr	r2, [r3, #12]	@ _14, task_70->wait_time
	ldr	r3, [r7, #12]	@ tmp167, task
	ldr	r3, [r3, #24]	@ _15, task_70->max_allowed_wait_time
	cmp	r2, r3	@ _14, _15
	bls	.L102	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:591:             OS_SetSwBug(os_bug_task_max_wait_time_reached, Func_TaskScheduler);
	.loc 1 591 0
	movs	r1, #9	@,
	movs	r0, #3	@,
	bl	OS_SetSwBug	@
.L102:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:594:          if(task->task_group!=0)
	.loc 1 594 0
	ldr	r3, [r7, #12]	@ tmp168, task
	ldr	r3, [r3, #56]	@ _16, task_70->task_group
	cmp	r3, #0	@ _16,
	beq	.L103	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:597:             if(task->task_group->exe_time > task->task_group->fair_exe_time)
	.loc 1 597 0
	ldr	r3, [r7, #12]	@ tmp169, task
	ldr	r3, [r3, #56]	@ _17, task_70->task_group
	ldr	r2, [r3]	@ _18, _17->exe_time
	ldr	r3, [r7, #12]	@ tmp170, task
	ldr	r3, [r3, #56]	@ _19, task_70->task_group
	ldr	r3, [r3, #4]	@ _20, _19->fair_exe_time
	cmp	r2, r3	@ _18, _20
	bls	.L99	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:599:                if(task->exe_time > Task_min_time)/* guarantee min time */
	.loc 1 599 0
	ldr	r3, [r7, #12]	@ tmp171, task
	ldr	r3, [r3, #28]	@ _21, task_70->exe_time
	mov	r0, r3	@, _21
	bl	__aeabi_ui2d	@
.LVL6:
	mov	r2, #0	@,
	ldr	r3, .L113+4	@,
	bl	__aeabi_dcmpgt	@
.LVL7:
	mov	r3, r0	@ tmp172,
	cmp	r3, #0	@ tmp172,
	beq	.L99	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:601:                   task->current_prio = 0;
	.loc 1 601 0
	ldr	r3, [r7, #12]	@ tmp173, task
	movs	r2, #0	@ tmp174,
	strb	r2, [r3, #36]	@ tmp175, task_70->current_prio
	b	.L99	@
.L103:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:608:             OS_SetSwBug(os_bug_null_pointer, Func_TaskScheduler);
	.loc 1 608 0
	movs	r1, #9	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.L99:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:571:    For_all_tasks_in_queue(element_nr)
	.loc 1 571 0 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ element_nr.4_23, element_nr
	adds	r3, r3, #1	@ tmp176, element_nr.4_23,
	strb	r3, [r7, #23]	@ tmp177, element_nr
.L98:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:571:    For_all_tasks_in_queue(element_nr)
	.loc 1 571 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ tmp178, element_nr
	cmp	r3, #9	@ tmp178,
	bls	.L106	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:618:    For_all_tasks_in_queue(element_nr)
	.loc 1 618 0 is_stmt 1
	movs	r3, #0	@ tmp179,
	strb	r3, [r7, #23]	@ tmp180, element_nr
	b	.L107	@
.L110:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:620:       scheduling_queue_member = GetFromSchedulingQueue(element_nr);
	.loc 1 620 0
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ tmp181, element_nr
	mov	r0, r3	@, tmp181
	bl	GetFromSchedulingQueue	@
	str	r0, [r7]	@, scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:621:       task             = GetFromTaskQueue(scheduling_queue_member);
	.loc 1 621 0
	ldr	r0, [r7]	@, scheduling_queue_member
	bl	GetFromTaskQueue	@
	str	r0, [r7, #12]	@, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:622:       if(task != 0)
	.loc 1 622 0
	ldr	r3, [r7, #12]	@ tmp182, task
	cmp	r3, #0	@ tmp182,
	beq	.L108	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:625:          if(task->IdleTask != True)
	.loc 1 625 0
	ldr	r3, [r7, #12]	@ tmp183, task
	ldrb	r3, [r3]	@ zero_extendqisi2	@ _24, *task_61
	and	r3, r3, #4	@ tmp184, _24,
	uxtb	r3, r3	@ _25, tmp184
	cmp	r3, #0	@ _25,
	bne	.L109	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:627:             task->wait_time += delta_time;
	.loc 1 627 0
	ldr	r3, [r7, #12]	@ tmp185, task
	ldr	r2, [r3, #12]	@ _26, task_61->wait_time
	ldr	r3, [r7, #4]	@ tmp186, delta_time
	add	r2, r2, r3	@ _27, tmp186
	ldr	r3, [r7, #12]	@ tmp187, task
	str	r2, [r3, #12]	@ _27, task_61->wait_time
.L109:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:630:          if(task->current_prio > Winner_prio)
	.loc 1 630 0
	ldr	r3, [r7, #12]	@ tmp188, task
	ldrb	r3, [r3, #36]	@ zero_extendqisi2	@ _28, task_61->current_prio
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ tmp189, Winner_prio
	cmp	r2, r3	@ tmp189, _28
	bcs	.L108	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:632:             Winner_prio = task->current_prio;
	.loc 1 632 0
	ldr	r3, [r7, #12]	@ tmp190, task
	ldrb	r3, [r3, #36]	@ tmp191, task_61->current_prio
	strb	r3, [r7, #22]	@ tmp191, Winner_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:633:             Winner_task = task;
	.loc 1 633 0
	ldr	r3, [r7, #12]	@ tmp192, task
	str	r3, [r7, #8]	@ tmp192, Winner_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:634:             Winner_scheduling_queue_member = scheduling_queue_member;
	.loc 1 634 0
	ldr	r3, [r7]	@ tmp193, scheduling_queue_member
	str	r3, [r7, #16]	@ tmp193, Winner_scheduling_queue_member
.L108:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:618:    For_all_tasks_in_queue(element_nr)
	.loc 1 618 0 discriminator 2
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ element_nr.5_29, element_nr
	adds	r3, r3, #1	@ tmp194, element_nr.5_29,
	strb	r3, [r7, #23]	@ tmp195, element_nr
.L107:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:618:    For_all_tasks_in_queue(element_nr)
	.loc 1 618 0 is_stmt 0 discriminator 1
	ldrb	r3, [r7, #23]	@ zero_extendqisi2	@ tmp196, element_nr
	cmp	r3, #9	@ tmp196,
	bls	.L110	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:645:    return Winner_scheduling_queue_member;
	.loc 1 645 0 is_stmt 1
	ldr	r3, [r7, #16]	@ _57, Winner_scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:646: }
	.loc 1 646 0
	mov	r0, r3	@, <retval>
	adds	r7, r7, #28	@,,
	.cfi_def_cfa_offset 12
	mov	sp, r7	@,
	.cfi_def_cfa_register 13
	@ sp needed	@
	pop	{r4, r7, pc}	@
.L114:
	.align	2
.L113:
	.word	LAST_CURRENT_TIME
	.word	1072693248
	.cfi_endproc
.LFE14:
	.size	OS_TaskScheduler, .-OS_TaskScheduler
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 7 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa01
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF677
	.byte	0x1
	.4byte	.LASF678
	.4byte	.LASF679
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF523
	.byte	0x2
	.byte	0x1d
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF521
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF522
	.uleb128 0x2
	.4byte	.LASF524
	.byte	0x2
	.byte	0x22
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF525
	.uleb128 0x2
	.4byte	.LASF526
	.byte	0x2
	.byte	0x23
	.4byte	0x4d
	.uleb128 0x4
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF536
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2b
	.4byte	0xa6
	.uleb128 0x6
	.4byte	.LASF527
	.byte	0
	.uleb128 0x6
	.4byte	.LASF528
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF529
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF530
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF531
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF533
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF534
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.4byte	.LASF535
	.byte	0x3
	.byte	0x36
	.4byte	0x64
	.uleb128 0x4
	.4byte	0xa6
	.uleb128 0x5
	.4byte	.LASF537
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x37
	.4byte	0x128
	.uleb128 0x6
	.4byte	.LASF538
	.byte	0
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF540
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF541
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF542
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF546
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF547
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF551
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF552
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF553
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF554
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x4
	.4byte	0x152
	.uleb128 0x6
	.4byte	.LASF555
	.byte	0
	.uleb128 0x6
	.4byte	.LASF556
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF558
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF559
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x10
	.4byte	0x176
	.uleb128 0x6
	.4byte	.LASF560
	.byte	0
	.uleb128 0x6
	.4byte	.LASF561
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF562
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF563
	.byte	0x4
	.byte	0x16
	.4byte	0x152
	.uleb128 0x5
	.4byte	.LASF564
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x1ab
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF567
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF568
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF569
	.byte	0x5
	.byte	0xe
	.4byte	0x181
	.uleb128 0x2
	.4byte	.LASF570
	.byte	0x5
	.byte	0x13
	.4byte	0x1c1
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x8
	.4byte	0x1d2
	.uleb128 0x9
	.4byte	0x1d2
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF571
	.byte	0x5
	.byte	0x15
	.4byte	0x1df
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1e5
	.uleb128 0xb
	.4byte	0x29
	.4byte	0x1f9
	.uleb128 0x9
	.4byte	0x1d2
	.uleb128 0x9
	.4byte	0x1ab
	.byte	0
	.uleb128 0xc
	.4byte	.LASF575
	.byte	0x8
	.byte	0x5
	.byte	0x17
	.4byte	0x21e
	.uleb128 0xd
	.4byte	.LASF572
	.byte	0x5
	.byte	0x19
	.4byte	0x42
	.byte	0
	.uleb128 0xd
	.4byte	.LASF573
	.byte	0x5
	.byte	0x1a
	.4byte	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF574
	.byte	0x5
	.byte	0x1c
	.4byte	0x1f9
	.uleb128 0xc
	.4byte	.LASF576
	.byte	0x88
	.byte	0x5
	.byte	0x1e
	.4byte	0x40b
	.uleb128 0xe
	.4byte	.LASF577
	.byte	0x5
	.byte	0x20
	.4byte	0x40b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF578
	.byte	0x5
	.byte	0x21
	.4byte	0x40b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF579
	.byte	0x5
	.byte	0x22
	.4byte	0x40b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF580
	.byte	0x5
	.byte	0x23
	.4byte	0x40b
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF581
	.byte	0x5
	.byte	0x24
	.4byte	0x29
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF582
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF583
	.byte	0x5
	.byte	0x26
	.4byte	0x42
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF584
	.byte	0x5
	.byte	0x27
	.4byte	0x42
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF585
	.byte	0x5
	.byte	0x28
	.4byte	0x42
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF586
	.byte	0x5
	.byte	0x29
	.4byte	0x42
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF587
	.byte	0x5
	.byte	0x2a
	.4byte	0x42
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF572
	.byte	0x5
	.byte	0x2b
	.4byte	0x42
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF588
	.byte	0x5
	.byte	0x2c
	.4byte	0x42
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF589
	.byte	0x5
	.byte	0x2d
	.4byte	0x29
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF590
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF591
	.byte	0x5
	.byte	0x2f
	.4byte	0x42
	.byte	0x28
	.uleb128 0xf
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x1b6
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF592
	.byte	0x5
	.byte	0x31
	.4byte	0x1d4
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF593
	.byte	0x5
	.byte	0x32
	.4byte	0x1ab
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF594
	.byte	0x5
	.byte	0x33
	.4byte	0x412
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
	.4byte	.LASF595
	.byte	0x5
	.byte	0x48
	.4byte	0x418
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF596
	.byte	0x5
	.byte	0x49
	.4byte	0x418
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF597
	.byte	0x5
	.byte	0x4a
	.4byte	0x418
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF598
	.byte	0x5
	.byte	0x4b
	.4byte	0x42
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF599
	.byte	0x5
	.byte	0x4c
	.4byte	0x418
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF600
	.byte	0x5
	.byte	0x4d
	.4byte	0x176
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF601
	.uleb128 0x7
	.byte	0x4
	.4byte	0x21e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF602
	.byte	0x5
	.byte	0x4f
	.4byte	0x229
	.uleb128 0x2
	.4byte	.LASF603
	.byte	0x5
	.byte	0x50
	.4byte	0x434
	.uleb128 0x7
	.byte	0x4
	.4byte	0x41e
	.uleb128 0x10
	.4byte	0x434
	.4byte	0x44a
	.uleb128 0x11
	.4byte	0x40b
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF605
	.byte	0x5
	.byte	0x5b
	.4byte	0x43a
	.uleb128 0x2
	.4byte	.LASF604
	.byte	0x5
	.byte	0x5d
	.4byte	0x40b
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x471
	.uleb128 0x13
	.4byte	0x40b
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x6
	.byte	0xb
	.4byte	0x460
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x493
	.uleb128 0x11
	.4byte	0x40b
	.byte	0
	.uleb128 0x13
	.4byte	0x40b
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF607
	.byte	0x6
	.byte	0xe
	.4byte	0x47c
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4af
	.uleb128 0x13
	.4byte	0x40b
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF608
	.byte	0x6
	.byte	0xf
	.4byte	0x49e
	.uleb128 0x10
	.4byte	0xb1
	.4byte	0x4ca
	.uleb128 0x11
	.4byte	0x40b
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x4ba
	.uleb128 0x12
	.4byte	.LASF609
	.byte	0x6
	.byte	0x10
	.4byte	0x4ca
	.uleb128 0x12
	.4byte	.LASF610
	.byte	0x6
	.byte	0x11
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF611
	.byte	0x6
	.byte	0x12
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x6
	.byte	0x13
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x6
	.byte	0x14
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF614
	.byte	0x6
	.byte	0x15
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF615
	.byte	0x6
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF616
	.byte	0x6
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF617
	.byte	0x6
	.byte	0x18
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF618
	.byte	0x6
	.byte	0x19
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x6
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x6
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x6
	.byte	0x1c
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x6
	.byte	0x1d
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x6
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x6
	.byte	0x1f
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x6
	.byte	0x20
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x6
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x6
	.byte	0x22
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x6
	.byte	0x23
	.4byte	0x5f
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x5c2
	.uleb128 0x11
	.4byte	0x40b
	.byte	0x9
	.uleb128 0x13
	.4byte	0x40b
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x6
	.byte	0x25
	.4byte	0x5ab
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x6
	.byte	0x26
	.4byte	0x455
	.uleb128 0x10
	.4byte	0x429
	.4byte	0x5e8
	.uleb128 0x11
	.4byte	0x40b
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x6
	.byte	0x27
	.4byte	0x5d8
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x6
	.byte	0x28
	.4byte	0x5fe
	.uleb128 0x7
	.byte	0x4
	.4byte	0x429
	.uleb128 0x10
	.4byte	0x41e
	.4byte	0x614
	.uleb128 0x11
	.4byte	0x40b
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x6
	.byte	0x29
	.4byte	0x604
	.uleb128 0x10
	.4byte	0x41e
	.4byte	0x62f
	.uleb128 0x11
	.4byte	0x40b
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x6
	.byte	0x2a
	.4byte	0x61f
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x6
	.byte	0x2b
	.4byte	0x61f
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x6
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x6
	.byte	0x2d
	.4byte	0x41e
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x6
	.byte	0x2d
	.4byte	0x41e
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x6
	.byte	0x2d
	.4byte	0x41e
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x6
	.byte	0x2d
	.4byte	0x41e
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x6
	.byte	0x2e
	.4byte	0x21e
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x6
	.byte	0x2e
	.4byte	0x21e
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x6
	.byte	0x2e
	.4byte	0x21e
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x6
	.byte	0x2e
	.4byte	0x21e
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x6
	.byte	0x2e
	.4byte	0x21e
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x6
	.byte	0x2f
	.4byte	0x434
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x6
	.byte	0x30
	.4byte	0x1ab
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x6
	.byte	0x31
	.4byte	0x1ab
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x6
	.byte	0x32
	.4byte	0x6df
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6e5
	.uleb128 0x14
	.uleb128 0x2
	.4byte	.LASF650
	.byte	0x7
	.byte	0xf
	.4byte	0x40b
	.uleb128 0x15
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x21f
	.4byte	0x775
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x775
	.uleb128 0x16
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x222
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x223
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x16
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x225
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x16
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x226
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x227
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x228
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x229
	.4byte	0x455
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x434
	.uleb128 0x17
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x1cd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a1
	.uleb128 0x16
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x1c1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7c7
	.uleb128 0x19
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x1b5
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ed
	.uleb128 0x19
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x1a6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x822
	.uleb128 0x19
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x1a1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x848
	.uleb128 0x19
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x17e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x87d
	.uleb128 0x16
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x18a
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x18b
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x17
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x154
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b2
	.uleb128 0x19
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x154
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x154
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x11f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e7
	.uleb128 0x19
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x11f
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x11f
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF669
	.byte	0x1
	.byte	0xf2
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90b
	.uleb128 0x1c
	.4byte	.LASF654
	.byte	0x1
	.byte	0xf2
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF670
	.byte	0x1
	.byte	0xc8
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93d
	.uleb128 0x1c
	.4byte	.LASF654
	.byte	0x1
	.byte	0xc8
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF667
	.byte	0x1
	.byte	0xc8
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF671
	.byte	0x1
	.byte	0xae
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x961
	.uleb128 0x1c
	.4byte	.LASF654
	.byte	0x1
	.byte	0xae
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF681
	.byte	0x1
	.byte	0x37
	.4byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b3
	.uleb128 0x1c
	.4byte	.LASF672
	.byte	0x1
	.byte	0x37
	.4byte	0x1d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.4byte	.LASF673
	.byte	0x1
	.byte	0x37
	.4byte	0x1ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1f
	.4byte	.LASF674
	.byte	0x1
	.byte	0x39
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF654
	.byte	0x1
	.byte	0x3b
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF675
	.byte	0x1
	.byte	0x30
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f3
	.uleb128 0x1c
	.4byte	.LASF654
	.byte	0x1
	.byte	0x30
	.4byte	0x434
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF676
	.byte	0x1
	.byte	0x30
	.4byte	0x6e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LASF662
	.byte	0x1
	.byte	0x30
	.4byte	0x5fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.4byte	.LASF682
	.byte	0x1
	.byte	0x16
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
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
	.file 8 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x8
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
	.file 9 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF473
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF474
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0x4
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF487
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xd
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
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 17 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x11
	.byte	0x4
	.file 18 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 19 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.file 20 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF520
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
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.125feba674fa85672711aed1ca8ea199,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF510
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.9428c7964838a07bb4b1cac6c50ee9b2,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF514
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF677:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O0 -std=c90\000"
.LASF58:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
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
.LASF319:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF546:
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
.LASF25:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF331:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF347:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF274:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF258:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF636:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF160:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF82:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF632:
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
.LASF449:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF165:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF40:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF257:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF675:
	.ascii	"OS_SleepTask\000"
.LASF462:
	.ascii	"DynamicMemoryUsed False\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF580:
	.ascii	"FREE\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF601:
	.ascii	"unsigned int\000"
.LASF563:
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
.LASF576:
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
.LASF309:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF681:
	.ascii	"task_state_request\000"
.LASF559:
	.ascii	"privilige_mode_e\000"
.LASF103:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF46:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF90:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF597:
	.ascii	"pStackPointerStart\000"
.LASF489:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF26:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF664:
	.ascii	"OS_InitTasks\000"
.LASF630:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF585:
	.ascii	"TimeToPrioInc\000"
.LASF271:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF466:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF106:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
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
.LASF561:
	.ascii	"ePriviligeMode_priviliged_thread_mode\000"
.LASF671:
	.ascii	"OS_CreateTask\000"
.LASF587:
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
.LASF577:
	.ascii	"active\000"
.LASF196:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF363:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF41:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF57:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF566:
	.ascii	"Task_suspended\000"
.LASF104:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF611:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF108:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF544:
	.ascii	"Func_StartTask\000"
.LASF438:
	.ascii	"_os_firstinc_h_ \000"
.LASF600:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF327:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF537:
	.ascii	"os_sw_bugs_function_e\000"
.LASF458:
	.ascii	"Local static\000"
.LASF639:
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
.LASF635:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF452:
	.ascii	"False 0\000"
.LASF145:
	.ascii	"__FLT_DIG__ 6\000"
.LASF619:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF503:
	.ascii	"os_running 1\000"
.LASF354:
	.ascii	"__DA_FBIT__ 31\000"
.LASF552:
	.ascii	"Func_os_exception\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF232:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF651:
	.ascii	"scheduling_queue_member\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3\000"
.LASF646:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF676:
	.ascii	"millisec\000"
.LASF289:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF594:
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
.LASF542:
	.ascii	"Func_DeleteTaskEnvironment\000"
.LASF520:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF95:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF279:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF48:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF653:
	.ascii	"Winner_prio\000"
.LASF276:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF320:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF288:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF623:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF143:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF485:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF287:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF171:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF307:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF680:
	.ascii	"OS_TaskScheduler\000"
.LASF453:
	.ascii	"True 1\000"
.LASF54:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF59:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF225:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF682:
	.ascii	"OS_ActivateDispatcher\000"
.LASF530:
	.ascii	"os_bug_task_max_wait_time_reached\000"
.LASF290:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF491:
	.ascii	"_OS_RAM_H_ \000"
.LASF166:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF209:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF240:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF262:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF87:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF657:
	.ascii	"delta_time\000"
.LASF650:
	.ascii	"task_time_t\000"
.LASF335:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF301:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF668:
	.ascii	"OS_StartTask\000"
.LASF183:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF629:
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
.LASF547:
	.ascii	"Func_TaskScheduler\000"
.LASF275:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF243:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF621:
	.ascii	"DBG_RLD_VALUE\000"
.LASF553:
	.ascii	"Func_CreateTask\000"
.LASF475:
	.ascii	"_os_task_common_h_ \000"
.LASF298:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF120:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF565:
	.ascii	"Task_unspecified\000"
.LASF616:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF459:
	.ascii	"Local_inline static __inline__\000"
.LASF498:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF589:
	.ascii	"current_prio\000"
.LASF534:
	.ascii	"os_bug_exception_AbortData\000"
.LASF169:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF518:
	.ascii	"SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF22:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF311:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF124:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF562:
	.ascii	"ePriviligeMode_priviliged_handler_mode\000"
.LASF131:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF264:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF250:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF548:
	.ascii	"Func_InitTask\000"
.LASF539:
	.ascii	"Func_SaveTaskEnvironment\000"
.LASF644:
	.ascii	"TASK_GROUP_4\000"
.LASF352:
	.ascii	"__SA_FBIT__ 15\000"
.LASF204:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF480:
	.ascii	"Task_min_time (1e0)\000"
.LASF507:
	.ascii	"Task_1_ptr 1\000"
.LASF294:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF673:
	.ascii	"requested_state\000"
.LASF55:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF223:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF593:
	.ascii	"task_state\000"
.LASF564:
	.ascii	"task_state_e\000"
.LASF83:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF199:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF631:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF242:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF484:
	.ascii	"TASK_STACK_SIZE 2000\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF71:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF598:
	.ascii	"StackSize\000"
.LASF51:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF149:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF569:
	.ascii	"task_state_t\000"
.LASF324:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF297:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF652:
	.ascii	"element_nr\000"
.LASF244:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF296:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF256:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF277:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF573:
	.ascii	"fair_exe_time\000"
.LASF471:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF624:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF556:
	.ascii	"Core1\000"
.LASF207:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF560:
	.ascii	"ePriviligeMode_unpriviliged_thread_mode\000"
.LASF366:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF189:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF306:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF142:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF519:
	.ascii	"SYSTICK_STAT_REG_ENABLE ((uint32)0x00000001)\000"
.LASF612:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF614:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF66:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF608:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF595:
	.ascii	"pStackPointer\000"
.LASF188:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF604:
	.ascii	"scheduler_time_t\000"
.LASF212:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF140:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF508:
	.ascii	"Task_2_ptr 2\000"
.LASF609:
	.ascii	"OS_SW_BUG\000"
.LASF226:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF667:
	.ascii	"scheduling_task\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF112:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF455:
	.ascii	"TRUE True\000"
.LASF300:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF511:
	.ascii	"_os_task_queue_h_ \000"
.LASF237:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF316:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF647:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF280:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF326:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF461:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF105:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF360:
	.ascii	"__USA_FBIT__ 16\000"
.LASF99:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF479:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF100:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF305:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF499:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF570:
	.ascii	"func_p_t\000"
.LASF91:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF233:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF138:
	.ascii	"__GCC_IEC_559 0\000"
.LASF472:
	.ascii	"HaltMcu() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF47:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF191:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF270:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF517:
	.ascii	"SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)\000"
.LASF655:
	.ascii	"Winner_task\000"
.LASF159:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF310:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF349:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF474:
	.ascii	"_lld_core_h_ \000"
.LASF538:
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
.LASF590:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF348:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF674:
	.ascii	"RequestState\000"
.LASF278:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF21:
	.ascii	"__CHAR_BIT__ 8\000"
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
.LASF251:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF172:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF654:
	.ascii	"task\000"
.LASF339:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF358:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF628:
	.ascii	"TASK4_CALL_NR\000"
.LASF679:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF618:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF678:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_scheduler.c\000"
.LASF318:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF107:
	.ascii	"__INT16_C(c) c\000"
.LASF669:
	.ascii	"OS_ActivateTask\000"
.LASF17:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF235:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF127:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF533:
	.ascii	"os_bug_exception_AbortPrefetch\000"
.LASF156:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF592:
	.ascii	"state_request\000"
.LASF555:
	.ascii	"Core0\000"
.LASF98:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF557:
	.ascii	"Core2\000"
.LASF558:
	.ascii	"Core3\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF637:
	.ascii	"TASK_0_VAR\000"
.LASF617:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF14:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF607:
	.ascii	"OS_STACK\000"
.LASF469:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF162:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF579:
	.ascii	"IdleTask\000"
.LASF638:
	.ascii	"TASK_1_VAR\000"
.LASF532:
	.ascii	"os_bug_exception_UndefInstruction\000"
.LASF128:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF32:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF70:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF96:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF167:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF78:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF523:
	.ascii	"unsigned_char_t\000"
.LASF18:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF526:
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
.LASF588:
	.ascii	"start_time\000"
.LASF245:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF578:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF662:
	.ascii	"scheduling_task_ptr\000"
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
.LASF510:
	.ascii	"OS_SaveTaskPtr(task_ptr,Task_n_ptr) \000"
.LASF174:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF285:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF571:
	.ascii	"func_p_state_change_t\000"
.LASF152:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF575:
	.ascii	"task_group_s\000"
.LASF27:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF303:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF86:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF229:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF648:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF284:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF505:
	.ascii	"_os_task_scheduler_h_ \000"
.LASF450:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF362:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF81:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF36:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF43:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF476:
	.ascii	"_os_task_config_h_ \000"
.LASF527:
	.ascii	"os_bug_no_bug\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF333:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF77:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF367:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF473:
	.ascii	"_lld_global_h_ \000"
.LASF154:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF596:
	.ascii	"pStackPointerByMalloc\000"
.LASF52:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF336:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF34:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF342:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF545:
	.ascii	"Func_PreemptTask\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF467:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
.LASF68:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF313:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF567:
	.ascii	"Task_ready\000"
.LASF663:
	.ascii	"TASK_0\000"
.LASF661:
	.ascii	"TASK_1\000"
.LASF660:
	.ascii	"TASK_2\000"
.LASF659:
	.ascii	"TASK_3\000"
.LASF150:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF448:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF625:
	.ascii	"TASK1_CALL_NR\000"
.LASF97:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF84:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF248:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF649:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF340:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF345:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF483:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF269:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF92:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF543:
	.ascii	"Func_InitTaskEnvironment\000"
.LASF238:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF114:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF599:
	.ascii	"pStackPointerEnd\000"
.LASF602:
	.ascii	"task_t\000"
.LASF549:
	.ascii	"Func_ActivateTask\000"
.LASF60:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF665:
	.ascii	"OS_TaskDispatcher\000"
.LASF502:
	.ascii	"os_init 0\000"
.LASF176:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF334:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF444:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF272:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF368:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF672:
	.ascii	"temp_task\000"
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
.LASF615:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF186:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF38:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF74:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF179:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF529:
	.ascii	"os_bug_null_pointer\000"
.LASF481:
	.ascii	"NUMBER_OF_TASKS 10\000"
.LASF267:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF338:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF259:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF490:
	.ascii	"_LED_H_ \000"
.LASF513:
	.ascii	"Last_task (MAX_RUN_QUEUE_SIZE-1)\000"
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
.LASF512:
	.ascii	"First_task (0)\000"
.LASF15:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF42:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF79:
	.ascii	"__SHRT_WIDTH__ 16\000"
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
.LASF627:
	.ascii	"TASK3_CALL_NR\000"
.LASF350:
	.ascii	"__HA_FBIT__ 7\000"
.LASF85:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF144:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
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
.LASF344:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF351:
	.ascii	"__HA_IBIT__ 8\000"
.LASF525:
	.ascii	"long unsigned int\000"
.LASF509:
	.ascii	"Task_3_ptr 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF634:
	.ascii	"RUNNING_TASK\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF20:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF622:
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
.LASF536:
	.ascii	"os_sw_bugs_e\000"
.LASF266:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF210:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF606:
	.ascii	"HEAP\000"
.LASF500:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF506:
	.ascii	"Task_0_ptr 0\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF620:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF531:
	.ascii	"os_bug_Task_unspecified\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF61:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF535:
	.ascii	"os_sw_bugs_t\000"
.LASF521:
	.ascii	"unsigned char\000"
.LASF230:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF231:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF445:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF581:
	.ascii	"NrOfInsAllowed\000"
.LASF355:
	.ascii	"__DA_IBIT__ 32\000"
.LASF586:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF182:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF62:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF610:
	.ascii	"OS_STATE\000"
.LASF495:
	.ascii	"_os_heap_h_ \000"
.LASF541:
	.ascii	"Func_CreateTaskEnvironment\000"
.LASF488:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
.LASF540:
	.ascii	"Func_RestoreTaskEnvironment\000"
.LASF111:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF640:
	.ascii	"TASK_3_VAR\000"
.LASF496:
	.ascii	"HEAP_SIZE 10000\000"
.LASF568:
	.ascii	"Task_running\000"
.LASF337:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF151:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF195:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF591:
	.ascii	"task_number\000"
.LASF29:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4\000"
.LASF670:
	.ascii	"OS_PreemptTask\000"
.LASF325:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF477:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF504:
	.ascii	"os_shutdown 2\000"
.LASF203:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF572:
	.ascii	"exe_time\000"
.LASF260:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF365:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF656:
	.ascii	"Winner_scheduling_queue_member\000"
.LASF148:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF666:
	.ascii	"OS_TerminateTask\000"
.LASF224:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF73:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF170:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF460:
	.ascii	"Global_inline __inline__\000"
.LASF528:
	.ascii	"os_bug_taskstate_request_denied\000"
.LASF236:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF56:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF524:
	.ascii	"unsigned_int32_t\000"
.LASF584:
	.ascii	"wait_time\000"
.LASF157:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF13:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF515:
	.ascii	"SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)\000"
.LASF33:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF439:
	.ascii	"_BASE_TYPES_H_ \000"
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
.LASF551:
	.ascii	"Func_Preempt_Task\000"
.LASF501:
	.ascii	"_os_main_h_ \000"
.LASF522:
	.ascii	"short unsigned int\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF574:
	.ascii	"task_group_t\000"
.LASF330:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF227:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF214:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF221:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF605:
	.ascii	"TASK_PTR\000"
.LASF633:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF146:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF494:
	.ascii	"OS_STACK_SIZE_END 0x01u\000"
.LASF486:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
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
.LASF550:
	.ascii	"Func_TaskStateRequest\000"
.LASF626:
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
.LASF554:
	.ascii	"CoreID_e\000"
.LASF514:
	.ascii	"For_all_tasks_in_queue(var) for((var) = First_task;"
	.ascii	" (var) <= Last_task; (var)++)\000"
.LASF641:
	.ascii	"TASK_GROUP_1\000"
.LASF642:
	.ascii	"TASK_GROUP_2\000"
.LASF643:
	.ascii	"TASK_GROUP_3\000"
.LASF192:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF645:
	.ascii	"TASK_GROUP_5\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF273:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF613:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF323:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF109:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF357:
	.ascii	"__TA_IBIT__ 64\000"
.LASF239:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF583:
	.ascii	"WaitActUntil\000"
.LASF516:
	.ascii	"SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014)\000"
.LASF89:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF37:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF493:
	.ascii	"OS_STACK_SIZE 0x5000u\000"
.LASF282:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF161:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF603:
	.ascii	"scheduling_t\000"
.LASF582:
	.ascii	"NrOfInsActivated\000"
.LASF184:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF658:
	.ascii	"task_ptr\000"
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
