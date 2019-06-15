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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:35:    RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
	.loc 1 35 0
	ldr	r3, .L11	@ tmp149,
	str	r1, [r3]	@ scheduling_task, RUNNING_SCHEDULING_QUEUE_ENTRY
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:36:    if(task != 0)
	.loc 1 36 0
	cmp	r0, #0	@ task
	beq	.L7	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0])->active                          = task->active;
	.loc 1 38 0
	ldr	r3, .L11+4	@ tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:44:       (&RUNNING_TASK[0])->WaitActUntil                    = task->WaitActUntil;
	.loc 1 44 0
	ldr	r1, [r0, #8]	@ _7, task_42(D)->WaitActUntil
.LVL1:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0])->active                          = task->active;
	.loc 1 38 0
	ldrb	r2, [r3]	@ zero_extendqisi2	@, RUNNING_TASK[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:34: {
	.loc 1 34 0
	push	{r4, r5, r6}	@
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0])->active                          = task->active;
	.loc 1 38 0
	ldrb	r4, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0])->NrOfInsActivated                = task->NrOfInsActivated;
	.loc 1 43 0
	ldrb	r5, [r0, #5]	@ zero_extendqisi2	@ _6, task_42(D)->NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:46:       (&RUNNING_TASK[0])->TimeToPrioInc                   = task->TimeToPrioInc;
	.loc 1 46 0
	ldr	r6, [r0, #16]	@ _9, task_42(D)->TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0])->active                          = task->active;
	.loc 1 38 0
	bfi	r2, r4, #0, #1	@ RUNNING_TASK[0].active, *task_42(D),,
	strb	r2, [r3]	@ RUNNING_TASK[0].active, RUNNING_TASK[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0])->task_queued                     = task->task_queued;
	.loc 1 39 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
	ldrb	r4, [r3]	@ zero_extendqisi2	@, RUNNING_TASK[0].task_queued
	ubfx	r2, r2, #1, #1	@ _2, *task_42(D),,
	bfi	r4, r2, #1, #1	@ RUNNING_TASK[0].task_queued, _2,,
	strb	r4, [r3]	@ RUNNING_TASK[0].task_queued, RUNNING_TASK[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0])->IdleTask                        = task->IdleTask;
	.loc 1 40 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
	uxtb	r4, r4	@ tmp169, RUNNING_TASK[0].task_queued
	ubfx	r2, r2, #2, #1	@ _3, *task_42(D),,
	bfi	r4, r2, #2, #1	@ RUNNING_TASK[0].IdleTask, _3,,
	strb	r4, [r3]	@ RUNNING_TASK[0].IdleTask, RUNNING_TASK[0].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0])->FREE                            = task->FREE;
	.loc 1 41 0
	ldr	r2, [r0]	@ *task_42(D), *task_42(D)
	ldr	r4, [r3]	@ RUNNING_TASK[0].FREE, RUNNING_TASK[0].FREE
	ubfx	r2, r2, #3, #29	@ _4, *task_42(D),,
	bfi	r4, r2, #3, #29	@ RUNNING_TASK[0].FREE, _4,,
	str	r4, [r3]	@ RUNNING_TASK[0].FREE, RUNNING_TASK[0].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0])->NrOfInsAllowed                  = task->NrOfInsAllowed;
	.loc 1 42 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _5, task_42(D)->NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:45:       (&RUNNING_TASK[0])->wait_time                       = task->wait_time;
	.loc 1 45 0
	ldr	r4, [r0, #12]	@ _8, task_42(D)->wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0])->NrOfInsAllowed                  = task->NrOfInsAllowed;
	.loc 1 42 0
	strb	r2, [r3, #4]	@ _5, RUNNING_TASK[0].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0])->NrOfInsActivated                = task->NrOfInsActivated;
	.loc 1 43 0
	strb	r5, [r3, #5]	@ _6, RUNNING_TASK[0].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 0
	ldr	r2, [r0, #20]	@ _10, task_42(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:48:       (&RUNNING_TASK[0])->max_allowed_wait_time           = task->max_allowed_wait_time;
	.loc 1 48 0
	ldr	r5, [r0, #24]	@ _11, task_42(D)->max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:45:       (&RUNNING_TASK[0])->wait_time                       = task->wait_time;
	.loc 1 45 0
	str	r4, [r3, #12]	@ _8, RUNNING_TASK[0].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:49:       (&RUNNING_TASK[0])->exe_time                        = task->exe_time;
	.loc 1 49 0
	ldr	r4, [r0, #28]	@ _12, task_42(D)->exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:44:       (&RUNNING_TASK[0])->WaitActUntil                    = task->WaitActUntil;
	.loc 1 44 0
	str	r1, [r3, #8]	@ _7, RUNNING_TASK[0].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 0
	str	r2, [r3, #20]	@ _10, RUNNING_TASK[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:50:       (&RUNNING_TASK[0])->start_time                      = task->start_time;
	.loc 1 50 0
	ldr	r1, [r0, #32]	@ _13, task_42(D)->start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0])->current_prio                    = task->current_prio;
	.loc 1 51 0
	ldrb	r2, [r0, #36]	@ zero_extendqisi2	@ _14, task_42(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:46:       (&RUNNING_TASK[0])->TimeToPrioInc                   = task->TimeToPrioInc;
	.loc 1 46 0
	str	r6, [r3, #16]	@ _9, RUNNING_TASK[0].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:49:       (&RUNNING_TASK[0])->exe_time                        = task->exe_time;
	.loc 1 49 0
	strd	r5, r4, [r3, #24]	@ _11, _12, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:50:       (&RUNNING_TASK[0])->start_time                      = task->start_time;
	.loc 1 50 0
	str	r1, [r3, #32]	@ _13, RUNNING_TASK[0].start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0])->current_prio                    = task->current_prio;
	.loc 1 51 0
	strb	r2, [r3, #36]	@ _14, RUNNING_TASK[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0])->default_prio                    = task->default_prio;
	.loc 1 52 0
	ldrb	r5, [r0, #37]	@ zero_extendqisi2	@ _15, task_42(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0])->task_state                      = task->task_state;
	.loc 1 55 0
	ldrb	r2, [r0, #52]	@ zero_extendqisi2	@ _18, task_42(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0])->default_prio                    = task->default_prio;
	.loc 1 52 0
	strb	r5, [r3, #37]	@ _15, RUNNING_TASK[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:54:       (&RUNNING_TASK[0])->state_request                   = task->state_request;
	.loc 1 54 0
	ldrd	r4, r1, [r0, #44]	@ _16, _17, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0])->task_group                      = task->task_group;
	.loc 1 56 0
	ldr	r5, [r0, #56]	@ _19, task_42(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:53:       (&RUNNING_TASK[0])->fp                              = task->fp;
	.loc 1 53 0
	str	r4, [r3, #44]	@ _16, RUNNING_TASK[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:54:       (&RUNNING_TASK[0])->state_request                   = task->state_request;
	.loc 1 54 0
	str	r1, [r3, #48]	@ _17, RUNNING_TASK[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0])->r0                             = task->r0;
	.loc 1 63 0
	ldr	r4, [r0, #60]	@ _20, task_42(D)->r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:64:       (&RUNNING_TASK[0])->r1                             = task->r1;
	.loc 1 64 0
	ldr	r1, [r0, #64]	@ _21, task_42(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0])->task_state                      = task->task_state;
	.loc 1 55 0
	strb	r2, [r3, #52]	@ _18, RUNNING_TASK[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:65:       (&RUNNING_TASK[0])->r2                             = task->r2;
	.loc 1 65 0
	ldr	r2, [r0, #68]	@ _22, task_42(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0])->task_group                      = task->task_group;
	.loc 1 56 0
	str	r5, [r3, #56]	@ _19, RUNNING_TASK[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0])->r0                             = task->r0;
	.loc 1 63 0
	str	r4, [r3, #60]	@ _20, RUNNING_TASK[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:66:       (&RUNNING_TASK[0])->r3                             = task->r3;
	.loc 1 66 0
	ldr	r5, [r0, #72]	@ _23, task_42(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:67:       (&RUNNING_TASK[0])->r4                             = task->r4;
	.loc 1 67 0
	ldr	r4, [r0, #76]	@ _24, task_42(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:64:       (&RUNNING_TASK[0])->r1                             = task->r1;
	.loc 1 64 0
	str	r1, [r3, #64]	@ _21, RUNNING_TASK[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:65:       (&RUNNING_TASK[0])->r2                             = task->r2;
	.loc 1 65 0
	str	r2, [r3, #68]	@ _22, RUNNING_TASK[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:68:       (&RUNNING_TASK[0])->r5                             = task->r5;
	.loc 1 68 0
	ldr	r1, [r0, #80]	@ _25, task_42(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:69:       (&RUNNING_TASK[0])->r6                             = task->r6;
	.loc 1 69 0
	ldr	r2, [r0, #84]	@ _26, task_42(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:66:       (&RUNNING_TASK[0])->r3                             = task->r3;
	.loc 1 66 0
	str	r5, [r3, #72]	@ _23, RUNNING_TASK[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:67:       (&RUNNING_TASK[0])->r4                             = task->r4;
	.loc 1 67 0
	str	r4, [r3, #76]	@ _24, RUNNING_TASK[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:70:       (&RUNNING_TASK[0])->r7                             = task->r7;
	.loc 1 70 0
	ldr	r5, [r0, #88]	@ _27, task_42(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:71:       (&RUNNING_TASK[0])->r8                             = task->r8;
	.loc 1 71 0
	ldr	r4, [r0, #92]	@ _28, task_42(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:68:       (&RUNNING_TASK[0])->r5                             = task->r5;
	.loc 1 68 0
	str	r1, [r3, #80]	@ _25, RUNNING_TASK[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:69:       (&RUNNING_TASK[0])->r6                             = task->r6;
	.loc 1 69 0
	str	r2, [r3, #84]	@ _26, RUNNING_TASK[0].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:72:       (&RUNNING_TASK[0])->r9                             = task->r9;
	.loc 1 72 0
	ldr	r1, [r0, #96]	@ _29, task_42(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:73:       (&RUNNING_TASK[0])->r10                            = task->r10;
	.loc 1 73 0
	ldr	r2, [r0, #100]	@ _30, task_42(D)->r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:71:       (&RUNNING_TASK[0])->r8                             = task->r8;
	.loc 1 71 0
	strd	r5, r4, [r3, #88]	@ _27, _28, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:73:       (&RUNNING_TASK[0])->r10                            = task->r10;
	.loc 1 73 0
	strd	r1, r2, [r3, #96]	@ _29, _30, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:75:       (&RUNNING_TASK[0])->r12                            = task->r12;
	.loc 1 75 0
	ldrd	r1, r2, [r0, #104]	@ _31, _32, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:79:       (&RUNNING_TASK[0])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 79 0
	ldrd	r6, r5, [r0, #112]	@ _33, _34, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:74:       (&RUNNING_TASK[0])->r11                            = task->r11;
	.loc 1 74 0
	str	r1, [r3, #104]	@ _31, RUNNING_TASK[0].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:75:       (&RUNNING_TASK[0])->r12                            = task->r12;
	.loc 1 75 0
	str	r2, [r3, #108]	@ _32, RUNNING_TASK[0].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0])->pStackPointerEnd                = task->pStackPointerEnd;
	.loc 1 82 0
	ldrd	r1, r2, [r0, #124]	@ _36, _37, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:80:       (&RUNNING_TASK[0])->pStackPointerStart              = task->pStackPointerStart;
	.loc 1 80 0
	ldr	r4, [r0, #120]	@ _35, task_42(D)->pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0])->pStackPointerEnd                = task->pStackPointerEnd;
	.loc 1 82 0
	str	r2, [r3, #128]	@ _37, RUNNING_TASK[0].pStackPointerEnd
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:79:       (&RUNNING_TASK[0])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 79 0
	strd	r6, r5, [r3, #112]	@ _33, _34, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:81:       (&RUNNING_TASK[0])->StackSize                       = task->StackSize;
	.loc 1 81 0
	strd	r4, r1, [r3, #120]	@ _35, _36, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:84: }
	.loc 1 84 0
	pop	{r4, r5, r6}	@
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.LVL2:
.L7:
	bx	lr	@
.L12:
	.align	2
.L11:
	.word	RUNNING_SCHEDULING_QUEUE_ENTRY
	.word	RUNNING_TASK
	.cfi_endproc
.LFE0:
	.size	SET_RUNNING_TASK, .-SET_RUNNING_TASK
	.align	1
	.p2align 2,,3
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:89:    if(bTASK_QUEUE_INITIALIZED == False)
	.loc 1 89 0
	ldr	r8, .L18+8	@ tmp156,
	ldrb	r6, [r8]	@ zero_extendqisi2	@ bTASK_QUEUE_INITIALIZED, bTASK_QUEUE_INITIALIZED
	cbnz	r6, .L13	@ bTASK_QUEUE_INITIALIZED,
	ldr	r4, .L18	@ ivtmp.32,
	ldr	r5, .L18+4	@ ivtmp.33,
	add	r7, r4, #40	@ _17, ivtmp.32,
.L15:
.LBB2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:94:          TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0;
	.loc 1 94 0
	str	r6, [r4], #4	@ tmp152, MEM[base: _19, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:95:          OS_Task_InitTaskEnvironment(&TASK_RUN_QUEUE[element_nr]);
	.loc 1 95 0
	mov	r0, r5	@, ivtmp.33
	bl	OS_Task_InitTaskEnvironment	@
.LVL3:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:92:       while(element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 92 0
	cmp	r4, r7	@ ivtmp.32, _17
	add	r5, r5, #136	@ ivtmp.33, ivtmp.33,
	bne	.L15	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:98:       bTASK_QUEUE_INITIALIZED = True;
	.loc 1 98 0
	movs	r3, #1	@ tmp154,
	strb	r3, [r8]	@ tmp154, bTASK_QUEUE_INITIALIZED
.L13:
.LBE2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:100: }
	.loc 1 100 0
	pop	{r4, r5, r6, r7, r8, pc}	@
.L19:
	.align	2
.L18:
	.word	TASK_SCHEDULING_QUEUE
	.word	TASK_RUN_QUEUE
	.word	bTASK_QUEUE_INITIALIZED
	.cfi_endproc
.LFE1:
	.size	OS_InitTaskQueue, .-OS_InitTaskQueue
	.align	1
	.p2align 2,,3
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == True)
	.loc 1 107 0
	ldr	r2, .L36	@ tmp505,
	ldrb	r3, [r2]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	ubfx	r3, r3, #1, #1	@ tmp166, TASK_RUN_QUEUE,,
	cmp	r3, #0	@ tmp166
	beq	.L23	@
.LVL5:
	ldrb	r1, [r2, #136]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r1, #30	@, TASK_RUN_QUEUE,
	bpl	.L21	@,
.LVL6:
	ldrb	r3, [r2, #272]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L25	@,
.LVL7:
	ldrb	r3, [r2, #408]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L26	@,
.LVL8:
	ldrb	r3, [r2, #544]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L27	@,
.LVL9:
	ldrb	r3, [r2, #680]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L28	@,
.LVL10:
	ldrb	r3, [r2, #816]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L29	@,
.LVL11:
	ldrb	r3, [r2, #952]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L30	@,
.LVL12:
	ldrb	r3, [r2, #1088]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L31	@,
.LVL13:
	ldrb	r3, [r2, #1224]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L32	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:104:    task_t* ret_task = 0;
	.loc 1 104 0
	movs	r0, #0	@ <retval>,
.LVL14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 0
	bx	lr	@
.LVL15:
.L32:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == True)
	.loc 1 107 0
	movs	r3, #9	@ _92,
.LVL16:
.L21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 0
	add	r3, r3, r3, lsl #4	@ tmp229, _92, _92,
	lsls	r3, r3, #3	@ tmp230, tmp229,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:102: {
	.loc 1 102 0
	push	{r4, r5, r6}	@
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 0
	ldrb	r1, [r2, r3]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_92].active
	ldrb	r4, [r0]	@ zero_extendqisi2	@ *task_47(D), *task_47(D)
	bfi	r1, r4, #0, #1	@ TASK_RUN_QUEUE[_92].active, *task_47(D),,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:116:       (&TASK_RUN_QUEUE[element_nr])->task_queued                     = True;
	.loc 1 116 0
	uxtb	r1, r1	@ TASK_RUN_QUEUE[_92].task_queued, TASK_RUN_QUEUE[_92].active
	orr	r1, r1, #2	@ tmp242, TASK_RUN_QUEUE[_92].task_queued,
	strb	r1, [r2, r3]	@ tmp242, TASK_RUN_QUEUE[_92].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->IdleTask                        = task->IdleTask;
	.loc 1 117 0
	ldrb	r1, [r0]	@ zero_extendqisi2	@ *task_47(D), *task_47(D)
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_92].IdleTask
	ubfx	r1, r1, #2, #1	@ _7, *task_47(D),,
	bfi	r4, r1, #2, #1	@ TASK_RUN_QUEUE[_92].IdleTask, _7,,
	strb	r4, [r2, r3]	@ TASK_RUN_QUEUE[_92].IdleTask, TASK_RUN_QUEUE[_92].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->FREE                            = task->FREE;
	.loc 1 118 0
	ldr	r1, [r0]	@ *task_47(D), *task_47(D)
	ldr	r4, [r2, r3]	@ TASK_RUN_QUEUE[_92].FREE, TASK_RUN_QUEUE[_92].FREE
	ubfx	r1, r1, #3, #29	@ _8, *task_47(D),,
	bfi	r4, r1, #3, #29	@ TASK_RUN_QUEUE[_92].FREE, _8,,
	str	r4, [r2, r3]	@ TASK_RUN_QUEUE[_92].FREE, TASK_RUN_QUEUE[_92].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 0
	add	r3, r3, r2	@ tmp231, tmp505
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:119:       (&TASK_RUN_QUEUE[element_nr])->NrOfInsAllowed                  = task->NrOfInsAllowed;
	.loc 1 119 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _9, task_47(D)->NrOfInsAllowed
	strb	r2, [r3, #4]	@ _9, TASK_RUN_QUEUE[_92].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:120:       (&TASK_RUN_QUEUE[element_nr])->NrOfInsActivated                = task->NrOfInsActivated;
	.loc 1 120 0
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ _10, task_47(D)->NrOfInsActivated
	strb	r2, [r3, #5]	@ _10, TASK_RUN_QUEUE[_92].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:122:       (&TASK_RUN_QUEUE[element_nr])->wait_time                       = task->wait_time;
	.loc 1 122 0
	ldrd	r4, r1, [r0, #8]	@ _11, _12, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:124:       (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 124 0
	ldrd	r2, r5, [r0, #16]	@ _13, _14, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:121:       (&TASK_RUN_QUEUE[element_nr])->WaitActUntil                    = task->WaitActUntil;
	.loc 1 121 0
	str	r4, [r3, #8]	@ _11, TASK_RUN_QUEUE[_92].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:125:       (&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time           = task->max_allowed_wait_time;
	.loc 1 125 0
	ldr	r4, [r0, #24]	@ _15, task_47(D)->max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:122:       (&TASK_RUN_QUEUE[element_nr])->wait_time                       = task->wait_time;
	.loc 1 122 0
	str	r1, [r3, #12]	@ _12, TASK_RUN_QUEUE[_92].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:126:       (&TASK_RUN_QUEUE[element_nr])->exe_time                        = task->exe_time;
	.loc 1 126 0
	ldr	r1, [r0, #28]	@ _16, task_47(D)->exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:123:       (&TASK_RUN_QUEUE[element_nr])->TimeToPrioInc                   = task->TimeToPrioInc;
	.loc 1 123 0
	str	r2, [r3, #16]	@ _13, TASK_RUN_QUEUE[_92].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:127:       (&TASK_RUN_QUEUE[element_nr])->start_time                      = task->start_time;
	.loc 1 127 0
	ldr	r2, [r0, #32]	@ _17, task_47(D)->start_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:125:       (&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time           = task->max_allowed_wait_time;
	.loc 1 125 0
	strd	r5, r4, [r3, #20]	@ _14, _15, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:127:       (&TASK_RUN_QUEUE[element_nr])->start_time                      = task->start_time;
	.loc 1 127 0
	strd	r1, r2, [r3, #28]	@ _16, _17, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:128:       (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
	.loc 1 128 0
	ldrb	r2, [r0, #36]	@ zero_extendqisi2	@ _18, task_47(D)->current_prio
	strb	r2, [r3, #36]	@ _18, TASK_RUN_QUEUE[_92].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:129:       (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
	.loc 1 129 0
	ldrb	r2, [r0, #37]	@ zero_extendqisi2	@ _19, task_47(D)->default_prio
	strb	r2, [r3, #37]	@ _19, TASK_RUN_QUEUE[_92].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:130:       (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
	.loc 1 130 0
	ldr	r2, [r0, #44]	@ _20, task_47(D)->fp
	str	r2, [r3, #44]	@ _20, TASK_RUN_QUEUE[_92].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 0
	ldrd	r1, r2, [r0, #56]	@ _23, _24, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:131:       (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
	.loc 1 131 0
	ldr	r5, [r0, #48]	@ _21, task_47(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 0
	ldrb	r4, [r0, #52]	@ zero_extendqisi2	@ _22, task_47(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:131:       (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
	.loc 1 131 0
	str	r5, [r3, #48]	@ _21, TASK_RUN_QUEUE[_92].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:141:       (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
	.loc 1 141 0
	ldr	r5, [r0, #64]	@ _25, task_47(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 0
	strb	r4, [r3, #52]	@ _22, TASK_RUN_QUEUE[_92].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:142:       (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
	.loc 1 142 0
	ldr	r4, [r0, #68]	@ _26, task_47(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:133:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 133 0
	str	r1, [r3, #56]	@ _23, TASK_RUN_QUEUE[_92].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:143:       (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
	.loc 1 143 0
	ldr	r1, [r0, #72]	@ _27, task_47(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 0
	str	r2, [r3, #60]	@ _24, TASK_RUN_QUEUE[_92].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:144:       (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
	.loc 1 144 0
	ldr	r2, [r0, #76]	@ _28, task_47(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:141:       (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
	.loc 1 141 0
	str	r5, [r3, #64]	@ _25, TASK_RUN_QUEUE[_92].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:145:       (&TASK_RUN_QUEUE[element_nr])->r5                             = task->r5;
	.loc 1 145 0
	ldr	r5, [r0, #80]	@ _29, task_47(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:142:       (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
	.loc 1 142 0
	str	r4, [r3, #68]	@ _26, TASK_RUN_QUEUE[_92].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:146:       (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
	.loc 1 146 0
	ldr	r4, [r0, #84]	@ _30, task_47(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:143:       (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
	.loc 1 143 0
	str	r1, [r3, #72]	@ _27, TASK_RUN_QUEUE[_92].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:147:       (&TASK_RUN_QUEUE[element_nr])->r7                             = task->r7;
	.loc 1 147 0
	ldr	r1, [r0, #88]	@ _31, task_47(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:144:       (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
	.loc 1 144 0
	str	r2, [r3, #76]	@ _28, TASK_RUN_QUEUE[_92].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:148:       (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
	.loc 1 148 0
	ldr	r2, [r0, #92]	@ _32, task_47(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:145:       (&TASK_RUN_QUEUE[element_nr])->r5                             = task->r5;
	.loc 1 145 0
	str	r5, [r3, #80]	@ _29, TASK_RUN_QUEUE[_92].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:149:       (&TASK_RUN_QUEUE[element_nr])->r9                             = task->r9;
	.loc 1 149 0
	ldr	r5, [r0, #96]	@ _33, task_47(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:146:       (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
	.loc 1 146 0
	str	r4, [r3, #84]	@ _30, TASK_RUN_QUEUE[_92].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:150:       (&TASK_RUN_QUEUE[element_nr])->r10                            = task->r10;
	.loc 1 150 0
	ldr	r4, [r0, #100]	@ _34, task_47(D)->r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:147:       (&TASK_RUN_QUEUE[element_nr])->r7                             = task->r7;
	.loc 1 147 0
	str	r1, [r3, #88]	@ _31, TASK_RUN_QUEUE[_92].r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:151:       (&TASK_RUN_QUEUE[element_nr])->r11                            = task->r11;
	.loc 1 151 0
	ldr	r1, [r0, #104]	@ _35, task_47(D)->r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:148:       (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
	.loc 1 148 0
	str	r2, [r3, #92]	@ _32, TASK_RUN_QUEUE[_92].r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:152:       (&TASK_RUN_QUEUE[element_nr])->r12                            = task->r12;
	.loc 1 152 0
	ldr	r2, [r0, #108]	@ _36, task_47(D)->r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:150:       (&TASK_RUN_QUEUE[element_nr])->r10                            = task->r10;
	.loc 1 150 0
	strd	r5, r4, [r3, #96]	@ _33, _34, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:152:       (&TASK_RUN_QUEUE[element_nr])->r12                            = task->r12;
	.loc 1 152 0
	strd	r1, r2, [r3, #104]	@ _35, _36, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:155:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 155 0
	ldrd	r6, r5, [r0, #112]	@ _37, _38, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:157:       (&TASK_RUN_QUEUE[element_nr])->StackSize                       = task->StackSize;
	.loc 1 157 0
	ldrd	r4, r1, [r0, #120]	@ _39, _40, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:158:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerEnd                = task->pStackPointerEnd;
	.loc 1 158 0
	ldr	r2, [r0, #128]	@ _41, task_47(D)->pStackPointerEnd
	str	r2, [r3, #128]	@ _41, TASK_RUN_QUEUE[_92].pStackPointerEnd
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:155:       (&TASK_RUN_QUEUE[element_nr])->pStackPointerByMalloc           = task->pStackPointerByMalloc;
	.loc 1 155 0
	strd	r6, r5, [r3, #112]	@ _37, _38, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:157:       (&TASK_RUN_QUEUE[element_nr])->StackSize                       = task->StackSize;
	.loc 1 157 0
	strd	r4, r1, [r3, #120]	@ _39, _40, tmp231,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:159:       ret_task = &TASK_RUN_QUEUE[element_nr];
	.loc 1 159 0
	mov	r0, r3	@ <retval>, tmp231
.LVL17:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 0
	pop	{r4, r5, r6}	@
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.LVL18:
.L23:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == True)
	.loc 1 107 0
	movs	r3, #0	@ _92,
	b	.L21	@
.LVL19:
.L25:
	movs	r3, #2	@ _92,
	b	.L21	@
.LVL20:
.L26:
	movs	r3, #3	@ _92,
	b	.L21	@
.LVL21:
.L27:
	movs	r3, #4	@ _92,
	b	.L21	@
.LVL22:
.L28:
	movs	r3, #5	@ _92,
	b	.L21	@
.LVL23:
.L31:
	movs	r3, #8	@ _92,
	b	.L21	@
.LVL24:
.L29:
	movs	r3, #6	@ _92,
	b	.L21	@
.LVL25:
.L30:
	movs	r3, #7	@ _92,
	b	.L21	@
.L37:
	.align	2
.L36:
	.word	TASK_RUN_QUEUE
	.cfi_endproc
.LFE2:
	.size	AddToTaskQueue, .-AddToTaskQueue
	.align	1
	.p2align 2,,3
	.global	DeleteFromTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DeleteFromTaskQueue, %function
DeleteFromTaskQueue:
.LFB3:
	.loc 1 164 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL26:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:181:    task->state_request                         =   &task_state_request       ;
	.loc 1 181 0
	ldr	r3, .L39	@ tmp124,
	str	r3, [r0, #48]	@ tmp124, task_2(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:165:    task->active                                =   False   ;
	.loc 1 165 0
	movs	r3, #0	@ tmp111,
	str	r3, [r0]	@ tmp111, MEM[(void *)task_2(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:168:    task->FREE                                  =   0       ;
	.loc 1 168 0
	strh	r3, [r0, #4]	@ movhi	@ tmp111, MEM[(void *)task_2(D) + 4B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:171:    task->WaitActUntil                          =   0       ;
	.loc 1 171 0
	strd	r3, r3, [r0, #8]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:173:    task->TimeToPrioInc                         =   0       ;
	.loc 1 173 0
	strd	r3, r3, [r0, #16]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:175:    task->max_allowed_wait_time                 =   0       ;
	.loc 1 175 0
	strd	r3, r3, [r0, #24]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:176:    task->exe_time                              =   0       ;
	.loc 1 176 0
	str	r3, [r0, #32]	@ tmp111, MEM[(void *)task_2(D) + 32B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:177:    task->start_time                            =   0       ;
	.loc 1 177 0
	strh	r3, [r0, #36]	@ movhi	@ tmp111, MEM[(void *)task_2(D) + 36B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:180:    task->fp                                    =   0       ;
	.loc 1 180 0
	str	r3, [r0, #44]	@ tmp111, task_2(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:182:    task->task_state                            =   Task_unspecified;
	.loc 1 182 0
	strb	r3, [r0, #52]	@ tmp111, task_2(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:190:       task->r0                                   =   0              ;
	.loc 1 190 0
	strd	r3, r3, [r0, #56]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:192:       task->r2                                   =   0              ;
	.loc 1 192 0
	strd	r3, r3, [r0, #64]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:194:       task->r4                                   =   0              ;
	.loc 1 194 0
	strd	r3, r3, [r0, #72]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:196:       task->r6                                   =   0              ;
	.loc 1 196 0
	strd	r3, r3, [r0, #80]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:198:       task->r8                                   =   0              ;
	.loc 1 198 0
	strd	r3, r3, [r0, #88]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:200:       task->r10                                  =   0             ;
	.loc 1 200 0
	strd	r3, r3, [r0, #96]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:202:       task->r12                                  =   0             ;
	.loc 1 202 0
	strd	r3, r3, [r0, #104]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:207:    task->pStackPointerByMalloc                 =   0       ;
	.loc 1 207 0
	strd	r3, r3, [r0, #112]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:209:    task->StackSize                             =   0       ;
	.loc 1 209 0
	strd	r3, r3, [r0, #120]	@ tmp111, tmp111, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:210:    task->pStackPointerEnd                      =   0       ;
	.loc 1 210 0
	str	r3, [r0, #128]	@ tmp111, task_2(D)->pStackPointerEnd
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:211: }
	.loc 1 211 0
	bx	lr	@
.L40:
	.align	2
.L39:
	.word	task_state_request
	.cfi_endproc
.LFE3:
	.size	DeleteFromTaskQueue, .-DeleteFromTaskQueue
	.align	1
	.p2align 2,,3
	.global	GetFromTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetFromTaskQueue, %function
GetFromTaskQueue:
.LFB4:
	.loc 1 213 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL27:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:215: }
	.loc 1 215 0
	ldr	r0, [r0]	@, *scheduling_queue_element_2(D)
.LVL28:
	bx	lr	@
	.cfi_endproc
.LFE4:
	.size	GetFromTaskQueue, .-GetFromTaskQueue
	.align	1
	.p2align 2,,3
	.global	GetFromSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetFromSchedulingQueue, %function
GetFromSchedulingQueue:
.LFB5:
	.loc 1 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL29:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:218:    return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
	.loc 1 218 0
	ldr	r3, .L43	@ tmp118,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:219: }
	.loc 1 219 0
	add	r0, r3, r0, lsl #2	@, tmp118, element_nr,
.LVL30:
	bx	lr	@
.L44:
	.align	2
.L43:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE5:
	.size	GetFromSchedulingQueue, .-GetFromSchedulingQueue
	.align	1
	.p2align 2,,3
	.global	DeleteFromSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DeleteFromSchedulingQueue, %function
DeleteFromSchedulingQueue:
.LFB6:
	.loc 1 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL31:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:223:    *scheduling_queue_element = 0;
	.loc 1 223 0
	movs	r3, #0	@ tmp111,
	str	r3, [r0]	@ tmp111, *scheduling_queue_element_2(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:224: }
	.loc 1 224 0
	bx	lr	@
	.cfi_endproc
.LFE6:
	.size	DeleteFromSchedulingQueue, .-DeleteFromSchedulingQueue
	.align	1
	.p2align 2,,3
	.global	AddToSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AddToSchedulingQueue, %function
AddToSchedulingQueue:
.LFB7:
	.loc 1 226 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL32:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == 0)
	.loc 1 240 0
	ldr	r3, .L58	@ tmp143,
	ldr	r2, [r3]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L47	@ TASK_SCHEDULING_QUEUE,
.LVL33:
	ldr	r2, [r3, #4]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L50	@ TASK_SCHEDULING_QUEUE,
.LVL34:
	ldr	r2, [r3, #8]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L51	@ TASK_SCHEDULING_QUEUE,
.LVL35:
	ldr	r2, [r3, #12]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L52	@ TASK_SCHEDULING_QUEUE,
.LVL36:
	ldr	r2, [r3, #16]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L53	@ TASK_SCHEDULING_QUEUE,
.LVL37:
	ldr	r2, [r3, #20]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L54	@ TASK_SCHEDULING_QUEUE,
.LVL38:
	ldr	r2, [r3, #24]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L55	@ TASK_SCHEDULING_QUEUE,
.LVL39:
	ldr	r2, [r3, #28]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L56	@ TASK_SCHEDULING_QUEUE,
.LVL40:
	ldr	r2, [r3, #32]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L57	@ TASK_SCHEDULING_QUEUE,
.LVL41:
	ldr	r2, [r3, #36]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbnz	r2, .L46	@ TASK_SCHEDULING_QUEUE,
	movs	r2, #9	@ _25,
.LVL42:
.L47:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:242:          TASK_SCHEDULING_QUEUE[index] = task;
	.loc 1 242 0
	str	r0, [r3, r2, lsl #2]	@ task, TASK_SCHEDULING_QUEUE
.LVL43:
.L46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:248: }
	.loc 1 248 0
	bx	lr	@
.LVL44:
.L50:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == 0)
	.loc 1 240 0
	movs	r2, #1	@ _25,
	b	.L47	@
.LVL45:
.L53:
	movs	r2, #4	@ _25,
	b	.L47	@
.LVL46:
.L51:
	movs	r2, #2	@ _25,
	b	.L47	@
.LVL47:
.L52:
	movs	r2, #3	@ _25,
	b	.L47	@
.LVL48:
.L54:
	movs	r2, #5	@ _25,
	b	.L47	@
.LVL49:
.L57:
	movs	r2, #8	@ _25,
	b	.L47	@
.LVL50:
.L55:
	movs	r2, #6	@ _25,
	b	.L47	@
.LVL51:
.L56:
	movs	r2, #7	@ _25,
	b	.L47	@
.L59:
	.align	2
.L58:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE7:
	.size	AddToSchedulingQueue, .-AddToSchedulingQueue
	.align	1
	.p2align 2,,3
	.global	UpdateSchedulingQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	UpdateSchedulingQueue, %function
UpdateSchedulingQueue:
.LFB8:
	.loc 1 250 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL52:
	push	{r4, r5, r6, r7}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	ldr	r6, .L99	@ tmp288,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:250: {
	.loc 1 250 0
	movs	r2, #1	@ ivtmp.50,
	mov	r3, r6	@ ivtmp.52, tmp288
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:268:             TASK_SCHEDULING_QUEUE[src]  = 0;
	.loc 1 268 0
	movs	r7, #0	@ tmp290,
	b	.L61	@
.LVL53:
.L62:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:254:    while (dest < MAX_RUN_PQUEUE_SIZE)
	.loc 1 254 0
	cmp	r2, #10	@ ivtmp.50,
	beq	.L60	@,
.LVL54:
.L98:
	adds	r1, r2, #1	@ ivtmp.50, ivtmp.50,
.L66:
	mov	r2, r1	@ ivtmp.50, ivtmp.50
	adds	r3, r3, #4	@ ivtmp.52, ivtmp.52,
.L61:
.LVL55:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:256:       if(TASK_SCHEDULING_QUEUE[dest] == 0)
	.loc 1 256 0
	ldr	r1, [r3]	@ MEM[base: _45, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r1, #0	@ MEM[base: _45, offset: 0B]
	bne	.L62	@
.LVL56:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:261:          while((src < MAX_RUN_PQUEUE_SIZE)&&(TASK_SCHEDULING_QUEUE[src]==0))
	.loc 1 261 0
	cmp	r2, #10	@ ivtmp.50,
	uxtb	r4, r2	@ _18, ivtmp.50
	beq	.L60	@,
	ldr	r0, [r3, #4]	@ _23, MEM[base: _45, offset: 4B]
	mov	r5, r2	@ _22, ivtmp.50
	adds	r1, r2, #1	@ ivtmp.50, _22,
	cbnz	r0, .L64	@ _23,
.LVL57:
	cmp	r4, #9	@ _18,
	beq	.L98	@,
	ldr	r0, [r3, #8]	@ _23, MEM[base: _45, offset: 8B]
	adds	r1, r2, #1	@ ivtmp.50, ivtmp.50,
	mov	r5, r1	@ _22, ivtmp.50
	cbnz	r0, .L64	@ _23,
.LVL58:
	cmp	r4, #8	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #12]	@ _23, MEM[base: _45, offset: 12B]
	adds	r5, r2, #2	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL59:
	cmp	r4, #7	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #16]	@ _23, MEM[base: _45, offset: 16B]
	adds	r5, r2, #3	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL60:
	cmp	r4, #6	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #20]	@ _23, MEM[base: _45, offset: 20B]
	adds	r5, r2, #4	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL61:
	cmp	r4, #5	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #24]	@ _23, MEM[base: _45, offset: 24B]
	adds	r5, r2, #5	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL62:
	cmp	r4, #4	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #28]	@ _23, MEM[base: _45, offset: 28B]
	adds	r5, r2, #6	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL63:
	cmp	r4, #3	@ _18,
	beq	.L66	@,
	ldr	r0, [r3, #32]	@ _23, MEM[base: _45, offset: 32B]
	adds	r5, r2, #7	@ _22, ivtmp.50,
	cbnz	r0, .L64	@ _23,
.LVL64:
	cmp	r4, #1	@ _18,
	bne	.L66	@,
	ldr	r0, [r6, #36]	@ _23, TASK_SCHEDULING_QUEUE
	movs	r5, #9	@ _22,
	cmp	r0, #0	@ _23
	beq	.L66	@
.LVL65:
.L64:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:267:             TASK_SCHEDULING_QUEUE[dest] = TASK_SCHEDULING_QUEUE[src];
	.loc 1 267 0
	str	r0, [r3]	@ _23, MEM[base: _45, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:268:             TASK_SCHEDULING_QUEUE[src]  = 0;
	.loc 1 268 0
	str	r7, [r6, r5, lsl #2]	@ tmp290, TASK_SCHEDULING_QUEUE
	b	.L66	@
.LVL66:
.L60:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:273: }
	.loc 1 273 0
	pop	{r4, r5, r6, r7}	@
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.L100:
	.align	2
.L99:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE8:
	.size	UpdateSchedulingQueue, .-UpdateSchedulingQueue
	.align	1
	.p2align 2,,3
	.global	GetIdleTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetIdleTask, %function
GetIdleTask:
.LFB9:
	.loc 1 277 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:279: }
	.loc 1 279 0
	ldr	r0, .L102	@,
	bx	lr	@
.L103:
	.align	2
.L102:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE9:
	.size	GetIdleTask, .-GetIdleTask
	.align	1
	.p2align 2,,3
	.global	AddToIdleTaskQueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AddToIdleTaskQueue, %function
AddToIdleTaskQueue:
.LFB10:
	.loc 1 281 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL67:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:283:    if((&TASK_IDLE_QUEUE[0])->IdleTask == False)
	.loc 1 283 0
	ldr	r3, .L110	@ tmp148,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ TASK_IDLE_QUEUE, TASK_IDLE_QUEUE
	lsls	r1, r2, #29	@, TASK_IDLE_QUEUE,
	bmi	.L107	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:281: {
	.loc 1 281 0
	push	{r4, r5, r6, r7}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:285:       (&TASK_IDLE_QUEUE[0])->active                                =   task->active           ;
	.loc 1 285 0
	ldrb	r4, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0])->NrOfInsActivated                      =   task->NrOfInsActivated ;
	.loc 1 290 0
	ldrb	r5, [r0, #5]	@ zero_extendqisi2	@ _8, task_40(D)->NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0])->WaitActUntil                          =   task->WaitActUntil     ;
	.loc 1 291 0
	ldr	r1, [r0, #8]	@ _9, task_40(D)->WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0])->wait_time                             =   task->wait_time        ;
	.loc 1 292 0
	ldr	r7, [r0, #12]	@ _10, task_40(D)->wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:294:       (&TASK_IDLE_QUEUE[0])->overwaittime_per_prio_inc_step        =   task->overwaittime_per_prio_inc_step;
	.loc 1 294 0
	ldr	r6, [r0, #20]	@ _12, task_40(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:285:       (&TASK_IDLE_QUEUE[0])->active                                =   task->active           ;
	.loc 1 285 0
	bfi	r2, r4, #0, #1	@ TASK_IDLE_QUEUE[0].active, *task_40(D),,
	strb	r2, [r3]	@ TASK_IDLE_QUEUE[0].active, TASK_IDLE_QUEUE[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:286:       (&TASK_IDLE_QUEUE[0])->task_queued                           =   task->task_queued      ;
	.loc 1 286 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
	ldrb	r4, [r3]	@ zero_extendqisi2	@, TASK_IDLE_QUEUE[0].task_queued
	ubfx	r2, r2, #1, #1	@ _4, *task_40(D),,
	bfi	r4, r2, #1, #1	@ TASK_IDLE_QUEUE[0].task_queued, _4,,
	strb	r4, [r3]	@ TASK_IDLE_QUEUE[0].task_queued, TASK_IDLE_QUEUE[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0])->IdleTask                              =   task->IdleTask         ;
	.loc 1 287 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
	uxtb	r4, r4	@ tmp173, TASK_IDLE_QUEUE[0].task_queued
	ubfx	r2, r2, #2, #1	@ _5, *task_40(D),,
	bfi	r4, r2, #2, #1	@ TASK_IDLE_QUEUE[0].IdleTask, _5,,
	strb	r4, [r3]	@ TASK_IDLE_QUEUE[0].IdleTask, TASK_IDLE_QUEUE[0].IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0])->FREE                                  =   task->FREE             ;
	.loc 1 288 0
	ldr	r2, [r0]	@ *task_40(D), *task_40(D)
	ldr	r4, [r3]	@ TASK_IDLE_QUEUE[0].FREE, TASK_IDLE_QUEUE[0].FREE
	ubfx	r2, r2, #3, #29	@ _6, *task_40(D),,
	bfi	r4, r2, #3, #29	@ TASK_IDLE_QUEUE[0].FREE, _6,,
	str	r4, [r3]	@ TASK_IDLE_QUEUE[0].FREE, TASK_IDLE_QUEUE[0].FREE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0])->NrOfInsAllowed                        =   task->NrOfInsAllowed   ;
	.loc 1 289 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _7, task_40(D)->NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:293:       (&TASK_IDLE_QUEUE[0])->TimeToPrioInc                         =   task->TimeToPrioInc    ;
	.loc 1 293 0
	ldr	r4, [r0, #16]	@ _11, task_40(D)->TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0])->NrOfInsAllowed                        =   task->NrOfInsAllowed   ;
	.loc 1 289 0
	strb	r2, [r3, #4]	@ _7, TASK_IDLE_QUEUE[0].NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:295:       (&TASK_IDLE_QUEUE[0])->max_allowed_wait_time                 =   task->max_allowed_wait_time;
	.loc 1 295 0
	ldr	r2, [r0, #24]	@ _13, task_40(D)->max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0])->NrOfInsActivated                      =   task->NrOfInsActivated ;
	.loc 1 290 0
	strb	r5, [r3, #5]	@ _8, TASK_IDLE_QUEUE[0].NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0])->WaitActUntil                          =   task->WaitActUntil     ;
	.loc 1 291 0
	str	r1, [r3, #8]	@ _9, TASK_IDLE_QUEUE[0].WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0])->exe_time                              =   task->exe_time;
	.loc 1 296 0
	ldr	r5, [r0, #28]	@ _14, task_40(D)->exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:298:       (&TASK_IDLE_QUEUE[0])->default_prio                          =   task->default_prio     ;
	.loc 1 298 0
	ldrb	r1, [r0, #37]	@ zero_extendqisi2	@ _16, task_40(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:293:       (&TASK_IDLE_QUEUE[0])->TimeToPrioInc                         =   task->TimeToPrioInc    ;
	.loc 1 293 0
	str	r4, [r3, #16]	@ _11, TASK_IDLE_QUEUE[0].TimeToPrioInc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:295:       (&TASK_IDLE_QUEUE[0])->max_allowed_wait_time                 =   task->max_allowed_wait_time;
	.loc 1 295 0
	str	r2, [r3, #24]	@ _13, TASK_IDLE_QUEUE[0].max_allowed_wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:297:       (&TASK_IDLE_QUEUE[0])->current_prio                          =   task->current_prio     ;
	.loc 1 297 0
	ldrb	r4, [r0, #36]	@ zero_extendqisi2	@ _15, task_40(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0])->fp                                    =   task->fp               ;
	.loc 1 299 0
	ldr	r2, [r0, #44]	@ _17, task_40(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0])->wait_time                             =   task->wait_time        ;
	.loc 1 292 0
	str	r7, [r3, #12]	@ _10, TASK_IDLE_QUEUE[0].wait_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:294:       (&TASK_IDLE_QUEUE[0])->overwaittime_per_prio_inc_step        =   task->overwaittime_per_prio_inc_step;
	.loc 1 294 0
	str	r6, [r3, #20]	@ _12, TASK_IDLE_QUEUE[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0])->exe_time                              =   task->exe_time;
	.loc 1 296 0
	str	r5, [r3, #28]	@ _14, TASK_IDLE_QUEUE[0].exe_time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:297:       (&TASK_IDLE_QUEUE[0])->current_prio                          =   task->current_prio     ;
	.loc 1 297 0
	strb	r4, [r3, #36]	@ _15, TASK_IDLE_QUEUE[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:298:       (&TASK_IDLE_QUEUE[0])->default_prio                          =   task->default_prio     ;
	.loc 1 298 0
	strb	r1, [r3, #37]	@ _16, TASK_IDLE_QUEUE[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0])->fp                                    =   task->fp               ;
	.loc 1 299 0
	str	r2, [r3, #44]	@ _17, TASK_IDLE_QUEUE[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:309:       (&TASK_IDLE_QUEUE[0])->r0                                   =   task->r0              ;
	.loc 1 309 0
	ldrd	r4, r1, [r0, #56]	@ _19, _20, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:300:       (&TASK_IDLE_QUEUE[0])->state_request                         =   task->state_request    ;
	.loc 1 300 0
	ldr	r2, [r0, #48]	@ _18, task_40(D)->state_request
	str	r2, [r3, #48]	@ _18, TASK_IDLE_QUEUE[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0])->task_state                            =   Task_ready             ;
	.loc 1 301 0
	movs	r5, #2	@ tmp195,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:310:       (&TASK_IDLE_QUEUE[0])->r1                                   =   task->r1              ;
	.loc 1 310 0
	ldr	r2, [r0, #64]	@ _21, task_40(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0])->task_state                            =   Task_ready             ;
	.loc 1 301 0
	strb	r5, [r3, #52]	@ tmp195, TASK_IDLE_QUEUE[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:302:       (&TASK_IDLE_QUEUE[0])->task_group                            =   task->task_group       ;
	.loc 1 302 0
	str	r4, [r3, #56]	@ _19, TASK_IDLE_QUEUE[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0])->r2                                   =   task->r2              ;
	.loc 1 311 0
	ldr	r5, [r0, #68]	@ _22, task_40(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:312:       (&TASK_IDLE_QUEUE[0])->r3                                   =   task->r3              ;
	.loc 1 312 0
	ldr	r4, [r0, #72]	@ _23, task_40(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:309:       (&TASK_IDLE_QUEUE[0])->r0                                   =   task->r0              ;
	.loc 1 309 0
	str	r1, [r3, #60]	@ _20, TASK_IDLE_QUEUE[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:310:       (&TASK_IDLE_QUEUE[0])->r1                                   =   task->r1              ;
	.loc 1 310 0
	str	r2, [r3, #64]	@ _21, TASK_IDLE_QUEUE[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:313:       (&TASK_IDLE_QUEUE[0])->r4                                   =   task->r4              ;
	.loc 1 313 0
	ldr	r1, [r0, #76]	@ _24, task_40(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:314:       (&TASK_IDLE_QUEUE[0])->r5                                   =   task->r5              ;
	.loc 1 314 0
	ldr	r2, [r0, #80]	@ _25, task_40(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0])->r2                                   =   task->r2              ;
	.loc 1 311 0
	str	r5, [r3, #68]	@ _22, TASK_IDLE_QUEUE[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:312:       (&TASK_IDLE_QUEUE[0])->r3                                   =   task->r3              ;
	.loc 1 312 0
	str	r4, [r3, #72]	@ _23, TASK_IDLE_QUEUE[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:315:       (&TASK_IDLE_QUEUE[0])->r6                                   =   task->r6              ;
	.loc 1 315 0
	ldr	r5, [r0, #84]	@ _26, task_40(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:316:       (&TASK_IDLE_QUEUE[0])->r7                                   =   task->r7              ;
	.loc 1 316 0
	ldr	r4, [r0, #88]	@ _27, task_40(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:313:       (&TASK_IDLE_QUEUE[0])->r4                                   =   task->r4              ;
	.loc 1 313 0
	str	r1, [r3, #76]	@ _24, TASK_IDLE_QUEUE[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:314:       (&TASK_IDLE_QUEUE[0])->r5                                   =   task->r5              ;
	.loc 1 314 0
	str	r2, [r3, #80]	@ _25, TASK_IDLE_QUEUE[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:317:       (&TASK_IDLE_QUEUE[0])->r8                                   =   task->r8              ;
	.loc 1 317 0
	ldr	r1, [r0, #92]	@ _28, task_40(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:318:       (&TASK_IDLE_QUEUE[0])->r9                                   =   task->r9              ;
	.loc 1 318 0
	ldr	r2, [r0, #96]	@ _29, task_40(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:315:       (&TASK_IDLE_QUEUE[0])->r6                                   =   task->r6              ;
	.loc 1 315 0
	str	r5, [r3, #84]	@ _26, TASK_IDLE_QUEUE[0].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:316:       (&TASK_IDLE_QUEUE[0])->r7                                   =   task->r7              ;
	.loc 1 316 0
	str	r4, [r3, #88]	@ _27, TASK_IDLE_QUEUE[0].r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:319:       (&TASK_IDLE_QUEUE[0])->r10                                  =   task->r10             ;
	.loc 1 319 0
	ldr	r5, [r0, #100]	@ _30, task_40(D)->r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:320:       (&TASK_IDLE_QUEUE[0])->r11                                  =   task->r11             ;
	.loc 1 320 0
	ldr	r4, [r0, #104]	@ _31, task_40(D)->r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:317:       (&TASK_IDLE_QUEUE[0])->r8                                   =   task->r8              ;
	.loc 1 317 0
	str	r1, [r3, #92]	@ _28, TASK_IDLE_QUEUE[0].r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:318:       (&TASK_IDLE_QUEUE[0])->r9                                   =   task->r9              ;
	.loc 1 318 0
	str	r2, [r3, #96]	@ _29, TASK_IDLE_QUEUE[0].r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:321:       (&TASK_IDLE_QUEUE[0])->r12                                  =   task->r12             ;
	.loc 1 321 0
	ldr	r1, [r0, #108]	@ _32, task_40(D)->r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:325:       (&TASK_IDLE_QUEUE[0])->pStackPointer                         =   task->pStackPointer    ;
	.loc 1 325 0
	ldr	r2, [r0, #112]	@ _33, task_40(D)->pStackPointer
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:320:       (&TASK_IDLE_QUEUE[0])->r11                                  =   task->r11             ;
	.loc 1 320 0
	strd	r5, r4, [r3, #100]	@ _30, _31, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:325:       (&TASK_IDLE_QUEUE[0])->pStackPointer                         =   task->pStackPointer    ;
	.loc 1 325 0
	strd	r1, r2, [r3, #108]	@ _32, _33, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:327:       (&TASK_IDLE_QUEUE[0])->pStackPointerStart                    =   task->pStackPointerStart;
	.loc 1 327 0
	ldrd	r5, r4, [r0, #116]	@ _34, _35, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:329:       (&TASK_IDLE_QUEUE[0])->pStackPointerEnd                      =   task->pStackPointerEnd ;
	.loc 1 329 0
	ldrd	r1, r2, [r0, #124]	@ _36, _37, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:327:       (&TASK_IDLE_QUEUE[0])->pStackPointerStart                    =   task->pStackPointerStart;
	.loc 1 327 0
	strd	r5, r4, [r3, #116]	@ _34, _35, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:329:       (&TASK_IDLE_QUEUE[0])->pStackPointerEnd                      =   task->pStackPointerEnd ;
	.loc 1 329 0
	strd	r1, r2, [r3, #124]	@ _36, _37, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:331: }
	.loc 1 331 0
	pop	{r4, r5, r6, r7}	@
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.L107:
	bx	lr	@
.L111:
	.align	2
.L110:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE10:
	.size	AddToIdleTaskQueue, .-AddToIdleTaskQueue
	.align	1
	.p2align 2,,3
	.global	GetRunningTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetRunningTask, %function
GetRunningTask:
.LFB11:
	.loc 1 333 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:335: }
	.loc 1 335 0
	ldr	r0, .L113	@,
	bx	lr	@
.L114:
	.align	2
.L113:
	.word	RUNNING_TASK
	.cfi_endproc
.LFE11:
	.size	GetRunningTask, .-GetRunningTask
	.align	1
	.p2align 2,,3
	.global	GetRunningSchedulingQueueElementPtr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GetRunningSchedulingQueueElementPtr, %function
GetRunningSchedulingQueueElementPtr:
.LFB12:
	.loc 1 337 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:338:     return RUNNING_SCHEDULING_QUEUE_ENTRY;
	.loc 1 338 0
	ldr	r3, .L116	@ tmp112,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:339: }
	.loc 1 339 0
	ldr	r0, [r3]	@, RUNNING_SCHEDULING_QUEUE_ENTRY
	bx	lr	@
.L117:
	.align	2
.L116:
	.word	RUNNING_SCHEDULING_QUEUE_ENTRY
	.cfi_endproc
.LFE12:
	.size	GetRunningSchedulingQueueElementPtr, .-GetRunningSchedulingQueueElementPtr
	.align	1
	.p2align 2,,3
	.global	OS_InitTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_InitTask, %function
OS_InitTask:
.LFB13:
	.loc 1 352 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL68:
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
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:352: {
	.loc 1 352 0
	ldr	r5, [sp, #40]	@ uStackSize, uStackSize
	ldrb	lr, [sp, #44]	@ zero_extendqisi2	@ privilige_mode, privilige_mode
	ldrb	ip, [sp, #52]	@ zero_extendqisi2	@ default_prio, default_prio
	ldrd	r8, r7, [sp, #32]	@ p_task_group, pStackAddr,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:354:    if(task!=0)
	.loc 1 354 0
	cbz	r0, .L119	@ task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:356:       task->active           = False;
	.loc 1 356 0
	ldrb	r6, [r0]	@ zero_extendqisi2	@, task_7(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:358:       task->NrOfInsAllowed   = AllowedInstances;
	.loc 1 358 0
	strb	r2, [r0, #4]	@ AllowedInstances, task_7(D)->NrOfInsAllowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       task->IdleTask      = IdleTask;
	.loc 1 368 0
	and	r6, r6, #254	@ task_7(D)->IdleTask, task_7(D)->active,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:366:       task->max_allowed_wait_time          = 100000;
	.loc 1 366 0
	ldr	r2, .L123	@ tmp133,
.LVL69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:357:       task->fp               = TaskFunction;
	.loc 1 357 0
	str	r1, [r0, #44]	@ TaskFunction, task_7(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       task->IdleTask      = IdleTask;
	.loc 1 368 0
	bfi	r6, r3, #2, #1	@ task_7(D)->IdleTask, IdleTask,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:360:       task->NrOfInsActivated = 0;
	.loc 1 360 0
	movs	r1, #0	@ tmp127,
.LVL70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:369:       task->state_request = &task_state_request;
	.loc 1 369 0
	ldr	r3, .L123+4	@ tmp136,
.LVL71:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:362:       task->privilige_mode   = privilige_mode;
	.loc 1 362 0
	strb	lr, [r0, #132]	@ privilige_mode, task_7(D)->privilige_mode
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:365:       task->overwaittime_per_prio_inc_step = 1;
	.loc 1 365 0
	mov	r9, #1	@ tmp132,
	mov	r4, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:366:       task->max_allowed_wait_time          = 100000;
	.loc 1 366 0
	strd	r9, r2, [r0, #20]	@ tmp132, tmp133, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:363:       task->default_prio     = default_prio;
	.loc 1 363 0
	strb	ip, [r0, #37]	@ default_prio, task_7(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:360:       task->NrOfInsActivated = 0;
	.loc 1 360 0
	strb	r1, [r0, #5]	@ tmp127, task_7(D)->NrOfInsActivated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:361:       task->WaitActUntil     = 0;
	.loc 1 361 0
	str	r1, [r0, #8]	@ tmp127, task_7(D)->WaitActUntil
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:369:       task->state_request = &task_state_request;
	.loc 1 369 0
	str	r3, [r0, #48]	@ tmp136, task_7(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:359:       task->task_group       = p_task_group;
	.loc 1 359 0
	str	r8, [r0, #56]	@ p_task_group, task_7(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       task->IdleTask      = IdleTask;
	.loc 1 368 0
	strb	r6, [r0]	@ task_7(D)->IdleTask, task_7(D)->IdleTask
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:370:       task_state_request(task, Task_unspecified);
	.loc 1 370 0
	bl	task_state_request	@
.LVL72:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:371:       OS_CreateTask(task);
	.loc 1 371 0
	mov	r0, r4	@, task
	bl	OS_CreateTask	@
.LVL73:
	cmp	r5, #2000	@ uStackSize,
	it	cs
	movcs	r5, #2000	@ uStackSize,
.LVL74:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:380:       task->pStackPointerEnd      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
	.loc 1 380 0
	subs	r2, r5, #1	@ tmp137, uStackSize,
	add	r2, r2, r7	@ _3, pStackAddr
	strd	r5, r2, [r4, #124]	@ uStackSize, _3, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:378:       task->pStackPointerByMalloc = pStackAddr;
	.loc 1 378 0
	strd	r2, r7, [r4, #112]	@ _3, pStackAddr, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:379:       task->pStackPointerStart    = pStackAddr;/*low addresse */
	.loc 1 379 0
	str	r7, [r4, #120]	@ pStackAddr, task_7(D)->pStackPointerStart
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:389: }
	.loc 1 389 0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}	@
.LVL75:
.L119:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:387:       OS_SetSwBug(os_bug_null_pointer, Func_InitTask);
	.loc 1 387 0
	movs	r1, #10	@,
.LVL76:
	movs	r0, #2	@,
.LVL77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:389: }
	.loc 1 389 0
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}	@
	.cfi_restore 14
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL78:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:387:       OS_SetSwBug(os_bug_null_pointer, Func_InitTask);
	.loc 1 387 0
	b	OS_SetSwBug	@
.LVL79:
.L124:
	.align	2
.L123:
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
	.file 7 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF680
	.byte	0x1
	.4byte	.LASF681
	.4byte	.LASF682
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF516
	.byte	0x2
	.byte	0x1d
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF514
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF515
	.uleb128 0x2
	.4byte	.LASF517
	.byte	0x2
	.byte	0x22
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF518
	.uleb128 0x2
	.4byte	.LASF519
	.byte	0x2
	.byte	0x23
	.4byte	0x4d
	.uleb128 0x4
	.4byte	0x54
	.uleb128 0x5
	.4byte	.LASF531
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2b
	.4byte	0xb2
	.uleb128 0x6
	.4byte	.LASF520
	.byte	0
	.uleb128 0x6
	.4byte	.LASF521
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF522
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF523
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF524
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF526
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF527
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF528
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF529
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF530
	.byte	0x3
	.byte	0x38
	.4byte	0x64
	.uleb128 0x4
	.4byte	0xb2
	.uleb128 0x5
	.4byte	.LASF532
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x39
	.4byte	0x140
	.uleb128 0x6
	.4byte	.LASF533
	.byte	0
	.uleb128 0x6
	.4byte	.LASF534
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF535
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF536
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF537
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF539
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF540
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF541
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF542
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF543
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF546
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF547
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.4byte	.LASF551
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x6
	.4byte	.LASF552
	.byte	0
	.uleb128 0x6
	.4byte	.LASF553
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF554
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF555
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF556
	.byte	0x4
	.byte	0xb
	.4byte	0x140
	.uleb128 0x5
	.4byte	.LASF557
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x10
	.4byte	0x199
	.uleb128 0x6
	.4byte	.LASF558
	.byte	0
	.uleb128 0x6
	.4byte	.LASF559
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF560
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF561
	.byte	0x4
	.byte	0x16
	.4byte	0x175
	.uleb128 0x5
	.4byte	.LASF562
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x1ce
	.uleb128 0x6
	.4byte	.LASF563
	.byte	0
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF567
	.byte	0x5
	.byte	0xe
	.4byte	0x1a4
	.uleb128 0x2
	.4byte	.LASF568
	.byte	0x5
	.byte	0x13
	.4byte	0x1e4
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x8
	.4byte	0x1f5
	.uleb128 0x9
	.4byte	0x1f5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF569
	.byte	0x5
	.byte	0x15
	.4byte	0x202
	.uleb128 0x7
	.byte	0x4
	.4byte	0x208
	.uleb128 0xb
	.4byte	0x29
	.4byte	0x21c
	.uleb128 0x9
	.4byte	0x1f5
	.uleb128 0x9
	.4byte	0x1ce
	.byte	0
	.uleb128 0xc
	.4byte	.LASF573
	.byte	0x8
	.byte	0x5
	.byte	0x17
	.4byte	0x241
	.uleb128 0xd
	.4byte	.LASF570
	.byte	0x5
	.byte	0x19
	.4byte	0x42
	.byte	0
	.uleb128 0xd
	.4byte	.LASF571
	.byte	0x5
	.byte	0x1a
	.4byte	0x42
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF572
	.byte	0x5
	.byte	0x1c
	.4byte	0x21c
	.uleb128 0xc
	.4byte	.LASF574
	.byte	0x88
	.byte	0x5
	.byte	0x1e
	.4byte	0x42e
	.uleb128 0xe
	.4byte	.LASF575
	.byte	0x5
	.byte	0x20
	.4byte	0x42e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.4byte	.LASF576
	.byte	0x5
	.byte	0x21
	.4byte	0x42e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF577
	.byte	0x5
	.byte	0x22
	.4byte	0x42e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF578
	.byte	0x5
	.byte	0x23
	.4byte	0x42e
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF579
	.byte	0x5
	.byte	0x24
	.4byte	0x29
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF580
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF581
	.byte	0x5
	.byte	0x26
	.4byte	0x42
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF582
	.byte	0x5
	.byte	0x27
	.4byte	0x42
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF583
	.byte	0x5
	.byte	0x28
	.4byte	0x42
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF584
	.byte	0x5
	.byte	0x29
	.4byte	0x42
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF585
	.byte	0x5
	.byte	0x2a
	.4byte	0x42
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF570
	.byte	0x5
	.byte	0x2b
	.4byte	0x42
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF586
	.byte	0x5
	.byte	0x2c
	.4byte	0x42
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF587
	.byte	0x5
	.byte	0x2d
	.4byte	0x29
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF588
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x25
	.uleb128 0xd
	.4byte	.LASF589
	.byte	0x5
	.byte	0x2f
	.4byte	0x42
	.byte	0x28
	.uleb128 0xf
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x30
	.4byte	0x1d9
	.byte	0x2c
	.uleb128 0xd
	.4byte	.LASF590
	.byte	0x5
	.byte	0x31
	.4byte	0x1f7
	.byte	0x30
	.uleb128 0xd
	.4byte	.LASF591
	.byte	0x5
	.byte	0x32
	.4byte	0x1ce
	.byte	0x34
	.uleb128 0xd
	.4byte	.LASF592
	.byte	0x5
	.byte	0x33
	.4byte	0x435
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
	.4byte	.LASF593
	.byte	0x5
	.byte	0x48
	.4byte	0x43b
	.byte	0x70
	.uleb128 0xd
	.4byte	.LASF594
	.byte	0x5
	.byte	0x49
	.4byte	0x43b
	.byte	0x74
	.uleb128 0xd
	.4byte	.LASF595
	.byte	0x5
	.byte	0x4a
	.4byte	0x43b
	.byte	0x78
	.uleb128 0xd
	.4byte	.LASF596
	.byte	0x5
	.byte	0x4b
	.4byte	0x42
	.byte	0x7c
	.uleb128 0xd
	.4byte	.LASF597
	.byte	0x5
	.byte	0x4c
	.4byte	0x43b
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF598
	.byte	0x5
	.byte	0x4d
	.4byte	0x199
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF599
	.uleb128 0x7
	.byte	0x4
	.4byte	0x241
	.uleb128 0x7
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF600
	.byte	0x5
	.byte	0x4f
	.4byte	0x24c
	.uleb128 0x2
	.4byte	.LASF601
	.byte	0x5
	.byte	0x50
	.4byte	0x457
	.uleb128 0x7
	.byte	0x4
	.4byte	0x441
	.uleb128 0x10
	.4byte	0x457
	.4byte	0x46d
	.uleb128 0x11
	.4byte	0x42e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF603
	.byte	0x5
	.byte	0x5b
	.4byte	0x45d
	.uleb128 0x2
	.4byte	.LASF602
	.byte	0x5
	.byte	0x5d
	.4byte	0x42e
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x494
	.uleb128 0x13
	.4byte	0x42e
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF604
	.byte	0x6
	.byte	0xb
	.4byte	0x483
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4b6
	.uleb128 0x11
	.4byte	0x42e
	.byte	0
	.uleb128 0x13
	.4byte	0x42e
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF605
	.byte	0x6
	.byte	0xe
	.4byte	0x49f
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x4d2
	.uleb128 0x13
	.4byte	0x42e
	.2byte	0x4fff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF606
	.byte	0x6
	.byte	0xf
	.4byte	0x4c1
	.uleb128 0x10
	.4byte	0xbd
	.4byte	0x4ed
	.uleb128 0x11
	.4byte	0x42e
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x4dd
	.uleb128 0x12
	.4byte	.LASF607
	.byte	0x6
	.byte	0x10
	.4byte	0x4ed
	.uleb128 0x12
	.4byte	.LASF608
	.byte	0x6
	.byte	0x11
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF609
	.byte	0x6
	.byte	0x12
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF610
	.byte	0x6
	.byte	0x13
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF611
	.byte	0x6
	.byte	0x14
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x6
	.byte	0x15
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x6
	.byte	0x16
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF614
	.byte	0x6
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF615
	.byte	0x6
	.byte	0x18
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF616
	.byte	0x6
	.byte	0x19
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF617
	.byte	0x6
	.byte	0x1a
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF618
	.byte	0x6
	.byte	0x1b
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x6
	.byte	0x1c
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x6
	.byte	0x1d
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x6
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x6
	.byte	0x1f
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x6
	.byte	0x20
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x6
	.byte	0x21
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x6
	.byte	0x22
	.4byte	0x5f
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x6
	.byte	0x23
	.4byte	0x5f
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x5e5
	.uleb128 0x11
	.4byte	0x42e
	.byte	0x9
	.uleb128 0x13
	.4byte	0x42e
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x6
	.byte	0x25
	.4byte	0x5ce
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x6
	.byte	0x26
	.4byte	0x478
	.uleb128 0x10
	.4byte	0x44c
	.4byte	0x60b
	.uleb128 0x11
	.4byte	0x42e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x6
	.byte	0x27
	.4byte	0x5fb
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x6
	.byte	0x28
	.4byte	0x621
	.uleb128 0x7
	.byte	0x4
	.4byte	0x44c
	.uleb128 0x10
	.4byte	0x441
	.4byte	0x637
	.uleb128 0x11
	.4byte	0x42e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x6
	.byte	0x29
	.4byte	0x627
	.uleb128 0x10
	.4byte	0x441
	.4byte	0x652
	.uleb128 0x11
	.4byte	0x42e
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x6
	.byte	0x2a
	.4byte	0x642
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x6
	.byte	0x2b
	.4byte	0x642
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x6
	.byte	0x2c
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x6
	.byte	0x2d
	.4byte	0x441
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x6
	.byte	0x2d
	.4byte	0x441
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x6
	.byte	0x2d
	.4byte	0x441
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x6
	.byte	0x2d
	.4byte	0x441
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x6
	.byte	0x2e
	.4byte	0x241
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x6
	.byte	0x2e
	.4byte	0x241
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x6
	.byte	0x2e
	.4byte	0x241
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x6
	.byte	0x2e
	.4byte	0x241
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x6
	.byte	0x2e
	.4byte	0x241
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x6
	.byte	0x2f
	.4byte	0x457
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x6
	.byte	0x30
	.4byte	0x1ce
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x6
	.byte	0x31
	.4byte	0x1ce
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x6
	.byte	0x32
	.4byte	0x702
	.uleb128 0x7
	.byte	0x4
	.4byte	0x708
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x154
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x801
	.uleb128 0x16
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x155
	.4byte	0x457
	.4byte	.LLST10
	.uleb128 0x16
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x156
	.4byte	0x1d9
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF650
	.byte	0x1
	.2byte	0x157
	.4byte	0x29
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF577
	.byte	0x1
	.2byte	0x158
	.4byte	0x29
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x159
	.4byte	0x435
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x15a
	.4byte	0x43b
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x15b
	.4byte	0x42
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	.LASF598
	.byte	0x1
	.2byte	0x15c
	.4byte	0x199
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x15d
	.4byte	0x16a
	.4byte	.LLST18
	.uleb128 0x16
	.4byte	.LASF588
	.byte	0x1
	.2byte	0x15e
	.4byte	0x29
	.4byte	.LLST19
	.uleb128 0x17
	.4byte	.LVL72
	.4byte	0xa2f
	.4byte	0x7d8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL73
	.4byte	0xa3a
	.4byte	0x7ec
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL79
	.4byte	0xa45
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x150
	.4byte	0x817
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.byte	0x4
	.4byte	0x457
	.uleb128 0x1a
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x14c
	.4byte	0x457
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x118
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x858
	.uleb128 0x1b
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x118
	.4byte	0x457
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x114
	.4byte	0x457
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF660
	.byte	0x1
	.byte	0xf9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a2
	.uleb128 0x1d
	.4byte	.LASF661
	.byte	0x1
	.byte	0xfc
	.4byte	0x29
	.4byte	.LLST8
	.uleb128 0x1e
	.ascii	"src\000"
	.byte	0x1
	.byte	0xfc
	.4byte	0x29
	.4byte	.LLST9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF662
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e3
	.uleb128 0x1f
	.4byte	.LASF648
	.byte	0x1
	.byte	0xe1
	.4byte	0x457
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF663
	.byte	0x1
	.byte	0xea
	.4byte	0x29
	.4byte	.LLST6
	.uleb128 0x1d
	.4byte	.LASF664
	.byte	0x1
	.byte	0xeb
	.4byte	0x29
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF665
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x906
	.uleb128 0x1f
	.4byte	.LASF666
	.byte	0x1
	.byte	0xdd
	.4byte	0x621
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.4byte	.LASF668
	.byte	0x1
	.byte	0xd8
	.4byte	0x621
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92f
	.uleb128 0x21
	.4byte	.LASF667
	.byte	0x1
	.byte	0xd8
	.4byte	0x29
	.4byte	.LLST5
	.byte	0
	.uleb128 0x20
	.4byte	.LASF669
	.byte	0x1
	.byte	0xd4
	.4byte	0x457
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x958
	.uleb128 0x21
	.4byte	.LASF666
	.byte	0x1
	.byte	0xd4
	.4byte	0x621
	.4byte	.LLST4
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF670
	.byte	0x1
	.byte	0xa3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x97b
	.uleb128 0x1f
	.4byte	.LASF648
	.byte	0x1
	.byte	0xa3
	.4byte	0x457
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x20
	.4byte	.LASF671
	.byte	0x1
	.byte	0x65
	.4byte	0x457
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c2
	.uleb128 0x21
	.4byte	.LASF648
	.byte	0x1
	.byte	0x65
	.4byte	0x457
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.LASF667
	.byte	0x1
	.byte	0x67
	.4byte	0x29
	.4byte	.LLST2
	.uleb128 0x1d
	.4byte	.LASF672
	.byte	0x1
	.byte	0x68
	.4byte	0x457
	.4byte	.LLST3
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF673
	.byte	0x1
	.byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9fd
	.uleb128 0x22
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x23
	.4byte	.LASF667
	.byte	0x1
	.byte	0x5b
	.4byte	0x29
	.uleb128 0x24
	.4byte	.LVL3
	.4byte	0xa50
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF674
	.byte	0x1
	.byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x1f
	.4byte	.LASF648
	.byte	0x1
	.byte	0x21
	.4byte	0x457
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x21
	.4byte	.LASF675
	.byte	0x1
	.byte	0x21
	.4byte	0x621
	.4byte	.LLST0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF676
	.4byte	.LASF676
	.byte	0x7
	.byte	0x22
	.uleb128 0x25
	.4byte	.LASF677
	.4byte	.LASF677
	.byte	0x7
	.byte	0x26
	.uleb128 0x25
	.4byte	.LASF678
	.4byte	.LASF678
	.byte	0x3
	.byte	0x52
	.uleb128 0x25
	.4byte	.LASF679
	.4byte	.LASF679
	.byte	0x5
	.byte	0x59
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
	.uleb128 0x2117
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
.LLST10:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL72-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72-1-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 44
	.4byte	.LVL72-1-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-1-.Ltext0
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LVL72-1-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL79-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79-1-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 5
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 7
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x51
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
	.file 17 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x11
	.byte	0x4
	.file 18 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
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
	.section	.debug_macro,"G",%progbits,wm4.os_stack.h.2.f736ad9941e78e3f128684d765efeb27,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF493
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_heap.h.2.89074aae455d2462b5952479e3530dd1,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF499
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_main.h.2.1f66ae3841c27bd36097fa1d2e1fe6a7,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF503
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.9428c7964838a07bb4b1cac6c50ee9b2,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF507
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.125feba674fa85672711aed1ca8ea199,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF513
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
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
.LASF450:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF541:
	.ascii	"Func_TerminateTask\000"
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
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF634:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF630:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF463:
	.ascii	"cMCU_X86 3\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF457:
	.ascii	"Rejected 0\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF462:
	.ascii	"DynamicMemoryUsed False\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF578:
	.ascii	"FREE\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF599:
	.ascii	"unsigned int\000"
.LASF561:
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
.LASF574:
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
.LASF665:
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
.LASF641:
	.ascii	"TASK_GROUP_3\000"
.LASF658:
	.ascii	"AddToIdleTaskQueue\000"
.LASF676:
	.ascii	"task_state_request\000"
.LASF557:
	.ascii	"privilige_mode_e\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF662:
	.ascii	"AddToSchedulingQueue\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF595:
	.ascii	"pStackPointerStart\000"
.LASF489:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF628:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF583:
	.ascii	"TimeToPrioInc\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF466:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF655:
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
.LASF559:
	.ascii	"ePriviligeMode_priviliged_thread_mode\000"
.LASF677:
	.ascii	"OS_CreateTask\000"
.LASF585:
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
.LASF575:
	.ascii	"active\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF564:
	.ascii	"Task_suspended\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF539:
	.ascii	"Func_StartTask\000"
.LASF438:
	.ascii	"_os_firstinc_h_ \000"
.LASF598:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF532:
	.ascii	"os_sw_bugs_function_e\000"
.LASF458:
	.ascii	"Local static\000"
.LASF637:
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
.LASF633:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF452:
	.ascii	"False 0\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF617:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF502:
	.ascii	"os_running 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF547:
	.ascii	"Func_os_exception\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF664:
	.ascii	"index\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3\000"
.LASF644:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF625:
	.ascii	"TASK3_CALL_NR\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF592:
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
.LASF537:
	.ascii	"Func_DeleteTaskEnvironment\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF621:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF485:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF453:
	.ascii	"True 1\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF456:
	.ascii	"Accepted 1\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF523:
	.ascii	"os_bug_task_max_wait_time_reached\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF491:
	.ascii	"_OS_RAM_H_ \000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF653:
	.ascii	"uStackSize\000"
.LASF241:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF654:
	.ascii	"core\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF627:
	.ascii	"TASK_STACK\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF478:
	.ascii	"MinTimeSlice_s (1.0/SchedulerFrequency)\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF542:
	.ascii	"Func_TaskScheduler\000"
.LASF672:
	.ascii	"ret_task\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF619:
	.ascii	"DBG_RLD_VALUE\000"
.LASF548:
	.ascii	"Func_CreateTask\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF475:
	.ascii	"_os_task_common_h_ \000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF563:
	.ascii	"Task_unspecified\000"
.LASF614:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF459:
	.ascii	"Local_inline static __inline__\000"
.LASF587:
	.ascii	"current_prio\000"
.LASF527:
	.ascii	"os_bug_exception_AbortData\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF23:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF227:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF560:
	.ascii	"ePriviligeMode_priviliged_handler_mode\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF543:
	.ascii	"Func_InitTask\000"
.LASF534:
	.ascii	"Func_SaveTaskEnvironment\000"
.LASF642:
	.ascii	"TASK_GROUP_4\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF681:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_queue.c\000"
.LASF504:
	.ascii	"_os_task_queue_h_ \000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF479:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF490:
	.ascii	"_LED_H_ \000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF591:
	.ascii	"task_state\000"
.LASF562:
	.ascii	"task_state_e\000"
.LASF449:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF629:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF484:
	.ascii	"TASK_STACK_SIZE 2000\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF596:
	.ascii	"StackSize\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF679:
	.ascii	"OS_Task_InitTaskEnvironment\000"
.LASF567:
	.ascii	"task_state_t\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF667:
	.ascii	"element_nr\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF571:
	.ascii	"fair_exe_time\000"
.LASF471:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF622:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF558:
	.ascii	"ePriviligeMode_unpriviliged_thread_mode\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF528:
	.ascii	"os_bug_reset_exit_or_shutdown_failed\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF610:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF612:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF606:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF593:
	.ascii	"pStackPointer\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF602:
	.ascii	"scheduler_time_t\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF511:
	.ascii	"Task_2_ptr 2\000"
.LASF607:
	.ascii	"OS_SW_BUG\000"
.LASF582:
	.ascii	"wait_time\000"
.LASF675:
	.ascii	"scheduling_task\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF59:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF669:
	.ascii	"GetFromTaskQueue\000"
.LASF455:
	.ascii	"TRUE True\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF645:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF461:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF495:
	.ascii	"HEAP_SIZE 10000\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF498:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF568:
	.ascii	"func_p_t\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF472:
	.ascii	"HaltMcu() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF474:
	.ascii	"_lld_core_h_ \000"
.LASF530:
	.ascii	"os_sw_bugs_t\000"
.LASF533:
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
.LASF588:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF673:
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
.LASF678:
	.ascii	"OS_SetSwBug\000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF648:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF626:
	.ascii	"TASK4_CALL_NR\000"
.LASF682:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF616:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF526:
	.ascii	"os_bug_exception_AbortPrefetch\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF590:
	.ascii	"state_request\000"
.LASF552:
	.ascii	"Core0\000"
.LASF553:
	.ascii	"Core1\000"
.LASF554:
	.ascii	"Core2\000"
.LASF555:
	.ascii	"Core3\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF635:
	.ascii	"TASK_0_VAR\000"
.LASF615:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF605:
	.ascii	"OS_STACK\000"
.LASF656:
	.ascii	"GetRunningTask\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF577:
	.ascii	"IdleTask\000"
.LASF636:
	.ascii	"TASK_1_VAR\000"
.LASF525:
	.ascii	"os_bug_exception_UndefInstruction\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF674:
	.ascii	"SET_RUNNING_TASK\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF516:
	.ascii	"unsigned_char_t\000"
.LASF586:
	.ascii	"start_time\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF519:
	.ascii	"uint32\000"
.LASF496:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF501:
	.ascii	"os_init 0\000"
.LASF576:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
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
.LASF513:
	.ascii	"OS_SaveTaskPtr(task_ptr,Task_n_ptr) \000"
.LASF649:
	.ascii	"TaskFunction\000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF569:
	.ascii	"func_p_state_change_t\000"
.LASF153:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF573:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF646:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF508:
	.ascii	"_os_task_scheduler_h_ \000"
.LASF597:
	.ascii	"pStackPointerEnd\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF37:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF476:
	.ascii	"_os_task_config_h_ \000"
.LASF520:
	.ascii	"os_bug_no_bug\000"
.LASF506:
	.ascii	"Last_task (MAX_RUN_QUEUE_SIZE-1)\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF668:
	.ascii	"GetFromSchedulingQueue\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF473:
	.ascii	"_lld_global_h_ \000"
.LASF155:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF594:
	.ascii	"pStackPointerByMalloc\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF540:
	.ascii	"Func_PreemptTask\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF467:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF565:
	.ascii	"Task_ready\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF439:
	.ascii	"_BASE_TYPES_H_ \000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF448:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF623:
	.ascii	"TASK1_CALL_NR\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF647:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF670:
	.ascii	"DeleteFromTaskQueue\000"
.LASF483:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF538:
	.ascii	"Func_InitTaskEnvironment\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF600:
	.ascii	"task_t\000"
.LASF544:
	.ascii	"Func_ActivateTask\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF666:
	.ascii	"scheduling_queue_element\000"
.LASF469:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF444:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF510:
	.ascii	"Task_1_ptr 1\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF369:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF246:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF218:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF209:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF482:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF657:
	.ascii	"OS_InitTask\000"
.LASF613:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF671:
	.ascii	"AddToTaskQueue\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF522:
	.ascii	"os_bug_null_pointer\000"
.LASF481:
	.ascii	"NUMBER_OF_TASKS 10\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF468:
	.ascii	"EnableInterrupts() LLF_INT_ENABLE()\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
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
.LASF505:
	.ascii	"First_task (0)\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF480:
	.ascii	"Task_min_time (1e0)\000"
.LASF650:
	.ascii	"AllowedInstances\000"
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
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
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
.LASF660:
	.ascii	"UpdateSchedulingQueue\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF518:
	.ascii	"long unsigned int\000"
.LASF512:
	.ascii	"Task_3_ptr 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF632:
	.ascii	"RUNNING_TASK\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF620:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF680:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF531:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF604:
	.ascii	"HEAP\000"
.LASF499:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF509:
	.ascii	"Task_0_ptr 0\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF618:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF524:
	.ascii	"os_bug_Task_unspecified\000"
.LASF663:
	.ascii	"Add_successful\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF514:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF445:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF579:
	.ascii	"NrOfInsAllowed\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF584:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF608:
	.ascii	"OS_STATE\000"
.LASF494:
	.ascii	"_os_heap_h_ \000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF535:
	.ascii	"Func_RestoreTaskEnvironment\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF638:
	.ascii	"TASK_3_VAR\000"
.LASF497:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF566:
	.ascii	"Task_running\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF550:
	.ascii	"Func_StackCheck\000"
.LASF589:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4\000"
.LASF486:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF477:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF503:
	.ascii	"os_shutdown 2\000"
.LASF570:
	.ascii	"exe_time\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF659:
	.ascii	"GetIdleTask\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF460:
	.ascii	"Global_inline __inline__\000"
.LASF521:
	.ascii	"os_bug_taskstate_request_denied\000"
.LASF652:
	.ascii	"pStackAddr\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF517:
	.ascii	"unsigned_int32_t\000"
.LASF549:
	.ascii	"Func_Shutdown\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
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
.LASF546:
	.ascii	"Func_Preempt_Task\000"
.LASF500:
	.ascii	"_os_main_h_ \000"
.LASF515:
	.ascii	"short unsigned int\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF572:
	.ascii	"task_group_t\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF603:
	.ascii	"TASK_PTR\000"
.LASF631:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF488:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
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
.LASF487:
	.ascii	"_os_init_task_system_h_ \000"
.LASF545:
	.ascii	"Func_TaskStateRequest\000"
.LASF624:
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
.LASF551:
	.ascii	"CoreID_e\000"
.LASF507:
	.ascii	"For_all_tasks_in_queue(var) for((var) = First_task;"
	.ascii	" (var) <= Last_task; (var)++)\000"
.LASF639:
	.ascii	"TASK_GROUP_1\000"
.LASF640:
	.ascii	"TASK_GROUP_2\000"
.LASF529:
	.ascii	"os_bug_critical_stack_usage\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF643:
	.ascii	"TASK_GROUP_5\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF611:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF556:
	.ascii	"CoreID_t\000"
.LASF651:
	.ascii	"p_task_group\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF581:
	.ascii	"WaitActUntil\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF661:
	.ascii	"dest\000"
.LASF493:
	.ascii	"OS_STACK_SIZE 0x5000u\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF601:
	.ascii	"scheduling_t\000"
.LASF580:
	.ascii	"NrOfInsActivated\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF536:
	.ascii	"Func_CreateTaskEnvironment\000"
.LASF492:
	.ascii	"_os_stack_h_ \000"
.LASF609:
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
