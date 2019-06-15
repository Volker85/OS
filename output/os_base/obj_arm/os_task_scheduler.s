	.cpu cortex-m4
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
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
@ -g3 -O3 -Wall -Wextra -Wpedantic -std=c90 -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fauto-inc-dec -fbranch-count-reg
@ -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
@ -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
@ -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
@ -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
@ -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2
@ -fplt -fpredictive-commoning -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
@ -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
@ -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
@ -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
@ -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
@ -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
@ -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
@ -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -masm-syntax-unified -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -mthumb -munaligned-access
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_0, %function
TASK_0:
.LFB9:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.c"
	.loc 1 419 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:421:    HaltMcu();/* HLT will be ended by timer interrupt, what shall be done with the rest of the function... ??*/
	.loc 1 421 0
	b	LLF_WAIT_FOR_INTERRUPT	@
.LVL1:
	.cfi_endproc
.LFE9:
	.size	TASK_0, .-TASK_0
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_2, %function
TASK_2:
.LFB18:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ task_ptr, task_ptr
	bl	GetRunningSchedulingQueueElementPtr	@
	ldr	r2, .L17	@ tmp117,
	ldr	r3, [r2]	@ TASK1_CALL_NR.5_5, TASK1_CALL_NR
	adds	r3, r3, #1	@ _6, TASK1_CALL_NR.5_5,
	str	r3, [r2]	@ _6, TASK1_CALL_NR
	cbz	r4, .L4	@ task_ptr,
	mov	r5, r0	@ scheduling_task_ptr,
	cbz	r0, .L4	@ scheduling_task_ptr,
	ldr	r3, [r4, #48]	@ _7, MEM[(struct task_t *)task_ptr_2(D)].state_request
	cbz	r3, .L4	@ _7,
	movs	r1, #1	@,
	mov	r0, r4	@, task_ptr
	blx	r3	@ _7
	cmp	r0, #1	@,
	beq	.L16	@,
	movs	r1, #8	@,
	movs	r0, #1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SetSwBug	@
.L4:
	.cfi_restore_state
	movs	r1, #8	@,
	movs	r0, #2	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SetSwBug	@
.L16:
	.cfi_restore_state
	bl	LLF_INT_DISABLE	@
	mov	r0, r4	@, task_ptr
	bl	OS_TaskSaveTaskEnvironment	@
	ldr	r0, .L17+4	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
	mov	r0, r4	@, task_ptr
	bl	DeleteFromTaskQueue	@
	mov	r0, r5	@, scheduling_task_ptr
	bl	DeleteFromSchedulingQueue	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@, MEM[(struct task_t *)task_ptr_2(D)].active
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ MEM[(struct task_t *)task_ptr_2(D)].default_prio, MEM[(struct task_t *)task_ptr_2(D)].default_prio
	strb	r2, [r4, #36]	@ MEM[(struct task_t *)task_ptr_2(D)].default_prio, MEM[(struct task_t *)task_ptr_2(D)].current_prio
	bfc	r3, #0, #1	@ MEM[(struct task_t *)task_ptr_2(D)].active,,
	strb	r3, [r4]	@ MEM[(struct task_t *)task_ptr_2(D)].active, MEM[(struct task_t *)task_ptr_2(D)].active
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	LLF_INT_ENABLE	@
.L18:
	.align	2
.L17:
	.word	TASK1_CALL_NR
	.word	OS_MAIN_STACK
	.cfi_endproc
.LFE18:
	.size	TASK_2, .-TASK_2
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_3, %function
TASK_3:
.LFB20:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ task_ptr, task_ptr
	bl	GetRunningSchedulingQueueElementPtr	@
	ldr	r2, .L33	@ tmp117,
	ldr	r3, [r2]	@ TASK1_CALL_NR.5_5, TASK1_CALL_NR
	adds	r3, r3, #1	@ _6, TASK1_CALL_NR.5_5,
	str	r3, [r2]	@ _6, TASK1_CALL_NR
	cbz	r4, .L20	@ task_ptr,
	mov	r5, r0	@ scheduling_task_ptr,
	cbz	r0, .L20	@ scheduling_task_ptr,
	ldr	r3, [r4, #48]	@ _7, MEM[(struct task_t *)task_ptr_2(D)].state_request
	cbz	r3, .L20	@ _7,
	movs	r1, #1	@,
	mov	r0, r4	@, task_ptr
	blx	r3	@ _7
	cmp	r0, #1	@,
	beq	.L32	@,
	movs	r1, #8	@,
	movs	r0, #1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SetSwBug	@
.L20:
	.cfi_restore_state
	movs	r1, #8	@,
	movs	r0, #2	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SetSwBug	@
.L32:
	.cfi_restore_state
	bl	LLF_INT_DISABLE	@
	mov	r0, r4	@, task_ptr
	bl	OS_TaskSaveTaskEnvironment	@
	ldr	r0, .L33+4	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
	mov	r0, r4	@, task_ptr
	bl	DeleteFromTaskQueue	@
	mov	r0, r5	@, scheduling_task_ptr
	bl	DeleteFromSchedulingQueue	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@, MEM[(struct task_t *)task_ptr_2(D)].active
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ MEM[(struct task_t *)task_ptr_2(D)].default_prio, MEM[(struct task_t *)task_ptr_2(D)].default_prio
	strb	r2, [r4, #36]	@ MEM[(struct task_t *)task_ptr_2(D)].default_prio, MEM[(struct task_t *)task_ptr_2(D)].current_prio
	bfc	r3, #0, #1	@ MEM[(struct task_t *)task_ptr_2(D)].active,,
	strb	r3, [r4]	@ MEM[(struct task_t *)task_ptr_2(D)].active, MEM[(struct task_t *)task_ptr_2(D)].active
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	LLF_INT_ENABLE	@
.L34:
	.align	2
.L33:
	.word	TASK1_CALL_NR
	.word	OS_MAIN_STACK
	.cfi_endproc
.LFE20:
	.size	TASK_3, .-TASK_3
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TASK_1, %function
TASK_1:
.LFB10:
	.loc 1 424 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:424: {
	.loc 1 424 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:424: {
	.loc 1 424 0
	mov	r4, r0	@ task_ptr, task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:428:    scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
	.loc 1 428 0
	bl	GetRunningSchedulingQueueElementPtr	@
.LVL3:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:430:    TASK1_CALL_NR++;
	.loc 1 430 0
	ldr	r2, .L49	@ tmp117,
	ldr	r3, [r2]	@ TASK1_CALL_NR.5_1, TASK1_CALL_NR
	adds	r3, r3, #1	@ _2, TASK1_CALL_NR.5_1,
	str	r3, [r2]	@ _2, TASK1_CALL_NR
.LVL4:
.LBB6:
.LBB7:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:353:    if(task != 0 && scheduling_task != 0)
	.loc 1 353 0
	cbz	r4, .L36	@ task_ptr,
	mov	r5, r0	@ scheduling_task_ptr,
	cbz	r0, .L36	@ scheduling_task_ptr,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:355:       if(task->state_request != 0)
	.loc 1 355 0
	ldr	r3, [r4, #48]	@ _9, MEM[(struct task_t *)task_ptr_3(D)].state_request
	cbz	r3, .L36	@ _9,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:357:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 357 0
	movs	r1, #1	@,
	mov	r0, r4	@, task_ptr
.LVL5:
	blx	r3	@ _9
.LVL6:
	cmp	r0, #1	@,
	beq	.L48	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:372:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 372 0
	movs	r1, #8	@,
	movs	r0, #1	@,
.LBE7:
.LBE6:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:435: }
	.loc 1 435 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL7:
.LBB15:
.LBB12:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:372:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 372 0
	b	OS_SetSwBug	@
.LVL8:
.L36:
	.cfi_restore_state
.LBB8:
.LBB9:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	movs	r1, #8	@,
	movs	r0, #2	@,
.LVL9:
.LBE9:
.LBE8:
.LBE12:
.LBE15:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:435: }
	.loc 1 435 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL10:
.LBB16:
.LBB13:
.LBB11:
.LBB10:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	b	OS_SetSwBug	@
.LVL11:
.L48:
	.cfi_restore_state
.LBE10:
.LBE11:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:359:             DisableInterrupts();
	.loc 1 359 0
	bl	LLF_INT_DISABLE	@
.LVL12:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:360:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 360 0
	mov	r0, r4	@, task_ptr
	bl	OS_TaskSaveTaskEnvironment	@
.LVL13:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:361:             OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 361 0
	ldr	r0, .L49+4	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
.LVL14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:362:             DeleteFromTaskQueue(task);
	.loc 1 362 0
	mov	r0, r4	@, task_ptr
	bl	DeleteFromTaskQueue	@
.LVL15:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:363:             DeleteFromSchedulingQueue(scheduling_task);
	.loc 1 363 0
	mov	r0, r5	@, scheduling_task_ptr
	bl	DeleteFromSchedulingQueue	@
.LVL16:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, MEM[(struct task_t *)task_ptr_3(D)].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:367:             task->current_prio = task->default_prio;
	.loc 1 367 0
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ MEM[(struct task_t *)task_ptr_3(D)].default_prio, MEM[(struct task_t *)task_ptr_3(D)].default_prio
	strb	r2, [r4, #36]	@ MEM[(struct task_t *)task_ptr_3(D)].default_prio, MEM[(struct task_t *)task_ptr_3(D)].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	bfc	r3, #0, #1	@ MEM[(struct task_t *)task_ptr_3(D)].active,,
	strb	r3, [r4]	@ MEM[(struct task_t *)task_ptr_3(D)].active, MEM[(struct task_t *)task_ptr_3(D)].active
.LBE13:
.LBE16:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:435: }
	.loc 1 435 0
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL17:
.LBB17:
.LBB14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:368:             EnableInterrupts();
	.loc 1 368 0
	b	LLF_INT_ENABLE	@
.LVL18:
.L50:
	.align	2
.L49:
	.word	TASK1_CALL_NR
	.word	OS_MAIN_STACK
.LBE14:
.LBE17:
	.cfi_endproc
.LFE10:
	.size	TASK_1, .-TASK_1
	.align	1
	.p2align 2,,3
	.global	OS_ActivateDispatcher
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_ActivateDispatcher, %function
OS_ActivateDispatcher:
.LFB0:
	.loc 1 23 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	ldr	r0, .L53	@ tmp115,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:43:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 43 0
	ldr	r1, .L53+4	@ tmp123,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	ldr	r3, [r0]	@ MEM[(uint32 *)3758153748B], MEM[(uint32 *)3758153748B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:43:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 43 0
	ldr	r2, [r1]	@ MEM[(uint32 *)3758153744B], MEM[(uint32 *)3758153744B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:23: {
	.loc 1 23 0
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	and	r3, r3, #-16777216	@ tmp117, MEM[(uint32 *)3758153748B],
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:42:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
	.loc 1 42 0
	ldr	r4, .L53+8	@ tmp121,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	orr	r3, r3, #1679360	@ tmp119, tmp117,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:42:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
	.loc 1 42 0
	movs	r5, #0	@ tmp122,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	orr	r3, r3, #640	@ tmp119, tmp119,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:43:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 43 0
	orr	r2, r2, #3	@ tmp125, MEM[(uint32 *)3758153744B],
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:41:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000 )| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000))* LOOPTIME_IN_USEC) ;
	.loc 1 41 0
	str	r3, [r0]	@ tmp119, MEM[(uint32 *)3758153748B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:43:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 43 0
	str	r2, [r1]	@ tmp125, MEM[(uint32 *)3758153744B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:42:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000);
	.loc 1 42 0
	str	r5, [r4]	@ tmp122, MEM[(uint32 *)3758153752B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:45: }
	.loc 1 45 0
	pop	{r4, r5}	@
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.L54:
	.align	2
.L53:
	.word	-536813548
	.word	-536813552
	.word	-536813544
	.cfi_endproc
.LFE0:
	.size	OS_ActivateDispatcher, .-OS_ActivateDispatcher
	.align	1
	.p2align 2,,3
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL19:
	push	{r4, r5, r6, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:49: {
	.loc 1 49 0
	mov	r4, r0	@ task, task
	mov	r5, r1	@ usec, usec
	mov	r6, r2	@ scheduling_task_ptr, scheduling_task_ptr
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:51:    task->WaitActUntil = OS_GetCurrentTime() + usec;
	.loc 1 51 0
	bl	OS_GetCurrentTime	@
.LVL20:
	add	r0, r0, r5	@ tmp118, usec
	str	r0, [r4, #8]	@ tmp118, task_6(D)->WaitActUntil
.LVL21:
.LBB20:
.LBB21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:209:    if(task != 0 && scheduling_task != 0)
	.loc 1 209 0
	cbz	r6, .L56	@ scheduling_task_ptr,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:211:       if(task->state_request != 0)
	.loc 1 211 0
	ldr	r3, [r4, #48]	@ _10, task_6(D)->state_request
	cbz	r3, .L56	@ _10,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:213:          if(task->state_request(task, Task_ready)== Accepted)
	.loc 1 213 0
	movs	r1, #2	@,
	mov	r0, r4	@, task
	blx	r3	@ _10
.LVL22:
	cmp	r0, #1	@,
	beq	.L65	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:226:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_Preempt_Task);
	.loc 1 226 0
	movs	r1, #13	@,
	movs	r0, #1	@,
.LBE21:
.LBE20:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:53: }
	.loc 1 53 0
	pop	{r4, r5, r6, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL23:
.LBB25:
.LBB22:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:226:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_Preempt_Task);
	.loc 1 226 0
	b	OS_SetSwBug	@
.LVL24:
.L56:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:231:          OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
	.loc 1 231 0
	movs	r1, #13	@,
	movs	r0, #2	@,
.LBE22:
.LBE25:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:53: }
	.loc 1 53 0
	pop	{r4, r5, r6, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL25:
.LBB26:
.LBB23:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:231:          OS_SetSwBug(os_bug_null_pointer, Func_Preempt_Task);
	.loc 1 231 0
	b	OS_SetSwBug	@
.LVL26:
.L65:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:215:             DisableInterrupts();
	.loc 1 215 0
	bl	LLF_INT_DISABLE	@
.LVL27:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:216:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 216 0
	mov	r0, r4	@, task
	bl	OS_TaskSaveTaskEnvironment	@
.LVL28:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:217:             OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 217 0
	ldr	r0, .L66	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
.LVL29:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:219:             task->active = False;
	.loc 1 219 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_6(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:221:             task->current_prio = task->default_prio;
	.loc 1 221 0
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ task_6(D)->default_prio, task_6(D)->default_prio
	strb	r2, [r4, #36]	@ task_6(D)->default_prio, task_6(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:219:             task->active = False;
	.loc 1 219 0
	bfc	r3, #0, #1	@ task_6(D)->active,,
	strb	r3, [r4]	@ task_6(D)->active, task_6(D)->active
.LBE23:
.LBE26:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:53: }
	.loc 1 53 0
	pop	{r4, r5, r6, lr}	@
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL30:
.LBB27:
.LBB24:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:222:             EnableInterrupts();
	.loc 1 222 0
	b	LLF_INT_ENABLE	@
.LVL31:
.L67:
	.align	2
.L66:
	.word	OS_MAIN_STACK
.LBE24:
.LBE27:
	.cfi_endproc
.LFE1:
	.size	OS_SleepTask, .-OS_SleepTask
	.align	1
	.p2align 2,,3
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL32:
	push	{r4, r5, r6, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	ldrb	r3, [r0, #52]	@ zero_extendqisi2	@ prephitmp_31, MEM[(struct task_t *)temp_task_7(D)].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:56: {
	.loc 1 56 0
	mov	r5, r0	@ temp_task, temp_task
.LVL33:
	mov	r4, r1	@ requested_state, requested_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:61:    switch(requested_state)
	.loc 1 61 0
	cmp	r1, #3	@ requested_state,
	bhi	.L69	@
	tbb	[pc, r1]	@ requested_state
.L71:
	.byte	(.L70-.L71)/2
	.byte	(.L72-.L71)/2
	.byte	(.L73-.L71)/2
	.byte	(.L74-.L71)/2
	.p2align 1
.L72:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:85:       switch(task->task_state)
	.loc 1 85 0
	cbz	r3, .L78	@ prephitmp_31,
	cmp	r3, #3	@ prephitmp_31,
	beq	.L78	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:103:          OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
	.loc 1 103 0
	movs	r1, #12	@,
.LVL34:
	movs	r0, #1	@,
.LVL35:
	bl	OS_SetSwBug	@
.LVL36:
	ldrb	r3, [r5, #52]	@ zero_extendqisi2	@ prephitmp_31, MEM[(struct task_t *)temp_task_7(D)].task_state
.L69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:165:       TASK_TRANSITION_REJECTED_TASK_ADDR  = task;
	.loc 1 165 0
	ldr	r1, .L92	@ tmp125,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:167:       TASK_TRANSITION_CURRENT_STATE       = task->task_state;
	.loc 1 167 0
	ldr	r2, .L92+4	@ tmp128,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:166:       TASK_TRANSITION_REJECTED_STATE      = requested_state;
	.loc 1 166 0
	ldr	r6, .L92+8	@ tmp126,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:165:       TASK_TRANSITION_REJECTED_TASK_ADDR  = task;
	.loc 1 165 0
	str	r5, [r1]	@ temp_task, TASK_TRANSITION_REJECTED_TASK_ADDR
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:168:       OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
	.loc 1 168 0
	movs	r0, #1	@,
	movs	r1, #12	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:166:       TASK_TRANSITION_REJECTED_STATE      = requested_state;
	.loc 1 166 0
	strb	r4, [r6]	@ requested_state, TASK_TRANSITION_REJECTED_STATE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:167:       TASK_TRANSITION_CURRENT_STATE       = task->task_state;
	.loc 1 167 0
	strb	r3, [r2]	@ prephitmp_31, TASK_TRANSITION_CURRENT_STATE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:168:       OS_SetSwBug(os_bug_taskstate_request_denied, Func_TaskStateRequest);
	.loc 1 168 0
	bl	OS_SetSwBug	@
.LVL37:
	movs	r0, #0	@ <retval>,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171: }
	.loc 1 171 0
	pop	{r4, r5, r6, pc}	@
.LVL38:
.L74:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:111:       switch(task->task_state)
	.loc 1 111 0
	cmp	r3, #2	@ prephitmp_31,
	bne	.L69	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:115:          task->task_state = Task_running;
	.loc 1 115 0
	movs	r3, #3	@ tmp121,
	strb	r3, [r0, #52]	@ tmp121, MEM[(struct task_t *)temp_task_7(D)].task_state
.LVL39:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:116:          RequestState   = Accepted;
	.loc 1 116 0
	movs	r0, #1	@ <retval>,
.LVL40:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171: }
	.loc 1 171 0
	pop	{r4, r5, r6, pc}	@
.LVL41:
.L73:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:130:       switch(task->task_state)
	.loc 1 130 0
	cmp	r3, #1	@ prephitmp_31,
	bls	.L80	@,
	cmp	r3, #3	@ prephitmp_31,
	bne	.L69	@,
.L80:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:134:          task->task_state = Task_ready;
	.loc 1 134 0
	movs	r3, #2	@ tmp123,
	strb	r3, [r5, #52]	@ tmp123, MEM[(struct task_t *)temp_task_7(D)].task_state
.LVL42:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:135:          RequestState   = Accepted;
	.loc 1 135 0
	movs	r0, #1	@ <retval>,
.LVL43:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171: }
	.loc 1 171 0
	pop	{r4, r5, r6, pc}	@
.LVL44:
.L70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:65:       switch(task->task_state)
	.loc 1 65 0
	subs	r2, r3, #1	@ tmp114, prephitmp_31,
	cmp	r2, #2	@ tmp114,
	bls	.L69	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:76:          task->task_state = Task_unspecified;
	.loc 1 76 0
	movs	r3, #0	@ tmp117,
	strb	r3, [r0, #52]	@ tmp117, MEM[(struct task_t *)temp_task_7(D)].task_state
.LVL45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:77:          RequestState = Accepted;
	.loc 1 77 0
	movs	r0, #1	@ <retval>,
.LVL46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171: }
	.loc 1 171 0
	pop	{r4, r5, r6, pc}	@
.LVL47:
.L78:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:90:          task->task_state = Task_suspended;
	.loc 1 90 0
	movs	r0, #1	@ tmp119,
.LVL48:
	strb	r0, [r5, #52]	@ tmp119, MEM[(struct task_t *)temp_task_7(D)].task_state
.LVL49:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:171: }
	.loc 1 171 0
	pop	{r4, r5, r6, pc}	@
.LVL50:
.L93:
	.align	2
.L92:
	.word	TASK_TRANSITION_REJECTED_TASK_ADDR
	.word	TASK_TRANSITION_CURRENT_STATE
	.word	TASK_TRANSITION_REJECTED_STATE
	.cfi_endproc
.LFE2:
	.size	task_state_request, .-task_state_request
	.align	1
	.p2align 2,,3
	.global	OS_CreateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_CreateTask, %function
OS_CreateTask:
.LFB3:
	.loc 1 174 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL51:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:176:    if(task != 0)
	.loc 1 176 0
	cbz	r0, .L104	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:174: {
	.loc 1 174 0
	push	{r3, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:178:       if(task->state_request != 0)
	.loc 1 178 0
	ldr	r3, [r0, #48]	@ _1, task_4(D)->state_request
	cbz	r3, .L95	@ _1,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:180:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 180 0
	movs	r1, #1	@,
	blx	r3	@ _1
.LVL52:
	cmp	r0, #1	@,
	bne	.L107	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:198: }
	.loc 1 198 0
	pop	{r3, pc}	@
.L107:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:186:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_CreateTask);
	.loc 1 186 0
	movs	r1, #15	@,
	movs	r0, #1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:198: }
	.loc 1 198 0
	pop	{r3, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:186:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_CreateTask);
	.loc 1 186 0
	b	OS_SetSwBug	@
.LVL53:
.L95:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:191:          OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
	.loc 1 191 0
	movs	r1, #15	@,
	movs	r0, #2	@,
.LVL54:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:198: }
	.loc 1 198 0
	pop	{r3, lr}	@
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:191:          OS_SetSwBug(os_bug_null_pointer, Func_CreateTask);
	.loc 1 191 0
	b	OS_SetSwBug	@
.LVL55:
.L104:
	movs	r1, #15	@,
	movs	r0, #2	@,
.LVL56:
	b	OS_SetSwBug	@
.LVL57:
	.cfi_endproc
.LFE3:
	.size	OS_CreateTask, .-OS_CreateTask
	.align	1
	.p2align 2,,3
	.global	OS_ActivateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_ActivateTask, %function
OS_ActivateTask:
.LFB5:
	.loc 1 241 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL58:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:250:    if(task != 0)
	.loc 1 250 0
	cbz	r0, .L108	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:241: {
	.loc 1 241 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:252:       if(task->state_request(task, Task_ready)==Accepted)
	.loc 1 252 0
	movs	r1, #2	@,
	ldr	r3, [r0, #48]	@ task_12(D)->state_request, task_12(D)->state_request
	mov	r4, r0	@ task, task
	blx	r3	@ task_12(D)->state_request
.LVL59:
	cmp	r0, #1	@ tmp122,
	mov	r5, r0	@ tmp122,
	beq	.L122	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:288:          OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
	.loc 1 288 0
	movs	r1, #11	@,
	movs	r0, #1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:291: }
	.loc 1 291 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL60:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:288:          OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
	.loc 1 288 0
	b	OS_SetSwBug	@
.LVL61:
.L122:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:254:          DisableInterrupts();
	.loc 1 254 0
	bl	LLF_INT_DISABLE	@
.LVL62:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:256:          if(task->IdleTask == False)
	.loc 1 256 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@ _3, *task_12(D)
	lsls	r2, r3, #29	@, _3,
	bmi	.L111	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:258:             if( (task->active == False)
	.loc 1 258 0
	lsls	r3, r3, #31	@, _3,
	bpl	.L112	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:259:                   || ( (task->active == True) && (task->NrOfInsAllowed > task->NrOfInsActivated) )/* check for multiple activation */
	.loc 1 259 0
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ task_12(D)->NrOfInsAllowed, task_12(D)->NrOfInsAllowed
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ task_12(D)->NrOfInsActivated, task_12(D)->NrOfInsActivated
	cmp	r2, r3	@ task_12(D)->NrOfInsAllowed, task_12(D)->NrOfInsActivated
	bls	.L113	@,
.L112:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:263:                task = AddToTaskQueue(task);
	.loc 1 263 0
	mov	r0, r4	@, task
	bl	AddToTaskQueue	@
.LVL63:
	mov	r4, r0	@ task,
.LVL64:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:264:                AddToSchedulingQueue(task);
	.loc 1 264 0
	bl	AddToSchedulingQueue	@
.LVL65:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:265:                if(task != 0)
	.loc 1 265 0
	cbz	r4, .L114	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:267:                   task->NrOfInsActivated++;
	.loc 1 267 0
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ task_20->NrOfInsActivated, task_20->NrOfInsActivated
	adds	r3, r3, #1	@ tmp133, task_20->NrOfInsActivated,
	strb	r3, [r4, #5]	@ tmp133, task_20->NrOfInsActivated
.L115:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:291: }
	.loc 1 291 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL66:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:284:          EnableInterrupts();
	.loc 1 284 0
	b	LLF_INT_ENABLE	@
.LVL67:
.L111:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:282:             AddToIdleTaskQueue(task);
	.loc 1 282 0
	mov	r0, r4	@, task
	bl	AddToIdleTaskQueue	@
.LVL68:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:291: }
	.loc 1 291 0
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:284:          EnableInterrupts();
	.loc 1 284 0
	b	LLF_INT_ENABLE	@
.LVL70:
.L108:
	bx	lr	@
.LVL71:
.L113:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:277:                OS_SetSwBug(os_bug_taskstate_request_denied, Func_ActivateTask);
	.loc 1 277 0
	mov	r0, r5	@, tmp122
	movs	r1, #11	@,
	bl	OS_SetSwBug	@
.LVL72:
	b	.L115	@
.L114:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:271:                   OS_SetSwBug(os_bug_null_pointer,Func_ActivateTask);
	.loc 1 271 0
	movs	r1, #11	@,
	movs	r0, #2	@,
	bl	OS_SetSwBug	@
.LVL73:
	b	.L115	@
	.cfi_endproc
.LFE5:
	.size	OS_ActivateTask, .-OS_ActivateTask
	.align	1
	.p2align 2,,3
	.global	OS_StartTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_StartTask, %function
OS_StartTask:
.LFB6:
	.loc 1 293 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL74:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:301:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 301 0
	cmp	r0, #0	@ task
	beq	.L138	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:301:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmp	r1, #0	@ scheduling_task
	beq	.L138	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:301:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 301 0 discriminator 2
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_6(D), *task_6(D)
	tst	r2, #6	@ *task_6(D),
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:293: {
	.loc 1 293 0 is_stmt 1 discriminator 2
	push	{r4, r5, r6, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	mov	r5, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:301:    if( (task != 0) && (scheduling_task != 0)&& ((task->task_queued != False)||(task->IdleTask != False)))
	.loc 1 301 0 discriminator 2
	beq	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:303:       if(task->state_request !=0)
	.loc 1 303 0
	ldr	r2, [r0, #48]	@ _3, task_6(D)->state_request
	cbz	r2, .L125	@ _3,
	mov	r4, r1	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:305:          if(task->state_request(task, Task_running)== Accepted)
	.loc 1 305 0
	movs	r1, #3	@,
.LVL75:
	blx	r2	@ _3
.LVL76:
	cmp	r0, #1	@,
	beq	.L141	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:329:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_StartTask);
	.loc 1 329 0
	movs	r1, #6	@,
	movs	r0, #1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:343: }
	.loc 1 343 0
	pop	{r4, r5, r6, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:329:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_StartTask);
	.loc 1 329 0
	b	OS_SetSwBug	@
.LVL78:
.L123:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:343: }
	.loc 1 343 0
	pop	{r4, r5, r6, pc}	@
.LVL79:
.L141:
.LBB30:
.LBB31:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:307:             DisableInterrupts();
	.loc 1 307 0
	bl	LLF_INT_DISABLE	@
.LVL80:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:308:             task->active =  True;
	.loc 1 308 0
	ldrb	r3, [r5]	@ zero_extendqisi2	@ task_6(D)->active, task_6(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:310:             task->current_prio = task->default_prio;
	.loc 1 310 0
	ldrb	r2, [r5, #37]	@ zero_extendqisi2	@ task_6(D)->default_prio, task_6(D)->default_prio
	strb	r2, [r5, #36]	@ task_6(D)->default_prio, task_6(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:308:             task->active =  True;
	.loc 1 308 0
	orr	r3, r3, #1	@ tmp128, task_6(D)->active,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:309:             task->wait_time = 0;
	.loc 1 309 0
	movs	r2, #0	@ tmp130,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:308:             task->active =  True;
	.loc 1 308 0
	strb	r3, [r5]	@ tmp128, task_6(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:309:             task->wait_time = 0;
	.loc 1 309 0
	str	r2, [r5, #12]	@ tmp130, task_6(D)->wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:311:             OS_TASK_SAVE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 311 0
	ldr	r0, .L142	@,
	bl	OS_TASK_SAVE_SYSTEM_STACK	@
.LVL81:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:312:             OS_TASK_RESTORETASK_ENVIRONMENT(task);
	.loc 1 312 0
	mov	r0, r5	@, task
	bl	OS_TASK_RESTORETASK_ENVIRONMENT	@
.LVL82:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:313:             task->start_time = OS_GetCurrentTime();
	.loc 1 313 0
	bl	OS_GetCurrentTime	@
.LVL83:
	str	r0, [r5, #32]	@, task_6(D)->start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:314:             EnableInterrupts();
	.loc 1 314 0
	bl	LLF_INT_ENABLE	@
.LVL84:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:317:             SET_RUNNING_TASK(task, scheduling_task);
	.loc 1 317 0
	mov	r1, r4	@, scheduling_task
	mov	r0, r5	@, task
	bl	SET_RUNNING_TASK	@
.LVL85:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:319:             if(task->privilige_mode == ePriviligeMode_unpriviliged_thread_mode)
	.loc 1 319 0
	ldrb	r3, [r5, #132]	@ zero_extendqisi2	@ task_6(D)->privilige_mode, task_6(D)->privilige_mode
	cbnz	r3, .L127	@ task_6(D)->privilige_mode,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:321:                LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE();
	.loc 1 321 0
	bl	LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE	@
.LVL86:
.L127:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:325:             task->fp(task);
	.loc 1 325 0
	ldr	r3, [r5, #44]	@ task_6(D)->fp, task_6(D)->fp
	mov	r0, r5	@, task
.LBE31:
.LBE30:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:343: }
	.loc 1 343 0
	pop	{r4, r5, r6, lr}	@
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL87:
.LBB33:
.LBB32:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:325:             task->fp(task);
	.loc 1 325 0
	bx	r3	@ indirect register sibling call	@ task_6(D)->fp
.LVL88:
.L138:
	bx	lr	@
.L125:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBE32:
.LBE33:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:334:          OS_SetSwBug(os_bug_null_pointer, Func_StartTask);
	.loc 1 334 0
	movs	r1, #6	@,
.LVL89:
	movs	r0, #2	@,
.LVL90:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:343: }
	.loc 1 343 0
	pop	{r4, r5, r6, lr}	@
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL91:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:334:          OS_SetSwBug(os_bug_null_pointer, Func_StartTask);
	.loc 1 334 0
	b	OS_SetSwBug	@
.LVL92:
.L143:
	.align	2
.L142:
	.word	OS_MAIN_STACK
	.cfi_endproc
.LFE6:
	.size	OS_StartTask, .-OS_StartTask
	.align	1
	.p2align 2,,3
	.global	OS_TerminateTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TerminateTask, %function
OS_TerminateTask:
.LFB7:
	.loc 1 345 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL93:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:353:    if(task != 0 && scheduling_task != 0)
	.loc 1 353 0
	cbz	r0, .L157	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:353:    if(task != 0 && scheduling_task != 0)
	.loc 1 353 0 is_stmt 0 discriminator 1
	cbz	r1, .L157	@ scheduling_task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:355:       if(task->state_request != 0)
	.loc 1 355 0 is_stmt 1
	ldr	r2, [r0, #48]	@ _1, task_5(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:345: {
	.loc 1 345 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:355:       if(task->state_request != 0)
	.loc 1 355 0
	cbz	r2, .L145	@ _1,
	mov	r5, r1	@ scheduling_task, scheduling_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:357:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 357 0
	movs	r1, #1	@,
.LVL94:
	blx	r2	@ _1
.LVL95:
	cmp	r0, #1	@,
	beq	.L160	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:372:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 372 0
	movs	r1, #8	@,
	movs	r0, #1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:384: }
	.loc 1 384 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL96:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:372:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 372 0
	b	OS_SetSwBug	@
.LVL97:
.L145:
	.cfi_restore_state
.LBB36:
.LBB37:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	movs	r1, #8	@,
.LVL98:
	movs	r0, #2	@,
.LVL99:
.LBE37:
.LBE36:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:384: }
	.loc 1 384 0
	pop	{r3, r4, r5, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL100:
.LBB40:
.LBB38:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	b	OS_SetSwBug	@
.LVL101:
.L160:
	.cfi_restore_state
.LBE38:
.LBE40:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:359:             DisableInterrupts();
	.loc 1 359 0
	bl	LLF_INT_DISABLE	@
.LVL102:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:360:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 360 0
	mov	r0, r4	@, task
	bl	OS_TaskSaveTaskEnvironment	@
.LVL103:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:361:             OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 361 0
	ldr	r0, .L161	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
.LVL104:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:362:             DeleteFromTaskQueue(task);
	.loc 1 362 0
	mov	r0, r4	@, task
	bl	DeleteFromTaskQueue	@
.LVL105:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:363:             DeleteFromSchedulingQueue(scheduling_task);
	.loc 1 363 0
	mov	r0, r5	@, scheduling_task
	bl	DeleteFromSchedulingQueue	@
.LVL106:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_5(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:367:             task->current_prio = task->default_prio;
	.loc 1 367 0
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ task_5(D)->default_prio, task_5(D)->default_prio
	strb	r2, [r4, #36]	@ task_5(D)->default_prio, task_5(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	bfc	r3, #0, #1	@ task_5(D)->active,,
	strb	r3, [r4]	@ task_5(D)->active, task_5(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:384: }
	.loc 1 384 0
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL107:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:368:             EnableInterrupts();
	.loc 1 368 0
	b	LLF_INT_ENABLE	@
.LVL108:
.L157:
.LBB41:
.LBB39:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	movs	r1, #8	@,
.LVL109:
	movs	r0, #2	@,
.LVL110:
	b	OS_SetSwBug	@
.LVL111:
.L162:
	.align	2
.L161:
	.word	OS_MAIN_STACK
.LBE39:
.LBE41:
	.cfi_endproc
.LFE7:
	.size	OS_TerminateTask, .-OS_TerminateTask
	.global	__aeabi_ui2d
	.global	__aeabi_dcmpgt
	.align	1
	.p2align 2,,3
	.global	OS_TaskDispatcher
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TaskDispatcher, %function
OS_TaskDispatcher:
.LFB8:
	.loc 1 386 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL112:
	push	{r3, r4, r5, r6, r7, r8, r9, lr}	@
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:400:    task         = GetRunningTask();
	.loc 1 400 0
	bl	GetRunningTask	@
.LVL113:
	mov	r4, r0	@ task,
.LVL114:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:401:    scheduling_task_ptr = GetRunningSchedulingQueueElementPtr();
	.loc 1 401 0
	bl	GetRunningSchedulingQueueElementPtr	@
.LVL115:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:403:    if(task!=0 && scheduling_task_ptr != 0)
	.loc 1 403 0
	cbz	r4, .L164	@ task,
	mov	r5, r0	@ scheduling_task_ptr,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:403:    if(task!=0 && scheduling_task_ptr != 0)
	.loc 1 403 0 is_stmt 0 discriminator 1
	cbz	r0, .L164	@ scheduling_task_ptr,
.LVL116:
.LBB48:
.LBB49:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:355:       if(task->state_request != 0)
	.loc 1 355 0 is_stmt 1
	ldr	r3, [r4, #48]	@ _16, task_7->state_request
	cmp	r3, #0	@ _16
	beq	.L165	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:357:          if(task->state_request(task, Task_suspended)== Accepted)
	.loc 1 357 0
	movs	r1, #1	@,
	mov	r0, r4	@, task
.LVL117:
	blx	r3	@ _16
.LVL118:
	cmp	r0, #1	@,
	beq	.L202	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:372:             OS_SetSwBug(os_bug_taskstate_request_denied, Func_TerminateTask);
	.loc 1 372 0
	movs	r1, #8	@,
	movs	r0, #1	@,
	bl	OS_SetSwBug	@
.LVL119:
.L164:
.LBE49:
.LBE48:
.LBB53:
.LBB54:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:555:    scheduler_time_t delta_time = OS_GetCurrentTime() - LAST_CURRENT_TIME;
	.loc 1 555 0
	ldr	r4, .L205	@ tmp162,
.LVL120:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:601:                if(task->exe_time > Task_min_time)/* guarantee min time */
	.loc 1 601 0
	ldr	r9, .L205+8	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:555:    scheduler_time_t delta_time = OS_GetCurrentTime() - LAST_CURRENT_TIME;
	.loc 1 555 0
	bl	OS_GetCurrentTime	@
.LVL121:
	ldr	r6, [r4]	@ LAST_CURRENT_TIME, LAST_CURRENT_TIME
	subs	r6, r0, r6	@ delta_time,, LAST_CURRENT_TIME
.LVL122:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:557:    LAST_CURRENT_TIME = OS_GetCurrentTime();
	.loc 1 557 0
	bl	OS_GetCurrentTime	@
.LVL123:
	movs	r5, #0	@ ivtmp.52,
	str	r0, [r4]	@, LAST_CURRENT_TIME
.LVL124:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:601:                if(task->exe_time > Task_min_time)/* guarantee min time */
	.loc 1 601 0
	mov	r8, #0	@ tmp204,
	b	.L175	@
.LVL125:
.L172:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:596:          if(task->task_group!=0)
	.loc 1 596 0
	ldr	r3, [r4, #56]	@ _38, task_25->task_group
	cmp	r3, #0	@ _38
	beq	.L173	@
.L204:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:599:             if(task->task_group->exe_time > task->task_group->fair_exe_time)
	.loc 1 599 0
	ldrd	r2, r3, [r3]	@ _38->exe_time, _38->fair_exe_time, _38
	cmp	r2, r3	@ _38->exe_time, _38->fair_exe_time
	bls	.L168	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:601:                if(task->exe_time > Task_min_time)/* guarantee min time */
	.loc 1 601 0
	ldr	r0, [r4, #28]	@, task_25->exe_time
	bl	__aeabi_ui2d	@
.LVL126:
	mov	r2, r8	@, tmp204
	mov	r3, r9	@,
	bl	__aeabi_dcmpgt	@
.LVL127:
	cbz	r0, .L168	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:603:                   task->current_prio = 0;
	.loc 1 603 0
	movs	r3, #0	@ tmp188,
	strb	r3, [r4, #36]	@ tmp188, task_25->current_prio
.L168:
.LVL128:
	adds	r5, r5, #1	@ ivtmp.52, ivtmp.52,
.LVL129:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:573:    For_all_tasks_in_queue(element_nr)
	.loc 1 573 0
	cmp	r5, #10	@ ivtmp.52,
	beq	.L203	@,
.LVL130:
.L175:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:575:       scheduling_queue_member = GetFromSchedulingQueue(element_nr);
	.loc 1 575 0
	uxtb	r0, r5	@, ivtmp.52
	bl	GetFromSchedulingQueue	@
.LVL131:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:577:       task             = GetFromTaskQueue(scheduling_queue_member);
	.loc 1 577 0
	bl	GetFromTaskQueue	@
.LVL132:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:579:       if((task != 0)&&(task->task_queued != False))
	.loc 1 579 0
	mov	r4, r0	@ task,
	cmp	r0, #0	@ task
	beq	.L168	@
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_25, *task_25
	lsls	r2, r3, #30	@, *task_25,
	bpl	.L168	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:581:          if(task->wait_time >= task->TimeToPrioInc)
	.loc 1 581 0
	ldrd	r2, r3, [r0, #12]	@ task_25->wait_time, task_25->TimeToPrioInc, task,
	cmp	r2, r3	@ task_25->wait_time, task_25->TimeToPrioInc
	bcc	.L170	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:583:             task->current_prio = task->current_prio + task->overwaittime_per_prio_inc_step;
	.loc 1 583 0
	ldrb	r3, [r0, #36]	@ zero_extendqisi2	@ task_25->current_prio, task_25->current_prio
	ldr	r2, [r0, #20]	@ task_25->overwaittime_per_prio_inc_step, task_25->overwaittime_per_prio_inc_step
	add	r3, r3, r2	@ tmp177, task_25->overwaittime_per_prio_inc_step
	strb	r3, [r0, #36]	@ tmp177, task_25->current_prio
.L170:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:586:          if(task->WaitActUntil > OS_GetCurrentTime())
	.loc 1 586 0
	ldr	r7, [r4, #8]	@ _34, task_25->WaitActUntil
	bl	OS_GetCurrentTime	@
.LVL133:
	cmp	r7, r0	@ _34,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:588:             task->current_prio = 0;
	.loc 1 588 0
	itt	hi
	movhi	r3, #0	@ tmp179,
	strbhi	r3, [r4, #36]	@ tmp179, task_25->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:590:          if(task->wait_time > task->max_allowed_wait_time)
	.loc 1 590 0
	ldr	r2, [r4, #12]	@ task_25->wait_time, task_25->wait_time
	ldr	r3, [r4, #24]	@ task_25->max_allowed_wait_time, task_25->max_allowed_wait_time
	cmp	r2, r3	@ task_25->wait_time, task_25->max_allowed_wait_time
	bls	.L172	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:593:             OS_SetSwBug(os_bug_task_max_wait_time_reached, Func_TaskScheduler);
	.loc 1 593 0
	movs	r1, #9	@,
	movs	r0, #3	@,
	bl	OS_SetSwBug	@
.LVL134:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:596:          if(task->task_group!=0)
	.loc 1 596 0
	ldr	r3, [r4, #56]	@ _38, task_25->task_group
	cmp	r3, #0	@ _38
	bne	.L204	@
.L173:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:610:             OS_SetSwBug(os_bug_null_pointer, Func_TaskScheduler);
	.loc 1 610 0
	movs	r1, #9	@,
	movs	r0, #2	@,
	adds	r5, r5, #1	@ ivtmp.52, ivtmp.52,
.LVL135:
	bl	OS_SetSwBug	@
.LVL136:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:573:    For_all_tasks_in_queue(element_nr)
	.loc 1 573 0
	cmp	r5, #10	@ ivtmp.52,
	bne	.L175	@,
.L203:
	movs	r4, #0	@ ivtmp.45,
.LVL137:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:553:    scheduling_t*   Winner_scheduling_queue_member = 0;
	.loc 1 553 0
	mov	r8, r4	@ Winner_scheduling_queue_member, ivtmp.45
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:550:    unsigned_char_t Winner_prio = 0;
	.loc 1 550 0
	mov	r7, r4	@ Winner_prio, ivtmp.45
.LVL138:
.L178:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:622:       scheduling_queue_member = GetFromSchedulingQueue(element_nr);
	.loc 1 622 0
	uxtb	r0, r4	@, ivtmp.45
	bl	GetFromSchedulingQueue	@
.LVL139:
	mov	r5, r0	@ scheduling_queue_member,
.LVL140:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:623:       task             = GetFromTaskQueue(scheduling_queue_member);
	.loc 1 623 0
	bl	GetFromTaskQueue	@
.LVL141:
	adds	r4, r4, #1	@ ivtmp.45, ivtmp.45,
.LVL142:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:624:       if(task != 0)
	.loc 1 624 0
	cbz	r0, .L176	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:627:          if(task->IdleTask != True)
	.loc 1 627 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_46, *task_46
	lsls	r3, r3, #29	@, *task_46,
	bmi	.L177	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:629:             task->wait_time += delta_time;
	.loc 1 629 0
	ldr	r3, [r0, #12]	@ task_46->wait_time, task_46->wait_time
	add	r3, r3, r6	@ tmp196, delta_time
	str	r3, [r0, #12]	@ tmp196, task_46->wait_time
.L177:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:632:          if(task->current_prio > Winner_prio)
	.loc 1 632 0
	ldrb	r3, [r0, #36]	@ zero_extendqisi2	@ _51, task_46->current_prio
	cmp	r3, r7	@ _51, Winner_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:636:             Winner_scheduling_queue_member = scheduling_queue_member;
	.loc 1 636 0
	itt	hi
	movhi	r8, r5	@ Winner_scheduling_queue_member, scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:632:          if(task->current_prio > Winner_prio)
	.loc 1 632 0
	movhi	r7, r3	@ Winner_prio, _51
.LVL143:
.L176:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:620:    For_all_tasks_in_queue(element_nr)
	.loc 1 620 0
	cmp	r4, #10	@ ivtmp.45,
	bne	.L178	@,
.LVL144:
.LBE54:
.LBE53:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:409:    if(scheduling_task_ptr != 0)
	.loc 1 409 0
	cmp	r8, #0	@ Winner_scheduling_queue_member
	beq	.L163	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:411:       task = GetFromTaskQueue(scheduling_task_ptr);
	.loc 1 411 0
	mov	r0, r8	@, Winner_scheduling_queue_member
	bl	GetFromTaskQueue	@
.LVL145:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:413:    if(task != 0 && scheduling_task_ptr != 0)
	.loc 1 413 0
	cbz	r0, .L163	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:415:        OS_StartTask(task, scheduling_task_ptr);
	.loc 1 415 0
	mov	r1, r8	@, Winner_scheduling_queue_member
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:417: }
	.loc 1 417 0
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}	@
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:415:        OS_StartTask(task, scheduling_task_ptr);
	.loc 1 415 0
	b	OS_StartTask	@
.LVL146:
.L163:
	.cfi_restore_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:417: }
	.loc 1 417 0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}	@
.LVL147:
.L202:
.LBB55:
.LBB52:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:359:             DisableInterrupts();
	.loc 1 359 0
	bl	LLF_INT_DISABLE	@
.LVL148:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:360:             OS_TaskSaveTaskEnvironment(task);
	.loc 1 360 0
	mov	r0, r4	@, task
	bl	OS_TaskSaveTaskEnvironment	@
.LVL149:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:361:             OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 361 0
	ldr	r0, .L205+4	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
.LVL150:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:362:             DeleteFromTaskQueue(task);
	.loc 1 362 0
	mov	r0, r4	@, task
	bl	DeleteFromTaskQueue	@
.LVL151:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:363:             DeleteFromSchedulingQueue(scheduling_task);
	.loc 1 363 0
	mov	r0, r5	@, scheduling_task_ptr
	bl	DeleteFromSchedulingQueue	@
.LVL152:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_7->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:367:             task->current_prio = task->default_prio;
	.loc 1 367 0
	ldrb	r2, [r4, #37]	@ zero_extendqisi2	@ task_7->default_prio, task_7->default_prio
	strb	r2, [r4, #36]	@ task_7->default_prio, task_7->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:365:             task->active = False;
	.loc 1 365 0
	bfc	r3, #0, #1	@ task_7->active,,
	strb	r3, [r4]	@ task_7->active, task_7->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:368:             EnableInterrupts();
	.loc 1 368 0
	bl	LLF_INT_ENABLE	@
.LVL153:
	b	.L164	@
.LVL154:
.L165:
.LBB50:
.LBB51:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:377:          OS_SetSwBug(os_bug_null_pointer, Func_TerminateTask);
	.loc 1 377 0
	movs	r1, #8	@,
	movs	r0, #2	@,
.LVL155:
	bl	OS_SetSwBug	@
.LVL156:
	b	.L164	@
.L206:
	.align	2
.L205:
	.word	LAST_CURRENT_TIME
	.word	OS_MAIN_STACK
	.word	1072693248
.LBE51:
.LBE50:
.LBE52:
.LBE55:
	.cfi_endproc
.LFE8:
	.size	OS_TaskDispatcher, .-OS_TaskDispatcher
	.align	1
	.p2align 2,,3
	.global	OS_InitTasks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_InitTasks, %function
OS_InitTasks:
.LFB13:
	.loc 1 463 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL157:
	push	{r4, r5, r6, r7, r8, r9, lr}	@
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28	@,,
	.cfi_def_cfa_offset 56
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:465:    LAST_CURRENT_TIME = OS_GetCurrentTime();
	.loc 1 465 0
	bl	OS_GetCurrentTime	@
.LVL158:
	ldr	r3, .L209	@ tmp111,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:480:    OS_InitTask(task_ptr,                          /* task */
	.loc 1 480 0
	ldr	r6, .L209+4	@ tmp113,
	ldr	r5, .L209+8	@ tmp118,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:465:    LAST_CURRENT_TIME = OS_GetCurrentTime();
	.loc 1 465 0
	str	r0, [r3]	@, LAST_CURRENT_TIME
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:480:    OS_InitTask(task_ptr,                          /* task */
	.loc 1 480 0
	movs	r4, #0	@ tmp114,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:476:    OS_InitTaskQueue();
	.loc 1 476 0
	bl	OS_InitTaskQueue	@
.LVL159:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:480:    OS_InitTask(task_ptr,                          /* task */
	.loc 1 480 0
	movs	r7, #200	@ tmp117,
	movs	r3, #1	@,
	ldr	r8, .L209+40	@ tmp119,
	str	r8, [sp]	@ tmp119,
	mov	r2, r3	@,
	mov	r0, r6	@, tmp113
	strd	r5, r7, [sp, #4]	@ tmp118, tmp117,,
	ldr	r1, .L209+12	@,
	str	r4, [sp, #20]	@ tmp114,
	strd	r4, r4, [sp, #12]	@ tmp114, tmp114,,
	bl	OS_InitTask	@
.LVL160:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:496:    OS_InitTask(task_ptr,      /* task */
	.loc 1 496 0
	ldr	r9, .L209+44	@ tmp122,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:491:    AddToSchedulingQueue(task_ptr);
	.loc 1 491 0
	mov	r0, r6	@, tmp113
	bl	AddToSchedulingQueue	@
.LVL161:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:496:    OS_InitTask(task_ptr,      /* task */
	.loc 1 496 0
	movs	r6, #1	@ tmp123,
	add	r3, r5, #2000	@ tmp127, tmp118,
	strd	r8, r3, [sp]	@ tmp119, tmp127,
	mov	r2, r6	@, tmp123
	mov	r3, r4	@, tmp114
	mov	r0, r9	@, tmp122
	ldr	r1, .L209+16	@,
	str	r7, [sp, #8]	@ tmp117,
	strd	r4, r4, [sp, #12]	@ tmp114, tmp114,,
	str	r6, [sp, #20]	@ tmp123,
	bl	OS_InitTask	@
.LVL162:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:512:    OS_InitTask(task_ptr,      /* task */
	.loc 1 512 0
	ldr	r8, .L209+48	@ tmp131,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:507:    AddToSchedulingQueue(task_ptr);
	.loc 1 507 0
	mov	r0, r9	@, tmp122
	bl	AddToSchedulingQueue	@
.LVL163:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:512:    OS_InitTask(task_ptr,      /* task */
	.loc 1 512 0
	add	r5, r5, #4000	@ tmp136, tmp118,
	mov	ip, #2	@ tmp132,
	ldr	r1, .L209+20	@ tmp137,
	str	ip, [sp, #20]	@ tmp132,
	mov	r3, r4	@, tmp114
	mov	r2, r6	@, tmp123
	str	r5, [sp, #4]	@ tmp136,
	mov	r0, r8	@, tmp131
	str	r1, [sp]	@ tmp137,
	strd	r4, r4, [sp, #12]	@ tmp114, tmp114,,
	ldr	r1, .L209+24	@,
	str	r7, [sp, #8]	@ tmp117,
	bl	OS_InitTask	@
.LVL164:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:523:    AddToSchedulingQueue(task_ptr);
	.loc 1 523 0
	mov	r0, r8	@, tmp131
	bl	AddToSchedulingQueue	@
.LVL165:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:528:    OS_InitTask(task_ptr,      /* task */
	.loc 1 528 0
	ldr	r5, .L209+28	@ tmp140,
	ldr	ip, .L209+52	@ tmp145,
	ldr	r1, .L209+32	@ tmp146,
	str	r7, [sp, #8]	@ tmp117,
	mov	lr, #3	@ tmp141,
	mov	r0, r5	@, tmp140
	strd	r1, ip, [sp]	@ tmp146, tmp145,
	strd	r4, r4, [sp, #12]	@ tmp114, tmp114,,
	mov	r3, r4	@, tmp114
	mov	r2, r6	@, tmp123
	str	lr, [sp, #20]	@ tmp141,
	ldr	r1, .L209+36	@,
	bl	OS_InitTask	@
.LVL166:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:539:    AddToSchedulingQueue(task_ptr);
	.loc 1 539 0
	mov	r0, r5	@, tmp140
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:541: }
	.loc 1 541 0
	add	sp, sp, #28	@,,
	.cfi_def_cfa_offset 28
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, lr}	@
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_scheduler.c:539:    AddToSchedulingQueue(task_ptr);
	.loc 1 539 0
	b	AddToSchedulingQueue	@
.LVL167:
.L210:
	.align	2
.L209:
	.word	LAST_CURRENT_TIME
	.word	TASK_0_VAR
	.word	TASK_STACK
	.word	TASK_0
	.word	TASK_1
	.word	TASK_GROUP_2
	.word	TASK_2
	.word	TASK_3_VAR
	.word	TASK_GROUP_3
	.word	TASK_3
	.word	TASK_GROUP_1
	.word	TASK_1_VAR
	.word	TASK_2_VAR
	.word	TASK_STACK+6000
	.cfi_endproc
.LFE13:
	.size	OS_InitTasks, .-OS_InitTasks
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 7 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.file 8 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.file 9 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1337
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF706
	.byte	0x1
	.4byte	.LASF707
	.4byte	.LASF708
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF522
	.uleb128 0x2
	.4byte	.LASF524
	.byte	0x2
	.byte	0x21
	.4byte	0x34
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF525
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF526
	.uleb128 0x2
	.4byte	.LASF527
	.byte	0x2
	.byte	0x27
	.4byte	0x66
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF528
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF529
	.uleb128 0x2
	.4byte	.LASF530
	.byte	0x2
	.byte	0x29
	.4byte	0x66
	.uleb128 0x4
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF542
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2b
	.4byte	0xd2
	.uleb128 0x6
	.4byte	.LASF531
	.byte	0
	.uleb128 0x6
	.4byte	.LASF532
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF533
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF534
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF535
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF537
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF538
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF540
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF541
	.byte	0x3
	.byte	0x38
	.4byte	0x84
	.uleb128 0x4
	.4byte	0xd2
	.uleb128 0x5
	.4byte	.LASF543
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x3a
	.4byte	0x160
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF546
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF547
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF551
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF552
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF553
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF554
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF555
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF556
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF558
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF559
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF560
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF561
	.byte	0x11
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF562
	.uleb128 0x5
	.4byte	.LASF563
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x4
	.4byte	0x191
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF567
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF568
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x10
	.4byte	0x1b5
	.uleb128 0x6
	.4byte	.LASF569
	.byte	0
	.uleb128 0x6
	.4byte	.LASF570
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF572
	.byte	0x4
	.byte	0x16
	.4byte	0x191
	.uleb128 0x5
	.4byte	.LASF573
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x1ea
	.uleb128 0x6
	.4byte	.LASF574
	.byte	0
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF576
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF578
	.byte	0x5
	.byte	0xe
	.4byte	0x1c0
	.uleb128 0x2
	.4byte	.LASF579
	.byte	0x5
	.byte	0x13
	.4byte	0x200
	.uleb128 0x7
	.byte	0x4
	.4byte	0x206
	.uleb128 0x8
	.4byte	0x211
	.uleb128 0x9
	.4byte	0x211
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF580
	.byte	0x5
	.byte	0x15
	.4byte	0x21e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x224
	.uleb128 0xb
	.4byte	0x29
	.4byte	0x238
	.uleb128 0x9
	.4byte	0x211
	.uleb128 0x9
	.4byte	0x1ea
	.byte	0
	.uleb128 0xc
	.4byte	.LASF584
	.byte	0x8
	.byte	0x5
	.byte	0x17
	.4byte	0x25d
	.uleb128 0xd
	.4byte	.LASF581
	.byte	0x5
	.byte	0x19
	.4byte	0x5b
	.byte	0
	.uleb128 0xd
	.4byte	.LASF582
	.byte	0x5
	.byte	0x1a
	.4byte	0x5b
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF583
	.byte	0x5
	.byte	0x1c
	.4byte	0x238
	.uleb128 0xc
	.4byte	.LASF585
	.byte	0x88
	.byte	0x5
	.byte	0x1e
	.4byte	0x44a
	.uleb128 0xe
	.4byte	.LASF586
	.byte	0x5
	.byte	0x20
	.4byte	0x160
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF587
	.byte	0x5
	.byte	0x21
	.4byte	0x160
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF588
	.byte	0x5
	.byte	0x22
	.4byte	0x160
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF589
	.byte	0x5
	.byte	0x23
	.4byte	0x160
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF590
	.byte	0x5
	.byte	0x24
	.4byte	0x29
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF591
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF592
	.byte	0x5
	.byte	0x26
	.4byte	0x5b
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF593
	.byte	0x5
	.byte	0x27
	.4byte	0x5b
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF594
	.byte	0x5
	.byte	0x28
	.4byte	0x5b
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF595
	.byte	0x5
	.byte	0x29
	.4byte	0x5b
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF596
	.byte	0x5
	.byte	0x2a
	.4byte	0x5b
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF581
	.byte	0x5
	.byte	0x2b
	.4byte	0x5b
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF597
	.byte	0x5
	.byte	0x2c
	.4byte	0x5b
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF598
	.byte	0x5
	.byte	0x2d
	.4byte	0x29
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF599
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF600
	.byte	0x5
	.byte	0x2f
	.4byte	0x5b
	.byte	0x28
	.uleb128 0xf
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x1f5
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF601
	.byte	0x5
	.byte	0x31
	.4byte	0x213
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF602
	.byte	0x5
	.byte	0x32
	.4byte	0x1ea
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF603
	.byte	0x5
	.byte	0x33
	.4byte	0x44a
	.byte	0x38
	.uleb128 0xf
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x5b
	.byte	0x3c
	.uleb128 0xf
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x5b
	.byte	0x40
	.uleb128 0xf
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x5b
	.byte	0x44
	.uleb128 0xf
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x5b
	.byte	0x48
	.uleb128 0xf
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x5b
	.byte	0x4c
	.uleb128 0xf
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x5b
	.byte	0x50
	.uleb128 0xf
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x5b
	.byte	0x54
	.uleb128 0xf
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x5b
	.byte	0x58
	.uleb128 0xf
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x5b
	.byte	0x5c
	.uleb128 0xf
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x5b
	.byte	0x60
	.uleb128 0xf
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x5b
	.byte	0x64
	.uleb128 0xf
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x5b
	.byte	0x68
	.uleb128 0xf
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x5b
	.byte	0x6c
	.uleb128 0xd
	.4byte	.LASF604
	.byte	0x5
	.byte	0x48
	.4byte	0x450
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF605
	.byte	0x5
	.byte	0x49
	.4byte	0x450
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF606
	.byte	0x5
	.byte	0x4a
	.4byte	0x450
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF607
	.byte	0x5
	.byte	0x4b
	.4byte	0x5b
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF608
	.byte	0x5
	.byte	0x4c
	.4byte	0x450
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF609
	.byte	0x5
	.byte	0x4d
	.4byte	0x1b5
	.byte	0x84
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x25d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF610
	.byte	0x5
	.byte	0x4f
	.4byte	0x268
	.uleb128 0x2
	.4byte	.LASF611
	.byte	0x5
	.byte	0x50
	.4byte	0x46c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x456
	.uleb128 0x10
	.4byte	0x46c
	.4byte	0x482
	.uleb128 0x11
	.4byte	0x160
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x5
	.byte	0x5b
	.4byte	0x472
	.uleb128 0x2
	.4byte	.LASF612
	.byte	0x5
	.byte	0x5d
	.4byte	0x160
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4a9
	.uleb128 0x13
	.4byte	0x160
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF614
	.byte	0x6
	.byte	0xb
	.4byte	0x498
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4cb
	.uleb128 0x11
	.4byte	0x160
	.byte	0
	.uleb128 0x13
	.4byte	0x160
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF615
	.byte	0x6
	.byte	0xe
	.4byte	0x4b4
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4e7
	.uleb128 0x13
	.4byte	0x160
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF616
	.byte	0x6
	.byte	0xf
	.4byte	0x4d6
	.uleb128 0x10
	.4byte	0xdd
	.4byte	0x502
	.uleb128 0x11
	.4byte	0x160
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x4f2
	.uleb128 0x12
	.4byte	.LASF617
	.byte	0x6
	.byte	0x10
	.4byte	0x502
	.uleb128 0x12
	.4byte	.LASF618
	.byte	0x6
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x6
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x6
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x6
	.byte	0x14
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x6
	.byte	0x15
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x6
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x6
	.byte	0x17
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x6
	.byte	0x18
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x6
	.byte	0x19
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x6
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x6
	.byte	0x1b
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x6
	.byte	0x1c
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x6
	.byte	0x1d
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x6
	.byte	0x1e
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x6
	.byte	0x1f
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x6
	.byte	0x20
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x6
	.byte	0x21
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x6
	.byte	0x22
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x6
	.byte	0x23
	.4byte	0x7f
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x5fa
	.uleb128 0x11
	.4byte	0x160
	.byte	0x9
	.uleb128 0x13
	.4byte	0x160
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x6
	.byte	0x25
	.4byte	0x5e3
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x6
	.byte	0x26
	.4byte	0x48d
	.uleb128 0x10
	.4byte	0x461
	.4byte	0x620
	.uleb128 0x11
	.4byte	0x160
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x6
	.byte	0x27
	.4byte	0x610
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x6
	.byte	0x28
	.4byte	0x636
	.uleb128 0x7
	.byte	0x4
	.4byte	0x461
	.uleb128 0x10
	.4byte	0x456
	.4byte	0x64c
	.uleb128 0x11
	.4byte	0x160
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x6
	.byte	0x29
	.4byte	0x63c
	.uleb128 0x10
	.4byte	0x456
	.4byte	0x667
	.uleb128 0x11
	.4byte	0x160
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x6
	.byte	0x2a
	.4byte	0x657
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x6
	.byte	0x2b
	.4byte	0x657
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x6
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x6
	.byte	0x2d
	.4byte	0x456
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x6
	.byte	0x2d
	.4byte	0x456
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x6
	.byte	0x2d
	.4byte	0x456
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x6
	.byte	0x2d
	.4byte	0x456
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x6
	.byte	0x2e
	.4byte	0x25d
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x6
	.byte	0x2e
	.4byte	0x25d
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x6
	.byte	0x2e
	.4byte	0x25d
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x6
	.byte	0x2e
	.4byte	0x25d
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x6
	.byte	0x2e
	.4byte	0x25d
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x6
	.byte	0x2f
	.4byte	0x46c
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x6
	.byte	0x30
	.4byte	0x1ea
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x6
	.byte	0x31
	.4byte	0x1ea
	.uleb128 0x12
	.4byte	.LASF657
	.byte	0x6
	.byte	0x32
	.4byte	0x717
	.uleb128 0x7
	.byte	0x4
	.4byte	0x71d
	.uleb128 0x14
	.uleb128 0x2
	.4byte	.LASF658
	.byte	0x7
	.byte	0xf
	.4byte	0x160
	.uleb128 0x15
	.4byte	.LASF709
	.byte	0x1
	.2byte	0x220
	.4byte	0x78f
	.byte	0x1
	.4byte	0x78f
	.uleb128 0x16
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x223
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x224
	.4byte	0x29
	.uleb128 0x16
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x226
	.4byte	0x29
	.uleb128 0x16
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x227
	.4byte	0x46c
	.uleb128 0x16
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x228
	.4byte	0x46c
	.uleb128 0x16
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x229
	.4byte	0x636
	.uleb128 0x16
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x22b
	.4byte	0x48d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x46c
	.uleb128 0x17
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x1ce
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x947
	.uleb128 0x18
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x46c
	.4byte	.LLST38
	.uleb128 0x19
	.4byte	.LVL158
	.4byte	0x1248
	.uleb128 0x19
	.4byte	.LVL159
	.4byte	0x1253
	.uleb128 0x1a
	.4byte	.LVL160
	.4byte	0x125e
	.4byte	0x81e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL161
	.4byte	0x1269
	.4byte	0x832
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL162
	.4byte	0x125e
	.4byte	0x886
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0x75
	.sleb128 2000
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL163
	.4byte	0x1269
	.4byte	0x89a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL164
	.4byte	0x125e
	.4byte	0x8e5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL165
	.4byte	0x1269
	.4byte	0x8f9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL166
	.4byte	0x125e
	.4byte	0x93d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x7d
	.sleb128 20
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL167
	.4byte	0x1269
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x96c
	.uleb128 0x1e
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x211
	.uleb128 0x16
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x636
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x991
	.uleb128 0x1e
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x211
	.uleb128 0x16
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x636
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF676
	.byte	0x1
	.2byte	0x1a7
	.byte	0x1
	.4byte	0x9b7
	.uleb128 0x1e
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x211
	.uleb128 0x16
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x636
	.byte	0
	.uleb128 0x20
	.4byte	.LASF710
	.byte	0x1
	.2byte	0x1a2
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e7
	.uleb128 0x21
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1a2
	.4byte	0x211
	.4byte	.LLST0
	.uleb128 0x1c
	.4byte	.LVL1
	.4byte	0x1274
	.byte	0
	.uleb128 0x22
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x181
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc18
	.uleb128 0x18
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x18d
	.4byte	0x636
	.4byte	.LLST26
	.uleb128 0x18
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x18e
	.4byte	0x46c
	.4byte	.LLST27
	.uleb128 0x23
	.4byte	0xc18
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x195
	.4byte	0xafe
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST28
	.uleb128 0x24
	.4byte	0xc25
	.4byte	.LLST29
	.uleb128 0x25
	.4byte	0xc18
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.4byte	0xa79
	.uleb128 0x26
	.4byte	0xc25
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST30
	.uleb128 0x27
	.4byte	.LVL156
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL118
	.4byte	0xa8e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL119
	.4byte	0x127f
	.4byte	0xaa6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL148
	.4byte	0x128a
	.uleb128 0x1a
	.4byte	.LVL149
	.4byte	0x1295
	.4byte	0xac3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL150
	.4byte	0x12a0
	.uleb128 0x1a
	.4byte	.LVL151
	.4byte	0x12ab
	.4byte	0xae0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL152
	.4byte	0x12b6
	.4byte	0xaf4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL153
	.4byte	0x12c1
	.byte	0
	.uleb128 0x29
	.4byte	0x729
	.4byte	.LBB53
	.4byte	.LBE53-.LBB53
	.byte	0x1
	.2byte	0x198
	.4byte	0xbe8
	.uleb128 0x2a
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.uleb128 0x2b
	.4byte	0x73a
	.4byte	.LLST31
	.uleb128 0x2b
	.4byte	0x746
	.4byte	.LLST32
	.uleb128 0x2b
	.4byte	0x752
	.4byte	.LLST33
	.uleb128 0x2b
	.4byte	0x75e
	.4byte	.LLST34
	.uleb128 0x2b
	.4byte	0x76a
	.4byte	.LLST35
	.uleb128 0x2b
	.4byte	0x776
	.4byte	.LLST36
	.uleb128 0x2b
	.4byte	0x782
	.4byte	.LLST37
	.uleb128 0x19
	.4byte	.LVL121
	.4byte	0x1248
	.uleb128 0x19
	.4byte	.LVL123
	.4byte	0x1248
	.uleb128 0x1a
	.4byte	.LVL131
	.4byte	0x12cc
	.4byte	0xb80
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL132
	.4byte	0x12d7
	.uleb128 0x19
	.4byte	.LVL133
	.4byte	0x1248
	.uleb128 0x1a
	.4byte	.LVL134
	.4byte	0x127f
	.4byte	0xbaa
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL136
	.4byte	0x127f
	.4byte	0xbc2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL139
	.4byte	0x12cc
	.4byte	0xbd6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL141
	.4byte	0x12d7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL113
	.4byte	0x12e2
	.uleb128 0x19
	.4byte	.LVL115
	.4byte	0x12ed
	.uleb128 0x1a
	.4byte	.LVL145
	.4byte	0x12d7
	.4byte	0xc0e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL146
	.4byte	0xc3e
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x158
	.byte	0x1
	.4byte	0xc3e
	.uleb128 0x1e
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x158
	.4byte	0x46c
	.uleb128 0x1e
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x158
	.4byte	0x636
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x124
	.byte	0x1
	.4byte	0xc64
	.uleb128 0x1e
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x124
	.4byte	0x46c
	.uleb128 0x1e
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x124
	.4byte	0x636
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF675
	.byte	0x1
	.byte	0xf0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd3a
	.uleb128 0x2e
	.4byte	.LASF662
	.byte	0x1
	.byte	0xf0
	.4byte	0x46c
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LVL59
	.4byte	0xc9d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL61
	.4byte	0x127f
	.4byte	0xcb5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x19
	.4byte	.LVL62
	.4byte	0x128a
	.uleb128 0x1a
	.4byte	.LVL63
	.4byte	0x12f8
	.4byte	0xcd2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL65
	.4byte	0x1269
	.4byte	0xce6
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL67
	.4byte	0x12c1
	.uleb128 0x1a
	.4byte	.LVL68
	.4byte	0x1303
	.4byte	0xd03
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL70
	.4byte	0x12c1
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x127f
	.4byte	0xd25
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x27
	.4byte	.LVL73
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF677
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.4byte	0xd5d
	.uleb128 0x31
	.4byte	.LASF662
	.byte	0x1
	.byte	0xc7
	.4byte	0x46c
	.uleb128 0x31
	.4byte	.LASF672
	.byte	0x1
	.byte	0xc7
	.4byte	0x636
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF678
	.byte	0x1
	.byte	0xad
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xddc
	.uleb128 0x2e
	.4byte	.LASF662
	.byte	0x1
	.byte	0xad
	.4byte	0x46c
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LVL52
	.4byte	0xd97
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL53
	.4byte	0x127f
	.4byte	0xdaf
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL55
	.4byte	0x127f
	.4byte	0xdc7
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x32
	.4byte	.LVL57
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF711
	.byte	0x1
	.byte	0x37
	.4byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe5e
	.uleb128 0x2e
	.4byte	.LASF679
	.byte	0x1
	.byte	0x37
	.4byte	0x211
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	.LASF680
	.byte	0x1
	.byte	0x37
	.4byte	0x1ea
	.4byte	.LLST13
	.uleb128 0x34
	.4byte	.LASF681
	.byte	0x1
	.byte	0x39
	.4byte	0x29
	.4byte	.LLST14
	.uleb128 0x34
	.4byte	.LASF662
	.byte	0x1
	.byte	0x3b
	.4byte	0x46c
	.4byte	.LLST15
	.uleb128 0x1a
	.4byte	.LVL36
	.4byte	0x127f
	.4byte	0xe49
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL37
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF682
	.byte	0x1
	.byte	0x30
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf44
	.uleb128 0x2e
	.4byte	.LASF662
	.byte	0x1
	.byte	0x30
	.4byte	0x46c
	.4byte	.LLST7
	.uleb128 0x2e
	.4byte	.LASF683
	.byte	0x1
	.byte	0x30
	.4byte	0x71e
	.4byte	.LLST8
	.uleb128 0x2e
	.4byte	.LASF666
	.byte	0x1
	.byte	0x30
	.4byte	0x636
	.4byte	.LLST9
	.uleb128 0x35
	.4byte	0xd3a
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x34
	.4byte	0xf3a
	.uleb128 0x24
	.4byte	0xd51
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	0xd46
	.4byte	.LLST11
	.uleb128 0x28
	.4byte	.LVL22
	.4byte	0xeda
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL24
	.4byte	0x127f
	.4byte	0xef2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL26
	.4byte	0x127f
	.4byte	0xf0a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0x128a
	.uleb128 0x1a
	.4byte	.LVL28
	.4byte	0x1295
	.4byte	0xf27
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL29
	.4byte	0x12a0
	.uleb128 0x1c
	.4byte	.LVL31
	.4byte	0x12c1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0x1248
	.byte	0
	.uleb128 0x36
	.4byte	.LASF712
	.byte	0x1
	.byte	0x16
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	0x991
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1063
	.uleb128 0x24
	.4byte	0x99e
	.4byte	.LLST1
	.uleb128 0x2b
	.4byte	0x9aa
	.4byte	.LLST2
	.uleb128 0x23
	.4byte	0xc18
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x1059
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0xc25
	.4byte	.LLST4
	.uleb128 0x38
	.4byte	0xc18
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0xfd4
	.uleb128 0x24
	.4byte	0xc25
	.4byte	.LLST5
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST6
	.uleb128 0x32
	.4byte	.LVL11
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL6
	.4byte	0xfe9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL8
	.4byte	0x127f
	.4byte	0x1001
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL12
	.4byte	0x128a
	.uleb128 0x1a
	.4byte	.LVL13
	.4byte	0x1295
	.4byte	0x101e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL14
	.4byte	0x12a0
	.uleb128 0x1a
	.4byte	.LVL15
	.4byte	0x12ab
	.4byte	0x103b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL16
	.4byte	0x12b6
	.4byte	0x104f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL18
	.4byte	0x12c1
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x12ed
	.byte	0
	.uleb128 0x37
	.4byte	0xc3e
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1152
	.uleb128 0x24
	.4byte	0xc4b
	.4byte	.LLST18
	.uleb128 0x24
	.4byte	0xc57
	.4byte	.LLST19
	.uleb128 0x38
	.4byte	0xc3e
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1110
	.uleb128 0x24
	.4byte	0xc57
	.4byte	.LLST20
	.uleb128 0x24
	.4byte	0xc4b
	.4byte	.LLST21
	.uleb128 0x19
	.4byte	.LVL80
	.4byte	0x128a
	.uleb128 0x19
	.4byte	.LVL81
	.4byte	0x130e
	.uleb128 0x1a
	.4byte	.LVL82
	.4byte	0x1319
	.4byte	0x10cd
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL83
	.4byte	0x1248
	.uleb128 0x19
	.4byte	.LVL84
	.4byte	0x12c1
	.uleb128 0x1a
	.4byte	.LVL85
	.4byte	0x1324
	.4byte	0x10f9
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL86
	.4byte	0x132f
	.uleb128 0x39
	.4byte	.LVL88
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL76
	.4byte	0x1125
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL78
	.4byte	0x127f
	.4byte	0x113d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x32
	.4byte	.LVL92
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0xc18
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1248
	.uleb128 0x24
	.4byte	0xc25
	.4byte	.LLST22
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST23
	.uleb128 0x38
	.4byte	0xc18
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0x11c3
	.uleb128 0x24
	.4byte	0xc25
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	0xc31
	.4byte	.LLST25
	.uleb128 0x2f
	.4byte	.LVL101
	.4byte	0x127f
	.4byte	0x11ae
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x32
	.4byte	.LVL111
	.4byte	0x127f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0x11d8
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL97
	.4byte	0x127f
	.4byte	0x11f0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x19
	.4byte	.LVL102
	.4byte	0x128a
	.uleb128 0x1a
	.4byte	.LVL103
	.4byte	0x1295
	.4byte	0x120d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL104
	.4byte	0x12a0
	.uleb128 0x1a
	.4byte	.LVL105
	.4byte	0x12ab
	.4byte	0x122a
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL106
	.4byte	0x12b6
	.4byte	0x123e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL108
	.4byte	0x12c1
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF684
	.4byte	.LASF684
	.byte	0x5
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF685
	.4byte	.LASF685
	.byte	0x8
	.byte	0x17
	.uleb128 0x3a
	.4byte	.LASF686
	.4byte	.LASF686
	.byte	0x7
	.byte	0x14
	.uleb128 0x3a
	.4byte	.LASF687
	.4byte	.LASF687
	.byte	0x8
	.byte	0x15
	.uleb128 0x3a
	.4byte	.LASF688
	.4byte	.LASF688
	.byte	0x9
	.byte	0xa
	.uleb128 0x3a
	.4byte	.LASF689
	.4byte	.LASF689
	.byte	0x3
	.byte	0x53
	.uleb128 0x3a
	.4byte	.LASF690
	.4byte	.LASF690
	.byte	0x9
	.byte	0x8
	.uleb128 0x3a
	.4byte	.LASF691
	.4byte	.LASF691
	.byte	0x5
	.byte	0x55
	.uleb128 0x3a
	.4byte	.LASF692
	.4byte	.LASF692
	.byte	0x5
	.byte	0x57
	.uleb128 0x3a
	.4byte	.LASF693
	.4byte	.LASF693
	.byte	0x8
	.byte	0x10
	.uleb128 0x3a
	.4byte	.LASF694
	.4byte	.LASF694
	.byte	0x8
	.byte	0x14
	.uleb128 0x3a
	.4byte	.LASF695
	.4byte	.LASF695
	.byte	0x9
	.byte	0x7
	.uleb128 0x3a
	.4byte	.LASF696
	.4byte	.LASF696
	.byte	0x8
	.byte	0x13
	.uleb128 0x3a
	.4byte	.LASF697
	.4byte	.LASF697
	.byte	0x8
	.byte	0x11
	.uleb128 0x3a
	.4byte	.LASF698
	.4byte	.LASF698
	.byte	0x8
	.byte	0xb
	.uleb128 0x3a
	.4byte	.LASF699
	.4byte	.LASF699
	.byte	0x8
	.byte	0xc
	.uleb128 0x3a
	.4byte	.LASF700
	.4byte	.LASF700
	.byte	0x8
	.byte	0xe
	.uleb128 0x3a
	.4byte	.LASF701
	.4byte	.LASF701
	.byte	0x8
	.byte	0xf
	.uleb128 0x3a
	.4byte	.LASF702
	.4byte	.LASF702
	.byte	0x5
	.byte	0x58
	.uleb128 0x3a
	.4byte	.LASF703
	.4byte	.LASF703
	.byte	0x5
	.byte	0x56
	.uleb128 0x3a
	.4byte	.LASF704
	.4byte	.LASF704
	.byte	0x8
	.byte	0x16
	.uleb128 0x3a
	.4byte	.LASF705
	.4byte	.LASF705
	.byte	0x4
	.byte	0xe
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST38:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115-1-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL141-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x3
	.byte	0x75
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL133-1-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59-1-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-1-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL56-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76-1-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL88-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL89-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL88-1-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95-1-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
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
	.file 10 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xa
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
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF474
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF475
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF476
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF488
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF491
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF492
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 17 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 18 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x12
	.byte	0x4
	.file 19 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
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
	.section	.debug_macro,"G",%progbits,wm4.0.1e2d41a7154507083fa09d462aac8034,comdat
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
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.7d3083dfb0b17ee9cbe20f6fe4481cd9,comdat
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
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF473
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.a73335dbec9f276504b3b94e79d1d898,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF487
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.95.eb4fc951d6d8ca08a3f35501d742a960,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF490
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_stack.h.2.f736ad9941e78e3f128684d765efeb27,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x4
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
.LASF59:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF206:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF446:
	.ascii	"CPP_VERSION_2003 2\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF552:
	.ascii	"Func_TerminateTask\000"
.LASF703:
	.ascii	"OS_TASK_RESTORETASK_ENVIRONMENT\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF702:
	.ascii	"OS_TASK_SAVE_SYSTEM_STACK\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF644:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF640:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF463:
	.ascii	"cMCU_X86 3\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF457:
	.ascii	"Rejected 0\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF449:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF682:
	.ascii	"OS_SleepTask\000"
.LASF462:
	.ascii	"DynamicMemoryUsed False\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF589:
	.ascii	"FREE\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF562:
	.ascii	"unsigned int\000"
.LASF572:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF454:
	.ascii	"FALSE False\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF585:
	.ascii	"task_s\000"
.LASF5:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF2:
	.ascii	"__GNUC__ 7\000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF694:
	.ascii	"DeleteFromSchedulingQueue\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF159:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF54:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF465:
	.ascii	"NR_OF_CORES 1\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF9:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF31:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF40:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF235:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF174:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF12:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF195:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF651:
	.ascii	"TASK_GROUP_3\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF701:
	.ascii	"AddToIdleTaskQueue\000"
.LASF711:
	.ascii	"task_state_request\000"
.LASF568:
	.ascii	"privilige_mode_e\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF687:
	.ascii	"AddToSchedulingQueue\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF606:
	.ascii	"pStackPointerStart\000"
.LASF490:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF670:
	.ascii	"OS_InitTasks\000"
.LASF638:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF594:
	.ascii	"TimeToPrioInc\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF466:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF699:
	.ascii	"GetRunningSchedulingQueueElementPtr\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF570:
	.ascii	"ePriviligeMode_priviliged_thread_mode\000"
.LASF678:
	.ascii	"OS_CreateTask\000"
.LASF596:
	.ascii	"max_allowed_wait_time\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF470:
	.ascii	"Privilige_level_enter_kernel_mode() ;\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF586:
	.ascii	"active\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF524:
	.ascii	"uint8\000"
.LASF575:
	.ascii	"Task_suspended\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF522:
	.ascii	"signed char\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF550:
	.ascii	"Func_StartTask\000"
.LASF438:
	.ascii	"_os_firstinc_h_ \000"
.LASF609:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF543:
	.ascii	"os_sw_bugs_function_e\000"
.LASF458:
	.ascii	"Local static\000"
.LASF695:
	.ascii	"LLF_INT_ENABLE\000"
.LASF647:
	.ascii	"TASK_2_VAR\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF199:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF212:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF643:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF627:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF503:
	.ascii	"os_running 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF558:
	.ascii	"Func_os_exception\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF659:
	.ascii	"scheduling_queue_member\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3\000"
.LASF654:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF635:
	.ascii	"TASK3_CALL_NR\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF603:
	.ascii	"task_group\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF201:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF410:
	.ascii	"__THUMBEL__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF194:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF548:
	.ascii	"Func_DeleteTaskEnvironment\000"
.LASF520:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF661:
	.ascii	"Winner_prio\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF631:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF486:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF709:
	.ascii	"OS_TaskScheduler\000"
.LASF453:
	.ascii	"True 1\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF456:
	.ascii	"Accepted 1\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF712:
	.ascii	"OS_ActivateDispatcher\000"
.LASF534:
	.ascii	"os_bug_task_max_wait_time_reached\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF492:
	.ascii	"_OS_RAM_H_ \000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF241:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF665:
	.ascii	"delta_time\000"
.LASF658:
	.ascii	"task_time_t\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF674:
	.ascii	"OS_StartTask\000"
.LASF691:
	.ascii	"OS_TaskSaveTaskEnvironment\000"
.LASF637:
	.ascii	"TASK_STACK\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF479:
	.ascii	"MinTimeSlice_s (1.0/SchedulerFrequency)\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF553:
	.ascii	"Func_TaskScheduler\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF629:
	.ascii	"DBG_RLD_VALUE\000"
.LASF559:
	.ascii	"Func_CreateTask\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF688:
	.ascii	"LLF_WAIT_FOR_INTERRUPT\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF574:
	.ascii	"Task_unspecified\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF624:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF459:
	.ascii	"Local_inline static __inline__\000"
.LASF498:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF598:
	.ascii	"current_prio\000"
.LASF538:
	.ascii	"os_bug_exception_AbortData\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF518:
	.ascii	"SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF23:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF227:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF571:
	.ascii	"ePriviligeMode_priviliged_handler_mode\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF554:
	.ascii	"Func_InitTask\000"
.LASF545:
	.ascii	"Func_SaveTaskEnvironment\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF481:
	.ascii	"Task_min_time (1e0)\000"
.LASF507:
	.ascii	"Task_1_ptr 1\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF680:
	.ascii	"requested_state\000"
.LASF491:
	.ascii	"_LED_H_ \000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF602:
	.ascii	"task_state\000"
.LASF573:
	.ascii	"task_state_e\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF639:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF485:
	.ascii	"TASK_STACK_SIZE 2000\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF607:
	.ascii	"StackSize\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF578:
	.ascii	"task_state_t\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF660:
	.ascii	"element_nr\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF582:
	.ascii	"fair_exe_time\000"
.LASF452:
	.ascii	"False 0\000"
.LASF632:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF569:
	.ascii	"ePriviligeMode_unpriviliged_thread_mode\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF539:
	.ascii	"os_bug_reset_exit_or_shutdown_failed\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF519:
	.ascii	"SYSTICK_STAT_REG_ENABLE ((uint32)0x00000001)\000"
.LASF620:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF622:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF616:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF604:
	.ascii	"pStackPointer\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF612:
	.ascii	"scheduler_time_t\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF508:
	.ascii	"Task_2_ptr 2\000"
.LASF617:
	.ascii	"OS_SW_BUG\000"
.LASF593:
	.ascii	"wait_time\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF672:
	.ascii	"scheduling_task\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF697:
	.ascii	"GetFromTaskQueue\000"
.LASF455:
	.ascii	"TRUE True\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF511:
	.ascii	"_os_task_queue_h_ \000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF655:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF461:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF690:
	.ascii	"LLF_INT_DISABLE\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF499:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF579:
	.ascii	"func_p_t\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF472:
	.ascii	"HaltMcu() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF517:
	.ascii	"SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)\000"
.LASF663:
	.ascii	"Winner_task\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF705:
	.ascii	"LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF475:
	.ascii	"_lld_core_h_ \000"
.LASF541:
	.ascii	"os_sw_bugs_t\000"
.LASF544:
	.ascii	"Func_NoFunction\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF217:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF216:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF599:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF681:
	.ascii	"RequestState\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF685:
	.ascii	"OS_InitTaskQueue\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF689:
	.ascii	"OS_SetSwBug\000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF662:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF636:
	.ascii	"TASK4_CALL_NR\000"
.LASF708:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF626:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF675:
	.ascii	"OS_ActivateTask\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF537:
	.ascii	"os_bug_exception_AbortPrefetch\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF601:
	.ascii	"state_request\000"
.LASF564:
	.ascii	"Core0\000"
.LASF565:
	.ascii	"Core1\000"
.LASF566:
	.ascii	"Core2\000"
.LASF567:
	.ascii	"Core3\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF645:
	.ascii	"TASK_0_VAR\000"
.LASF625:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF615:
	.ascii	"OS_STACK\000"
.LASF698:
	.ascii	"GetRunningTask\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF588:
	.ascii	"IdleTask\000"
.LASF646:
	.ascii	"TASK_1_VAR\000"
.LASF536:
	.ascii	"os_bug_exception_UndefInstruction\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF704:
	.ascii	"SET_RUNNING_TASK\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF471:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF480:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF523:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF530:
	.ascii	"uint32\000"
.LASF497:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF597:
	.ascii	"start_time\000"
.LASF473:
	.ascii	"BigIntSize 16\000"
.LASF246:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF587:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF666:
	.ascii	"scheduling_task_ptr\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF186:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF510:
	.ascii	"OS_SaveTaskPtr(task_ptr,Task_n_ptr) \000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF580:
	.ascii	"func_p_state_change_t\000"
.LASF153:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF584:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF656:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF505:
	.ascii	"_os_task_scheduler_h_ \000"
.LASF450:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF37:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF477:
	.ascii	"_os_task_config_h_ \000"
.LASF531:
	.ascii	"os_bug_no_bug\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF696:
	.ascii	"GetFromSchedulingQueue\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF474:
	.ascii	"_lld_global_h_ \000"
.LASF155:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF605:
	.ascii	"pStackPointerByMalloc\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF551:
	.ascii	"Func_PreemptTask\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF476:
	.ascii	"_os_task_common_h_ \000"
.LASF467:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF576:
	.ascii	"Task_ready\000"
.LASF710:
	.ascii	"TASK_0\000"
.LASF676:
	.ascii	"TASK_1\000"
.LASF668:
	.ascii	"TASK_2\000"
.LASF667:
	.ascii	"TASK_3\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF448:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF633:
	.ascii	"TASK1_CALL_NR\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF496:
	.ascii	"HEAP_SIZE 10000\000"
.LASF657:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF693:
	.ascii	"DeleteFromTaskQueue\000"
.LASF484:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF526:
	.ascii	"short int\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF549:
	.ascii	"Func_InitTaskEnvironment\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF608:
	.ascii	"pStackPointerEnd\000"
.LASF610:
	.ascii	"task_t\000"
.LASF555:
	.ascii	"Func_ActivateTask\000"
.LASF529:
	.ascii	"long int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF671:
	.ascii	"OS_TaskDispatcher\000"
.LASF502:
	.ascii	"os_init 0\000"
.LASF469:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF444:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF692:
	.ascii	"OS_TASK_RESTORE_SYSTEM_STACK\000"
.LASF369:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF679:
	.ascii	"temp_task\000"
.LASF218:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF209:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF483:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF686:
	.ascii	"OS_InitTask\000"
.LASF623:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF700:
	.ascii	"AddToTaskQueue\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF533:
	.ascii	"os_bug_null_pointer\000"
.LASF482:
	.ascii	"NUMBER_OF_TASKS 10\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF513:
	.ascii	"Last_task (MAX_RUN_QUEUE_SIZE-1)\000"
.LASF447:
	.ascii	"CPP_VERSION_2007 3\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF401:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF512:
	.ascii	"First_task (0)\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF464:
	.ascii	"cMCU_CORTEX_M4 4\000"
.LASF45:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF176:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF29:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF707:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_scheduler.c\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF528:
	.ascii	"long unsigned int\000"
.LASF509:
	.ascii	"Task_3_ptr 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF642:
	.ascii	"RUNNING_TASK\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF630:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF706:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF542:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF614:
	.ascii	"HEAP\000"
.LASF500:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF506:
	.ascii	"Task_0_ptr 0\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF628:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF535:
	.ascii	"os_bug_Task_unspecified\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF468:
	.ascii	"EnableInterrupts() LLF_INT_ENABLE()\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF521:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF445:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF590:
	.ascii	"NrOfInsAllowed\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF595:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF618:
	.ascii	"OS_STATE\000"
.LASF495:
	.ascii	"_os_heap_h_ \000"
.LASF547:
	.ascii	"Func_CreateTaskEnvironment\000"
.LASF489:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
.LASF546:
	.ascii	"Func_RestoreTaskEnvironment\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF648:
	.ascii	"TASK_3_VAR\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF577:
	.ascii	"Task_running\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF561:
	.ascii	"Func_StackCheck\000"
.LASF600:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4\000"
.LASF677:
	.ascii	"OS_PreemptTask\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF478:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF504:
	.ascii	"os_shutdown 2\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF581:
	.ascii	"exe_time\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF664:
	.ascii	"Winner_scheduling_queue_member\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF673:
	.ascii	"OS_TerminateTask\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF460:
	.ascii	"Global_inline __inline__\000"
.LASF532:
	.ascii	"os_bug_taskstate_request_denied\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF527:
	.ascii	"unsigned_int32_t\000"
.LASF560:
	.ascii	"Func_Shutdown\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF515:
	.ascii	"SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF439:
	.ascii	"_BASE_TYPES_H_ \000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF684:
	.ascii	"OS_GetCurrentTime\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF164:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF557:
	.ascii	"Func_Preempt_Task\000"
.LASF501:
	.ascii	"_os_main_h_ \000"
.LASF525:
	.ascii	"short unsigned int\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF583:
	.ascii	"task_group_t\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF683:
	.ascii	"usec\000"
.LASF613:
	.ascii	"TASK_PTR\000"
.LASF641:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF487:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF451:
	.ascii	"_os_common_h_ \000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF488:
	.ascii	"_os_init_task_system_h_ \000"
.LASF556:
	.ascii	"Func_TaskStateRequest\000"
.LASF634:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF178:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF221:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF563:
	.ascii	"CoreID_e\000"
.LASF514:
	.ascii	"For_all_tasks_in_queue(var) for((var) = First_task;"
	.ascii	" (var) <= Last_task; (var)++)\000"
.LASF649:
	.ascii	"TASK_GROUP_1\000"
.LASF650:
	.ascii	"TASK_GROUP_2\000"
.LASF540:
	.ascii	"os_bug_critical_stack_usage\000"
.LASF652:
	.ascii	"TASK_GROUP_4\000"
.LASF653:
	.ascii	"TASK_GROUP_5\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF621:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF592:
	.ascii	"WaitActUntil\000"
.LASF516:
	.ascii	"SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014)\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF494:
	.ascii	"OS_STACK_SIZE 0x5000u\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF611:
	.ascii	"scheduling_t\000"
.LASF591:
	.ascii	"NrOfInsActivated\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF669:
	.ascii	"task_ptr\000"
.LASF493:
	.ascii	"_os_stack_h_ \000"
.LASF619:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF198:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF156:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF165:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
