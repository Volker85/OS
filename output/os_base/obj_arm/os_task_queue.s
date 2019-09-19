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
@ GNU C89 (GNU Tools for Arm Embedded Processors 8-2019-q3-update) version 8.3.1 20190703 (release) [gcc-8-branch revision 273027] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m/nofp
@ -iprefix c:\program files (x86)\gnu tools arm embedded\8 2019-q3-update\bin\../lib/gcc/arm-none-eabi/8.3.1/
@ -isysroot c:\program files (x86)\gnu tools arm embedded\8 2019-q3-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c
@ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -march=armv7e-m
@ -auxbase-strip C:\Users\president\Desktop\sbx\output\os_base\obj_arm\os_task_queue.s
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
@ -fleading-underscore -flifetime-dse -floop-interchange
@ -floop-unroll-and-jam -flra-remat -flto-odr-type-merging -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
@ -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
@ -fpredictive-commoning -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
@ -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
@ -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
@ -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
@ -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
@ -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -masm-syntax-unified -mbe32 -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -mthumb -munaligned-access
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.p2align 2,,3
	.global	SET_RUNNING_TASK
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SET_RUNNING_TASK, %function
SET_RUNNING_TASK:
.LVL0:
.LFB0:
	.file 1 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_queue.c"
	.loc 1 34 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 35 4 view .LVU1
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:35:    RUNNING_SCHEDULING_QUEUE_ENTRY = scheduling_task;
	.loc 1 35 35 is_stmt 0 view .LVU2
	ldr	r3, .L11	@ tmp149,
	str	r1, [r3]	@ scheduling_task, RUNNING_SCHEDULING_QUEUE_ENTRY
	.loc 1 36 4 is_stmt 1 view .LVU3
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:36:    if(task != NULL)
	.loc 1 36 6 is_stmt 0 view .LVU4
	cmp	r0, #0	@ task
	beq	.L7	@
	.loc 1 38 7 is_stmt 1 view .LVU5
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:34: {
	.loc 1 34 1 is_stmt 0 view .LVU6
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 63 view .LVU7
	ldr	r7, .L11+4	@ tmp154,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 69 view .LVU8
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 63 view .LVU9
	ldrb	r3, [r7]	@ zero_extendqisi2	@, RUNNING_TASK[0].active
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0u])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 43 69 view .LVU10
	ldrb	r5, [r0, #5]	@ zero_extendqisi2	@ _6, task_42(D)->nr_of_ins_activated
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:38:       (&RUNNING_TASK[0u])->active                             = task->active;
	.loc 1 38 63 view .LVU11
	bfi	r3, r2, #0, #1	@ RUNNING_TASK[0].active, *task_42(D),,
	strb	r3, [r7]	@ RUNNING_TASK[0].active, RUNNING_TASK[0].active
	.loc 1 39 7 is_stmt 1 view .LVU12
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
	.loc 1 39 69 is_stmt 0 view .LVU13
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
	.loc 1 39 63 view .LVU14
	ldrb	r2, [r7]	@ zero_extendqisi2	@, RUNNING_TASK[0].task_queued
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
	.loc 1 39 69 view .LVU15
	ubfx	r3, r3, #1, #1	@ _2, *task_42(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:39:       (&RUNNING_TASK[0u])->task_queued                        = task->task_queued;
	.loc 1 39 63 view .LVU16
	bfi	r2, r3, #1, #1	@ RUNNING_TASK[0].task_queued, _2,,
	strb	r2, [r7]	@ RUNNING_TASK[0].task_queued, RUNNING_TASK[0].task_queued
	.loc 1 40 7 is_stmt 1 view .LVU17
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
	.loc 1 40 69 is_stmt 0 view .LVU18
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_42(D), *task_42(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
	.loc 1 40 63 view .LVU19
	uxtb	r2, r2	@ tmp169, RUNNING_TASK[0].task_queued
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
	.loc 1 40 69 view .LVU20
	ubfx	r3, r3, #2, #1	@ _3, *task_42(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:40:       (&RUNNING_TASK[0u])->idle_task                          = task->idle_task;
	.loc 1 40 63 view .LVU21
	bfi	r2, r3, #2, #1	@ RUNNING_TASK[0].idle_task, _3,,
	strb	r2, [r7]	@ RUNNING_TASK[0].idle_task, RUNNING_TASK[0].idle_task
	.loc 1 41 7 is_stmt 1 view .LVU22
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0u])->free                               = task->free;
	.loc 1 41 69 is_stmt 0 view .LVU23
	ldr	r3, [r0]	@ *task_42(D), *task_42(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0u])->free                               = task->free;
	.loc 1 41 63 view .LVU24
	ldr	r2, [r7]	@ RUNNING_TASK[0].free, RUNNING_TASK[0].free
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0u])->free                               = task->free;
	.loc 1 41 69 view .LVU25
	ubfx	r3, r3, #3, #29	@ _4, *task_42(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:41:       (&RUNNING_TASK[0u])->free                               = task->free;
	.loc 1 41 63 view .LVU26
	bfi	r2, r3, #3, #29	@ RUNNING_TASK[0].free, _4,,
	mov	r4, r0	@ task, task
	str	r2, [r7]	@ RUNNING_TASK[0].free, RUNNING_TASK[0].free
	.loc 1 42 7 is_stmt 1 view .LVU27
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:34: {
	.loc 1 34 1 is_stmt 0 view .LVU28
	sub	sp, sp, #12	@,,
	.cfi_def_cfa_offset 32
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0u])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 42 69 view .LVU29
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ _5, task_42(D)->nr_of_ins_allowed
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:42:       (&RUNNING_TASK[0u])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 42 63 view .LVU30
	strb	r3, [r7, #4]	@ _5, RUNNING_TASK[0].nr_of_ins_allowed
	.loc 1 43 7 is_stmt 1 view .LVU31
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:44:       ASSIGN(&(&RUNNING_TASK[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 44 7 is_stmt 0 view .LVU32
	adds	r0, r7, #6	@, tmp154,
.LVL1:
	.loc 1 44 7 view .LVU33
	adds	r1, r4, #6	@, task,
.LVL2:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:43:       (&RUNNING_TASK[0u])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 43 63 view .LVU34
	strb	r5, [r7, #5]	@ _6, RUNNING_TASK[0].nr_of_ins_activated
	.loc 1 44 7 is_stmt 1 view .LVU35
	bl	ASSIGN		@
.LVL3:
	.loc 1 45 7 view .LVU36
	add	r0, r7, #22	@, tmp154,
	add	r1, r4, #22	@, task,
	bl	ASSIGN		@
.LVL4:
	.loc 1 46 7 view .LVU37
	add	r0, r7, #38	@, tmp154,
	add	r1, r4, #38	@, task,
	bl	ASSIGN		@
.LVL5:
	.loc 1 47 7 view .LVU38
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0u])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 66 is_stmt 0 view .LVU39
	ldr	r3, [r4, #56]	@ _10, task_42(D)->overwaittime_per_prio_inc_step
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:47:       (&RUNNING_TASK[0u])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 47 60 view .LVU40
	str	r3, [r7, #56]	@ _10, RUNNING_TASK[0].overwaittime_per_prio_inc_step
	.loc 1 48 7 is_stmt 1 view .LVU41
	add	r0, r7, #60	@, tmp154,
	add	r1, r4, #60	@, task,
	bl	ASSIGN		@
.LVL6:
	.loc 1 49 7 view .LVU42
	add	r0, r7, #76	@, tmp154,
	add	r1, r4, #76	@, task,
	bl	ASSIGN		@
.LVL7:
	.loc 1 50 7 view .LVU43
	add	r0, r7, #92	@, tmp154,
	add	r1, r4, #92	@, task,
	bl	ASSIGN		@
.LVL8:
	.loc 1 51 7 view .LVU44
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:53:       (&RUNNING_TASK[0u])->fp                              = task->fp;
	.loc 1 53 66 is_stmt 0 view .LVU45
	ldrd	r1, r2, [r4, #116]	@ vect__16.6, vect__16.7, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0u])->task_group                      = task->task_group;
	.loc 1 56 66 view .LVU46
	ldr	r3, [r4, #128]	@ _19, task_42(D)->task_group
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0u])->current_prio                    = task->current_prio;
	.loc 1 51 66 view .LVU47
	ldrb	r5, [r4, #108]	@ zero_extendqisi2	@ _14, task_42(D)->current_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0u])->default_prio                    = task->default_prio;
	.loc 1 52 66 view .LVU48
	ldrb	r0, [r4, #109]	@ zero_extendqisi2	@ _15, task_42(D)->default_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0u])->task_state                      = task->task_state;
	.loc 1 55 66 view .LVU49
	ldrb	ip, [r4, #124]	@ zero_extendqisi2	@ _18, task_42(D)->task_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:56:       (&RUNNING_TASK[0u])->task_group                      = task->task_group;
	.loc 1 56 60 view .LVU50
	str	r3, [r7, #128]	@ _19, RUNNING_TASK[0].task_group
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 65 view .LVU51
	ldr	r3, [r4, #156]	@ vect__20.18, MEM[(long unsigned int *)task_42(D) + 156B]
	ldr	r6, [r4, #136]	@ vect__20.13, MEM[(long unsigned int *)task_42(D) + 136B]
	str	r3, [sp, #4]	@ vect__20.18, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 view .LVU52
	ldr	r3, [r4, #132]	@ tmp219, MEM[(long unsigned int *)task_42(D) + 132B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:53:       (&RUNNING_TASK[0u])->fp                              = task->fp;
	.loc 1 53 60 view .LVU53
	str	r1, [r7, #116]	@ vect__16.6, MEM[(void *)&RUNNING_TASK + 116B]
	str	r2, [r7, #120]	@ vect__16.7, MEM[(void *)&RUNNING_TASK + 120B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 65 view .LVU54
	ldr	r1, [r4, #148]	@ vect__20.16, MEM[(long unsigned int *)task_42(D) + 148B]
	ldr	r2, [r4, #152]	@ vect__20.17, MEM[(long unsigned int *)task_42(D) + 152B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:51:       (&RUNNING_TASK[0u])->current_prio                    = task->current_prio;
	.loc 1 51 60 view .LVU55
	strb	r5, [r7, #108]	@ _14, RUNNING_TASK[0].current_prio
	.loc 1 52 7 is_stmt 1 view .LVU56
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 is_stmt 0 view .LVU57
	strd	r3, r6, [r7, #132]	@ tmp219, vect__20.13, tmp154,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 65 view .LVU58
	ldr	r5, [r4, #140]	@ vect__20.14, MEM[(long unsigned int *)task_42(D) + 140B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 view .LVU59
	ldr	r3, [sp, #4]	@ vect__20.18, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:52:       (&RUNNING_TASK[0u])->default_prio                    = task->default_prio;
	.loc 1 52 60 view .LVU60
	strb	r0, [r7, #109]	@ _15, RUNNING_TASK[0].default_prio
	.loc 1 53 7 is_stmt 1 view .LVU61
	.loc 1 54 7 view .LVU62
	.loc 1 55 7 view .LVU63
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 65 is_stmt 0 view .LVU64
	ldr	r0, [r4, #144]	@ vect__20.15, MEM[(long unsigned int *)task_42(D) + 144B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 view .LVU65
	str	r3, [r7, #156]	@ vect__20.18, MEM[(long unsigned int *)&RUNNING_TASK + 156B]
	strd	r1, r2, [r7, #148]	@ vect__20.16, vect__20.17, tmp154,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 65 view .LVU66
	ldrd	r2, r3, [r4, #172]	@ vect__20.22, vect__20.23, task,
	ldr	r1, [r4, #164]	@ vect__20.20, MEM[(long unsigned int *)task_42(D) + 164B]
	ldr	r6, [r4, #180]	@ vect__20.24, MEM[(long unsigned int *)task_42(D) + 180B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:55:       (&RUNNING_TASK[0u])->task_state                      = task->task_state;
	.loc 1 55 60 view .LVU67
	strb	ip, [r7, #124]	@ _18, RUNNING_TASK[0].task_state
	.loc 1 56 7 is_stmt 1 view .LVU68
	.loc 1 63 7 view .LVU69
	.loc 1 64 7 view .LVU70
	.loc 1 65 7 view .LVU71
	.loc 1 66 7 view .LVU72
	.loc 1 67 7 view .LVU73
	.loc 1 68 7 view .LVU74
	.loc 1 69 7 view .LVU75
	.loc 1 70 7 view .LVU76
	.loc 1 71 7 view .LVU77
	.loc 1 72 7 view .LVU78
	.loc 1 73 7 view .LVU79
	.loc 1 74 7 view .LVU80
	.loc 1 75 7 view .LVU81
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 is_stmt 0 view .LVU82
	strd	r5, r0, [r7, #140]	@ vect__20.14, vect__20.15, tmp154,
	ldr	r0, [r4, #160]	@ tmp220, MEM[(long unsigned int *)task_42(D) + 160B]
	str	r1, [r7, #164]	@ vect__20.20, MEM[(long unsigned int *)&RUNNING_TASK + 164B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:78:       (&RUNNING_TASK[0u])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 78 68 view .LVU83
	ldr	r1, [r4, #192]	@ vect__33.31, MEM[(unsigned_char_t * *)task_42(D) + 192B]
	str	r1, [sp, #4]	@ vect__33.31, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 view .LVU84
	str	r0, [r7, #160]	@ tmp220, MEM[(long unsigned int *)&RUNNING_TASK + 160B]
	ldr	r1, [r4, #168]	@ tmp221, MEM[(long unsigned int *)task_42(D) + 168B]
	str	r1, [r7, #168]	@ tmp221, MEM[(long unsigned int *)&RUNNING_TASK + 168B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:78:       (&RUNNING_TASK[0u])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 78 68 view .LVU85
	ldrd	r5, r0, [r4, #184]	@ vect__33.29, vect__33.30, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:81:       (&RUNNING_TASK[0u])->stack_size                       = task->stack_size;
	.loc 1 81 67 view .LVU86
	ldr	r1, [r4, #196]	@ tmp222, task_42(D)->stack_size
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0u])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 82 69 view .LVU87
	ldr	r4, [r4, #200]	@ _37, task_42(D)->p_stack_pointer_end
.LVL9:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:81:       (&RUNNING_TASK[0u])->stack_size                       = task->stack_size;
	.loc 1 81 67 view .LVU88
	str	r1, [r7, #196]	@ tmp222, RUNNING_TASK[0].stack_size
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:63:       (&RUNNING_TASK[0u])->r0                             = task->r0;
	.loc 1 63 59 view .LVU89
	strd	r2, r3, [r7, #172]	@ vect__20.22, vect__20.23, tmp154,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:78:       (&RUNNING_TASK[0u])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 78 62 view .LVU90
	ldr	r3, [sp, #4]	@ vect__33.31, %sfp
	str	r0, [r7, #188]	@ vect__33.30, MEM[(unsigned_char_t * *)&RUNNING_TASK + 188B]
	strd	r6, r5, [r7, #180]	@ vect__20.24, vect__33.29, tmp154,
	str	r3, [r7, #192]	@ vect__33.31, MEM[(unsigned_char_t * *)&RUNNING_TASK + 192B]
	.loc 1 81 7 is_stmt 1 view .LVU91
	.loc 1 82 7 view .LVU92
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:82:       (&RUNNING_TASK[0u])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 82 63 is_stmt 0 view .LVU93
	str	r4, [r7, #200]	@ _37, RUNNING_TASK[0].p_stack_pointer_end
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:84: }
	.loc 1 84 1 view .LVU94
	add	sp, sp, #12	@,,
	.cfi_def_cfa_offset 20
	@ sp needed	@
	pop	{r4, r5, r6, r7, pc}	@
.LVL10:
.L7:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
	.loc 1 84 1 view .LVU95
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
	.loc 1 88 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 89 4 view .LVU97
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:88: {
	.loc 1 88 1 is_stmt 0 view .LVU98
	push	{r4, r5, r6, r7, r8, lr}	@
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:89:    if(bTASK_QUEUE_INITIALIZED == FALSE)
	.loc 1 89 31 view .LVU99
	ldr	r8, .L18+8	@ tmp122,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:89:    if(bTASK_QUEUE_INITIALIZED == FALSE)
	.loc 1 89 6 view .LVU100
	ldrb	r6, [r8]	@ zero_extendqisi2	@ bTASK_QUEUE_INITIALIZED, bTASK_QUEUE_INITIALIZED
	cbnz	r6, .L13	@ bTASK_QUEUE_INITIALIZED,
	ldr	r4, .L18	@ ivtmp.42,
	ldr	r5, .L18+4	@ ivtmp.43,
	add	r7, r4, #40	@ _24, ivtmp.42,
.L15:
.LBB2:
	.loc 1 94 10 is_stmt 1 view .LVU101
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:94:          TASK_SCHEDULING_QUEUE[element_nr] = (scheduling_t)0u;
	.loc 1 94 44 is_stmt 0 view .LVU102
	str	r6, [r4], #4	@ tmp118, MEM[base: _19, offset: 0B]
	.loc 1 95 10 is_stmt 1 view .LVU103
	mov	r0, r5	@, ivtmp.43
	bl	OS_TASK_INIT_TASK_ENVIRONMENT		@
.LVL11:
	.loc 1 96 10 view .LVU104
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:92:       while(element_nr < MAX_RUN_QUEUE_SIZE)
	.loc 1 92 12 is_stmt 0 view .LVU105
	cmp	r4, r7	@ ivtmp.42, _24
	add	r5, r5, #208	@ ivtmp.43, ivtmp.43,
	bne	.L15		@,
	.loc 1 98 7 is_stmt 1 view .LVU106
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:98:       bTASK_QUEUE_INITIALIZED = TRUE;
	.loc 1 98 31 is_stmt 0 view .LVU107
	movs	r3, #1	@ tmp120,
	strb	r3, [r8]	@ tmp120, bTASK_QUEUE_INITIALIZED
.L13:
	.loc 1 98 31 view .LVU108
.LBE2:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:100: }
	.loc 1 100 1 view .LVU109
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
.LVL12:
.LFB2:
	.loc 1 102 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 103 4 view .LVU111
	.loc 1 104 4 view .LVU112
	.loc 1 106 4 view .LVU113
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:102: {
	.loc 1 102 1 is_stmt 0 view .LVU114
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 view .LVU115
	ldr	r5, .L34	@ tmp361,
	ldrb	r3, [r5]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU116
	ubfx	r3, r3, #1, #1	@ tmp181, TASK_RUN_QUEUE,,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:102: {
	.loc 1 102 1 view .LVU117
	sub	sp, sp, #28	@,,
	.cfi_def_cfa_offset 64
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU118
	cmp	r3, #0	@ tmp181
	beq	.L23	@
	.loc 1 110 7 is_stmt 1 view .LVU119
.LVL13:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU120
	ldrb	r2, [r5, #208]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU121
	lsls	r1, r2, #30	@, TASK_RUN_QUEUE,
	bpl	.L21		@,
	.loc 1 110 7 is_stmt 1 view .LVU122
.LVL14:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU123
	ldrb	r3, [r5, #416]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU124
	lsls	r2, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L25		@,
	.loc 1 110 7 is_stmt 1 view .LVU125
.LVL15:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU126
	ldrb	r3, [r5, #624]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU127
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L26		@,
	.loc 1 110 7 is_stmt 1 view .LVU128
.LVL16:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU129
	ldrb	r3, [r5, #832]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU130
	lsls	r7, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L27		@,
	.loc 1 110 7 is_stmt 1 view .LVU131
.LVL17:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU132
	ldrb	r3, [r5, #1040]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU133
	lsls	r6, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L28		@,
	.loc 1 110 7 is_stmt 1 view .LVU134
.LVL18:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU135
	ldrb	r3, [r5, #1248]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU136
	lsls	r4, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L29		@,
	.loc 1 110 7 is_stmt 1 view .LVU137
.LVL19:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU138
	ldrb	r3, [r5, #1456]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU139
	lsls	r1, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L30		@,
	.loc 1 110 7 is_stmt 1 view .LVU140
.LVL20:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU141
	ldrb	r3, [r5, #1664]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU142
	lsls	r2, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L31		@,
	.loc 1 110 7 is_stmt 1 view .LVU143
.LVL21:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 is_stmt 0 view .LVU144
	ldrb	r3, [r5, #1872]	@ zero_extendqisi2	@ TASK_RUN_QUEUE, TASK_RUN_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 11 view .LVU145
	lsls	r3, r3, #30	@, TASK_RUN_QUEUE,
	bpl	.L32		@,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:104:    task_t* ret_task = 0u;
	.loc 1 104 12 view .LVU146
	movs	r0, #0	@ <retval>,
.LVL22:
	.loc 1 161 4 is_stmt 1 view .LVU147
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 1 is_stmt 0 view .LVU148
	add	sp, sp, #28	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL23:
.L29:
	.cfi_restore_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 view .LVU149
	movs	r3, #6	@ _119,
.LVL24:
.L21:
	.loc 1 113 4 is_stmt 1 view .LVU150
	.loc 1 115 7 view .LVU151
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 70 is_stmt 0 view .LVU152
	movs	r7, #208	@ tmp243,
	mul	r7, r7, r3	@ tmp242, tmp243, _119
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 76 view .LVU153
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_53(D), *task_53(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 70 view .LVU154
	ldrb	r3, [r5, r7]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_119].active
	bfi	r3, r2, #0, #1	@ TASK_RUN_QUEUE[_119].active, *task_53(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:116:       (&TASK_RUN_QUEUE[element_nr])->task_queued                     = TRUE;
	.loc 1 116 70 view .LVU155
	orr	r3, r3, #2	@ tmp253, TASK_RUN_QUEUE[_119].active,
	strb	r3, [r5, r7]	@ tmp253, TASK_RUN_QUEUE[_119].task_queued
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
	.loc 1 117 77 view .LVU156
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_53(D), *task_53(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
	.loc 1 117 71 view .LVU157
	ldrb	r2, [r5, r7]	@ zero_extendqisi2	@, TASK_RUN_QUEUE[_119].idle_task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
	.loc 1 117 77 view .LVU158
	ubfx	r3, r3, #2, #1	@ _7, *task_53(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:117:       (&TASK_RUN_QUEUE[element_nr])->idle_task                        = task->idle_task;
	.loc 1 117 71 view .LVU159
	bfi	r2, r3, #2, #1	@ TASK_RUN_QUEUE[_119].idle_task, _7,,
	strb	r2, [r5, r7]	@ TASK_RUN_QUEUE[_119].idle_task, TASK_RUN_QUEUE[_119].idle_task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
	.loc 1 118 76 view .LVU160
	ldr	r3, [r0]	@ *task_53(D), *task_53(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
	.loc 1 118 70 view .LVU161
	ldr	r2, [r5, r7]	@ TASK_RUN_QUEUE[_119].free, TASK_RUN_QUEUE[_119].free
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
	.loc 1 118 76 view .LVU162
	ubfx	r3, r3, #3, #29	@ _8, *task_53(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:118:       (&TASK_RUN_QUEUE[element_nr])->free                            = task->free;
	.loc 1 118 70 view .LVU163
	bfi	r2, r3, #3, #29	@ TASK_RUN_QUEUE[_119].free, _8,,
	str	r2, [r5, r7]	@ TASK_RUN_QUEUE[_119].free, TASK_RUN_QUEUE[_119].free
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:115:       (&TASK_RUN_QUEUE[element_nr])->active                          = task->active;
	.loc 1 115 70 view .LVU164
	adds	r6, r5, r7	@ tmp244, tmp361, tmp242
	.loc 1 116 7 is_stmt 1 view .LVU165
	.loc 1 117 7 view .LVU166
	.loc 1 118 7 view .LVU167
	.loc 1 119 7 view .LVU168
	mov	r4, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:119:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 119 79 is_stmt 0 view .LVU169
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ _9, task_53(D)->nr_of_ins_allowed
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:119:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_allowed                  = task->nr_of_ins_allowed;
	.loc 1 119 73 view .LVU170
	strb	r3, [r6, #4]	@ _9, TASK_RUN_QUEUE[_119].nr_of_ins_allowed
	.loc 1 120 7 is_stmt 1 view .LVU171
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:120:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 120 79 is_stmt 0 view .LVU172
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ _10, task_53(D)->nr_of_ins_activated
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:120:       (&TASK_RUN_QUEUE[element_nr])->nr_of_ins_activated                = task->nr_of_ins_activated;
	.loc 1 120 73 view .LVU173
	strb	r3, [r6, #5]	@ _10, TASK_RUN_QUEUE[_119].nr_of_ins_activated
	.loc 1 121 7 is_stmt 1 view .LVU174
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:121:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_act_until, &task->wait_act_until);
	.loc 1 121 14 is_stmt 0 view .LVU175
	adds	r0, r7, #6	@ tmp285, tmp242,
.LVL25:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:121:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_act_until, &task->wait_act_until);
	.loc 1 121 7 view .LVU176
	add	r0, r0, r5	@, tmp361
	adds	r1, r4, #6	@, task,
	bl	ASSIGN		@
.LVL26:
	.loc 1 122 7 is_stmt 1 view .LVU177
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:122:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_time, &task->wait_time);
	.loc 1 122 14 is_stmt 0 view .LVU178
	add	r0, r7, #22	@ tmp289, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:122:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->wait_time, &task->wait_time);
	.loc 1 122 7 view .LVU179
	add	r0, r0, r5	@, tmp361
	add	r1, r4, #22	@, task,
	bl	ASSIGN		@
.LVL27:
	.loc 1 123 7 is_stmt 1 view .LVU180
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:123:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->time_to_prio_inc, &task->time_to_prio_inc);
	.loc 1 123 14 is_stmt 0 view .LVU181
	add	r0, r7, #38	@ tmp293, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:123:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->time_to_prio_inc, &task->time_to_prio_inc);
	.loc 1 123 7 view .LVU182
	add	r0, r0, r5	@, tmp361
	add	r1, r4, #38	@, task,
	bl	ASSIGN		@
.LVL28:
	.loc 1 124 7 is_stmt 1 view .LVU183
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:124:       (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 124 76 is_stmt 0 view .LVU184
	ldr	r3, [r4, #56]	@ _17, task_53(D)->overwaittime_per_prio_inc_step
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:124:       (&TASK_RUN_QUEUE[element_nr])->overwaittime_per_prio_inc_step  = task->overwaittime_per_prio_inc_step;
	.loc 1 124 70 view .LVU185
	str	r3, [r6, #56]	@ _17, TASK_RUN_QUEUE[_119].overwaittime_per_prio_inc_step
	.loc 1 125 7 is_stmt 1 view .LVU186
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:125:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time, &task->max_allowed_wait_time);
	.loc 1 125 14 is_stmt 0 view .LVU187
	add	r0, r7, #60	@ tmp302, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:125:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->max_allowed_wait_time, &task->max_allowed_wait_time);
	.loc 1 125 7 view .LVU188
	add	r0, r0, r5	@, tmp361
	add	r1, r4, #60	@, task,
	bl	ASSIGN		@
.LVL29:
	.loc 1 126 7 is_stmt 1 view .LVU189
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:126:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->exe_time, &task->exe_time   );
	.loc 1 126 14 is_stmt 0 view .LVU190
	add	r0, r7, #76	@ tmp306, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:126:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->exe_time, &task->exe_time   );
	.loc 1 126 7 view .LVU191
	add	r0, r0, r5	@, tmp361
	add	r1, r4, #76	@, task,
	bl	ASSIGN		@
.LVL30:
	.loc 1 127 7 is_stmt 1 view .LVU192
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:127:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->start_time, &task->start_time );
	.loc 1 127 14 is_stmt 0 view .LVU193
	add	r0, r7, #92	@ tmp310, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:127:       ASSIGN(&(&TASK_RUN_QUEUE[element_nr])->start_time, &task->start_time );
	.loc 1 127 7 view .LVU194
	add	r0, r0, r5	@, tmp361
	add	r1, r4, #92	@, task,
	bl	ASSIGN		@
.LVL31:
	.loc 1 128 7 is_stmt 1 view .LVU195
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:128:       (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
	.loc 1 128 76 is_stmt 0 view .LVU196
	ldrb	r3, [r4, #108]	@ zero_extendqisi2	@ _24, task_53(D)->current_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:128:       (&TASK_RUN_QUEUE[element_nr])->current_prio                    = task->current_prio;
	.loc 1 128 70 view .LVU197
	strb	r3, [r6, #108]	@ _24, TASK_RUN_QUEUE[_119].current_prio
	.loc 1 129 7 is_stmt 1 view .LVU198
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:129:       (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
	.loc 1 129 76 is_stmt 0 view .LVU199
	ldrb	r3, [r4, #109]	@ zero_extendqisi2	@ _25, task_53(D)->default_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:129:       (&TASK_RUN_QUEUE[element_nr])->default_prio                    = task->default_prio;
	.loc 1 129 70 view .LVU200
	strb	r3, [r6, #109]	@ _25, TASK_RUN_QUEUE[_119].default_prio
	.loc 1 130 7 is_stmt 1 view .LVU201
	.loc 1 131 7 view .LVU202
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:130:       (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
	.loc 1 130 76 is_stmt 0 view .LVU203
	ldrd	r2, r0, [r4, #116]	@ vect__26.47, vect__26.48, task,
	add	r3, r7, #112	@ tmp327, tmp242,
	add	r3, r3, r5	@ tmp328, tmp361
	add	r1, r7, #128	@ tmp343, tmp242,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:130:       (&TASK_RUN_QUEUE[element_nr])->fp                              = task->fp;
	.loc 1 130 70 view .LVU204
	str	r2, [r3, #4]	@ vect__26.47, MEM[(void *)vectp.50_143]
	str	r0, [r3, #8]	@ vect__26.48, MEM[(void *)vectp.50_143 + 4B]
	.loc 1 132 7 is_stmt 1 view .LVU205
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:133:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 133 76 is_stmt 0 view .LVU206
	ldr	r0, [r4, #128]	@ _29, task_53(D)->task_group
	str	r0, [sp]	@ _29, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 75 view .LVU207
	ldrd	r9, r0, [r4, #140]	@ vect__30.55, vect__30.56, task,
	str	r0, [sp, #4]	@ vect__30.56, %sfp
	ldr	r0, [r4, #148]	@ vect__30.57, MEM[(long unsigned int *)task_53(D) + 148B]
	str	r0, [sp, #8]	@ vect__30.57, %sfp
	ldr	r0, [r4, #152]	@ vect__30.58, MEM[(long unsigned int *)task_53(D) + 152B]
	str	r0, [sp, #12]	@ vect__30.58, %sfp
	ldr	r0, [r4, #156]	@ vect__30.59, MEM[(long unsigned int *)task_53(D) + 156B]
	str	r0, [sp, #16]	@ vect__30.59, %sfp
	ldr	r0, [r4, #160]	@ vect__30.60, MEM[(long unsigned int *)task_53(D) + 160B]
	str	r0, [sp, #20]	@ vect__30.60, %sfp
	add	r1, r1, r5	@ tmp344, tmp361
	ldrd	fp, r10, [r4, #132]	@ vect__30.53, vect__30.54, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:133:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 133 70 view .LVU208
	ldr	r0, [sp]	@ _29, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 76 view .LVU209
	ldrb	r3, [r4, #124]	@ zero_extendqisi2	@ _28, task_53(D)->task_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:133:       (&TASK_RUN_QUEUE[element_nr])->task_group                      = task->task_group;
	.loc 1 133 70 view .LVU210
	str	r0, [r6, #128]	@ _29, TASK_RUN_QUEUE[_119].task_group
	adds	r2, r1, #4	@ vectp.67, tmp344,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 75 view .LVU211
	ldr	r0, [r4, #180]	@ vect__30.65, MEM[(long unsigned int *)task_53(D) + 180B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:132:       (&TASK_RUN_QUEUE[element_nr])->task_state                      = task->task_state;
	.loc 1 132 70 view .LVU212
	strb	r3, [r6, #124]	@ _28, TASK_RUN_QUEUE[_119].task_state
	.loc 1 133 7 is_stmt 1 view .LVU213
	.loc 1 140 7 view .LVU214
	.loc 1 141 7 view .LVU215
	.loc 1 142 7 view .LVU216
	.loc 1 143 7 view .LVU217
	.loc 1 144 7 view .LVU218
	.loc 1 145 7 view .LVU219
	.loc 1 146 7 view .LVU220
	.loc 1 147 7 view .LVU221
	.loc 1 148 7 view .LVU222
	.loc 1 149 7 view .LVU223
	.loc 1 150 7 view .LVU224
	.loc 1 151 7 view .LVU225
	.loc 1 152 7 view .LVU226
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 75 is_stmt 0 view .LVU227
	ldrd	r8, lr, [r4, #164]	@ vect__30.61, vect__30.62, task,
	add	r3, r7, #184	@ tmp348, tmp242,
	ldrd	ip, r7, [r4, #172]	@ vect__30.63, vect__30.64, task,
	str	r0, [sp]	@ vect__30.65, %sfp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 69 view .LVU228
	ldr	r0, [sp, #4]	@ vect__30.56, %sfp
	str	fp, [r1, #4]	@ vect__30.53, MEM[(long unsigned int *)vectp.67_168]
	str	r0, [r2, #12]	@ vect__30.56, MEM[(long unsigned int *)vectp.67_168 + 12B]
	ldr	r0, [sp, #8]	@ vect__30.57, %sfp
	str	r0, [r2, #16]	@ vect__30.57, MEM[(long unsigned int *)vectp.67_168 + 16B]
	ldr	r0, [sp, #12]	@ vect__30.58, %sfp
	str	r0, [r2, #20]	@ vect__30.58, MEM[(long unsigned int *)vectp.67_168 + 20B]
	ldr	r0, [sp, #16]	@ vect__30.59, %sfp
	str	r0, [r2, #24]	@ vect__30.59, MEM[(long unsigned int *)vectp.67_168 + 24B]
	ldr	r0, [sp, #20]	@ vect__30.60, %sfp
	str	r0, [r2, #28]	@ vect__30.60, MEM[(long unsigned int *)vectp.67_168 + 28B]
	ldr	r0, [sp]	@ vect__30.65, %sfp
	strd	r10, r9, [r2, #4]	@ vect__30.54, vect__30.55, vectp.67,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 154 78 view .LVU229
	ldr	r9, [r4, #184]	@ vect__43.70, MEM[(unsigned_char_t * *)task_53(D) + 184B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 69 view .LVU230
	str	r0, [r2, #48]	@ vect__30.65, MEM[(long unsigned int *)vectp.67_168 + 48B]
	.loc 1 154 7 is_stmt 1 view .LVU231
	.loc 1 155 7 view .LVU232
	.loc 1 156 7 view .LVU233
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:140:       (&TASK_RUN_QUEUE[element_nr])->r0                             = task->r0;
	.loc 1 140 69 is_stmt 0 view .LVU234
	strd	r8, lr, [r2, #32]	@ vect__30.61, vect__30.62, vectp.67,
	strd	ip, r7, [r2, #40]	@ vect__30.63, vect__30.64, vectp.67,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 154 78 view .LVU235
	ldrd	r0, r2, [r4, #188]	@ vect__43.71, vect__43.72, task,
	adds	r1, r5, r3	@ vectp.74, tmp361, tmp348
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:154:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer                   = task->p_stack_pointer;
	.loc 1 154 72 view .LVU236
	str	r9, [r5, r3]	@ vect__43.70, MEM[(unsigned_char_t * *)vectp.74_200]
	strd	r0, r2, [r1, #4]	@ vect__43.71, vect__43.72, vectp.74,
	.loc 1 157 7 is_stmt 1 view .LVU237
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:158:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 158 79 is_stmt 0 view .LVU238
	ldrd	r2, r3, [r4, #196]	@ _46, _47, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:159:       ret_task = &TASK_RUN_QUEUE[element_nr];
	.loc 1 159 16 view .LVU239
	mov	r0, r6	@ <retval>, tmp244
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:158:       (&TASK_RUN_QUEUE[element_nr])->p_stack_pointer_end                = task->p_stack_pointer_end;
	.loc 1 158 73 view .LVU240
	strd	r2, r3, [r6, #196]	@ _46, _47, tmp244,
	.loc 1 159 7 is_stmt 1 view .LVU241
.LVL32:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:162: }
	.loc 1 162 1 is_stmt 0 view .LVU242
	add	sp, sp, #28	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL33:
.L23:
	.cfi_restore_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:107:           &&((&TASK_RUN_QUEUE[element_nr])->task_queued == TRUE)
	.loc 1 107 43 view .LVU243
	movs	r3, #0	@ _119,
	b	.L21		@
.LVL34:
.L25:
	.loc 1 107 43 view .LVU244
	movs	r3, #2	@ _119,
	b	.L21		@
.LVL35:
.L26:
	.loc 1 107 43 view .LVU245
	movs	r3, #3	@ _119,
	b	.L21		@
.LVL36:
.L27:
	.loc 1 107 43 view .LVU246
	movs	r3, #4	@ _119,
	b	.L21		@
.LVL37:
.L28:
	.loc 1 107 43 view .LVU247
	movs	r3, #5	@ _119,
	b	.L21		@
.LVL38:
.L30:
	.loc 1 107 43 view .LVU248
	movs	r3, #7	@ _119,
	b	.L21		@
.LVL39:
.L31:
	.loc 1 107 43 view .LVU249
	movs	r3, #8	@ _119,
	b	.L21		@
.LVL40:
.L32:
	.loc 1 107 43 view .LVU250
	movs	r3, #9	@ _119,
	b	.L21		@
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
.LVL41:
.LFB3:
	.loc 1 164 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 165 4 view .LVU252
	.loc 1 166 4 view .LVU253
	.loc 1 167 4 view .LVU254
	.loc 1 168 4 view .LVU255
	.loc 1 169 4 view .LVU256
	.loc 1 170 4 view .LVU257
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:164: {
	.loc 1 164 1 is_stmt 0 view .LVU258
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:165:    task->active                                =   FALSE   ;
	.loc 1 165 48 view .LVU259
	movs	r5, #0	@ tmp117,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:164: {
	.loc 1 164 1 view .LVU260
	mov	r4, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:165:    task->active                                =   FALSE   ;
	.loc 1 165 48 view .LVU261
	str	r5, [r0]	@ tmp117, MEM[(struct task_t *)task_8(D)]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:169:    task->nr_of_ins_allowed                        =   0u       ;
	.loc 1 169 51 view .LVU262
	strh	r5, [r0, #4]	@ movhi	@ tmp117, MEM[(unsigned char *)task_8(D) + 4B]
	.loc 1 171 4 is_stmt 1 view .LVU263
	adds	r0, r0, #6	@, task,
.LVL42:
	.loc 1 171 4 is_stmt 0 view .LVU264
	bl	ASSIGN_NULL		@
.LVL43:
	.loc 1 172 4 is_stmt 1 view .LVU265
	add	r0, r4, #22	@, task,
	bl	ASSIGN_NULL		@
.LVL44:
	.loc 1 173 4 view .LVU266
	add	r0, r4, #38	@, task,
	bl	ASSIGN_NULL		@
.LVL45:
	.loc 1 174 4 view .LVU267
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:175:    ASSIGN_NULL(&task->max_allowed_wait_time);
	.loc 1 175 4 is_stmt 0 view .LVU268
	add	r0, r4, #60	@, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:174:    task->overwaittime_per_prio_inc_step        =   0u       ;
	.loc 1 174 48 view .LVU269
	str	r5, [r4, #56]	@ tmp117, task_8(D)->overwaittime_per_prio_inc_step
	.loc 1 175 4 is_stmt 1 view .LVU270
	bl	ASSIGN_NULL		@
.LVL46:
	.loc 1 176 4 view .LVU271
	add	r0, r4, #76	@, task,
	bl	ASSIGN_NULL		@
.LVL47:
	.loc 1 177 4 view .LVU272
	add	r0, r4, #92	@, task,
	bl	ASSIGN_NULL		@
.LVL48:
	.loc 1 178 4 view .LVU273
	.loc 1 179 4 view .LVU274
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:181:    task->state_request                         =   &OS_TASK_STATE_REQUEST       ;
	.loc 1 181 48 is_stmt 0 view .LVU275
	ldr	r3, .L38	@ tmp130,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:178:    task->current_prio                          =   0u       ;
	.loc 1 178 48 view .LVU276
	strh	r5, [r4, #108]	@ movhi	@ tmp117, MEM[(unsigned char *)task_8(D) + 108B]
	.loc 1 180 4 is_stmt 1 view .LVU277
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:180:    task->fp                                    =   0u       ;
	.loc 1 180 48 is_stmt 0 view .LVU278
	str	r5, [r4, #116]	@ tmp117, task_8(D)->fp
	.loc 1 181 4 is_stmt 1 view .LVU279
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:182:    task->task_state                            =   E_TASK_UNSPECIFIED;
	.loc 1 182 48 is_stmt 0 view .LVU280
	strb	r5, [r4, #124]	@ tmp117, task_8(D)->task_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:190:    task->r0                                   =   0u              ;
	.loc 1 190 47 view .LVU281
	strd	r5, r5, [r4, #128]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:192:    task->r2                                   =   0u              ;
	.loc 1 192 47 view .LVU282
	strd	r5, r5, [r4, #136]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:194:    task->r4                                   =   0u              ;
	.loc 1 194 47 view .LVU283
	strd	r5, r5, [r4, #144]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:196:    task->r6                                   =   0u              ;
	.loc 1 196 47 view .LVU284
	strd	r5, r5, [r4, #152]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:198:    task->r8                                   =   0u              ;
	.loc 1 198 47 view .LVU285
	strd	r5, r5, [r4, #160]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:200:    task->r10                                  =   0u             ;
	.loc 1 200 47 view .LVU286
	strd	r5, r5, [r4, #168]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:202:    task->r12                                  =   0u             ;
	.loc 1 202 47 view .LVU287
	strd	r5, r5, [r4, #176]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:207:    task->p_stack_pointer_by_malloc                 =   0u       ;
	.loc 1 207 52 view .LVU288
	strd	r5, r5, [r4, #184]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:209:    task->stack_size                             =   0u       ;
	.loc 1 209 49 view .LVU289
	strd	r5, r5, [r4, #192]	@ tmp117, tmp117, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:210:    task->p_stack_pointer_end                      =   0u       ;
	.loc 1 210 51 view .LVU290
	str	r5, [r4, #200]	@ tmp117, task_8(D)->p_stack_pointer_end
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:181:    task->state_request                         =   &OS_TASK_STATE_REQUEST       ;
	.loc 1 181 48 view .LVU291
	str	r3, [r4, #120]	@ tmp130, task_8(D)->state_request
	.loc 1 182 4 is_stmt 1 view .LVU292
	.loc 1 183 4 view .LVU293
	.loc 1 190 4 view .LVU294
	.loc 1 191 4 view .LVU295
	.loc 1 192 4 view .LVU296
	.loc 1 193 4 view .LVU297
	.loc 1 194 4 view .LVU298
	.loc 1 195 4 view .LVU299
	.loc 1 196 4 view .LVU300
	.loc 1 197 4 view .LVU301
	.loc 1 198 4 view .LVU302
	.loc 1 199 4 view .LVU303
	.loc 1 200 4 view .LVU304
	.loc 1 201 4 view .LVU305
	.loc 1 202 4 view .LVU306
	.loc 1 206 4 view .LVU307
	.loc 1 207 4 view .LVU308
	.loc 1 208 4 view .LVU309
	.loc 1 209 4 view .LVU310
	.loc 1 210 4 view .LVU311
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:211: }
	.loc 1 211 1 is_stmt 0 view .LVU312
	pop	{r3, r4, r5, pc}	@
.LVL49:
.L39:
	.loc 1 211 1 view .LVU313
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
.LVL50:
.LFB4:
	.loc 1 213 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 214 4 view .LVU315
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:215: }
	.loc 1 215 1 is_stmt 0 view .LVU316
	ldr	r0, [r0]	@, *scheduling_queue_element_2(D)
.LVL51:
	.loc 1 215 1 view .LVU317
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
.LVL52:
.LFB5:
	.loc 1 217 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 218 4 view .LVU319
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:218:    return ((scheduling_t*)&TASK_SCHEDULING_QUEUE[element_nr]);
	.loc 1 218 12 is_stmt 0 view .LVU320
	ldr	r3, .L42	@ tmp118,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:219: }
	.loc 1 219 1 view .LVU321
	add	r0, r3, r0, lsl #2	@, tmp118, element_nr,
.LVL53:
	.loc 1 219 1 view .LVU322
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
.LVL54:
.LFB6:
	.loc 1 222 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 223 4 view .LVU324
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:223:    *scheduling_queue_element = 0u;
	.loc 1 223 30 is_stmt 0 view .LVU325
	movs	r3, #0	@ tmp111,
	str	r3, [r0]	@ tmp111, *scheduling_queue_element_2(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:224: }
	.loc 1 224 1 view .LVU326
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
.LVL55:
.LFB7:
	.loc 1 226 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 234 4 view .LVU328
	.loc 1 235 4 view .LVU329
	.loc 1 237 4 view .LVU330
	.loc 1 240 7 view .LVU331
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 31 is_stmt 0 view .LVU332
	ldr	r3, .L57	@ tmp143,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 view .LVU333
	ldr	r2, [r3]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L46	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU334
.LVL56:
	.loc 1 240 7 view .LVU335
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU336
	ldr	r2, [r3, #4]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L49	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU337
.LVL57:
	.loc 1 240 7 view .LVU338
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU339
	ldr	r2, [r3, #8]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L50	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU340
.LVL58:
	.loc 1 240 7 view .LVU341
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU342
	ldr	r2, [r3, #12]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L51	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU343
.LVL59:
	.loc 1 240 7 view .LVU344
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU345
	ldr	r2, [r3, #16]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L52	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU346
.LVL60:
	.loc 1 240 7 view .LVU347
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU348
	ldr	r2, [r3, #20]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L53	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU349
.LVL61:
	.loc 1 240 7 view .LVU350
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU351
	ldr	r2, [r3, #24]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L54	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU352
.LVL62:
	.loc 1 240 7 view .LVU353
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU354
	ldr	r2, [r3, #28]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L55	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU355
.LVL63:
	.loc 1 240 7 view .LVU356
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU357
	ldr	r2, [r3, #32]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbz	r2, .L56	@ TASK_SCHEDULING_QUEUE,
	.loc 1 245 7 is_stmt 1 view .LVU358
.LVL64:
	.loc 1 240 7 view .LVU359
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 9 is_stmt 0 view .LVU360
	ldr	r2, [r3, #36]	@ TASK_SCHEDULING_QUEUE, TASK_SCHEDULING_QUEUE
	cbnz	r2, .L45	@ TASK_SCHEDULING_QUEUE,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 31 view .LVU361
	movs	r2, #9	@ _25,
.LVL65:
.L46:
	.loc 1 242 10 is_stmt 1 view .LVU362
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:242:          TASK_SCHEDULING_QUEUE[index] = task;
	.loc 1 242 39 is_stmt 0 view .LVU363
	str	r0, [r3, r2, lsl #2]	@ task, TASK_SCHEDULING_QUEUE
	.loc 1 243 10 is_stmt 1 view .LVU364
.LVL66:
	.loc 1 245 7 view .LVU365
	.loc 1 247 4 view .LVU366
.L45:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:248: }
	.loc 1 248 1 is_stmt 0 view .LVU367
	bx	lr	@
.LVL67:
.L49:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:240:       if(TASK_SCHEDULING_QUEUE[index] == NULL)
	.loc 1 240 31 view .LVU368
	movs	r2, #1	@ _25,
	b	.L46		@
.LVL68:
.L52:
	.loc 1 240 31 view .LVU369
	movs	r2, #4	@ _25,
	b	.L46		@
.LVL69:
.L50:
	.loc 1 240 31 view .LVU370
	movs	r2, #2	@ _25,
	b	.L46		@
.LVL70:
.L51:
	.loc 1 240 31 view .LVU371
	movs	r2, #3	@ _25,
	b	.L46		@
.LVL71:
.L53:
	.loc 1 240 31 view .LVU372
	movs	r2, #5	@ _25,
	b	.L46		@
.LVL72:
.L56:
	.loc 1 240 31 view .LVU373
	movs	r2, #8	@ _25,
	b	.L46		@
.LVL73:
.L54:
	.loc 1 240 31 view .LVU374
	movs	r2, #6	@ _25,
	b	.L46		@
.LVL74:
.L55:
	.loc 1 240 31 view .LVU375
	movs	r2, #7	@ _25,
	b	.L46		@
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
	.loc 1 279 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 280 4 view .LVU377
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:281: }
	.loc 1 281 1 is_stmt 0 view .LVU378
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
.LVL75:
.LFB9:
	.loc 1 283 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 285 4 view .LVU380
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:283: {
	.loc 1 283 1 is_stmt 0 view .LVU381
	push	{r3, r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:285:    if((&TASK_IDLE_QUEUE[0u])->idle_task == FALSE)
	.loc 1 285 41 view .LVU382
	ldr	r4, .L66	@ tmp148,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ TASK_IDLE_QUEUE, TASK_IDLE_QUEUE
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:285:    if((&TASK_IDLE_QUEUE[0u])->idle_task == FALSE)
	.loc 1 285 6 view .LVU383
	lsls	r2, r3, #29	@, TASK_IDLE_QUEUE,
	bpl	.L65		@,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:333: }
	.loc 1 333 1 view .LVU384
	pop	{r3, r4, r5, r6, r7, pc}	@
.L65:
	.loc 1 287 7 is_stmt 1 view .LVU385
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0u])->active                                =   task->active           ;
	.loc 1 287 77 is_stmt 0 view .LVU386
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_activated                      =   task->nr_of_ins_activated ;
	.loc 1 292 80 view .LVU387
	ldrb	r6, [r0, #5]	@ zero_extendqisi2	@ _8, task_40(D)->nr_of_ins_activated
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:287:       (&TASK_IDLE_QUEUE[0u])->active                                =   task->active           ;
	.loc 1 287 69 view .LVU388
	bfi	r3, r2, #0, #1	@ TASK_IDLE_QUEUE[0].active, *task_40(D),,
	strb	r3, [r4]	@ TASK_IDLE_QUEUE[0].active, TASK_IDLE_QUEUE[0].active
	.loc 1 288 7 is_stmt 1 view .LVU389
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
	.loc 1 288 77 is_stmt 0 view .LVU390
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
	.loc 1 288 69 view .LVU391
	ldrb	r2, [r4]	@ zero_extendqisi2	@, TASK_IDLE_QUEUE[0].task_queued
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
	.loc 1 288 77 view .LVU392
	ubfx	r3, r3, #1, #1	@ _4, *task_40(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:288:       (&TASK_IDLE_QUEUE[0u])->task_queued                           =   task->task_queued      ;
	.loc 1 288 69 view .LVU393
	bfi	r2, r3, #1, #1	@ TASK_IDLE_QUEUE[0].task_queued, _4,,
	strb	r2, [r4]	@ TASK_IDLE_QUEUE[0].task_queued, TASK_IDLE_QUEUE[0].task_queued
	.loc 1 289 7 is_stmt 1 view .LVU394
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
	.loc 1 289 78 is_stmt 0 view .LVU395
	ldrb	r3, [r0]	@ zero_extendqisi2	@ *task_40(D), *task_40(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
	.loc 1 289 70 view .LVU396
	uxtb	r2, r2	@ tmp173, TASK_IDLE_QUEUE[0].task_queued
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
	.loc 1 289 78 view .LVU397
	ubfx	r3, r3, #2, #1	@ _5, *task_40(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:289:       (&TASK_IDLE_QUEUE[0u])->idle_task                              =   task->idle_task         ;
	.loc 1 289 70 view .LVU398
	bfi	r2, r3, #2, #1	@ TASK_IDLE_QUEUE[0].idle_task, _5,,
	strb	r2, [r4]	@ TASK_IDLE_QUEUE[0].idle_task, TASK_IDLE_QUEUE[0].idle_task
	.loc 1 290 7 is_stmt 1 view .LVU399
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
	.loc 1 290 77 is_stmt 0 view .LVU400
	ldr	r3, [r0]	@ *task_40(D), *task_40(D)
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
	.loc 1 290 69 view .LVU401
	ldr	r2, [r4]	@ TASK_IDLE_QUEUE[0].free, TASK_IDLE_QUEUE[0].free
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
	.loc 1 290 77 view .LVU402
	ubfx	r3, r3, #3, #29	@ _6, *task_40(D),,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:290:       (&TASK_IDLE_QUEUE[0u])->free                                  =   task->free             ;
	.loc 1 290 69 view .LVU403
	bfi	r2, r3, #3, #29	@ TASK_IDLE_QUEUE[0].free, _6,,
	str	r2, [r4]	@ TASK_IDLE_QUEUE[0].free, TASK_IDLE_QUEUE[0].free
	.loc 1 291 7 is_stmt 1 view .LVU404
	mov	r5, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_allowed                        =   task->nr_of_ins_allowed   ;
	.loc 1 291 80 is_stmt 0 view .LVU405
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ _7, task_40(D)->nr_of_ins_allowed
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:291:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_allowed                        =   task->nr_of_ins_allowed   ;
	.loc 1 291 72 view .LVU406
	strb	r3, [r4, #4]	@ _7, TASK_IDLE_QUEUE[0].nr_of_ins_allowed
	.loc 1 292 7 is_stmt 1 view .LVU407
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:293:       ASSIGN(&(&TASK_IDLE_QUEUE[0u])->wait_act_until, &task->wait_act_until);
	.loc 1 293 7 is_stmt 0 view .LVU408
	adds	r1, r0, #6	@, task,
	adds	r0, r4, #6	@, tmp148,
.LVL76:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:292:       (&TASK_IDLE_QUEUE[0u])->nr_of_ins_activated                      =   task->nr_of_ins_activated ;
	.loc 1 292 72 view .LVU409
	strb	r6, [r4, #5]	@ _8, TASK_IDLE_QUEUE[0].nr_of_ins_activated
	.loc 1 293 7 is_stmt 1 view .LVU410
	bl	ASSIGN		@
.LVL77:
	.loc 1 294 7 view .LVU411
	add	r1, r5, #22	@, task,
	add	r0, r4, #22	@, tmp148,
	bl	ASSIGN		@
.LVL78:
	.loc 1 295 7 view .LVU412
	add	r1, r5, #38	@, task,
	add	r0, r4, #38	@, tmp148,
	bl	ASSIGN		@
.LVL79:
	.loc 1 296 7 view .LVU413
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0u])->overwaittime_per_prio_inc_step       =    task->overwaittime_per_prio_inc_step;
	.loc 1 296 77 is_stmt 0 view .LVU414
	ldr	r3, [r5, #56]	@ _12, task_40(D)->overwaittime_per_prio_inc_step
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:296:       (&TASK_IDLE_QUEUE[0u])->overwaittime_per_prio_inc_step       =    task->overwaittime_per_prio_inc_step;
	.loc 1 296 68 view .LVU415
	str	r3, [r4, #56]	@ _12, TASK_IDLE_QUEUE[0].overwaittime_per_prio_inc_step
	.loc 1 297 7 is_stmt 1 view .LVU416
	add	r1, r5, #60	@, task,
	add	r0, r4, #60	@, tmp148,
	bl	ASSIGN		@
.LVL80:
	.loc 1 298 7 view .LVU417
	add	r1, r5, #76	@, task,
	add	r0, r4, #76	@, tmp148,
	bl	ASSIGN		@
.LVL81:
	.loc 1 299 7 view .LVU418
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 is_stmt 0 view .LVU419
	ldrd	r0, r2, [r5, #128]	@ _19, vect__20.83, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0u])->fp                                    =   task->fp               ;
	.loc 1 301 77 view .LVU420
	ldrd	r1, r7, [r5, #116]	@ vect__17.77, vect__17.78, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0u])->current_prio                          =   task->current_prio     ;
	.loc 1 299 77 view .LVU421
	ldrb	r6, [r5, #108]	@ zero_extendqisi2	@ _15, task_40(D)->current_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:300:       (&TASK_IDLE_QUEUE[0u])->default_prio                          =   task->default_prio     ;
	.loc 1 300 77 view .LVU422
	ldrb	r3, [r5, #109]	@ zero_extendqisi2	@ _16, task_40(D)->default_prio
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:299:       (&TASK_IDLE_QUEUE[0u])->current_prio                          =   task->current_prio     ;
	.loc 1 299 69 view .LVU423
	strb	r6, [r4, #108]	@ _15, TASK_IDLE_QUEUE[0].current_prio
	.loc 1 300 7 is_stmt 1 view .LVU424
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:304:       (&TASK_IDLE_QUEUE[0u])->task_group                            =   task->task_group       ;
	.loc 1 304 69 is_stmt 0 view .LVU425
	str	r0, [r4, #128]	@ _19, TASK_IDLE_QUEUE[0].task_group
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:303:       (&TASK_IDLE_QUEUE[0u])->task_state                            =   E_TASK_READY             ;
	.loc 1 303 69 view .LVU426
	movs	r6, #2	@ tmp200,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU427
	ldr	r0, [r5, #152]	@ vect__20.88, MEM[(long unsigned int *)task_40(D) + 152B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU428
	str	r2, [r4, #132]	@ vect__20.83, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 132B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU429
	ldr	r2, [r5, #156]	@ vect__20.89, MEM[(long unsigned int *)task_40(D) + 156B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:300:       (&TASK_IDLE_QUEUE[0u])->default_prio                          =   task->default_prio     ;
	.loc 1 300 69 view .LVU430
	strb	r3, [r4, #109]	@ _16, TASK_IDLE_QUEUE[0].default_prio
	.loc 1 301 7 is_stmt 1 view .LVU431
	.loc 1 302 7 view .LVU432
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0u])->fp                                    =   task->fp               ;
	.loc 1 301 69 is_stmt 0 view .LVU433
	str	r1, [r4, #116]	@ vect__17.77, MEM[(void *)&TASK_IDLE_QUEUE + 116B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU434
	ldr	r3, [r5, #136]	@ vect__20.84, MEM[(long unsigned int *)task_40(D) + 136B]
	ldr	r1, [r5, #140]	@ vect__20.85, MEM[(long unsigned int *)task_40(D) + 140B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:301:       (&TASK_IDLE_QUEUE[0u])->fp                                    =   task->fp               ;
	.loc 1 301 69 view .LVU435
	str	r7, [r4, #120]	@ vect__17.78, MEM[(void *)&TASK_IDLE_QUEUE + 120B]
	.loc 1 303 7 is_stmt 1 view .LVU436
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:303:       (&TASK_IDLE_QUEUE[0u])->task_state                            =   E_TASK_READY             ;
	.loc 1 303 69 is_stmt 0 view .LVU437
	strb	r6, [r4, #124]	@ tmp200, TASK_IDLE_QUEUE[0].task_state
	.loc 1 304 7 is_stmt 1 view .LVU438
	.loc 1 311 7 view .LVU439
	.loc 1 312 7 view .LVU440
	.loc 1 313 7 view .LVU441
	.loc 1 314 7 view .LVU442
	.loc 1 315 7 view .LVU443
	.loc 1 316 7 view .LVU444
	.loc 1 317 7 view .LVU445
	.loc 1 318 7 view .LVU446
	.loc 1 319 7 view .LVU447
	.loc 1 320 7 view .LVU448
	.loc 1 321 7 view .LVU449
	.loc 1 322 7 view .LVU450
	.loc 1 323 7 view .LVU451
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 is_stmt 0 view .LVU452
	ldr	r7, [r5, #144]	@ vect__20.86, MEM[(long unsigned int *)task_40(D) + 144B]
	ldr	r6, [r5, #148]	@ vect__20.87, MEM[(long unsigned int *)task_40(D) + 148B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU453
	str	r3, [r4, #136]	@ vect__20.84, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 136B]
	str	r1, [r4, #140]	@ vect__20.85, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 140B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU454
	ldr	r3, [r5, #160]	@ vect__20.90, MEM[(long unsigned int *)task_40(D) + 160B]
	ldr	r1, [r5, #164]	@ vect__20.91, MEM[(long unsigned int *)task_40(D) + 164B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU455
	str	r3, [r4, #160]	@ vect__20.90, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 160B]
	strd	r0, r2, [r4, #152]	@ vect__20.88, vect__20.89, tmp148,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU456
	ldr	r2, [r5, #168]	@ vect__20.92, MEM[(long unsigned int *)task_40(D) + 168B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU457
	str	r1, [r4, #164]	@ vect__20.91, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 164B]
	strd	r7, r6, [r4, #144]	@ vect__20.86, vect__20.87, tmp148,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 76 view .LVU458
	ldrd	r3, r7, [r5, #176]	@ vect__20.94, vect__20.95, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:327:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer                         =   task->p_stack_pointer    ;
	.loc 1 327 79 view .LVU459
	ldrd	r6, r0, [r5, #184]	@ vect__33.100, vect__33.101, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU460
	str	r2, [r4, #168]	@ vect__20.92, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 168B]
	ldr	r2, [r5, #172]	@ tmp222, MEM[(long unsigned int *)task_40(D) + 172B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:327:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer                         =   task->p_stack_pointer    ;
	.loc 1 327 79 view .LVU461
	ldr	r1, [r5, #192]	@ vect__33.102, MEM[(unsigned_char_t * *)task_40(D) + 192B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU462
	str	r2, [r4, #172]	@ tmp222, MEM[(long unsigned int *)&TASK_IDLE_QUEUE + 172B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:331:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_end                      =   task->p_stack_pointer_end ;
	.loc 1 331 80 view .LVU463
	ldrd	r2, r5, [r5, #196]	@ _36, _37, task,
.LVL82:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:311:       (&TASK_IDLE_QUEUE[0u])->r0                                   =   task->r0              ;
	.loc 1 311 68 view .LVU464
	strd	r3, r7, [r4, #176]	@ vect__20.94, vect__20.95, tmp148,
	.loc 1 327 7 is_stmt 1 view .LVU465
	.loc 1 328 7 view .LVU466
	.loc 1 329 7 view .LVU467
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:327:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer                         =   task->p_stack_pointer    ;
	.loc 1 327 71 is_stmt 0 view .LVU468
	strd	r6, r0, [r4, #184]	@ vect__33.100, vect__33.101, tmp148,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:330:       (&TASK_IDLE_QUEUE[0u])->stack_size                             =   task->stack_size        ;
	.loc 1 330 70 view .LVU469
	strd	r1, r2, [r4, #192]	@ vect__33.102, _36, tmp148,
	.loc 1 331 7 is_stmt 1 view .LVU470
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:331:       (&TASK_IDLE_QUEUE[0u])->p_stack_pointer_end                      =   task->p_stack_pointer_end ;
	.loc 1 331 72 is_stmt 0 view .LVU471
	str	r5, [r4, #200]	@ _37, TASK_IDLE_QUEUE[0].p_stack_pointer_end
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:333: }
	.loc 1 333 1 view .LVU472
	pop	{r3, r4, r5, r6, r7, pc}	@
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
	.loc 1 335 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 336 4 view .LVU474
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:337: }
	.loc 1 337 1 is_stmt 0 view .LVU475
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
	.loc 1 339 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 340 4 view .LVU477
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:340:    return RUNNING_SCHEDULING_QUEUE_ENTRY;
	.loc 1 340 11 is_stmt 0 view .LVU478
	ldr	r3, .L72	@ tmp112,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:341: }
	.loc 1 341 1 view .LVU479
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
.LVL83:
.LFB12:
	.loc 1 354 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 355 4 view .LVU481
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:354: {
	.loc 1 354 1 is_stmt 0 view .LVU482
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
	.loc 1 356 4 is_stmt 1 view .LVU483
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:354: {
	.loc 1 354 1 is_stmt 0 view .LVU484
	ldr	r7, [sp, #40]	@ uStackSize, uStackSize
	ldrb	r9, [sp, #44]	@ zero_extendqisi2	@ privilige_mode, privilige_mode
	ldrb	r8, [sp, #52]	@ zero_extendqisi2	@ default_prio, default_prio
	ldrd	ip, r5, [sp, #32]	@ p_task_group, pStackAddr,,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:356:    if(task != NULL)
	.loc 1 356 6 view .LVU485
	cbz	r0, .L75	@ task,
	.loc 1 358 7 is_stmt 1 view .LVU486
	mov	r6, r3	@ idle_task, idle_task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 30 is_stmt 0 view .LVU487
	ldrb	r3, [r0]	@ zero_extendqisi2	@, task_8(D)->active
.LVL84:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:361:       task->task_group       = p_task_group;
	.loc 1 361 30 view .LVU488
	str	ip, [r0, #128]	@ p_task_group, task_8(D)->task_group
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 30 view .LVU489
	bfc	r3, #0, #1	@ task_8(D)->active,,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:362:       task->nr_of_ins_activated = 0u;
	.loc 1 362 33 view .LVU490
	mov	r10, #0	@ tmp128,
	mov	r4, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:360:       task->nr_of_ins_allowed   = AllowedInstances;
	.loc 1 360 33 view .LVU491
	strb	r2, [r0, #4]	@ AllowedInstances, task_8(D)->nr_of_ins_allowed
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:359:       task->fp               = TaskFunction;
	.loc 1 359 30 view .LVU492
	str	r1, [r0, #116]	@ TaskFunction, task_8(D)->fp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:358:       task->active           = FALSE;
	.loc 1 358 30 view .LVU493
	strb	r3, [r0]	@ task_8(D)->active, task_8(D)->active
	.loc 1 359 7 is_stmt 1 view .LVU494
	.loc 1 360 7 view .LVU495
	.loc 1 361 7 view .LVU496
	.loc 1 362 7 view .LVU497
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:362:       task->nr_of_ins_activated = 0u;
	.loc 1 362 33 is_stmt 0 view .LVU498
	strb	r10, [r0, #5]	@ tmp128, task_8(D)->nr_of_ins_activated
	.loc 1 363 7 is_stmt 1 view .LVU499
	adds	r0, r0, #6	@, task,
.LVL85:
	.loc 1 363 7 is_stmt 0 view .LVU500
	bl	ASSIGN_NULL		@
.LVL86:
	.loc 1 364 7 is_stmt 1 view .LVU501
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:367:       task->overwaittime_per_prio_inc_step = 1u;
	.loc 1 367 44 is_stmt 0 view .LVU502
	movs	r3, #1	@ tmp133,
	str	r3, [r4, #56]	@ tmp133, task_8(D)->overwaittime_per_prio_inc_step
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:368:       ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);
	.loc 1 368 7 view .LVU503
	ldr	r1, .L79	@,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:364:       task->privilige_mode   = privilige_mode;
	.loc 1 364 30 view .LVU504
	strb	r9, [r4, #204]	@ privilige_mode, task_8(D)->privilige_mode
	.loc 1 365 7 is_stmt 1 view .LVU505
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:368:       ASSIGN_UINT32(&task->max_allowed_wait_time, 100000u);
	.loc 1 368 7 is_stmt 0 view .LVU506
	add	r0, r4, #60	@, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:365:       task->default_prio     = default_prio;
	.loc 1 365 30 view .LVU507
	strb	r8, [r4, #109]	@ default_prio, task_8(D)->default_prio
	.loc 1 367 7 is_stmt 1 view .LVU508
	.loc 1 368 7 view .LVU509
	bl	ASSIGN_UINT32		@
.LVL87:
	.loc 1 370 7 view .LVU510
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:370:       task->idle_task      = idle_task;
	.loc 1 370 28 is_stmt 0 view .LVU511
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_8(D)->idle_task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:371:       task->state_request = &OS_TASK_STATE_REQUEST;
	.loc 1 371 27 view .LVU512
	ldr	r2, .L79+4	@ tmp138,
	str	r2, [r4, #120]	@ tmp138, task_8(D)->state_request
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:370:       task->idle_task      = idle_task;
	.loc 1 370 28 view .LVU513
	bfi	r3, r6, #2, #1	@ task_8(D)->idle_task, idle_task,,
	strb	r3, [r4]	@ task_8(D)->idle_task, task_8(D)->idle_task
	.loc 1 371 7 is_stmt 1 view .LVU514
	.loc 1 372 7 view .LVU515
	mov	r1, r10	@, tmp128
	mov	r0, r4	@, task
	bl	OS_TASK_STATE_REQUEST		@
.LVL88:
	.loc 1 373 7 view .LVU516
	mov	r0, r4	@, task
	bl	OS_CREATE_TASK		@
.LVL89:
	.loc 1 376 7 view .LVU517
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:378:       task->p_stack_pointer_end      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
	.loc 1 378 82 is_stmt 0 view .LVU518
	subs	r3, r7, #1	@ tmp139, uStackSize,
	add	r3, r3, r5	@ _5, pStackAddr
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:377:       task->p_stack_pointer_start    = pStackAddr;/*low addresse */
	.loc 1 377 38 view .LVU519
	strd	r5, r5, [r4, #188]	@ pStackAddr, pStackAddr, task,
	.loc 1 378 7 is_stmt 1 view .LVU520
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:378:       task->p_stack_pointer_end      = (unsigned_char_t*)pStackAddr + uStackSize - 1;/* end addresse */
	.loc 1 378 38 is_stmt 0 view .LVU521
	strd	r7, r3, [r4, #196]	@ uStackSize, _5, task,
	.loc 1 379 7 is_stmt 1 view .LVU522
	.loc 1 381 7 view .LVU523
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:381:       task->p_stack_pointer                    = task->p_stack_pointer_end;/* stack wächst von großen zu kleinen adressen.... */
	.loc 1 381 48 is_stmt 0 view .LVU524
	str	r3, [r4, #184]	@ _5, task_8(D)->p_stack_pointer
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:387: }
	.loc 1 387 1 view .LVU525
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}	@
.LVL90:
.L75:
	.loc 1 385 7 is_stmt 1 view .LVU526
	movs	r1, #10	@,
.LVL91:
	.loc 1 385 7 is_stmt 0 view .LVU527
	movs	r0, #2	@,
.LVL92:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:387: }
	.loc 1 387 1 view .LVU528
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
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_queue.c:385:       OS_SET_SW_BUG(E_OS_BUG_NULL_POINTER, E_FUNC_INITTASK);
	.loc 1 385 7 view .LVU529
	b	OS_SET_SW_BUG		@
.LVL94:
.L80:
	.loc 1 385 7 view .LVU530
	.align	2
.L79:
	.word	100000
	.word	OS_TASK_STATE_REQUEST
	.cfi_endproc
.LFE12:
	.size	OS_INIT_TASK, .-OS_INIT_TASK
.Letext0:
	.file 2 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_base_types.h"
	.file 3 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_common.h"
	.file 4 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_task_common.h"
	.file 6 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_main.h"
	.file 7 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_ram.h"
	.file 8 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_ram_stack.h"
	.file 9 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_scheduler.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf65
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF744
	.byte	0x1
	.4byte	.LASF745
	.4byte	.LASF746
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF536
	.byte	0x2
	.byte	0x11
	.byte	0x18
	.4byte	0x35
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF534
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF535
	.uleb128 0x2
	.4byte	.LASF537
	.byte	0x2
	.byte	0x15
	.byte	0x18
	.4byte	0x35
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF538
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF539
	.uleb128 0x2
	.4byte	.LASF540
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF541
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF542
	.uleb128 0x2
	.4byte	.LASF543
	.byte	0x2
	.byte	0x1d
	.byte	0x18
	.4byte	0x69
	.uleb128 0x4
	.4byte	0x77
	.uleb128 0x5
	.4byte	.LASF559
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.4byte	0xef
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
	.byte	0
	.uleb128 0x2
	.4byte	.LASF558
	.byte	0x3
	.byte	0x3f
	.byte	0x1b
	.4byte	0x88
	.uleb128 0x4
	.4byte	0xef
	.uleb128 0x5
	.4byte	.LASF560
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x3
	.byte	0x43
	.byte	0x6
	.4byte	0x197
	.uleb128 0x6
	.4byte	.LASF561
	.byte	0
	.uleb128 0x6
	.4byte	.LASF562
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF563
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF567
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF568
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF569
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF570
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF572
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF573
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF574
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF576
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF578
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF579
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF580
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF581
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF582
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	.LASF605
	.byte	0x10
	.byte	0x3
	.byte	0x63
	.byte	0x10
	.4byte	0x1b2
	.uleb128 0x8
	.4byte	.LASF607
	.byte	0x3
	.byte	0x6c
	.byte	0xa
	.4byte	0x1b2
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x43
	.4byte	0x1c2
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF583
	.uleb128 0x2
	.4byte	.LASF584
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.4byte	0x197
	.uleb128 0x2
	.4byte	.LASF585
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.4byte	0x1c9
	.uleb128 0x5
	.4byte	.LASF586
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.4byte	0x20c
	.uleb128 0x6
	.4byte	.LASF587
	.byte	0
	.uleb128 0x6
	.4byte	.LASF588
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF590
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF591
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.4byte	0x1e1
	.uleb128 0x5
	.4byte	.LASF592
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x4
	.byte	0x13
	.byte	0x6
	.4byte	0x23d
	.uleb128 0x6
	.4byte	.LASF593
	.byte	0
	.uleb128 0x6
	.4byte	.LASF594
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF595
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF596
	.byte	0x4
	.byte	0x19
	.byte	0x20
	.4byte	0x218
	.uleb128 0x5
	.4byte	.LASF597
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.4byte	0x274
	.uleb128 0x6
	.4byte	.LASF598
	.byte	0
	.uleb128 0x6
	.4byte	.LASF599
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF600
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF601
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF602
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.4byte	0x249
	.uleb128 0x2
	.4byte	.LASF603
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.4byte	0x28c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x292
	.uleb128 0xc
	.4byte	0x29d
	.uleb128 0xd
	.4byte	0x29d
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF604
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.4byte	0x2ab
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2b1
	.uleb128 0xf
	.4byte	0x29
	.4byte	0x2c5
	.uleb128 0xd
	.4byte	0x29d
	.uleb128 0xd
	.4byte	0x274
	.byte	0
	.uleb128 0x7
	.4byte	.LASF606
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.4byte	0x2ed
	.uleb128 0x8
	.4byte	.LASF608
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.4byte	0x1d5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF609
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.4byte	0x1d5
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF610
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.4byte	0x2c5
	.uleb128 0x7
	.4byte	.LASF611
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x503
	.uleb128 0x10
	.4byte	.LASF612
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF613
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF614
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF615
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF616
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.4byte	0x29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF617
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.4byte	0x29
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF618
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.4byte	0x1d5
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF619
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.4byte	0x1d5
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF620
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.4byte	0x1d5
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF621
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.4byte	0x77
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF622
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.4byte	0x1d5
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF608
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x1d5
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF623
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.4byte	0x1d5
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF624
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF625
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF626
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.4byte	0x5d
	.byte	0x70
	.uleb128 0x11
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.4byte	0x280
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF627
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.4byte	0x29f
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF628
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.4byte	0x274
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF629
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.4byte	0x503
	.byte	0x80
	.uleb128 0x11
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3b
	.byte	0x15
	.4byte	0x5d
	.byte	0x84
	.uleb128 0x11
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3c
	.byte	0x15
	.4byte	0x5d
	.byte	0x88
	.uleb128 0x11
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3d
	.byte	0x15
	.4byte	0x5d
	.byte	0x8c
	.uleb128 0x11
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3e
	.byte	0x15
	.4byte	0x5d
	.byte	0x90
	.uleb128 0x11
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3f
	.byte	0x15
	.4byte	0x5d
	.byte	0x94
	.uleb128 0x11
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x40
	.byte	0x15
	.4byte	0x5d
	.byte	0x98
	.uleb128 0x11
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x41
	.byte	0x15
	.4byte	0x5d
	.byte	0x9c
	.uleb128 0x11
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x42
	.byte	0x15
	.4byte	0x5d
	.byte	0xa0
	.uleb128 0x11
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x43
	.byte	0x15
	.4byte	0x5d
	.byte	0xa4
	.uleb128 0x11
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x44
	.byte	0x15
	.4byte	0x5d
	.byte	0xa8
	.uleb128 0x11
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x45
	.byte	0x15
	.4byte	0x5d
	.byte	0xac
	.uleb128 0x11
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x46
	.byte	0x15
	.4byte	0x5d
	.byte	0xb0
	.uleb128 0x11
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x47
	.byte	0x15
	.4byte	0x5d
	.byte	0xb4
	.uleb128 0x8
	.4byte	.LASF630
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.4byte	0x509
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF631
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.4byte	0x509
	.byte	0xbc
	.uleb128 0x8
	.4byte	.LASF632
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.4byte	0x509
	.byte	0xc0
	.uleb128 0x8
	.4byte	.LASF633
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.4byte	0x5d
	.byte	0xc4
	.uleb128 0x8
	.4byte	.LASF634
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.4byte	0x509
	.byte	0xc8
	.uleb128 0x8
	.4byte	.LASF635
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.4byte	0x23d
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2ed
	.uleb128 0xb
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF636
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.4byte	0x2f9
	.uleb128 0x2
	.4byte	.LASF637
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.4byte	0x527
	.uleb128 0xb
	.byte	0x4
	.4byte	0x50f
	.uleb128 0x9
	.4byte	0x527
	.4byte	0x53d
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.4byte	0x52d
	.uleb128 0x2
	.4byte	.LASF638
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.4byte	0x1d5
	.uleb128 0x5
	.4byte	.LASF639
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.4byte	0x57a
	.uleb128 0x6
	.4byte	.LASF640
	.byte	0
	.uleb128 0x6
	.4byte	.LASF641
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF642
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF643
	.byte	0x6
	.byte	0xa
	.byte	0x19
	.4byte	0x555
	.uleb128 0x4
	.4byte	0x57a
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x59c
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.4byte	0x58b
	.uleb128 0x9
	.4byte	0xfb
	.4byte	0x5b8
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.4byte	0x5a8
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.4byte	0x5b8
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.4byte	0x586
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF657
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF658
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF659
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF660
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF661
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF662
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF663
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF664
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF665
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF666
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF667
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF668
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF669
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0x12
	.4byte	.LASF670
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF671
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF672
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0x12
	.4byte	.LASF673
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF674
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF675
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0x12
	.4byte	.LASF676
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF677
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF678
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0x12
	.4byte	.LASF679
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF680
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF681
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.4byte	0x6b9
	.uleb128 0x12
	.4byte	.LASF682
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF683
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.4byte	0x83
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x79c
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF684
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.4byte	0x78b
	.uleb128 0x12
	.4byte	.LASF685
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.4byte	0x78b
	.uleb128 0x12
	.4byte	.LASF686
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.4byte	0x78b
	.uleb128 0x12
	.4byte	.LASF687
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.4byte	0x78b
	.uleb128 0x12
	.4byte	.LASF688
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.4byte	0x78b
	.uleb128 0x12
	.4byte	.LASF689
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.4byte	0x549
	.uleb128 0x9
	.4byte	0x51b
	.4byte	0x7f4
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF690
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.4byte	0x7e4
	.uleb128 0x12
	.4byte	.LASF691
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.4byte	0x80c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x51b
	.uleb128 0x9
	.4byte	0x50f
	.4byte	0x822
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF692
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.4byte	0x812
	.uleb128 0x9
	.4byte	0x50f
	.4byte	0x83e
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF693
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.4byte	0x82e
	.uleb128 0x12
	.4byte	.LASF694
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.4byte	0x82e
	.uleb128 0x12
	.4byte	.LASF695
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF696
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF697
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF698
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF699
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.4byte	0x50f
	.uleb128 0x12
	.4byte	.LASF700
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.4byte	0x2ed
	.uleb128 0x12
	.4byte	.LASF701
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.4byte	0x2ed
	.uleb128 0x12
	.4byte	.LASF702
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.4byte	0x2ed
	.uleb128 0x12
	.4byte	.LASF703
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.4byte	0x2ed
	.uleb128 0x12
	.4byte	.LASF704
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.4byte	0x2ed
	.uleb128 0x12
	.4byte	.LASF705
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.4byte	0x527
	.uleb128 0x12
	.4byte	.LASF706
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.4byte	0x274
	.uleb128 0x12
	.4byte	.LASF707
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.4byte	0x274
	.uleb128 0x12
	.4byte	.LASF708
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.4byte	0x586
	.uleb128 0x12
	.4byte	.LASF709
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.4byte	0x1d5
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x91b
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x3ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF710
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.4byte	0x90a
	.uleb128 0x14
	.4byte	.LASF720
	.byte	0x1
	.2byte	0x156
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa84
	.uleb128 0x15
	.4byte	.LASF711
	.byte	0x1
	.2byte	0x157
	.byte	0x15
	.4byte	0x527
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x15
	.4byte	.LASF712
	.byte	0x1
	.2byte	0x158
	.byte	0x15
	.4byte	0x280
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x15
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x159
	.byte	0x15
	.4byte	0x29
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.4byte	.LASF614
	.byte	0x1
	.2byte	0x15a
	.byte	0x15
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x15
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x15b
	.byte	0x15
	.4byte	0x503
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x15
	.4byte	.LASF715
	.byte	0x1
	.2byte	0x15c
	.byte	0x15
	.4byte	0x509
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x15
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x15d
	.byte	0x15
	.4byte	0x5d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x15
	.4byte	.LASF635
	.byte	0x1
	.2byte	0x15e
	.byte	0x15
	.4byte	0x23d
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x15
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x15f
	.byte	0x15
	.4byte	0x20c
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x15
	.4byte	.LASF625
	.byte	0x1
	.2byte	0x160
	.byte	0x15
	.4byte	0x29
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x16
	.4byte	.LVL86
	.4byte	0xf14
	.4byte	0xa24
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL87
	.4byte	0xf20
	.4byte	0xa41
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL88
	.4byte	0xf2c
	.4byte	0xa5b
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL89
	.4byte	0xf38
	.4byte	0xa6f
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL94
	.4byte	0xf44
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x152
	.byte	0xf
	.4byte	0xa9b
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x527
	.uleb128 0x19
	.4byte	.LASF719
	.byte	0x1
	.2byte	0x14e
	.byte	0x9
	.4byte	0x527
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF721
	.byte	0x1
	.2byte	0x11a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb65
	.uleb128 0x15
	.4byte	.LASF711
	.byte	0x1
	.2byte	0x11a
	.byte	0x25
	.4byte	0x527
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x16
	.4byte	.LVL77
	.4byte	0xf50
	.4byte	0xafe
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL78
	.4byte	0xf50
	.4byte	0xb18
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 22
	.byte	0
	.uleb128 0x16
	.4byte	.LVL79
	.4byte	0xf50
	.4byte	0xb32
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL80
	.4byte	0xf50
	.4byte	0xb4c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 60
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL81
	.4byte	0xf50
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x75
	.sleb128 76
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF722
	.byte	0x1
	.2byte	0x116
	.byte	0x9
	.4byte	0x527
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.4byte	.LASF723
	.byte	0x1
	.byte	0xe1
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc9
	.uleb128 0x1c
	.4byte	.LASF711
	.byte	0x1
	.byte	0xe1
	.byte	0x26
	.4byte	0x527
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF724
	.byte	0x1
	.byte	0xea
	.byte	0x14
	.4byte	0x29
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1d
	.4byte	.LASF725
	.byte	0x1
	.byte	0xeb
	.byte	0x14
	.4byte	0x29
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF726
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbee
	.uleb128 0x1c
	.4byte	.LASF727
	.byte	0x1
	.byte	0xdd
	.byte	0x31
	.4byte	0x80c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF729
	.byte	0x1
	.byte	0xd8
	.byte	0xf
	.4byte	0x80c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1d
	.uleb128 0x1f
	.4byte	.LASF728
	.byte	0x1
	.byte	0xd8
	.byte	0x39
	.4byte	0x29
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF730
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.4byte	0x527
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc4c
	.uleb128 0x1f
	.4byte	.LASF727
	.byte	0x1
	.byte	0xd4
	.byte	0x2b
	.4byte	0x80c
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF731
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xced
	.uleb128 0x1f
	.4byte	.LASF711
	.byte	0x1
	.byte	0xa3
	.byte	0x25
	.4byte	0x527
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x16
	.4byte	.LVL43
	.4byte	0xf14
	.4byte	0xc8a
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL44
	.4byte	0xf14
	.4byte	0xc9e
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x16
	.4byte	.LVL45
	.4byte	0xf14
	.4byte	0xcb2
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xf14
	.4byte	0xcc6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x16
	.4byte	.LVL47
	.4byte	0xf14
	.4byte	0xcdb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL48
	.4byte	0xf14
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF732
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.4byte	0x527
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfc
	.uleb128 0x1f
	.4byte	.LASF711
	.byte	0x1
	.byte	0x65
	.byte	0x23
	.4byte	0x527
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1d
	.4byte	.LASF728
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.4byte	.LASF733
	.byte	0x1
	.byte	0x68
	.byte	0xc
	.4byte	0x527
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x16
	.4byte	.LVL26
	.4byte	0xf50
	.4byte	0xd62
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL27
	.4byte	0xf50
	.4byte	0xd81
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x16
	.4byte	.LVL28
	.4byte	0xf50
	.4byte	0xda0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL29
	.4byte	0xf50
	.4byte	0xdbf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x16
	.4byte	.LVL30
	.4byte	0xf50
	.4byte	0xddf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL31
	.4byte	0xf50
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF734
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe39
	.uleb128 0x20
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x21
	.4byte	.LASF728
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.4byte	0x29
	.uleb128 0x1a
	.4byte	.LVL11
	.4byte	0xf5c
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF735
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf14
	.uleb128 0x1f
	.4byte	.LASF711
	.byte	0x1
	.byte	0x21
	.byte	0x1f
	.4byte	0x527
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1f
	.4byte	.LASF736
	.byte	0x1
	.byte	0x21
	.byte	0x33
	.4byte	0x80c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.4byte	.LVL3
	.4byte	0xf50
	.4byte	0xe91
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 6
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL4
	.4byte	0xf50
	.4byte	0xeab
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 22
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x16
	.4byte	.LVL5
	.4byte	0xf50
	.4byte	0xec5
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 38
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.byte	0
	.uleb128 0x16
	.4byte	.LVL6
	.4byte	0xf50
	.4byte	0xedf
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 60
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0x16
	.4byte	.LVL7
	.4byte	0xf50
	.4byte	0xefb
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x77
	.sleb128 76
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0xf50
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x77
	.sleb128 92
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 92
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF737
	.4byte	.LASF737
	.byte	0x3
	.byte	0x72
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF738
	.4byte	.LASF738
	.byte	0x3
	.byte	0x74
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF739
	.4byte	.LASF739
	.byte	0x9
	.byte	0x1f
	.byte	0x18
	.uleb128 0x22
	.4byte	.LASF740
	.4byte	.LASF740
	.byte	0x9
	.byte	0x23
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF741
	.4byte	.LASF741
	.byte	0x3
	.byte	0x60
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF742
	.4byte	.LASF742
	.byte	0x3
	.byte	0x73
	.byte	0xd
	.uleb128 0x22
	.4byte	.LASF743
	.4byte	.LASF743
	.byte	0x5
	.byte	0x59
	.byte	0xd
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
	.uleb128 0x39
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
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2117
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS11:
	.uleb128 0
	.uleb128 .LVU500
	.uleb128 .LVU500
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU528
	.uleb128 .LVU528
	.uleb128 0
.LLST11:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL85-.Ltext0
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
.LVUS12:
	.uleb128 0
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU527
	.uleb128 .LVU527
	.uleb128 0
.LLST12:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL86-1-.Ltext0
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
.LVUS13:
	.uleb128 0
	.uleb128 .LVU501
	.uleb128 .LVU501
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU530
	.uleb128 .LVU530
	.uleb128 0
.LLST13:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL86-1-.Ltext0
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
.LVUS14:
	.uleb128 0
	.uleb128 .LVU488
	.uleb128 .LVU488
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU530
	.uleb128 .LVU530
	.uleb128 0
.LLST14:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
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
.LVUS15:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST15:
	.4byte	.LVL83-.Ltext0
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
.LVUS16:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST16:
	.4byte	.LVL83-.Ltext0
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
.LVUS17:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST17:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
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
.LVUS18:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST18:
	.4byte	.LVL83-.Ltext0
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
.LVUS19:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST19:
	.4byte	.LVL83-.Ltext0
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
.LVUS20:
	.uleb128 0
	.uleb128 .LVU526
	.uleb128 .LVU526
	.uleb128 .LVU529
	.uleb128 .LVU529
	.uleb128 0
.LLST20:
	.4byte	.LVL83-.Ltext0
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
.LVUS10:
	.uleb128 0
	.uleb128 .LVU409
	.uleb128 .LVU409
	.uleb128 .LVU464
	.uleb128 .LVU464
	.uleb128 0
.LLST10:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU329
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 .LVU367
	.uleb128 .LVU368
	.uleb128 0
.LLST8:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU330
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU350
	.uleb128 .LVU350
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU359
	.uleb128 .LVU359
	.uleb128 .LVU362
	.uleb128 .LVU366
	.uleb128 .LVU367
	.uleb128 .LVU368
	.uleb128 .LVU369
	.uleb128 .LVU369
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 .LVU371
	.uleb128 .LVU371
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 0
.LLST9:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 0
.LLST7:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 0
.LLST6:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU264
	.uleb128 .LVU264
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 0
.LLST5:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL49-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST2:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU112
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU150
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 0
.LLST3:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x30
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
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU113
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 0
.LLST4:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
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
	.4byte	.LVL10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
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
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 10 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF447
	.file 11 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF475
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 12 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF501
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF502
	.file 13 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_firstinc.h"
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
	.4byte	.LASF503
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xa
	.byte	0x4
	.file 14 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 15 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF516
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.file 16 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF519
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF520
	.file 17 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF521
	.byte	0x4
	.file 18 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF522
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF523
	.byte	0x4
	.file 19 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF524
	.byte	0x4
	.byte	0x4
	.file 20 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.8bac157412d48ac314a9662d5a78abe6,comdat
.Ldebug_macro2:
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
	.byte	0x6
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x6
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
	.byte	0x6
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x6
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
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x6
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
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
	.byte	0x6
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x6
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x6
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
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x6
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_config.h.2.f6eac9d90a921b6f21f0ccaa4f0194d3,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF474
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.552e5427eb955534308d342b866fde4e,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF500
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.6666b50e8a518cf90a10402c04d546aa,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF515
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.95.8d8bf4690dc541f58a865736bc15fd8a,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF518
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.322205b6bc95ffadb60992ab4fdadeef,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF528
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.15617e18d7400fa01024e50e30c98462,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF533
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
.LASF577:
	.ascii	"E_FUNC_SHUTDOWN\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF723:
	.ascii	"ADD_TO_SCHEDULING_QUEUE\000"
.LASF460:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF673:
	.ascii	"TASK1_STACK_POS\000"
.LASF488:
	.ascii	"MCU_X86 3\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF547:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF474:
	.ascii	"OS_PROCESS_STACK_TASK4_SIZE 0x200u\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF430:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF417:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF580:
	.ascii	"E_FUNC_STATE_HANDLER\000"
.LASF585:
	.ascii	"timebig_t\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF695:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF526:
	.ascii	"FIRST_TASK (0u)\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF691:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF688:
	.ascii	"TASK4_STACK\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF550:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF592:
	.ascii	"privilige_mode_e\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF565:
	.ascii	"E_FUNC_DELETETASKENVIRONMENT\000"
.LASF519:
	.ascii	"_LED_H_ \000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF156:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF583:
	.ascii	"unsigned int\000"
.LASF458:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF596:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF649:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF544:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF477:
	.ascii	"FALSE 0u\000"
.LASF737:
	.ascii	"ASSIGN_NULL\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF669:
	.ascii	"TASK0_STACK_ADDR\000"
.LASF636:
	.ascii	"task_t\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF2:
	.ascii	"__GNUC__ 8\000"
.LASF561:
	.ascii	"E_FUNC_NOFUNCTION\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF666:
	.ascii	"OS_MAIN_STACK_ADDR\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF618:
	.ascii	"wait_act_until\000"
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
.LASF743:
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
.LASF738:
	.ascii	"ASSIGN_UINT32\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF528:
	.ascii	"FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK;"
	.ascii	" (var) <= LAST_TASK; (var)++)\000"
.LASF722:
	.ascii	"GET_IDLE_TASK\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF689:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF654:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF569:
	.ascii	"E_FUNC_TERMINATETASK\000"
.LASF412:
	.ascii	"__ARM_ARCH 7\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF628:
	.ascii	"task_state\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF434:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF428:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF670:
	.ascii	"TASK0_STACK_POS\000"
.LASF708:
	.ascii	"SYSTEM_STATE_ACCEPTED\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF680:
	.ascii	"TASK3_STACK_USAGE_PERCENT\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF612:
	.ascii	"active\000"
.LASF471:
	.ascii	"OS_PROCESS_STACK_TASK1_SIZE 0x200u\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF456:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF571:
	.ascii	"E_FUNC_INITTASK\000"
.LASF537:
	.ascii	"uint8\000"
.LASF678:
	.ascii	"TASK3_STACK_ADDR\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF415:
	.ascii	"__thumb2__ 1\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF631:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF494:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF635:
	.ascii	"privilige_mode\000"
.LASF424:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF560:
	.ascii	"os_sw_bugs_function_e\000"
.LASF607:
	.ascii	"number\000"
.LASF601:
	.ascii	"E_TASK_RUNNING\000"
.LASF698:
	.ascii	"TASK_2_VAR\000"
.LASF506:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF515:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF617:
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
.LASF627:
	.ascii	"state_request\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF656:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF406:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF444:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF725:
	.ascii	"index\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF563:
	.ascii	"E_FUNC_RESTORETASKENVIRONMENT\000"
.LASF705:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF620:
	.ascii	"time_to_prio_inc\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF629:
	.ascii	"task_group\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF201:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF416:
	.ascii	"__THUMBEL__ 1\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF194:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF555:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF475:
	.ascii	"_OS_BASE_TYPES_H_ \000"
.LASF436:
	.ascii	"__ARM_EABI__ 1\000"
.LASF5:
	.ascii	"__VERSION__ \"8.3.1 20190703 (release) [gcc-8-branc"
	.ascii	"h revision 273027]\"\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF462:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF398:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF570:
	.ascii	"E_FUNC_TASKSCHEDULER\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF447:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF404:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF660:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF582:
	.ascii	"E_FUNC_SHIFT_LEFT\000"
.LASF598:
	.ascii	"E_TASK_UNSPECIFIED\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF671:
	.ascii	"TASK0_STACK_USAGE_PERCENT\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF746:
	.ascii	"C:\\Program Files (x86)\\GNU Tools ARM Embedded\\8 "
	.ascii	"2019-q3-update\\bin\000"
.LASF513:
	.ascii	"TASK4_STACK_SIZE 2000u\000"
.LASF721:
	.ascii	"ADD_TO_IDLE_TASK_QUEUE\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF707:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF514:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF716:
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
.LASF717:
	.ascii	"core\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF622:
	.ascii	"max_allowed_wait_time\000"
.LASF521:
	.ascii	"_OS_STACK_H_ \000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF419:
	.ascii	"__ARMEL__ 1\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF733:
	.ascii	"ret_task\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF551:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF658:
	.ascii	"DBG_RLD_VALUE\000"
.LASF407:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF483:
	.ascii	"LOCAL static\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF450:
	.ascii	"INTEGER_LP64_I32LP64 2u\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF420:
	.ascii	"__SOFTFP__ 1\000"
.LASF653:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF624:
	.ascii	"current_prio\000"
.LASF533:
	.ascii	"TASK_3_PTR 3u\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF499:
	.ascii	"HALT_MCU() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF23:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF589:
	.ascii	"E_CORE2\000"
.LASF524:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF590:
	.ascii	"E_CORE3\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF495:
	.ascii	"ENABLE_INTERRUPTS() LLF_INT_ENABLE()\000"
.LASF461:
	.ascii	"NR_OF_CORES 1u\000"
.LASF408:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF527:
	.ascii	"LAST_TASK (MAX_RUN_QUEUE_SIZE-1u)\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF615:
	.ascii	"free\000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF504:
	.ascii	"_OS_TASK_CONFIG_H_ \000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF399:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF597:
	.ascii	"task_state_e\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF449:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF690:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF403:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF630:
	.ascii	"p_stack_pointer\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF602:
	.ascii	"task_state_t\000"
.LASF554:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF568:
	.ascii	"E_FUNC_PREEMPTTASK\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF728:
	.ascii	"element_nr\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF609:
	.ascii	"fair_exe_time\000"
.LASF411:
	.ascii	"__ARM_ARCH\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF400:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF479:
	.ascii	"False FALSE\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF532:
	.ascii	"TASK_2_PTR 2u\000"
.LASF651:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF710:
	.ascii	"OS_MAIN_STACK\000"
.LASF433:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF512:
	.ascii	"TASK3_STACK_SIZE 2000u\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF638:
	.ascii	"scheduler_time_t\000"
.LASF545:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF646:
	.ascii	"OS_SW_BUG\000"
.LASF227:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF736:
	.ascii	"scheduling_task\000"
.LASF435:
	.ascii	"__ARM_PCS 1\000"
.LASF732:
	.ascii	"ADD_TO_TASK_QUEUE\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF706:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF556:
	.ascii	"E_OS_BUG_DIVISION_BY_ZERO\000"
.LASF567:
	.ascii	"E_FUNC_STARTTASK\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF503:
	.ascii	"_OS_TASK_COMMON_H_ \000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF468:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4u\000"
.LASF452:
	.ascii	"INTEGER_SILP64 4u\000"
.LASF492:
	.ascii	"DWT_LAR ((volatile uint32*)0xE0001FB0u)\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF574:
	.ascii	"E_FUNC_PREEMPT_TASK\000"
.LASF603:
	.ascii	"func_p_t\000"
.LASF518:
	.ascii	"OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(tas"
	.ascii	"k_name)])\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF562:
	.ascii	"E_FUNC_SAVETASKENVIRONMENT\000"
.LASF463:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF467:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF685:
	.ascii	"TASK1_STACK\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF605:
	.ascii	"big_int_s\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF546:
	.ascii	"E_OS_BUG_NULL_POINTER\000"
.LASF423:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF153:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF217:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF480:
	.ascii	"True TRUE\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF216:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF572:
	.ascii	"E_FUNC_ACTIVATETASK\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF625:
	.ascii	"default_prio\000"
.LASF418:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF469:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8u\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF682:
	.ascii	"TASK4_STACK_POS\000"
.LASF422:
	.ascii	"__ARM_FP\000"
.LASF529:
	.ascii	"_OS_TASK_SCHEDULER_H_ \000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF557:
	.ascii	"E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\000"
.LASF410:
	.ascii	"__arm__ 1\000"
.LASF523:
	.ascii	"_OS_MAIN_H_ \000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF711:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF681:
	.ascii	"TASK4_STACK_ADDR\000"
.LASF520:
	.ascii	"_OS_RAM_H_ \000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF665:
	.ascii	"TASK4_CALL_NR\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF655:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF548:
	.ascii	"E_OS_BUG_TASK_UNSPECIFIED\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF478:
	.ascii	"TRUE 1u\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF497:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF677:
	.ascii	"TASK2_STACK_USAGE_PERCENT\000"
.LASF742:
	.ascii	"ASSIGN\000"
.LASF431:
	.ascii	"__ARM_NEON\000"
.LASF594:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF696:
	.ascii	"TASK_0_VAR\000"
.LASF694:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF697:
	.ascii	"TASK_1_VAR\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF600:
	.ascii	"E_TASK_READY\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF735:
	.ascii	"SET_RUNNING_TASK\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF536:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF543:
	.ascii	"uint32\000"
.LASF442:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF623:
	.ascii	"start_time\000"
.LASF613:
	.ascii	"task_queued\000"
.LASF432:
	.ascii	"__ARM_NEON_FP\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF510:
	.ascii	"TASK1_STACK_SIZE 2000u\000"
.LASF584:
	.ascii	"big_int\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF186:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF522:
	.ascii	"_OS_HEAP_H_ \000"
.LASF712:
	.ascii	"TaskFunction\000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF687:
	.ascii	"TASK3_STACK\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF604:
	.ascii	"func_p_state_change_t\000"
.LASF476:
	.ascii	"_OS_COMMON_H_ \000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF606:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF668:
	.ascii	"OS_MAIN_STACK_USAGE_PERCENT\000"
.LASF729:
	.ascii	"GET_FROM_SCHEDULING_QUEUE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF453:
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
.LASF402:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF485:
	.ascii	"GLOBAL_INLINE __inline__\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF465:
	.ascii	"HEAP_SIZE 10000u\000"
.LASF155:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF490:
	.ascii	"DWT_CTRL ((volatile uint32*)0xE0001000u)\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF486:
	.ascii	"REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\000"
.LASF679:
	.ascii	"TASK3_STACK_POS\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF530:
	.ascii	"TASK_0_PTR 0u\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF425:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF451:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF739:
	.ascii	"OS_TASK_STATE_REQUEST\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF509:
	.ascii	"TASK0_STACK_SIZE 2000u\000"
.LASF566:
	.ascii	"E_FUNC_INITTASKENVIRONMENT\000"
.LASF662:
	.ascii	"TASK1_CALL_NR\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF472:
	.ascii	"OS_PROCESS_STACK_TASK2_SIZE 0x200u\000"
.LASF454:
	.ascii	"CPP_VERSION_NONE 0u\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF496:
	.ascii	"PRIVILIGE_LEVEL_SAVE_CURRENT() ;\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF539:
	.ascii	"short int\000"
.LASF709:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF611:
	.ascii	"task_s\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF542:
	.ascii	"long int\000"
.LASF446:
	.ascii	"STM32F407VG 1\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF727:
	.ascii	"scheduling_queue_element\000"
.LASF642:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF586:
	.ascii	"coreid_e\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF517:
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
.LASF507:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF719:
	.ascii	"GET_RUNNING_TASK\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF445:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF484:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF591:
	.ascii	"coreid_t\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF564:
	.ascii	"E_FUNC_CREATETASKENVIRONMENT\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF731:
	.ascii	"DELETE_FROM_TASK_QUEUE\000"
.LASF511:
	.ascii	"TASK2_STACK_SIZE 2000u\000"
.LASF525:
	.ascii	"_OS_TASK_QUEUE_H_ \000"
.LASF741:
	.ascii	"OS_SET_SW_BUG\000"
.LASF489:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF429:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF593:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF159:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF502:
	.ascii	"_LLD_CORE_H_ \000"
.LASF473:
	.ascii	"OS_PROCESS_STACK_TASK3_SIZE 0x200u\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF164:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF405:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF578:
	.ascii	"E_FUNC_STACKCHECK\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF713:
	.ascii	"AllowedInstances\000"
.LASF686:
	.ascii	"TASK2_STACK\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF745:
	.ascii	"C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_"
	.ascii	"base\\os_task_queue.c\000"
.LASF45:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF176:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF441:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF29:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF421:
	.ascii	"__VFP_FP__ 1\000"
.LASF579:
	.ascii	"E_FUNC_ISRHANDLER\000"
.LASF664:
	.ascii	"TASK3_CALL_NR\000"
.LASF614:
	.ascii	"idle_task\000"
.LASF531:
	.ascii	"TASK_1_PTR 1u\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF652:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF549:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF641:
	.ascii	"OS_STATE_RUNNING\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF634:
	.ascii	"p_stack_pointer_end\000"
.LASF744:
	.ascii	"GNU C89 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m4 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7e-m -g3 -O3 -std=c90\000"
.LASF541:
	.ascii	"long unsigned int\000"
.LASF487:
	.ascii	"NULL ((void*)0)\000"
.LASF500:
	.ascii	"AMOUNT_SW_BUG_FUNCTIONS 22\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF672:
	.ascii	"TASK1_STACK_ADDR\000"
.LASF693:
	.ascii	"RUNNING_TASK\000"
.LASF498:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF632:
	.ascii	"p_stack_pointer_start\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF659:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF616:
	.ascii	"nr_of_ins_allowed\000"
.LASF683:
	.ascii	"TASK4_STACK_USAGE_PERCENT\000"
.LASF516:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF576:
	.ascii	"E_FUNC_CREATETASK\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF587:
	.ascii	"E_CORE0\000"
.LASF588:
	.ascii	"E_CORE1\000"
.LASF730:
	.ascii	"GET_FROM_TASK_QUEUE\000"
.LASF559:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF552:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF645:
	.ascii	"HEAP\000"
.LASF501:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF457:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF657:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF724:
	.ascii	"Add_successful\000"
.LASF558:
	.ascii	"os_sw_bugs_t\000"
.LASF534:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF466:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF459:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF621:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF647:
	.ascii	"OS_STATE\000"
.LASF667:
	.ascii	"OS_MAIN_STACK_POS\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF482:
	.ascii	"REJECTED 0u\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF699:
	.ascii	"TASK_3_VAR\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF675:
	.ascii	"TASK2_STACK_ADDR\000"
.LASF508:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF626:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF595:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF505:
	.ascii	"TASK_MIN_TIME (1e0)\000"
.LASF608:
	.ascii	"exe_time\000"
.LASF639:
	.ascii	"os_state_e\000"
.LASF599:
	.ascii	"E_TASK_SUSPENDED\000"
.LASF720:
	.ascii	"OS_INIT_TASK\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF676:
	.ascii	"TASK2_STACK_POS\000"
.LASF575:
	.ascii	"E_FUNC_OS_EXCEPTION\000"
.LASF448:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF470:
	.ascii	"OS_MAIN_STACK_SIZE 0x400u\000"
.LASF643:
	.ascii	"os_state_t\000"
.LASF715:
	.ascii	"pStackAddr\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF540:
	.ascii	"unsigned_int32_t\000"
.LASF619:
	.ascii	"wait_time\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF740:
	.ascii	"OS_CREATE_TASK\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF674:
	.ascii	"TASK1_STACK_USAGE_PERCENT\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF413:
	.ascii	"__APCS_32__ 1\000"
.LASF684:
	.ascii	"TASK0_STACK\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF535:
	.ascii	"signed char\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF661:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF553:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF481:
	.ascii	"ACCEPTED 1u\000"
.LASF538:
	.ascii	"short unsigned int\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF610:
	.ascii	"task_group_t\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF409:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF644:
	.ascii	"TASK_PTR\000"
.LASF692:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF718:
	.ascii	"GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF414:
	.ascii	"__thumb__ 1\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF443:
	.ascii	"__ELF__ 1\000"
.LASF573:
	.ascii	"E_FUNC_TASKSTATEREQUEST\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF663:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF734:
	.ascii	"OS_INIT_TASK_QUEUE\000"
.LASF633:
	.ascii	"stack_size\000"
.LASF178:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF221:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF700:
	.ascii	"TASK_GROUP_1\000"
.LASF701:
	.ascii	"TASK_GROUP_2\000"
.LASF702:
	.ascii	"TASK_GROUP_3\000"
.LASF703:
	.ascii	"TASK_GROUP_4\000"
.LASF704:
	.ascii	"TASK_GROUP_5\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF650:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF493:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF714:
	.ascii	"p_task_group\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF464:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF491:
	.ascii	"DWT_CYCCNT ((volatile uint32*)0xE0001004u)\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF637:
	.ascii	"scheduling_t\000"
.LASF726:
	.ascii	"DELETE_FROM_SCHEDULING_QUEUE\000"
.LASF581:
	.ascii	"E_FUNC_INTDIV\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF640:
	.ascii	"OS_STATE_INIT\000"
.LASF401:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF455:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF648:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF198:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF165:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
