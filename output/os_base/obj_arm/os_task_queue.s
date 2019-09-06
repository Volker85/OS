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
.LVL0:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:35:    RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
	.loc 1 35 0
	ldr	r3, .L11	@ tmp149,
	str	r1, [r3]	@ scheduling_task, RUNNING_SCHEDULING_QUEUE_ENTRY
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:36:    if(task != 0u)
	.loc 1 36 0
	cmp	r0, #0	@ task
	beq	.L7	@
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:34: {
	.loc 1 34 0
	push	{r4, r5, r6, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 0
	ldr	r5, .L11+4	@ tmp154,
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
	ldrb	r3, [r5]	@ zero_extendqisi2	@, RUNNING_TASK[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0u])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 43 0
	ldrb	r6, [r0, #5]	@ zero_extendqisi2	@ _6, task_42(D)->nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 0
	bfi	r3, r2, #0, #1	@ RUNNING_TASK[0].active, *task_42(D),,
	strb	r3, [r5]	@ RUNNING_TASK[0].active, RUNNING_TASK[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
	.loc 1 39 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
	ldrb	r2, [r5]	@ zero_extendqisi2	@, RUNNING_TASK[0].task_queued
	ubfx	r3, r3, #1, #1	@ _2, *task_42(D),,
	bfi	r2, r3, #1, #1	@ RUNNING_TASK[0].task_queued, _2,,
	strb	r2, [r5]	@ RUNNING_TASK[0].task_queued, RUNNING_TASK[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
	.loc 1 40 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
	uxtb	r2, r2	@ tmp169, RUNNING_TASK[0].task_queued
	ubfx	r3, r3, #2, #1	@ _3, *task_42(D),,
	bfi	r2, r3, #2, #1	@ RUNNING_TASK[0].idle_task, _3,,
	strb	r2, [r5]	@ RUNNING_TASK[0].idle_task, RUNNING_TASK[0].idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0u])->free                               = task->free;
	.loc 1 41 0
	ldr	r3, [r0]	@ *task_42(D), *task_42(D)
	ldr	r2, [r5]	@ RUNNING_TASK[0].free, RUNNING_TASK[0].free
	ubfx	r3, r3, #3, #29	@ _4, *task_42(D),,
	bfi	r2, r3, #3, #29	@ RUNNING_TASK[0].free, _4,,
	mov	r4, r0	@ task, task
	str	r2, [r5]	@ RUNNING_TASK[0].free, RUNNING_TASK[0].free
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0u])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 42 0
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ _5, task_42(D)->nr_of_ins_allowed
	strb	r3, [r5, #4]	@ _5, RUNNING_TASK[0].nr_of_ins_allowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:44:       ASSIGN(&(&RUNNING_TASK[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 44 0
	adds	r0, r5, #6	@, tmp154,
.LVL1:
	adds	r1, r4, #6	@, task,
.LVL2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0u])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 43 0
	strb	r6, [r5, #5]	@ _6, RUNNING_TASK[0].nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:44:       ASSIGN(&(&RUNNING_TASK[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 44 0
	bl	ASSIGN	@
.LVL3:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:45:       ASSIGN(&(&RUNNING_TASK[0u])->wait_time, &task->wait_time);
	.loc 1 45 0
	add	r0, r5, #22	@, tmp154,
	add	r1, r4, #22	@, task,
	bl	ASSIGN	@
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:46:       ASSIGN(&(&RUNNING_TASK[0u])->time_to_prio_inc, &task->time_to_prio_inc);
	.loc 1 46 0
	add	r0, r5, #38	@, tmp154,
	add	r1, r4, #38	@, task,
	bl	ASSIGN	@
.LVL5:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0u])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 0
	ldr	r3, [r4, #56]	@ _10, task_42(D)->overwaittime_per_prio_inc_step
	str	r3, [r5, #56]	@ _10, RUNNING_TASK[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:48:       ASSIGN(&(&RUNNING_TASK[0u])->max_allowed_wait_time, &task->max_allowed_wait_time);
	.loc 1 48 0
	add	r0, r5, #60	@, tmp154,
	add	r1, r4, #60	@, task,
	bl	ASSIGN	@
.LVL6:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:49:       ASSIGN(&(&RUNNING_TASK[0u])->exe_time, &task->exe_time  );
	.loc 1 49 0
	add	r0, r5, #76	@, tmp154,
	add	r1, r4, #76	@, task,
	bl	ASSIGN	@
.LVL7:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:50:       ASSIGN(&(&RUNNING_TASK[0u])->start_time, &task->start_time);
	.loc 1 50 0
	add	r0, r5, #92	@, tmp154,
	add	r1, r4, #92	@, task,
	bl	ASSIGN	@
.LVL8:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:54:       (&RUNNING_TASK[0u])->state_request                   = task->state_request;
	.loc 1 54 0
	ldrd	r2, r3, [r4, #116]	@ _16, _17, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0u])->current_prio                    = task->current_prio;
	.loc 1 51 0
	ldrb	r0, [r4, #108]	@ zero_extendqisi2	@ _14, task_42(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0u])->default_prio                    = task->default_prio;
	.loc 1 52 0
	ldrb	r1, [r4, #109]	@ zero_extendqisi2	@ _15, task_42(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0u])->current_prio                    = task->current_prio;
	.loc 1 51 0
	strb	r0, [r5, #108]	@ _14, RUNNING_TASK[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0u])->default_prio                    = task->default_prio;
	.loc 1 52 0
	strb	r1, [r5, #109]	@ _15, RUNNING_TASK[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0u])->task_state                      = task->task_state;
	.loc 1 55 0
	ldrb	r0, [r4, #124]	@ zero_extendqisi2	@ _18, task_42(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0u])->task_group                      = task->task_group;
	.loc 1 56 0
	ldr	r1, [r4, #128]	@ _19, task_42(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:53:       (&RUNNING_TASK[0u])->fp                              = task->fp;
	.loc 1 53 0
	str	r2, [r5, #116]	@ _16, RUNNING_TASK[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:54:       (&RUNNING_TASK[0u])->state_request                   = task->state_request;
	.loc 1 54 0
	str	r3, [r5, #120]	@ _17, RUNNING_TASK[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 0
	ldr	r2, [r4, #132]	@ _20, task_42(D)->r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:64:       (&RUNNING_TASK[0u])->r1                             = task->r1;
	.loc 1 64 0
	ldr	r3, [r4, #136]	@ _21, task_42(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0u])->task_state                      = task->task_state;
	.loc 1 55 0
	strb	r0, [r5, #124]	@ _18, RUNNING_TASK[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0u])->task_group                      = task->task_group;
	.loc 1 56 0
	str	r1, [r5, #128]	@ _19, RUNNING_TASK[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:65:       (&RUNNING_TASK[0u])->r2                             = task->r2;
	.loc 1 65 0
	ldr	r0, [r4, #140]	@ _22, task_42(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:66:       (&RUNNING_TASK[0u])->r3                             = task->r3;
	.loc 1 66 0
	ldr	r1, [r4, #144]	@ _23, task_42(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 0
	str	r2, [r5, #132]	@ _20, RUNNING_TASK[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:64:       (&RUNNING_TASK[0u])->r1                             = task->r1;
	.loc 1 64 0
	str	r3, [r5, #136]	@ _21, RUNNING_TASK[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:67:       (&RUNNING_TASK[0u])->r4                             = task->r4;
	.loc 1 67 0
	ldr	r2, [r4, #148]	@ _24, task_42(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:68:       (&RUNNING_TASK[0u])->r5                             = task->r5;
	.loc 1 68 0
	ldr	r3, [r4, #152]	@ _25, task_42(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:65:       (&RUNNING_TASK[0u])->r2                             = task->r2;
	.loc 1 65 0
	str	r0, [r5, #140]	@ _22, RUNNING_TASK[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:66:       (&RUNNING_TASK[0u])->r3                             = task->r3;
	.loc 1 66 0
	str	r1, [r5, #144]	@ _23, RUNNING_TASK[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:69:       (&RUNNING_TASK[0u])->r6                             = task->r6;
	.loc 1 69 0
	ldr	r0, [r4, #156]	@ _26, task_42(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:70:       (&RUNNING_TASK[0u])->r7                             = task->r7;
	.loc 1 70 0
	ldr	r1, [r4, #160]	@ _27, task_42(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:67:       (&RUNNING_TASK[0u])->r4                             = task->r4;
	.loc 1 67 0
	str	r2, [r5, #148]	@ _24, RUNNING_TASK[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:68:       (&RUNNING_TASK[0u])->r5                             = task->r5;
	.loc 1 68 0
	str	r3, [r5, #152]	@ _25, RUNNING_TASK[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:71:       (&RUNNING_TASK[0u])->r8                             = task->r8;
	.loc 1 71 0
	ldr	r2, [r4, #164]	@ _28, task_42(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:72:       (&RUNNING_TASK[0u])->r9                             = task->r9;
	.loc 1 72 0
	ldr	r3, [r4, #168]	@ _29, task_42(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:70:       (&RUNNING_TASK[0u])->r7                             = task->r7;
	.loc 1 70 0
	strd	r0, r1, [r5, #156]	@ _26, _27, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:72:       (&RUNNING_TASK[0u])->r9                             = task->r9;
	.loc 1 72 0
	strd	r2, r3, [r5, #164]	@ _28, _29, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:74:       (&RUNNING_TASK[0u])->r11                            = task->r11;
	.loc 1 74 0
	ldrd	r1, r2, [r4, #172]	@ _30, _31, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:78:       (&RUNNING_TASK[0u])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 78 0
	ldrd	r3, r6, [r4, #180]	@ _32, _33, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:74:       (&RUNNING_TASK[0u])->r11                            = task->r11;
	.loc 1 74 0
	str	r2, [r5, #176]	@ _31, RUNNING_TASK[0].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:75:       (&RUNNING_TASK[0u])->r12                            = task->r12;
	.loc 1 75 0
	str	r3, [r5, #180]	@ _32, RUNNING_TASK[0].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0u])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 82 0
	ldrd	r2, r3, [r4, #196]	@ _36, _37, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:79:       (&RUNNING_TASK[0u])->p_stack_pointer_by_malloc           = task->p_stack_pointer_by_malloc;
	.loc 1 79 0
	ldr	r0, [r4, #188]	@ _34, task_42(D)->p_stack_pointer_by_malloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:73:       (&RUNNING_TASK[0u])->r10                            = task->r10;
	.loc 1 73 0
	str	r1, [r5, #172]	@ _30, RUNNING_TASK[0].r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:80:       (&RUNNING_TASK[0u])->p_stack_pointer_start              = task->p_stack_pointer_start;
	.loc 1 80 0
	ldr	r1, [r4, #192]	@ _35, task_42(D)->p_stack_pointer_start
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0u])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 82 0
	str	r3, [r5, #200]	@ _37, RUNNING_TASK[0].p_stack_pointer_end
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:79:       (&RUNNING_TASK[0u])->p_stack_pointer_by_malloc           = task->p_stack_pointer_by_malloc;
	.loc 1 79 0
	strd	r6, r0, [r5, #184]	@ _33, _34, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:81:       (&RUNNING_TASK[0u])->stack_size                       = task->stack_size;
	.loc 1 81 0
	strd	r1, r2, [r5, #192]	@ _35, _36, tmp154,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:84: }
	.loc 1 84 0
	pop	{r4, r5, r6, pc}	@
.LVL9:
.L7:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
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
	.global	OS_INIT_TASK_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_INIT_TASK_QUEUE, %function
OS_INIT_TASK_QUEUE:
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
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:89:    if(bTASK_QUEUE_INITIALIZED == FALSE)
	.loc 1 89 0
	ldr	r8, .L18+8	@ tmp156,
	ldrb	r6, [r8]	@ zero_extendqisi2	@ bTASK_QUEUE_INITIALIZED, bTASK_QUEUE_INITIALIZED
	cbnz	r6, .L13	@ bTASK_QUEUE_INITIALIZED,
	ldr	r4, .L18	@ ivtmp.29,
	ldr	r5, .L18+4	@ ivtmp.30,
	add	r7, r4, #40	@ _17, ivtmp.29,
.L15:
.LBB2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:94:          TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0u;
	.loc 1 94 0
	str	r6, [r4], #4	@ tmp152, MEM[base: _19, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:95:          OS_TASK_INIT_TASK_ENVIRONMENT(&TASK_RUN_QUEUE[element_nr]);
	.loc 1 95 0
	mov	r0, r5	@, ivtmp.30
	bl	OS_TASK_INIT_TASK_ENVIRONMENT	@
.LVL10:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:92:       while(element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 92 0
	cmp	r4, r7	@ ivtmp.29, _17
	add	r5, r5, #208	@ ivtmp.30, ivtmp.30,
	bne	.L15	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:98:       bTASK_QUEUE_INITIALIZED = TRUE;
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
	.size	OS_INIT_TASK_QUEUE, .-OS_INIT_TASK_QUEUE
	.align	1
	.p2align 2,,3
	.global	ADD_TO_TASK_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADD_TO_TASK_QUEUE, %function
ADD_TO_TASK_QUEUE:
.LFB2:
	.loc 1 102 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL11:
	push	{r3, r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 0
	ldr	r6, .L34	@ tmp434,
	ldrb	r7, [r6]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	ubfx	r7, r7, #1, #1	@ tmp178, TASK_RUN_QUEUE,,
	cmp	r7, #0	@ tmp178
	beq	.L23	@
.LVL12:
	ldrb	r3, [r6, #208]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L21	@,
.LVL13:
	ldrb	r3, [r6, #416]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r2, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L25	@,
.LVL14:
	ldrb	r3, [r6, #624]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L26	@,
.LVL15:
	ldrb	r3, [r6, #832]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r7, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L27	@,
.LVL16:
	ldrb	r3, [r6, #1040]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r5, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L28	@,
.LVL17:
	ldrb	r3, [r6, #1248]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r4, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L29	@,
.LVL18:
	ldrb	r3, [r6, #1456]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L30	@,
.LVL19:
	ldrb	r3, [r6, #1664]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r2, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L31	@,
.LVL20:
	ldrb	r3, [r6, #1872]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L32	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:104:    task_t* ret_task = 0u;
	.loc 1 104 0
	movs	r0, #0	@ <retval>,
.LVL21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 0
	pop	{r3, r4, r5, r6, r7, pc}	@
.LVL22:
.L32:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 0
	movs	r7, #9	@ _120,
.LVL23:
.L21:
	mov	r4, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 0
	movs	r0, #208	@ tmp240,
.LVL24:
	mul	r7, r0, r7	@ tmp239, tmp240, _120
	ldrb	r2, [r4]	@ zero_extendqisi2	@ *task_53(D), *task_53(D)
	ldrb	r3, [r6, r7]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_120].active
	bfi	r3, r2, #0, #1	@ TASK_RUN_QUEUE[_120].active, *task_53(D),,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:116:       (&TASK_RUN_QUEUE[element_nr])->task_queued                     = TRUE;
	.loc 1 116 0
	uxtb	r3, r3	@ TASK_RUN_QUEUE[_120].task_queued, TASK_RUN_QUEUE[_120].active
	orr	r3, r3, #2	@ tmp250, TASK_RUN_QUEUE[_120].task_queued,
	strb	r3, [r6, r7]	@ tmp250, TASK_RUN_QUEUE[_120].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
	.loc 1 117 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@ *task_53(D), *task_53(D)
	ldrb	r2, [r6, r7]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_120].idle_task
	ubfx	r3, r3, #2, #1	@ _7, *task_53(D),,
	bfi	r2, r3, #2, #1	@ TASK_RUN_QUEUE[_120].idle_task, _7,,
	strb	r2, [r6, r7]	@ TASK_RUN_QUEUE[_120].idle_task, TASK_RUN_QUEUE[_120].idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
	.loc 1 118 0
	ldr	r3, [r4]	@ *task_53(D), *task_53(D)
	ldr	r2, [r6, r7]	@ TASK_RUN_QUEUE[_120].free, TASK_RUN_QUEUE[_120].free
	ubfx	r3, r3, #3, #29	@ _8, *task_53(D),,
	bfi	r2, r3, #3, #29	@ TASK_RUN_QUEUE[_120].free, _8,,
	str	r2, [r6, r7]	@ TASK_RUN_QUEUE[_120].free, TASK_RUN_QUEUE[_120].free
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 0
	adds	r5, r6, r7	@ tmp241, tmp434, tmp239
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:119:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 119 0
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ _9, task_53(D)->nr_of_ins_allowed
	strb	r3, [r5, #4]	@ _9, TASK_RUN_QUEUE[_120].nr_of_ins_allowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:120:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 120 0
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ _10, task_53(D)->nr_of_ins_activated
	strb	r3, [r5, #5]	@ _10, TASK_RUN_QUEUE[_120].nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:121:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_act_until, &task->wait_act_until);
	.loc 1 121 0
	adds	r0, r7, #6	@ tmp282, tmp239,
	add	r0, r0, r6	@, tmp434
	adds	r1, r4, #6	@, task,
	bl	ASSIGN	@
.LVL25:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:122:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_time, &task->wait_time);
	.loc 1 122 0
	add	r0, r7, #22	@ tmp286, tmp239,
	add	r0, r0, r6	@, tmp434
	add	r1, r4, #22	@, task,
	bl	ASSIGN	@
.LVL26:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:123:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->time_to_prio_inc, &task->time_to_prio_inc);
	.loc 1 123 0
	add	r0, r7, #38	@ tmp290, tmp239,
	add	r0, r0, r6	@, tmp434
	add	r1, r4, #38	@, task,
	bl	ASSIGN	@
.LVL27:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:124:       (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 124 0
	ldr	r3, [r4, #56]	@ _17, task_53(D)->overwaittime_per_prio_inc_step
	str	r3, [r5, #56]	@ _17, TASK_RUN_QUEUE[_120].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:125:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time, &task->max_allowed_wait_time);
	.loc 1 125 0
	add	r0, r7, #60	@ tmp299, tmp239,
	add	r0, r0, r6	@, tmp434
	add	r1, r4, #60	@, task,
	bl	ASSIGN	@
.LVL28:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:126:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->exe_time, &task->exe_time   );
	.loc 1 126 0
	add	r0, r7, #76	@ tmp303, tmp239,
	add	r0, r0, r6	@, tmp434
	add	r1, r4, #76	@, task,
	bl	ASSIGN	@
.LVL29:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:127:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->start_time, &task->start_time );
	.loc 1 127 0
	add	r0, r7, #92	@ tmp307, tmp239,
	add	r0, r0, r6	@, tmp434
	add	r1, r4, #92	@, task,
	bl	ASSIGN	@
.LVL30:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:128:       (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
	.loc 1 128 0
	ldrb	r3, [r4, #108]	@ zero_extendqisi2	@ _24, task_53(D)->current_prio
	strb	r3, [r5, #108]	@ _24, TASK_RUN_QUEUE[_120].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:129:       (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
	.loc 1 129 0
	ldrb	r3, [r4, #109]	@ zero_extendqisi2	@ _25, task_53(D)->default_prio
	strb	r3, [r5, #109]	@ _25, TASK_RUN_QUEUE[_120].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:131:       (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
	.loc 1 131 0
	ldrd	r0, r1, [r4, #116]	@ _26, _27, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 0
	ldrd	r3, r6, [r4, #128]	@ _29, _30, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 0
	ldrb	r2, [r4, #124]	@ zero_extendqisi2	@ _28, task_53(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:130:       (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
	.loc 1 130 0
	str	r0, [r5, #116]	@ _26, TASK_RUN_QUEUE[_120].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:141:       (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
	.loc 1 141 0
	ldr	r0, [r4, #136]	@ _31, task_53(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:131:       (&TASK_RUN_QUEUE[element_nr])->state_request                   = task->state_request;
	.loc 1 131 0
	str	r1, [r5, #120]	@ _27, TASK_RUN_QUEUE[_120].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:142:       (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
	.loc 1 142 0
	ldr	r1, [r4, #140]	@ _32, task_53(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 0
	strb	r2, [r5, #124]	@ _28, TASK_RUN_QUEUE[_120].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:143:       (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
	.loc 1 143 0
	ldr	r2, [r4, #144]	@ _33, task_53(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:133:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 133 0
	str	r3, [r5, #128]	@ _29, TASK_RUN_QUEUE[_120].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:144:       (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
	.loc 1 144 0
	ldr	r3, [r4, #148]	@ _34, task_53(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 0
	str	r6, [r5, #132]	@ _30, TASK_RUN_QUEUE[_120].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:145:       (&TASK_RUN_QUEUE[element_nr])->r5                             = task->r5;
	.loc 1 145 0
	ldr	r6, [r4, #152]	@ _35, task_53(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:141:       (&TASK_RUN_QUEUE[element_nr])->r1                             = task->r1;
	.loc 1 141 0
	str	r0, [r5, #136]	@ _31, TASK_RUN_QUEUE[_120].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:146:       (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
	.loc 1 146 0
	ldr	r0, [r4, #156]	@ _36, task_53(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:142:       (&TASK_RUN_QUEUE[element_nr])->r2                             = task->r2;
	.loc 1 142 0
	str	r1, [r5, #140]	@ _32, TASK_RUN_QUEUE[_120].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:147:       (&TASK_RUN_QUEUE[element_nr])->r7                             = task->r7;
	.loc 1 147 0
	ldr	r1, [r4, #160]	@ _37, task_53(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:143:       (&TASK_RUN_QUEUE[element_nr])->r3                             = task->r3;
	.loc 1 143 0
	str	r2, [r5, #144]	@ _33, TASK_RUN_QUEUE[_120].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:148:       (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
	.loc 1 148 0
	ldr	r2, [r4, #164]	@ _38, task_53(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:144:       (&TASK_RUN_QUEUE[element_nr])->r4                             = task->r4;
	.loc 1 144 0
	str	r3, [r5, #148]	@ _34, TASK_RUN_QUEUE[_120].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:149:       (&TASK_RUN_QUEUE[element_nr])->r9                             = task->r9;
	.loc 1 149 0
	ldr	r3, [r4, #168]	@ _39, task_53(D)->r9
	str	r3, [r5, #168]	@ _39, TASK_RUN_QUEUE[_120].r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:146:       (&TASK_RUN_QUEUE[element_nr])->r6                             = task->r6;
	.loc 1 146 0
	strd	r6, r0, [r5, #152]	@ _35, _36, tmp241,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:148:       (&TASK_RUN_QUEUE[element_nr])->r8                             = task->r8;
	.loc 1 148 0
	strd	r1, r2, [r5, #160]	@ _37, _38, tmp241,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:151:       (&TASK_RUN_QUEUE[element_nr])->r11                            = task->r11;
	.loc 1 151 0
	ldrd	r2, r3, [r4, #172]	@ _40, _41, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:155:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_by_malloc           = task->p_stack_pointer_by_malloc;
	.loc 1 155 0
	ldr	r0, [r4, #188]	@ _44, task_53(D)->p_stack_pointer_by_malloc
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:156:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_start              = task->p_stack_pointer_start;
	.loc 1 156 0
	ldr	r1, [r4, #192]	@ _45, task_53(D)->p_stack_pointer_start
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 154 0
	ldrd	r7, r6, [r4, #180]	@ _42, _43, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:150:       (&TASK_RUN_QUEUE[element_nr])->r10                            = task->r10;
	.loc 1 150 0
	str	r2, [r5, #172]	@ _40, TASK_RUN_QUEUE[_120].r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:151:       (&TASK_RUN_QUEUE[element_nr])->r11                            = task->r11;
	.loc 1 151 0
	str	r3, [r5, #176]	@ _41, TASK_RUN_QUEUE[_120].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:158:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 158 0
	ldrd	r2, r3, [r4, #196]	@ _46, _47, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:156:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_start              = task->p_stack_pointer_start;
	.loc 1 156 0
	strd	r0, r1, [r5, #188]	@ _44, _45, tmp241,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 154 0
	strd	r7, r6, [r5, #180]	@ _42, _43, tmp241,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:158:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 158 0
	strd	r2, r3, [r5, #196]	@ _46, _47, tmp241,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:159:       ret_task = &TASK_RUN_QUEUE[element_nr];
	.loc 1 159 0
	mov	r0, r5	@ <retval>, tmp241
.LVL31:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 0
	pop	{r3, r4, r5, r6, r7, pc}	@
.LVL32:
.L23:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 0
	movs	r7, #0	@ _120,
	b	.L21	@
.LVL33:
.L25:
	movs	r7, #2	@ _120,
	b	.L21	@
.LVL34:
.L26:
	movs	r7, #3	@ _120,
	b	.L21	@
.LVL35:
.L27:
	movs	r7, #4	@ _120,
	b	.L21	@
.LVL36:
.L28:
	movs	r7, #5	@ _120,
	b	.L21	@
.LVL37:
.L31:
	movs	r7, #8	@ _120,
	b	.L21	@
.LVL38:
.L29:
	movs	r7, #6	@ _120,
	b	.L21	@
.LVL39:
.L30:
	movs	r7, #7	@ _120,
	b	.L21	@
.L35:
	.align	2
.L34:
	.word	TASK_RUN_QUEUE
	.cfi_endproc
.LFE2:
	.size	ADD_TO_TASK_QUEUE, .-ADD_TO_TASK_QUEUE
	.align	1
	.p2align 2,,3
	.global	DELETE_FROM_TASK_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DELETE_FROM_TASK_QUEUE, %function
DELETE_FROM_TASK_QUEUE:
.LFB3:
	.loc 1 164 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL40:
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:165:    task->active                                =   FALSE   ;
	.loc 1 165 0
	movs	r5, #0	@ tmp117,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:164: {
	.loc 1 164 0
	mov	r4, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:165:    task->active                                =   FALSE   ;
	.loc 1 165 0
	str	r5, [r0]	@ tmp117, MEM[(void *)task_8(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:168:    task->free                                  =   0u       ;
	.loc 1 168 0
	strh	r5, [r0, #4]	@ movhi	@ tmp117, MEM[(void *)task_8(D) + 4B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:171:    ASSIGN_NULL(&task->wait_act_until);
	.loc 1 171 0
	adds	r0, r0, #6	@, task,
.LVL41:
	bl	ASSIGN_NULL	@
.LVL42:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:172:    ASSIGN_NULL(&task->wait_time);
	.loc 1 172 0
	add	r0, r4, #22	@, task,
	bl	ASSIGN_NULL	@
.LVL43:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:173:    ASSIGN_NULL(&task->time_to_prio_inc);
	.loc 1 173 0
	add	r0, r4, #38	@, task,
	bl	ASSIGN_NULL	@
.LVL44:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:175:    ASSIGN_NULL(&task->max_allowed_wait_time);
	.loc 1 175 0
	add	r0, r4, #60	@, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:174:    task->overwaittime_per_prio_inc_step        =   0u       ;
	.loc 1 174 0
	str	r5, [r4, #56]	@ tmp117, task_8(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:175:    ASSIGN_NULL(&task->max_allowed_wait_time);
	.loc 1 175 0
	bl	ASSIGN_NULL	@
.LVL45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:176:    ASSIGN_NULL(&task->exe_time);
	.loc 1 176 0
	add	r0, r4, #76	@, task,
	bl	ASSIGN_NULL	@
.LVL46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:177:    ASSIGN_NULL(&task->start_time);
	.loc 1 177 0
	add	r0, r4, #92	@, task,
	bl	ASSIGN_NULL	@
.LVL47:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:181:    task->state_request                         =   &OS_TASK_STATE_REQUEST       ;
	.loc 1 181 0
	ldr	r3, .L38	@ tmp130,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:178:    task->current_prio                          =   0u       ;
	.loc 1 178 0
	strh	r5, [r4, #108]	@ movhi	@ tmp117, MEM[(unsigned char *)task_8(D) + 108B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:180:    task->fp                                    =   0u       ;
	.loc 1 180 0
	str	r5, [r4, #116]	@ tmp117, task_8(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:182:    task->task_state                            =   E_TASK_UNSPECIFIED;
	.loc 1 182 0
	strb	r5, [r4, #124]	@ tmp117, task_8(D)->task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:190:    task->r0                                   =   0u              ;
	.loc 1 190 0
	strd	r5, r5, [r4, #128]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:192:    task->r2                                   =   0u              ;
	.loc 1 192 0
	strd	r5, r5, [r4, #136]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:194:    task->r4                                   =   0u              ;
	.loc 1 194 0
	strd	r5, r5, [r4, #144]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:196:    task->r6                                   =   0u              ;
	.loc 1 196 0
	strd	r5, r5, [r4, #152]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:198:    task->r8                                   =   0u              ;
	.loc 1 198 0
	strd	r5, r5, [r4, #160]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:200:    task->r10                                  =   0u             ;
	.loc 1 200 0
	strd	r5, r5, [r4, #168]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:202:    task->r12                                  =   0u             ;
	.loc 1 202 0
	strd	r5, r5, [r4, #176]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:207:    task->p_stack_pointer_by_malloc                 =   0u       ;
	.loc 1 207 0
	strd	r5, r5, [r4, #184]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:209:    task->stack_size                             =   0u       ;
	.loc 1 209 0
	strd	r5, r5, [r4, #192]	@ tmp117, tmp117, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:210:    task->p_stack_pointer_end                      =   0u       ;
	.loc 1 210 0
	str	r5, [r4, #200]	@ tmp117, task_8(D)->p_stack_pointer_end
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:181:    task->state_request                         =   &OS_TASK_STATE_REQUEST       ;
	.loc 1 181 0
	str	r3, [r4, #120]	@ tmp130, task_8(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:211: }
	.loc 1 211 0
	pop	{r3, r4, r5, pc}	@
.LVL48:
.L39:
	.align	2
.L38:
	.word	OS_TASK_STATE_REQUEST
	.cfi_endproc
.LFE3:
	.size	DELETE_FROM_TASK_QUEUE, .-DELETE_FROM_TASK_QUEUE
	.align	1
	.p2align 2,,3
	.global	GET_FROM_TASK_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GET_FROM_TASK_QUEUE, %function
GET_FROM_TASK_QUEUE:
.LFB4:
	.loc 1 213 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL49:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:215: }
	.loc 1 215 0
	ldr	r0, [r0]	@, *scheduling_queue_element_2(D)
.LVL50:
	bx	lr	@
	.cfi_endproc
.LFE4:
	.size	GET_FROM_TASK_QUEUE, .-GET_FROM_TASK_QUEUE
	.align	1
	.p2align 2,,3
	.global	GET_FROM_SCHEDULING_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GET_FROM_SCHEDULING_QUEUE, %function
GET_FROM_SCHEDULING_QUEUE:
.LFB5:
	.loc 1 217 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL51:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:218:    return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
	.loc 1 218 0
	ldr	r3, .L42	@ tmp118,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:219: }
	.loc 1 219 0
	add	r0, r3, r0, lsl #2	@, tmp118, element_nr,
.LVL52:
	bx	lr	@
.L43:
	.align	2
.L42:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE5:
	.size	GET_FROM_SCHEDULING_QUEUE, .-GET_FROM_SCHEDULING_QUEUE
	.align	1
	.p2align 2,,3
	.global	DELETE_FROM_SCHEDULING_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DELETE_FROM_SCHEDULING_QUEUE, %function
DELETE_FROM_SCHEDULING_QUEUE:
.LFB6:
	.loc 1 222 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL53:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:223:    *scheduling_queue_element = 0u;
	.loc 1 223 0
	movs	r3, #0	@ tmp111,
	str	r3, [r0]	@ tmp111, *scheduling_queue_element_2(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:224: }
	.loc 1 224 0
	bx	lr	@
	.cfi_endproc
.LFE6:
	.size	DELETE_FROM_SCHEDULING_QUEUE, .-DELETE_FROM_SCHEDULING_QUEUE
	.align	1
	.p2align 2,,3
	.global	ADD_TO_SCHEDULING_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADD_TO_SCHEDULING_QUEUE, %function
ADD_TO_SCHEDULING_QUEUE:
.LFB7:
	.loc 1 226 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL54:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == 0u)
	.loc 1 240 0
	ldr	r3, .L57	@ tmp143,
	ldr	r2, [r3]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L46	@ TASK_SCHEDULING_QUEUE,
.LVL55:
	ldr	r2, [r3, #4]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L49	@ TASK_SCHEDULING_QUEUE,
.LVL56:
	ldr	r2, [r3, #8]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L50	@ TASK_SCHEDULING_QUEUE,
.LVL57:
	ldr	r2, [r3, #12]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L51	@ TASK_SCHEDULING_QUEUE,
.LVL58:
	ldr	r2, [r3, #16]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L52	@ TASK_SCHEDULING_QUEUE,
.LVL59:
	ldr	r2, [r3, #20]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L53	@ TASK_SCHEDULING_QUEUE,
.LVL60:
	ldr	r2, [r3, #24]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L54	@ TASK_SCHEDULING_QUEUE,
.LVL61:
	ldr	r2, [r3, #28]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L55	@ TASK_SCHEDULING_QUEUE,
.LVL62:
	ldr	r2, [r3, #32]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L56	@ TASK_SCHEDULING_QUEUE,
.LVL63:
	ldr	r2, [r3, #36]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbnz	r2, .L45	@ TASK_SCHEDULING_QUEUE,
	movs	r2, #9	@ _25,
.LVL64:
.L46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:242:          TASK_SCHEDULING_QUEUE[index] = task;
	.loc 1 242 0
	str	r0, [r3, r2, lsl #2]	@ task, TASK_SCHEDULING_QUEUE
.LVL65:
.L45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:248: }
	.loc 1 248 0
	bx	lr	@
.LVL66:
.L49:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == 0u)
	.loc 1 240 0
	movs	r2, #1	@ _25,
	b	.L46	@
.LVL67:
.L52:
	movs	r2, #4	@ _25,
	b	.L46	@
.LVL68:
.L50:
	movs	r2, #2	@ _25,
	b	.L46	@
.LVL69:
.L51:
	movs	r2, #3	@ _25,
	b	.L46	@
.LVL70:
.L53:
	movs	r2, #5	@ _25,
	b	.L46	@
.LVL71:
.L56:
	movs	r2, #8	@ _25,
	b	.L46	@
.LVL72:
.L54:
	movs	r2, #6	@ _25,
	b	.L46	@
.LVL73:
.L55:
	movs	r2, #7	@ _25,
	b	.L46	@
.L58:
	.align	2
.L57:
	.word	TASK_SCHEDULING_QUEUE
	.cfi_endproc
.LFE7:
	.size	ADD_TO_SCHEDULING_QUEUE, .-ADD_TO_SCHEDULING_QUEUE
	.align	1
	.p2align 2,,3
	.global	GET_IDLE_TASK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GET_IDLE_TASK, %function
GET_IDLE_TASK:
.LFB8:
	.loc 1 279 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:281: }
	.loc 1 281 0
	ldr	r0, .L60	@,
	bx	lr	@
.L61:
	.align	2
.L60:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE8:
	.size	GET_IDLE_TASK, .-GET_IDLE_TASK
	.align	1
	.p2align 2,,3
	.global	ADD_TO_IDLE_TASK_QUEUE
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADD_TO_IDLE_TASK_QUEUE, %function
ADD_TO_IDLE_TASK_QUEUE:
.LFB9:
	.loc 1 283 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL74:
	push	{r4, r5, r6, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:285:    if((&TASK_IDLE_QUEUE[0u])->idle_task == FALSE)
	.loc 1 285 0
	ldr	r4, .L66	@ tmp148,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ TASK_IDLE_QUEUE, TASK_IDLE_QUEUE
	lsls	r2, r3, #29	@, TASK_IDLE_QUEUE,
	bpl	.L65	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:333: }
	.loc 1 333 0
	pop	{r4, r5, r6, pc}	@
.L65:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0u])->active                                =   task->active           ;
	.loc 1 287 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_activated                      =   task->nr_of_ins_activated ;
	.loc 1 292 0
	ldrb	r6, [r0, #5]	@ zero_extendqisi2	@ _8, task_40(D)->nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0u])->active                                =   task->active           ;
	.loc 1 287 0
	bfi	r3, r2, #0, #1	@ TASK_IDLE_QUEUE[0].active, *task_40(D),,
	strb	r3, [r4]	@ TASK_IDLE_QUEUE[0].active, TASK_IDLE_QUEUE[0].active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
	.loc 1 288 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
	ldrb	r2, [r4]	@ zero_extendqisi2	@, TASK_IDLE_QUEUE[0].task_queued
	ubfx	r3, r3, #1, #1	@ _4, *task_40(D),,
	bfi	r2, r3, #1, #1	@ TASK_IDLE_QUEUE[0].task_queued, _4,,
	strb	r2, [r4]	@ TASK_IDLE_QUEUE[0].task_queued, TASK_IDLE_QUEUE[0].task_queued
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
	.loc 1 289 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
	uxtb	r2, r2	@ tmp173, TASK_IDLE_QUEUE[0].task_queued
	ubfx	r3, r3, #2, #1	@ _5, *task_40(D),,
	bfi	r2, r3, #2, #1	@ TASK_IDLE_QUEUE[0].idle_task, _5,,
	strb	r2, [r4]	@ TASK_IDLE_QUEUE[0].idle_task, TASK_IDLE_QUEUE[0].idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
	.loc 1 290 0
	ldr	r3, [r0]	@ *task_40(D), *task_40(D)
	ldr	r2, [r4]	@ TASK_IDLE_QUEUE[0].free, TASK_IDLE_QUEUE[0].free
	ubfx	r3, r3, #3, #29	@ _6, *task_40(D),,
	bfi	r2, r3, #3, #29	@ TASK_IDLE_QUEUE[0].free, _6,,
	str	r2, [r4]	@ TASK_IDLE_QUEUE[0].free, TASK_IDLE_QUEUE[0].free
	mov	r5, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_allowed                        =   task->nr_of_ins_allowed   ;
	.loc 1 291 0
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ _7, task_40(D)->nr_of_ins_allowed
	strb	r3, [r4, #4]	@ _7, TASK_IDLE_QUEUE[0].nr_of_ins_allowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:293:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 293 0
	adds	r1, r0, #6	@, task,
	adds	r0, r4, #6	@, tmp148,
.LVL75:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_activated                      =   task->nr_of_ins_activated ;
	.loc 1 292 0
	strb	r6, [r4, #5]	@ _8, TASK_IDLE_QUEUE[0].nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:293:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 293 0
	bl	ASSIGN	@
.LVL76:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:294:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_time, &task->wait_time);
	.loc 1 294 0
	add	r1, r5, #22	@, task,
	add	r0, r4, #22	@, tmp148,
	bl	ASSIGN	@
.LVL77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:295:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->time_to_prio_inc, &task->time_to_prio_inc);
	.loc 1 295 0
	add	r1, r5, #38	@, task,
	add	r0, r4, #38	@, tmp148,
	bl	ASSIGN	@
.LVL78:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0u])->overwaittime_per_prio_inc_step       =    task->overwaittime_per_prio_inc_step;
	.loc 1 296 0
	ldr	r3, [r5, #56]	@ _12, task_40(D)->overwaittime_per_prio_inc_step
	str	r3, [r4, #56]	@ _12, TASK_IDLE_QUEUE[0].overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:297:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->max_allowed_wait_time, &task->max_allowed_wait_time);
	.loc 1 297 0
	add	r1, r5, #60	@, task,
	add	r0, r4, #60	@, tmp148,
	bl	ASSIGN	@
.LVL79:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:298:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->exe_time, &task->exe_time);
	.loc 1 298 0
	add	r1, r5, #76	@, task,
	add	r0, r4, #76	@, tmp148,
	bl	ASSIGN	@
.LVL80:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:302:       (&TASK_IDLE_QUEUE[0u])->state_request                         =   task->state_request    ;
	.loc 1 302 0
	ldrd	r1, r2, [r5, #116]	@ _17, _18, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0u])->current_prio                          =   task->current_prio     ;
	.loc 1 299 0
	ldrb	r3, [r5, #108]	@ zero_extendqisi2	@ _15, task_40(D)->current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:300:       (&TASK_IDLE_QUEUE[0u])->default_prio                          =   task->default_prio     ;
	.loc 1 300 0
	ldrb	r0, [r5, #109]	@ zero_extendqisi2	@ _16, task_40(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0u])->current_prio                          =   task->current_prio     ;
	.loc 1 299 0
	strb	r3, [r4, #108]	@ _15, TASK_IDLE_QUEUE[0].current_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:303:       (&TASK_IDLE_QUEUE[0u])->task_state                            =   E_TASK_READY             ;
	.loc 1 303 0
	movs	r3, #2	@ tmp200,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:300:       (&TASK_IDLE_QUEUE[0u])->default_prio                          =   task->default_prio     ;
	.loc 1 300 0
	strb	r0, [r4, #109]	@ _16, TASK_IDLE_QUEUE[0].default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0u])->fp                                    =   task->fp               ;
	.loc 1 301 0
	str	r1, [r4, #116]	@ _17, TASK_IDLE_QUEUE[0].fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:304:       (&TASK_IDLE_QUEUE[0u])->task_group                            =   task->task_group       ;
	.loc 1 304 0
	ldr	r0, [r5, #128]	@ _19, task_40(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 0
	ldr	r1, [r5, #132]	@ _20, task_40(D)->r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:302:       (&TASK_IDLE_QUEUE[0u])->state_request                         =   task->state_request    ;
	.loc 1 302 0
	str	r2, [r4, #120]	@ _18, TASK_IDLE_QUEUE[0].state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:303:       (&TASK_IDLE_QUEUE[0u])->task_state                            =   E_TASK_READY             ;
	.loc 1 303 0
	strb	r3, [r4, #124]	@ tmp200, TASK_IDLE_QUEUE[0].task_state
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:312:       (&TASK_IDLE_QUEUE[0u])->r1                                   =   task->r1              ;
	.loc 1 312 0
	ldr	r2, [r5, #136]	@ _21, task_40(D)->r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:313:       (&TASK_IDLE_QUEUE[0u])->r2                                   =   task->r2              ;
	.loc 1 313 0
	ldr	r3, [r5, #140]	@ _22, task_40(D)->r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:304:       (&TASK_IDLE_QUEUE[0u])->task_group                            =   task->task_group       ;
	.loc 1 304 0
	str	r0, [r4, #128]	@ _19, TASK_IDLE_QUEUE[0].task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 0
	str	r1, [r4, #132]	@ _20, TASK_IDLE_QUEUE[0].r0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:314:       (&TASK_IDLE_QUEUE[0u])->r3                                   =   task->r3              ;
	.loc 1 314 0
	ldr	r0, [r5, #144]	@ _23, task_40(D)->r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:315:       (&TASK_IDLE_QUEUE[0u])->r4                                   =   task->r4              ;
	.loc 1 315 0
	ldr	r1, [r5, #148]	@ _24, task_40(D)->r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:312:       (&TASK_IDLE_QUEUE[0u])->r1                                   =   task->r1              ;
	.loc 1 312 0
	str	r2, [r4, #136]	@ _21, TASK_IDLE_QUEUE[0].r1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:313:       (&TASK_IDLE_QUEUE[0u])->r2                                   =   task->r2              ;
	.loc 1 313 0
	str	r3, [r4, #140]	@ _22, TASK_IDLE_QUEUE[0].r2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:316:       (&TASK_IDLE_QUEUE[0u])->r5                                   =   task->r5              ;
	.loc 1 316 0
	ldr	r2, [r5, #152]	@ _25, task_40(D)->r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:317:       (&TASK_IDLE_QUEUE[0u])->r6                                   =   task->r6              ;
	.loc 1 317 0
	ldr	r3, [r5, #156]	@ _26, task_40(D)->r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:314:       (&TASK_IDLE_QUEUE[0u])->r3                                   =   task->r3              ;
	.loc 1 314 0
	str	r0, [r4, #144]	@ _23, TASK_IDLE_QUEUE[0].r3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:315:       (&TASK_IDLE_QUEUE[0u])->r4                                   =   task->r4              ;
	.loc 1 315 0
	str	r1, [r4, #148]	@ _24, TASK_IDLE_QUEUE[0].r4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:318:       (&TASK_IDLE_QUEUE[0u])->r7                                   =   task->r7              ;
	.loc 1 318 0
	ldr	r0, [r5, #160]	@ _27, task_40(D)->r7
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:319:       (&TASK_IDLE_QUEUE[0u])->r8                                   =   task->r8              ;
	.loc 1 319 0
	ldr	r1, [r5, #164]	@ _28, task_40(D)->r8
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:316:       (&TASK_IDLE_QUEUE[0u])->r5                                   =   task->r5              ;
	.loc 1 316 0
	str	r2, [r4, #152]	@ _25, TASK_IDLE_QUEUE[0].r5
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:317:       (&TASK_IDLE_QUEUE[0u])->r6                                   =   task->r6              ;
	.loc 1 317 0
	str	r3, [r4, #156]	@ _26, TASK_IDLE_QUEUE[0].r6
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:320:       (&TASK_IDLE_QUEUE[0u])->r9                                   =   task->r9              ;
	.loc 1 320 0
	ldr	r2, [r5, #168]	@ _29, task_40(D)->r9
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:321:       (&TASK_IDLE_QUEUE[0u])->r10                                  =   task->r10             ;
	.loc 1 321 0
	ldr	r3, [r5, #172]	@ _30, task_40(D)->r10
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:319:       (&TASK_IDLE_QUEUE[0u])->r8                                   =   task->r8              ;
	.loc 1 319 0
	strd	r0, r1, [r4, #160]	@ _27, _28, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:321:       (&TASK_IDLE_QUEUE[0u])->r10                                  =   task->r10             ;
	.loc 1 321 0
	strd	r2, r3, [r4, #168]	@ _29, _30, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:323:       (&TASK_IDLE_QUEUE[0u])->r12                                  =   task->r12             ;
	.loc 1 323 0
	ldrd	r2, r3, [r5, #176]	@ _31, _32, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:328:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_by_malloc                 =   task->p_stack_pointer_by_malloc;
	.loc 1 328 0
	ldrd	r6, r0, [r5, #184]	@ _33, _34, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:322:       (&TASK_IDLE_QUEUE[0u])->r11                                  =   task->r11             ;
	.loc 1 322 0
	str	r2, [r4, #176]	@ _31, TASK_IDLE_QUEUE[0].r11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:323:       (&TASK_IDLE_QUEUE[0u])->r12                                  =   task->r12             ;
	.loc 1 323 0
	str	r3, [r4, #180]	@ _32, TASK_IDLE_QUEUE[0].r12
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:331:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_end                      =   task->p_stack_pointer_end ;
	.loc 1 331 0
	ldrd	r2, r3, [r5, #196]	@ _36, _37, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:329:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_start                    =   task->p_stack_pointer_start;
	.loc 1 329 0
	ldr	r1, [r5, #192]	@ _35, task_40(D)->p_stack_pointer_start
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:331:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_end                      =   task->p_stack_pointer_end ;
	.loc 1 331 0
	str	r3, [r4, #200]	@ _37, TASK_IDLE_QUEUE[0].p_stack_pointer_end
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:328:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_by_malloc                 =   task->p_stack_pointer_by_malloc;
	.loc 1 328 0
	strd	r6, r0, [r4, #184]	@ _33, _34, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:330:       (&TASK_IDLE_QUEUE[0u])->stack_size                             =   task->stack_size        ;
	.loc 1 330 0
	strd	r1, r2, [r4, #192]	@ _35, _36, tmp148,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:333: }
	.loc 1 333 0
	pop	{r4, r5, r6, pc}	@
.LVL81:
.L67:
	.align	2
.L66:
	.word	TASK_IDLE_QUEUE
	.cfi_endproc
.LFE9:
	.size	ADD_TO_IDLE_TASK_QUEUE, .-ADD_TO_IDLE_TASK_QUEUE
	.align	1
	.p2align 2,,3
	.global	GET_RUNNING_TASK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GET_RUNNING_TASK, %function
GET_RUNNING_TASK:
.LFB10:
	.loc 1 335 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:337: }
	.loc 1 337 0
	ldr	r0, .L69	@,
	bx	lr	@
.L70:
	.align	2
.L69:
	.word	RUNNING_TASK
	.cfi_endproc
.LFE10:
	.size	GET_RUNNING_TASK, .-GET_RUNNING_TASK
	.align	1
	.p2align 2,,3
	.global	GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR, %function
GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR:
.LFB11:
	.loc 1 339 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:340:    return RUNNING_SCHEDULING_QUEUE_ENTRY;
	.loc 1 340 0
	ldr	r3, .L72	@ tmp112,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:341: }
	.loc 1 341 0
	ldr	r0, [r3]	@, RUNNING_SCHEDULING_QUEUE_ENTRY
	bx	lr	@
.L73:
	.align	2
.L72:
	.word	RUNNING_SCHEDULING_QUEUE_ENTRY
	.cfi_endproc
.LFE11:
	.size	GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR, .-GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	.align	1
	.p2align 2,,3
	.global	OS_INIT_TASK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_INIT_TASK, %function
OS_INIT_TASK:
.LFB12:
	.loc 1 354 0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL82:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}	@
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:354: {
	.loc 1 354 0
	ldr	r5, [sp, #40]	@ uStackSize, uStackSize
	ldrb	r9, [sp, #44]	@ zero_extendqisi2	@ privilige_mode, privilige_mode
	ldrb	r8, [sp, #52]	@ zero_extendqisi2	@ default_prio, default_prio
	ldrd	ip, r6, [sp, #32]	@ p_task_group, pStackAddr,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:356:    if(task!=0u)
	.loc 1 356 0
	cbz	r0, .L75	@ task,
	mov	r7, r3	@ idle_task, idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@, task_9(D)->active
.LVL83:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:361:       task->task_group       = p_task_group;
	.loc 1 361 0
	str	ip, [r0, #128]	@ p_task_group, task_9(D)->task_group
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 0
	bfc	r3, #0, #1	@ task_9(D)->active,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:362:       task->nr_of_ins_activated = 0u;
	.loc 1 362 0
	mov	r10, #0	@ tmp129,
	mov	r4, r0	@ task, task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:360:       task->nr_of_ins_allowed   = AllowedInstances;
	.loc 1 360 0
	strb	r2, [r0, #4]	@ AllowedInstances, task_9(D)->nr_of_ins_allowed
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:359:       task->fp               = TaskFunction;
	.loc 1 359 0
	str	r1, [r0, #116]	@ TaskFunction, task_9(D)->fp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 0
	strb	r3, [r0]	@ task_9(D)->active, task_9(D)->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:362:       task->nr_of_ins_activated = 0u;
	.loc 1 362 0
	strb	r10, [r0, #5]	@ tmp129, task_9(D)->nr_of_ins_activated
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:363:       ASSIGN_NULL(&task->wait_act_until);
	.loc 1 363 0
	adds	r0, r0, #6	@, task,
.LVL84:
	bl	ASSIGN_NULL	@
.LVL85:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:367:       task->overwaittime_per_prio_inc_step = 1u;
	.loc 1 367 0
	movs	r3, #1	@ tmp134,
	str	r3, [r4, #56]	@ tmp134, task_9(D)->overwaittime_per_prio_inc_step
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);
	.loc 1 368 0
	ldr	r1, .L79	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:364:       task->privilige_mode   = privilige_mode;
	.loc 1 364 0
	strb	r9, [r4, #204]	@ privilige_mode, task_9(D)->privilige_mode
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);
	.loc 1 368 0
	add	r0, r4, #60	@, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:365:       task->default_prio     = default_prio;
	.loc 1 365 0
	strb	r8, [r4, #109]	@ default_prio, task_9(D)->default_prio
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:368:       ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);
	.loc 1 368 0
	bl	ASSIGN_UINT32	@
.LVL86:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:370:       task->idle_task      = idle_task;
	.loc 1 370 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_9(D)->idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:371:       task->state_request = &OS_TASK_STATE_REQUEST;
	.loc 1 371 0
	ldr	r2, .L79+4	@ tmp139,
	str	r2, [r4, #120]	@ tmp139, task_9(D)->state_request
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:370:       task->idle_task      = idle_task;
	.loc 1 370 0
	bfi	r3, r7, #2, #1	@ task_9(D)->idle_task, idle_task,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:372:       OS_TASK_STATE_REQUEST(task, E_TASK_UNSPECIFIED);
	.loc 1 372 0
	mov	r1, r10	@, tmp129
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:370:       task->idle_task      = idle_task;
	.loc 1 370 0
	strb	r3, [r4]	@ task_9(D)->idle_task, task_9(D)->idle_task
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:372:       OS_TASK_STATE_REQUEST(task, E_TASK_UNSPECIFIED);
	.loc 1 372 0
	mov	r0, r4	@, task
	bl	OS_TASK_STATE_REQUEST	@
.LVL87:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:373:       OS_CREATE_TASK(task);
	.loc 1 373 0
	mov	r0, r4	@, task
	bl	OS_CREATE_TASK	@
.LVL88:
	cmp	r5, #2000	@ uStackSize,
	it	cs
	movcs	r5, #2000	@ uStackSize,
.LVL89:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:382:       task->p_stack_pointer_end      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
	.loc 1 382 0
	subs	r2, r5, #1	@ tmp140, uStackSize,
	add	r2, r2, r6	@ _5, pStackAddr
	strd	r5, r2, [r4, #196]	@ uStackSize, _5, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:380:       task->p_stack_pointer_by_malloc = pStackAddr;
	.loc 1 380 0
	strd	r2, r6, [r4, #184]	@ _5, pStackAddr, task,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:381:       task->p_stack_pointer_start    = pStackAddr;/*low addresse */
	.loc 1 381 0
	str	r6, [r4, #192]	@ pStackAddr, task_9(D)->p_stack_pointer_start
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:391: }
	.loc 1 391 0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}	@
.LVL90:
.L75:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:389:       OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER, E_FUNC_INITTASK);
	.loc 1 389 0
	movs	r1, #10	@,
.LVL91:
	movs	r0, #2	@,
.LVL92:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:391: }
	.loc 1 391 0
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}	@
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL93:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_task_queue.c:389:       OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER, E_FUNC_INITTASK);
	.loc 1 389 0
	b	OS_SET_SW_BUG	@
.LVL94:
.L80:
	.align	2
.L79:
	.word	100000
	.word	OS_TASK_STATE_REQUEST
	.cfi_endproc
.LFE12:
	.size	OS_INIT_TASK, .-OS_INIT_TASK
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.file 7 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram_stack.h"
	.file 9 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd8d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF701
	.byte	0x1
	.4byte	.LASF702
	.4byte	.LASF703
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF515
	.byte	0x2
	.byte	0x11
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF513
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF514
	.uleb128 0x2
	.4byte	.LASF516
	.byte	0x2
	.byte	0x15
	.4byte	0x34
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF517
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF518
	.uleb128 0x2
	.4byte	.LASF519
	.byte	0x2
	.byte	0x1b
	.4byte	0x66
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF520
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF521
	.uleb128 0x2
	.4byte	.LASF522
	.byte	0x2
	.byte	0x1d
	.4byte	0x66
	.uleb128 0x4
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF536
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x28
	.4byte	0xde
	.uleb128 0x6
	.4byte	.LASF523
	.byte	0
	.uleb128 0x6
	.4byte	.LASF524
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF525
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF526
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF527
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF529
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF530
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF531
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF532
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF533
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF534
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF535
	.byte	0x3
	.byte	0x37
	.4byte	0x84
	.uleb128 0x4
	.4byte	0xde
	.uleb128 0x5
	.4byte	.LASF537
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x39
	.4byte	0x178
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
	.uleb128 0x6
	.4byte	.LASF554
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF555
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF556
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.4byte	.LASF580
	.byte	0x10
	.byte	0x3
	.byte	0x57
	.4byte	0x191
	.uleb128 0x8
	.4byte	.LASF582
	.byte	0x3
	.byte	0x60
	.4byte	0x191
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.4byte	0x1a1
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF558
	.uleb128 0x2
	.4byte	.LASF559
	.byte	0x3
	.byte	0x61
	.4byte	0x178
	.uleb128 0x2
	.4byte	.LASF560
	.byte	0x3
	.byte	0x63
	.4byte	0x1a8
	.uleb128 0x5
	.4byte	.LASF561
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x4
	.4byte	0x1e8
	.uleb128 0x6
	.4byte	.LASF562
	.byte	0
	.uleb128 0x6
	.4byte	.LASF563
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF566
	.byte	0x4
	.byte	0xb
	.4byte	0x1be
	.uleb128 0x5
	.4byte	.LASF567
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x13
	.4byte	0x217
	.uleb128 0x6
	.4byte	.LASF568
	.byte	0
	.uleb128 0x6
	.4byte	.LASF569
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF570
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF571
	.byte	0x4
	.byte	0x19
	.4byte	0x1f3
	.uleb128 0x5
	.4byte	.LASF572
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x24c
	.uleb128 0x6
	.4byte	.LASF573
	.byte	0
	.uleb128 0x6
	.4byte	.LASF574
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF576
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF577
	.byte	0x5
	.byte	0xe
	.4byte	0x222
	.uleb128 0x2
	.4byte	.LASF578
	.byte	0x5
	.byte	0x13
	.4byte	0x262
	.uleb128 0xb
	.byte	0x4
	.4byte	0x268
	.uleb128 0xc
	.4byte	0x273
	.uleb128 0xd
	.4byte	0x273
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF579
	.byte	0x5
	.byte	0x15
	.4byte	0x280
	.uleb128 0xb
	.byte	0x4
	.4byte	0x286
	.uleb128 0xf
	.4byte	0x29
	.4byte	0x29a
	.uleb128 0xd
	.4byte	0x273
	.uleb128 0xd
	.4byte	0x24c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF581
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.4byte	0x2bf
	.uleb128 0x8
	.4byte	.LASF583
	.byte	0x5
	.byte	0x1a
	.4byte	0x1b3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF584
	.byte	0x5
	.byte	0x1b
	.4byte	0x1b3
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF585
	.byte	0x5
	.byte	0x1d
	.4byte	0x29a
	.uleb128 0x7
	.4byte	.LASF586
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.4byte	0x4ac
	.uleb128 0x10
	.4byte	.LASF587
	.byte	0x5
	.byte	0x21
	.4byte	0x1a1
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF588
	.byte	0x5
	.byte	0x22
	.4byte	0x1a1
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF589
	.byte	0x5
	.byte	0x23
	.4byte	0x1a1
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF590
	.byte	0x5
	.byte	0x24
	.4byte	0x1a1
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF591
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF592
	.byte	0x5
	.byte	0x26
	.4byte	0x29
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF593
	.byte	0x5
	.byte	0x27
	.4byte	0x1b3
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF594
	.byte	0x5
	.byte	0x28
	.4byte	0x1b3
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF595
	.byte	0x5
	.byte	0x29
	.4byte	0x1b3
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF596
	.byte	0x5
	.byte	0x2a
	.4byte	0x74
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF597
	.byte	0x5
	.byte	0x2b
	.4byte	0x1b3
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF583
	.byte	0x5
	.byte	0x2c
	.4byte	0x1b3
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF598
	.byte	0x5
	.byte	0x2d
	.4byte	0x1b3
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF599
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF600
	.byte	0x5
	.byte	0x2f
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF601
	.byte	0x5
	.byte	0x30
	.4byte	0x5b
	.byte	0x70
	.uleb128 0x11
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x257
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF602
	.byte	0x5
	.byte	0x32
	.4byte	0x275
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF603
	.byte	0x5
	.byte	0x33
	.4byte	0x24c
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF604
	.byte	0x5
	.byte	0x34
	.4byte	0x4ac
	.byte	0x80
	.uleb128 0x11
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x5b
	.byte	0x84
	.uleb128 0x11
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x5b
	.byte	0x88
	.uleb128 0x11
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x5b
	.byte	0x8c
	.uleb128 0x11
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x5b
	.byte	0x90
	.uleb128 0x11
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x5b
	.byte	0x94
	.uleb128 0x11
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x5b
	.byte	0x98
	.uleb128 0x11
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x5b
	.byte	0x9c
	.uleb128 0x11
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x5b
	.byte	0xa0
	.uleb128 0x11
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x5b
	.byte	0xa4
	.uleb128 0x11
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x5b
	.byte	0xa8
	.uleb128 0x11
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x5b
	.byte	0xac
	.uleb128 0x11
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x5b
	.byte	0xb0
	.uleb128 0x11
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x47
	.4byte	0x5b
	.byte	0xb4
	.uleb128 0x8
	.4byte	.LASF605
	.byte	0x5
	.byte	0x49
	.4byte	0x4b2
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF606
	.byte	0x5
	.byte	0x4a
	.4byte	0x4b2
	.byte	0xbc
	.uleb128 0x8
	.4byte	.LASF607
	.byte	0x5
	.byte	0x4b
	.4byte	0x4b2
	.byte	0xc0
	.uleb128 0x8
	.4byte	.LASF608
	.byte	0x5
	.byte	0x4c
	.4byte	0x5b
	.byte	0xc4
	.uleb128 0x8
	.4byte	.LASF609
	.byte	0x5
	.byte	0x4d
	.4byte	0x4b2
	.byte	0xc8
	.uleb128 0x8
	.4byte	.LASF610
	.byte	0x5
	.byte	0x4e
	.4byte	0x217
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2bf
	.uleb128 0xb
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF611
	.byte	0x5
	.byte	0x50
	.4byte	0x2ca
	.uleb128 0x2
	.4byte	.LASF612
	.byte	0x5
	.byte	0x51
	.4byte	0x4ce
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4b8
	.uleb128 0x9
	.4byte	0x4ce
	.4byte	0x4e4
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x5
	.byte	0x5b
	.4byte	0x4d4
	.uleb128 0x2
	.4byte	.LASF613
	.byte	0x5
	.byte	0x5d
	.4byte	0x1b3
	.uleb128 0x5
	.4byte	.LASF614
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x6
	.byte	0x4
	.4byte	0x51e
	.uleb128 0x6
	.4byte	.LASF615
	.byte	0
	.uleb128 0x6
	.4byte	.LASF616
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF617
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF618
	.byte	0x6
	.byte	0xa
	.4byte	0x4fa
	.uleb128 0x4
	.4byte	0x51e
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x53f
	.uleb128 0x13
	.4byte	0x1a1
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x7
	.byte	0xb
	.4byte	0x52e
	.uleb128 0x9
	.4byte	0xe9
	.4byte	0x55a
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x54a
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x7
	.byte	0xe
	.4byte	0x55a
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x7
	.byte	0xf
	.4byte	0x529
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x7
	.byte	0x10
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x7
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x7
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x7
	.byte	0x13
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x7
	.byte	0x14
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x7
	.byte	0x15
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x7
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x7
	.byte	0x17
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x7
	.byte	0x18
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x7
	.byte	0x19
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x7
	.byte	0x1a
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x7
	.byte	0x1b
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x7
	.byte	0x1c
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x7
	.byte	0x1d
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x7
	.byte	0x1e
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x7
	.byte	0x1f
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x7
	.byte	0x20
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x7
	.byte	0x21
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x7
	.byte	0x23
	.4byte	0x646
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x7
	.byte	0x24
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x7
	.byte	0x25
	.4byte	0x7f
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x679
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0x9
	.uleb128 0x13
	.4byte	0x1a1
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x7
	.byte	0x26
	.4byte	0x662
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x7
	.byte	0x27
	.4byte	0x4ef
	.uleb128 0x9
	.4byte	0x4c3
	.4byte	0x69f
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x7
	.byte	0x28
	.4byte	0x68f
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x7
	.byte	0x29
	.4byte	0x6b5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4c3
	.uleb128 0x9
	.4byte	0x4b8
	.4byte	0x6cb
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x7
	.byte	0x2a
	.4byte	0x6bb
	.uleb128 0x9
	.4byte	0x4b8
	.4byte	0x6e6
	.uleb128 0xa
	.4byte	0x1a1
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x7
	.byte	0x2b
	.4byte	0x6d6
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x7
	.byte	0x2c
	.4byte	0x6d6
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x7
	.byte	0x2d
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x7
	.byte	0x2e
	.4byte	0x4b8
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x7
	.byte	0x2e
	.4byte	0x4b8
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x7
	.byte	0x2e
	.4byte	0x4b8
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x7
	.byte	0x2e
	.4byte	0x4b8
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x7
	.byte	0x2f
	.4byte	0x2bf
	.uleb128 0x12
	.4byte	.LASF657
	.byte	0x7
	.byte	0x2f
	.4byte	0x2bf
	.uleb128 0x12
	.4byte	.LASF658
	.byte	0x7
	.byte	0x2f
	.4byte	0x2bf
	.uleb128 0x12
	.4byte	.LASF659
	.byte	0x7
	.byte	0x2f
	.4byte	0x2bf
	.uleb128 0x12
	.4byte	.LASF660
	.byte	0x7
	.byte	0x2f
	.4byte	0x2bf
	.uleb128 0x12
	.4byte	.LASF661
	.byte	0x7
	.byte	0x30
	.4byte	0x4ce
	.uleb128 0x12
	.4byte	.LASF662
	.byte	0x7
	.byte	0x31
	.4byte	0x24c
	.uleb128 0x12
	.4byte	.LASF663
	.byte	0x7
	.byte	0x32
	.4byte	0x24c
	.uleb128 0x12
	.4byte	.LASF664
	.byte	0x7
	.byte	0x33
	.4byte	0x796
	.uleb128 0xb
	.byte	0x4
	.4byte	0x79c
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF665
	.byte	0x7
	.byte	0x34
	.4byte	0x529
	.uleb128 0x12
	.4byte	.LASF666
	.byte	0x7
	.byte	0x35
	.4byte	0x1b3
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x7c4
	.uleb128 0x13
	.4byte	0x1a1
	.2byte	0x1ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF667
	.byte	0x8
	.byte	0xc
	.4byte	0x7b3
	.uleb128 0x15
	.4byte	.LASF677
	.byte	0x1
	.2byte	0x156
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f9
	.uleb128 0x16
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x157
	.4byte	0x4ce
	.4byte	.LLST11
	.uleb128 0x16
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x158
	.4byte	0x257
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x159
	.4byte	0x29
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	.LASF589
	.byte	0x1
	.2byte	0x15a
	.4byte	0x29
	.4byte	.LLST14
	.uleb128 0x16
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x15b
	.4byte	0x4ac
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x15c
	.4byte	0x4b2
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x15d
	.4byte	0x5b
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF610
	.byte	0x1
	.2byte	0x15e
	.4byte	0x217
	.4byte	.LLST18
	.uleb128 0x16
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x15f
	.4byte	0x1e8
	.4byte	.LLST19
	.uleb128 0x16
	.4byte	.LASF600
	.byte	0x1
	.2byte	0x160
	.4byte	0x29
	.4byte	.LLST20
	.uleb128 0x17
	.4byte	.LVL85
	.4byte	0xd43
	.4byte	0x899
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL86
	.4byte	0xd4e
	.4byte	0x8b6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL87
	.4byte	0xd59
	.4byte	0x8d0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL88
	.4byte	0xd64
	.4byte	0x8e4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL94
	.4byte	0xd6f
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
	.4byte	.LASF675
	.byte	0x1
	.2byte	0x152
	.4byte	0x90f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4ce
	.uleb128 0x1a
	.4byte	.LASF676
	.byte	0x1
	.2byte	0x14e
	.4byte	0x4ce
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF678
	.byte	0x1
	.2byte	0x11a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d2
	.uleb128 0x16
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x11a
	.4byte	0x4ce
	.4byte	.LLST10
	.uleb128 0x17
	.4byte	.LVL76
	.4byte	0xd7a
	.4byte	0x96b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL77
	.4byte	0xd7a
	.4byte	0x985
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL78
	.4byte	0xd7a
	.4byte	0x99f
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 38
	.byte	0
	.uleb128 0x17
	.4byte	.LVL79
	.4byte	0xd7a
	.4byte	0x9b9
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 60
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL80
	.4byte	0xd7a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x75
	.sleb128 76
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF679
	.byte	0x1
	.2byte	0x116
	.4byte	0x4ce
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF680
	.byte	0x1
	.byte	0xe1
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa29
	.uleb128 0x1d
	.4byte	.LASF668
	.byte	0x1
	.byte	0xe1
	.4byte	0x4ce
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	.LASF681
	.byte	0x1
	.byte	0xea
	.4byte	0x29
	.4byte	.LLST8
	.uleb128 0x1e
	.4byte	.LASF682
	.byte	0x1
	.byte	0xeb
	.4byte	0x29
	.4byte	.LLST9
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF683
	.byte	0x1
	.byte	0xdd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa4c
	.uleb128 0x1d
	.4byte	.LASF684
	.byte	0x1
	.byte	0xdd
	.4byte	0x6b5
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF686
	.byte	0x1
	.byte	0xd8
	.4byte	0x6b5
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa75
	.uleb128 0x20
	.4byte	.LASF685
	.byte	0x1
	.byte	0xd8
	.4byte	0x29
	.4byte	.LLST7
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF687
	.byte	0x1
	.byte	0xd4
	.4byte	0x4ce
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa9e
	.uleb128 0x20
	.4byte	.LASF684
	.byte	0x1
	.byte	0xd4
	.4byte	0x6b5
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF688
	.byte	0x1
	.byte	0xa3
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb39
	.uleb128 0x20
	.4byte	.LASF668
	.byte	0x1
	.byte	0xa3
	.4byte	0x4ce
	.4byte	.LLST5
	.uleb128 0x17
	.4byte	.LVL42
	.4byte	0xd43
	.4byte	0xad6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL43
	.4byte	0xd43
	.4byte	0xaea
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL44
	.4byte	0xd43
	.4byte	0xafe
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x17
	.4byte	.LVL45
	.4byte	0xd43
	.4byte	0xb12
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL46
	.4byte	0xd43
	.4byte	0xb27
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL47
	.4byte	0xd43
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF689
	.byte	0x1
	.byte	0x65
	.4byte	0x4ce
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x20
	.4byte	.LASF668
	.byte	0x1
	.byte	0x65
	.4byte	0x4ce
	.4byte	.LLST2
	.uleb128 0x1e
	.4byte	.LASF685
	.byte	0x1
	.byte	0x67
	.4byte	0x29
	.4byte	.LLST3
	.uleb128 0x1e
	.4byte	.LASF690
	.byte	0x1
	.byte	0x68
	.4byte	0x4ce
	.4byte	.LLST4
	.uleb128 0x17
	.4byte	.LVL25
	.4byte	0xd7a
	.4byte	0xb9e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL26
	.4byte	0xd7a
	.4byte	0xbbd
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.4byte	0xd7a
	.4byte	0xbdc
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x17
	.4byte	.LVL28
	.4byte	0xd7a
	.4byte	0xbfb
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL29
	.4byte	0xd7a
	.4byte	0xc1b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL30
	.4byte	0xd7a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x76
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF691
	.byte	0x1
	.byte	0x57
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc73
	.uleb128 0x21
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x22
	.4byte	.LASF685
	.byte	0x1
	.byte	0x5b
	.4byte	0x29
	.uleb128 0x1b
	.4byte	.LVL10
	.4byte	0xd85
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
	.4byte	.LASF692
	.byte	0x1
	.byte	0x21
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd43
	.uleb128 0x20
	.4byte	.LASF668
	.byte	0x1
	.byte	0x21
	.4byte	0x4ce
	.4byte	.LLST0
	.uleb128 0x20
	.4byte	.LASF693
	.byte	0x1
	.byte	0x21
	.4byte	0x6b5
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LVL3
	.4byte	0xd7a
	.4byte	0xcc0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 6
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL4
	.4byte	0xd7a
	.4byte	0xcda
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 22
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL5
	.4byte	0xd7a
	.4byte	0xcf4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x17
	.4byte	.LVL6
	.4byte	0xd7a
	.4byte	0xd0e
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 60
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x17
	.4byte	.LVL7
	.4byte	0xd7a
	.4byte	0xd2a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 76
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL8
	.4byte	0xd7a
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 92
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF694
	.4byte	.LASF694
	.byte	0x3
	.byte	0x66
	.uleb128 0x23
	.4byte	.LASF695
	.4byte	.LASF695
	.byte	0x3
	.byte	0x68
	.uleb128 0x23
	.4byte	.LASF696
	.4byte	.LASF696
	.byte	0x9
	.byte	0x1f
	.uleb128 0x23
	.4byte	.LASF697
	.4byte	.LASF697
	.byte	0x9
	.byte	0x23
	.uleb128 0x23
	.4byte	.LASF698
	.4byte	.LASF698
	.byte	0x3
	.byte	0x54
	.uleb128 0x23
	.4byte	.LASF699
	.4byte	.LASF699
	.byte	0x3
	.byte	0x67
	.uleb128 0x23
	.4byte	.LASF700
	.4byte	.LASF700
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
	.uleb128 0x8
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
.LLST11:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94-1-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL94-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-1-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 12
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 16
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 20
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL32-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
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
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
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
	.file 10 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF438
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF462
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF484
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF485
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF486
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF495
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF498
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF499
	.file 17 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF500
	.byte	0x4
	.file 18 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF501
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF502
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF503
	.byte	0x4
	.byte	0x4
	.file 19 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x4
	.file 20 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro7
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
	.section	.debug_macro,"G",%progbits,wm4.os_config.h.2.ac4658f92c1259d8f1114145439d5f31,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF461
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.63eb68e412d9b6f465f2fde7f2fcb855,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF483
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.89b082d5aa4d7b2eff2ad4d1eb9bfd97,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF494
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.95.8d8bf4690dc541f58a865736bc15fd8a,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF497
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.322205b6bc95ffadb60992ab4fdadeef,comdat
.Ldebug_macro6:
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
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.15617e18d7400fa01024e50e30c98462,comdat
.Ldebug_macro7:
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
.LASF554:
	.ascii	"E_FUNC_SHUTDOWN\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF680:
	.ascii	"ADD_TO_SCHEDULING_QUEUE\000"
.LASF451:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF526:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
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
.LASF557:
	.ascii	"E_FUNC_STATE_HANDLER\000"
.LASF560:
	.ascii	"timebig_t\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF651:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF505:
	.ascii	"FIRST_TASK (0u)\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF647:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF545:
	.ascii	"E_FUNC_PREEMPTTASK\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF529:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF542:
	.ascii	"E_FUNC_DELETETASKENVIRONMENT\000"
.LASF498:
	.ascii	"_LED_H_ \000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF558:
	.ascii	"unsigned int\000"
.LASF449:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF571:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF624:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF523:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF464:
	.ascii	"FALSE 0u\000"
.LASF694:
	.ascii	"ASSIGN_NULL\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF576:
	.ascii	"E_TASK_RUNNING\000"
.LASF5:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF2:
	.ascii	"__GNUC__ 7\000"
.LASF487:
	.ascii	"_OS_TASK_CONFIG_H_ \000"
.LASF538:
	.ascii	"E_FUNC_NOFUNCTION\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF159:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF54:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
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
.LASF700:
	.ascii	"OS_TASK_INIT_TASK_ENVIRONMENT\000"
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
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF567:
	.ascii	"privilige_mode_e\000"
.LASF695:
	.ascii	"ASSIGN_UINT32\000"
.LASF686:
	.ascii	"GET_FROM_SCHEDULING_QUEUE\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF507:
	.ascii	"FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK;"
	.ascii	" (var) <= LAST_TASK; (var)++)\000"
.LASF679:
	.ascii	"GET_IDLE_TASK\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF645:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF629:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF546:
	.ascii	"E_FUNC_TERMINATETASK\000"
.LASF500:
	.ascii	"_OS_STACK_H_ \000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF453:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF701:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF603:
	.ascii	"task_state\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF470:
	.ascii	"GLOBAL_INLINE __inline__\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF597:
	.ascii	"max_allowed_wait_time\000"
.LASF665:
	.ascii	"SYSTEM_STATE_ACCEPTED\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF497:
	.ascii	"OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(tas"
	.ascii	"k_name)])\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF587:
	.ascii	"active\000"
.LASF475:
	.ascii	"DWT_CYCCNT ((volatile uint32*)0xE0001004u)\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF447:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF548:
	.ascii	"E_FUNC_INITTASK\000"
.LASF516:
	.ascii	"uint8\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF606:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF478:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF610:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF537:
	.ascii	"os_sw_bugs_function_e\000"
.LASF654:
	.ascii	"TASK_2_VAR\000"
.LASF489:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF494:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF592:
	.ascii	"nr_of_ins_activated\000"
.LASF199:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF212:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF631:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF682:
	.ascii	"index\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF540:
	.ascii	"E_FUNC_RESTORETASKENVIRONMENT\000"
.LASF661:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF595:
	.ascii	"time_to_prio_inc\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF604:
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
.LASF534:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF462:
	.ascii	"_OS_BASE_TYPES_H_ \000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF156:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF547:
	.ascii	"E_FUNC_TASKSCHEDULER\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF438:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF635:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF573:
	.ascii	"E_TASK_UNSPECIFIED\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF678:
	.ascii	"ADD_TO_IDLE_TASK_QUEUE\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF493:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF673:
	.ascii	"uStackSize\000"
.LASF241:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF674:
	.ascii	"core\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF644:
	.ascii	"TASK_STACK\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF690:
	.ascii	"ret_task\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF530:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF633:
	.ascii	"DBG_RLD_VALUE\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF468:
	.ascii	"LOCAL static\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2u\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF628:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF599:
	.ascii	"current_prio\000"
.LASF512:
	.ascii	"TASK_3_PTR 3u\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF483:
	.ascii	"HALT_MCU() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF23:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF227:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF564:
	.ascii	"E_CORE2\000"
.LASF503:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF565:
	.ascii	"E_CORE3\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF479:
	.ascii	"ENABLE_INTERRUPTS() LLF_INT_ENABLE()\000"
.LASF452:
	.ascii	"NR_OF_CORES 1u\000"
.LASF702:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_queue.c\000"
.LASF506:
	.ascii	"LAST_TASK (MAX_RUN_QUEUE_SIZE-1u)\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF590:
	.ascii	"free\000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF572:
	.ascii	"task_state_e\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF646:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF605:
	.ascii	"p_stack_pointer\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF577:
	.ascii	"task_state_t\000"
.LASF533:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF685:
	.ascii	"element_nr\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF584:
	.ascii	"fair_exe_time\000"
.LASF636:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF641:
	.ascii	"STACK_ADDR\000"
.LASF474:
	.ascii	"DWT_CTRL ((volatile uint32*)0xE0001000u)\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF473:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF511:
	.ascii	"TASK_2_PTR 2u\000"
.LASF626:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF667:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF613:
	.ascii	"scheduler_time_t\000"
.LASF524:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF476:
	.ascii	"DWT_LAR ((volatile uint32*)0xE0001FB0u)\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF642:
	.ascii	"STACK_POS\000"
.LASF593:
	.ascii	"wait_act_until\000"
.LASF693:
	.ascii	"scheduling_task\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF689:
	.ascii	"ADD_TO_TASK_QUEUE\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF662:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF544:
	.ascii	"E_FUNC_STARTTASK\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF486:
	.ascii	"_OS_TASK_COMMON_H_ \000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF459:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4u\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4u\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF551:
	.ascii	"E_FUNC_PREEMPT_TASK\000"
.LASF578:
	.ascii	"func_p_t\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF539:
	.ascii	"E_FUNC_SAVETASKENVIRONMENT\000"
.LASF454:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF458:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF580:
	.ascii	"big_int_s\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF525:
	.ascii	"E_OS_BUG_NULL_POINTER\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF153:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF217:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF488:
	.ascii	"TASK_MIN_TIME (1e0)\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF216:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF549:
	.ascii	"E_FUNC_ACTIVATETASK\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF600:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF460:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8u\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF508:
	.ascii	"_OS_TASK_SCHEDULER_H_ \000"
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
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF668:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF499:
	.ascii	"_OS_RAM_H_ \000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF640:
	.ascii	"TASK4_CALL_NR\000"
.LASF703:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF630:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF527:
	.ascii	"E_OS_BUG_TASK_UNSPECIFIED\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF465:
	.ascii	"TRUE 1u\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF481:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF602:
	.ascii	"state_request\000"
.LASF699:
	.ascii	"ASSIGN\000"
.LASF569:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF652:
	.ascii	"TASK_0_VAR\000"
.LASF650:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF653:
	.ascii	"TASK_1_VAR\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF575:
	.ascii	"E_TASK_READY\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF692:
	.ascii	"SET_RUNNING_TASK\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF677:
	.ascii	"OS_INIT_TASK\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF515:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF522:
	.ascii	"uint32\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF598:
	.ascii	"start_time\000"
.LASF588:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF559:
	.ascii	"big_int\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF186:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF501:
	.ascii	"_OS_HEAP_H_ \000"
.LASF669:
	.ascii	"TaskFunction\000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF579:
	.ascii	"func_p_state_change_t\000"
.LASF463:
	.ascii	"_OS_COMMON_H_ \000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF581:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF663:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF444:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF37:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF456:
	.ascii	"HEAP_SIZE 10000u\000"
.LASF155:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF471:
	.ascii	"REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF509:
	.ascii	"TASK_0_PTR 0u\000"
.LASF461:
	.ascii	"OS_STACK_SIZE 0x200u\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF696:
	.ascii	"OS_TASK_STATE_REQUEST\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF543:
	.ascii	"E_FUNC_INITTASKENVIRONMENT\000"
.LASF637:
	.ascii	"TASK1_CALL_NR\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF480:
	.ascii	"PRIVILIGE_LEVEL_SAVE_CURRENT() ;\000"
.LASF664:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF445:
	.ascii	"CPP_VERSION_NONE 0u\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF518:
	.ascii	"short int\000"
.LASF666:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF643:
	.ascii	"STACK_USAGE_PERCENT\000"
.LASF586:
	.ascii	"task_s\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF611:
	.ascii	"task_t\000"
.LASF521:
	.ascii	"long int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF684:
	.ascii	"scheduling_queue_element\000"
.LASF617:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF561:
	.ascii	"coreid_e\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF496:
	.ascii	"OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(tas"
	.ascii	"k_name)] = (task_ptr))\000"
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
.LASF490:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF676:
	.ascii	"GET_RUNNING_TASK\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF621:
	.ascii	"OS_SW_BUG\000"
.LASF469:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF566:
	.ascii	"coreid_t\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF541:
	.ascii	"E_FUNC_CREATETASKENVIRONMENT\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF688:
	.ascii	"DELETE_FROM_TASK_QUEUE\000"
.LASF504:
	.ascii	"_OS_TASK_QUEUE_H_ \000"
.LASF698:
	.ascii	"OS_SET_SW_BUG\000"
.LASF697:
	.ascii	"OS_CREATE_TASK\000"
.LASF568:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF485:
	.ascii	"_LLD_CORE_H_ \000"
.LASF510:
	.ascii	"TASK_1_PTR 1u\000"
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
.LASF555:
	.ascii	"E_FUNC_STACKCHECK\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF670:
	.ascii	"AllowedInstances\000"
.LASF531:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF582:
	.ascii	"number\000"
.LASF45:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF176:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF29:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF556:
	.ascii	"E_FUNC_ISRHANDLER\000"
.LASF639:
	.ascii	"TASK3_CALL_NR\000"
.LASF589:
	.ascii	"idle_task\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF627:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF528:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF616:
	.ascii	"OS_STATE_RUNNING\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF609:
	.ascii	"p_stack_pointer_end\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF520:
	.ascii	"long unsigned int\000"
.LASF472:
	.ascii	"MCU_X86 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF492:
	.ascii	"TASK_STACK_SIZE 2000u\000"
.LASF649:
	.ascii	"RUNNING_TASK\000"
.LASF482:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF607:
	.ascii	"p_stack_pointer_start\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF634:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF591:
	.ascii	"nr_of_ins_allowed\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF553:
	.ascii	"E_FUNC_CREATETASK\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF562:
	.ascii	"E_CORE0\000"
.LASF563:
	.ascii	"E_CORE1\000"
.LASF687:
	.ascii	"GET_FROM_TASK_QUEUE\000"
.LASF536:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF620:
	.ascii	"HEAP\000"
.LASF484:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF448:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF632:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF681:
	.ascii	"Add_successful\000"
.LASF535:
	.ascii	"os_sw_bugs_t\000"
.LASF513:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF457:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF450:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF596:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF622:
	.ascii	"OS_STATE\000"
.LASF455:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF467:
	.ascii	"REJECTED 0u\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF655:
	.ascii	"TASK_3_VAR\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF491:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF601:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF570:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF495:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF583:
	.ascii	"exe_time\000"
.LASF614:
	.ascii	"os_state_e\000"
.LASF574:
	.ascii	"E_TASK_SUSPENDED\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF552:
	.ascii	"E_FUNC_OS_EXCEPTION\000"
.LASF439:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF618:
	.ascii	"os_state_t\000"
.LASF672:
	.ascii	"pStackAddr\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF519:
	.ascii	"unsigned_int32_t\000"
.LASF594:
	.ascii	"wait_time\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
.LASF502:
	.ascii	"_OS_MAIN_H_ \000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF514:
	.ascii	"signed char\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF164:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF532:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF466:
	.ascii	"ACCEPTED 1u\000"
.LASF517:
	.ascii	"short unsigned int\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF585:
	.ascii	"task_group_t\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF619:
	.ascii	"TASK_PTR\000"
.LASF648:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF675:
	.ascii	"GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF550:
	.ascii	"E_FUNC_TASKSTATEREQUEST\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF638:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF691:
	.ascii	"OS_INIT_TASK_QUEUE\000"
.LASF608:
	.ascii	"stack_size\000"
.LASF178:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF221:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF656:
	.ascii	"TASK_GROUP_1\000"
.LASF657:
	.ascii	"TASK_GROUP_2\000"
.LASF658:
	.ascii	"TASK_GROUP_3\000"
.LASF659:
	.ascii	"TASK_GROUP_4\000"
.LASF660:
	.ascii	"TASK_GROUP_5\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF625:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF477:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF671:
	.ascii	"p_task_group\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF612:
	.ascii	"scheduling_t\000"
.LASF683:
	.ascii	"DELETE_FROM_SCHEDULING_QUEUE\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF615:
	.ascii	"OS_STATE_INIT\000"
.LASF446:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF623:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF198:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF165:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
