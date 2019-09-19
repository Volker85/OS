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
	.file	"os_task_common.c"
@ GNU C89 (GNU Tools for Arm Embedded Processors 8-2019-q3-update) version 8.3.1 20190703 (release) [gcc-8-branch revision 273027] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m/nofp
@ -iprefix c:\program files (x86)\gnu tools arm embedded\8 2019-q3-update\bin\../lib/gcc/arm-none-eabi/8.3.1/
@ -isysroot c:\program files (x86)\gnu tools arm embedded\8 2019-q3-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c
@ -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -march=armv7e-m
@ -auxbase-strip C:\Users\president\Desktop\sbx\output\os_base\obj_arm\os_task_common.s
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
	.global	OS_TASK_SAVE_TASK_ENVIRONMENT
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TASK_SAVE_TASK_ENVIRONMENT, %function
OS_TASK_SAVE_TASK_ENVIRONMENT:
.LVL0:
.LFB0:
	.file 1 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_common.c"
	.loc 1 16 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 17 4 view .LVU1
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:17:    if(task != NULL)
	.loc 1 17 6 is_stmt 0 view .LVU2
	cbz	r0, .L2	@ task,
	.loc 1 23 7 is_stmt 1 view .LVU3
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:16: {
	.loc 1 16 1 is_stmt 0 view .LVU4
	push	{r4, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:23:       LLF_SAVE_TASK_STACK(task->p_stack_pointer);
	.loc 1 23 7 view .LVU5
	ldr	r0, [r0, #184]	@, task_7(D)->p_stack_pointer
.LVL1:
	.loc 1 23 7 view .LVU6
	bl	LLF_SAVE_TASK_STACK		@
.LVL2:
	.loc 1 27 7 is_stmt 1 view .LVU7
	ldrd	r2, r3, [r4, #140]	@,, task,
	ldrd	r0, r1, [r4, #132]	@,, task,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:35: }
	.loc 1 35 1 is_stmt 0 view .LVU8
	pop	{r4, lr}	@
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL3:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:27:       LLF_SAVE_REGISTERS(task->r0,task->r1,task->r2,task->r3);
	.loc 1 27 7 view .LVU9
	b	LLF_SAVE_REGISTERS		@
.LVL4:
.L2:
	.loc 1 32 7 is_stmt 1 view .LVU10
	movs	r1, #1	@,
	movs	r0, #2	@,
.LVL5:
	.loc 1 32 7 is_stmt 0 view .LVU11
	b	OS_SET_SW_BUG		@
.LVL6:
	.cfi_endproc
.LFE0:
	.size	OS_TASK_SAVE_TASK_ENVIRONMENT, .-OS_TASK_SAVE_TASK_ENVIRONMENT
	.align	1
	.p2align 2,,3
	.global	OS_TASK_RESTORETASK_ENVIRONMENT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TASK_RESTORETASK_ENVIRONMENT, %function
OS_TASK_RESTORETASK_ENVIRONMENT:
.LVL7:
.LFB1:
	.loc 1 38 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 39 4 view .LVU13
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:39:    if(task != NULL)
	.loc 1 39 6 is_stmt 0 view .LVU14
	cbz	r0, .L8	@ task,
	.loc 1 41 7 is_stmt 1 view .LVU15
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:38: {
	.loc 1 38 1 is_stmt 0 view .LVU16
	push	{r4, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0	@ task, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:41:       LLF_RESTORE_TASK_STACK(task->p_stack_pointer);
	.loc 1 41 7 view .LVU17
	ldr	r0, [r0, #184]	@, task_3(D)->p_stack_pointer
.LVL8:
	.loc 1 41 7 view .LVU18
	bl	LLF_RESTORE_TASK_STACK		@
.LVL9:
	.loc 1 42 7 is_stmt 1 view .LVU19
	mov	r0, r4	@, task
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:48: }
	.loc 1 48 1 is_stmt 0 view .LVU20
	pop	{r4, lr}	@
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL10:
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:42:       LLF_RESTORE_REGISTERS(task);
	.loc 1 42 7 view .LVU21
	b	LLF_RESTORE_REGISTERS		@
.LVL11:
.L8:
	.loc 1 46 7 is_stmt 1 view .LVU22
	movs	r1, #2	@,
	mov	r0, r1	@,
.LVL12:
	.loc 1 46 7 is_stmt 0 view .LVU23
	b	OS_SET_SW_BUG		@
.LVL13:
	.cfi_endproc
.LFE1:
	.size	OS_TASK_RESTORETASK_ENVIRONMENT, .-OS_TASK_RESTORETASK_ENVIRONMENT
	.align	1
	.p2align 2,,3
	.global	OS_TASK_RESTORE_SYSTEM_STACK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TASK_RESTORE_SYSTEM_STACK, %function
OS_TASK_RESTORE_SYSTEM_STACK:
.LVL14:
.LFB2:
	.loc 1 50 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 51 4 view .LVU25
	b	LLF_RESTORE_SYSTEM_STACK		@
.LVL15:
	.loc 1 51 4 is_stmt 0 view .LVU26
	.cfi_endproc
.LFE2:
	.size	OS_TASK_RESTORE_SYSTEM_STACK, .-OS_TASK_RESTORE_SYSTEM_STACK
	.align	1
	.p2align 2,,3
	.global	OS_TASK_SAVE_SYSTEM_STACK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TASK_SAVE_SYSTEM_STACK, %function
OS_TASK_SAVE_SYSTEM_STACK:
.LVL16:
.LFB3:
	.loc 1 54 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 55 4 view .LVU28
	b	LLF_SAVE_SYSTEM_STACK		@
.LVL17:
	.loc 1 55 4 is_stmt 0 view .LVU29
	.cfi_endproc
.LFE3:
	.size	OS_TASK_SAVE_SYSTEM_STACK, .-OS_TASK_SAVE_SYSTEM_STACK
	.align	1
	.p2align 2,,3
	.global	OS_TASK_INIT_TASK_ENVIRONMENT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_TASK_INIT_TASK_ENVIRONMENT, %function
OS_TASK_INIT_TASK_ENVIRONMENT:
.LVL18:
.LFB4:
	.loc 1 58 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 59 4 view .LVU31
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:59:    if(task != NULL)
	.loc 1 59 6 is_stmt 0 view .LVU32
	cmp	r0, #0	@ task
	beq	.L15	@
	.loc 1 62 7 is_stmt 1 view .LVU33
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:58: {
	.loc 1 58 1 is_stmt 0 view .LVU34
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:62:       task->active                = FALSE;
	.loc 1 62 35 view .LVU35
	ldrb	r3, [r0]	@ zero_extendqisi2	@, task_7(D)->active
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:70:       task->r0                             = (unsigned_int32_t)       0u;
	.loc 1 70 44 view .LVU36
	movs	r5, #0	@ tmp121,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:62:       task->active                = FALSE;
	.loc 1 62 35 view .LVU37
	bfc	r3, #0, #1	@ task_7(D)->active,,
	mov	r4, r0	@ task, task
	strb	r3, [r0]	@ task_7(D)->active, task_7(D)->active
	.loc 1 70 7 is_stmt 1 view .LVU38
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:82:       task->r12                             = (unsigned_int32_t)       0u;
	.loc 1 82 45 is_stmt 0 view .LVU39
	str	r5, [r0, #180]	@ tmp121, task_7(D)->r12
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:71:       task->r1                             = (unsigned_int32_t)       0u;
	.loc 1 71 44 view .LVU40
	strd	r5, r5, [r0, #132]	@ tmp121, tmp121, task,
	.loc 1 72 7 is_stmt 1 view .LVU41
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:73:       task->r3                             = (unsigned_int32_t)       0u;
	.loc 1 73 44 is_stmt 0 view .LVU42
	strd	r5, r5, [r0, #140]	@ tmp121, tmp121, task,
	.loc 1 74 7 is_stmt 1 view .LVU43
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:75:       task->r5                             = (unsigned_int32_t)       0u;
	.loc 1 75 44 is_stmt 0 view .LVU44
	strd	r5, r5, [r0, #148]	@ tmp121, tmp121, task,
	.loc 1 76 7 is_stmt 1 view .LVU45
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:77:       task->r7                             = (unsigned_int32_t)       0u;
	.loc 1 77 44 is_stmt 0 view .LVU46
	strd	r5, r5, [r0, #156]	@ tmp121, tmp121, task,
	.loc 1 78 7 is_stmt 1 view .LVU47
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:79:       task->r9                             = (unsigned_int32_t)       0u;
	.loc 1 79 44 is_stmt 0 view .LVU48
	strd	r5, r5, [r0, #164]	@ tmp121, tmp121, task,
	.loc 1 80 7 is_stmt 1 view .LVU49
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:81:       task->r11                             = (unsigned_int32_t)       0u;
	.loc 1 81 45 is_stmt 0 view .LVU50
	strd	r5, r5, [r0, #172]	@ tmp121, tmp121, task,
	.loc 1 82 7 is_stmt 1 view .LVU51
	.loc 1 85 7 view .LVU52
	adds	r0, r0, #6	@, task,
.LVL19:
	.loc 1 85 7 is_stmt 0 view .LVU53
	bl	ASSIGN_NULL		@
.LVL20:
	.loc 1 86 7 is_stmt 1 view .LVU54
	add	r0, r4, #22	@, task,
	bl	ASSIGN_NULL		@
.LVL21:
	.loc 1 87 7 view .LVU55
	movs	r1, #5	@,
	add	r0, r4, #38	@, task,
	bl	ASSIGN_UINT32		@
.LVL22:
	.loc 1 88 7 view .LVU56
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:88:       task->overwaittime_per_prio_inc_step   = (unsigned_int32_t)        1u;/* has to be >=1 */
	.loc 1 88 46 is_stmt 0 view .LVU57
	movs	r3, #1	@ tmp137,
	str	r3, [r4, #56]	@ tmp137, task_7(D)->overwaittime_per_prio_inc_step
	.loc 1 89 7 is_stmt 1 view .LVU58
	ldr	r1, .L21	@,
	add	r0, r4, #60	@, task,
	bl	ASSIGN_UINT32		@
.LVL23:
	.loc 1 90 7 view .LVU59
	add	r0, r4, #76	@, task,
	bl	ASSIGN_NULL		@
.LVL24:
	.loc 1 91 7 view .LVU60
	.loc 1 92 7 view .LVU61
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:97:       task->task_queued                      =                           FALSE;
	.loc 1 97 46 is_stmt 0 view .LVU62
	ldr	r3, [r4]	@ MEM[(struct task_t *)task_7(D)], MEM[(struct task_t *)task_7(D)]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:95:       task->state_request                    =                           &OS_TASK_STATE_REQUEST;
	.loc 1 95 46 view .LVU63
	ldr	r2, .L21+4	@ tmp143,
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:91:       task->current_prio                     = (unsigned_char_t)         0u;
	.loc 1 91 46 view .LVU64
	strh	r5, [r4, #108]	@ movhi	@ tmp121, MEM[(unsigned char *)task_7(D) + 108B]
	.loc 1 95 7 is_stmt 1 view .LVU65
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:97:       task->task_queued                      =                           FALSE;
	.loc 1 97 46 is_stmt 0 view .LVU66
	and	r3, r3, #5	@ tmp146, MEM[(struct task_t *)task_7(D)],
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:99:       task->nr_of_ins_allowed                   = (unsigned_char_t)         0u;
	.loc 1 99 49 view .LVU67
	strh	r5, [r4, #4]	@ movhi	@ tmp121, MEM[(unsigned char *)task_7(D) + 4B]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:96:       task->task_state                       =                           E_TASK_UNSPECIFIED;
	.loc 1 96 46 view .LVU68
	strb	r5, [r4, #124]	@ tmp121, task_7(D)->task_state
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:101:       task->fp                               = (func_p_t)                0u;
	.loc 1 101 46 view .LVU69
	str	r5, [r4, #116]	@ tmp121, task_7(D)->fp
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:97:       task->task_queued                      =                           FALSE;
	.loc 1 97 46 view .LVU70
	str	r3, [r4]	@ tmp146, MEM[(struct task_t *)task_7(D)]
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:95:       task->state_request                    =                           &OS_TASK_STATE_REQUEST;
	.loc 1 95 46 view .LVU71
	str	r2, [r4, #120]	@ tmp143, task_7(D)->state_request
	.loc 1 96 7 is_stmt 1 view .LVU72
	.loc 1 97 7 view .LVU73
	.loc 1 98 7 view .LVU74
	.loc 1 99 7 view .LVU75
	.loc 1 100 7 view .LVU76
	.loc 1 101 7 view .LVU77
@ C:\Users\president\Desktop\sbx\input\src\os_base\os_task_common.c:108: }
	.loc 1 108 1 is_stmt 0 view .LVU78
	pop	{r3, r4, r5, pc}	@
.LVL25:
.L15:
	.cfi_def_cfa_offset 0
	.cfi_restore 3
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 1 106 7 is_stmt 1 view .LVU79
	movs	r1, #5	@,
	movs	r0, #2	@,
.LVL26:
	.loc 1 106 7 is_stmt 0 view .LVU80
	b	OS_SET_SW_BUG		@
.LVL27:
.L22:
	.align	2
.L21:
	.word	100000
	.word	OS_TASK_STATE_REQUEST
	.cfi_endproc
.LFE4:
	.size	OS_TASK_INIT_TASK_ENVIRONMENT, .-OS_TASK_INIT_TASK_ENVIRONMENT
	.comm	TASK_PTR,40,4
.Letext0:
	.file 2 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_base_types.h"
	.file 3 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_common.h"
	.file 4 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_task_common.h"
	.file 6 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_main.h"
	.file 7 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_ram.h"
	.file 8 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_ram_stack.h"
	.file 9 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_drivers\\lld_global.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF717
	.byte	0x1
	.4byte	.LASF718
	.4byte	.LASF719
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF532
	.byte	0x2
	.byte	0x11
	.byte	0x18
	.4byte	0x35
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF530
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF531
	.uleb128 0x2
	.4byte	.LASF533
	.byte	0x2
	.byte	0x15
	.byte	0x18
	.4byte	0x35
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF534
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF535
	.uleb128 0x2
	.4byte	.LASF536
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.4byte	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF537
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF538
	.uleb128 0x2
	.4byte	.LASF539
	.byte	0x2
	.byte	0x1d
	.byte	0x18
	.4byte	0x69
	.uleb128 0x4
	.4byte	0x77
	.uleb128 0x5
	.4byte	.LASF555
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.4byte	0xef
	.uleb128 0x6
	.4byte	.LASF540
	.byte	0
	.uleb128 0x6
	.4byte	.LASF541
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF542
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF543
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF546
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF547
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF551
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF552
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF553
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF554
	.byte	0x3
	.byte	0x3f
	.byte	0x1b
	.4byte	0x88
	.uleb128 0x4
	.4byte	0xef
	.uleb128 0x5
	.4byte	.LASF556
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x3
	.byte	0x43
	.byte	0x6
	.4byte	0x197
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0
	.uleb128 0x6
	.4byte	.LASF558
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF559
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF560
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF561
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF563
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF567
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF568
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF569
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF570
	.byte	0xd
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0xe
	.uleb128 0x6
	.4byte	.LASF572
	.byte	0xf
	.uleb128 0x6
	.4byte	.LASF573
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF574
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF575
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF576
	.byte	0x13
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF578
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.4byte	.LASF595
	.byte	0x10
	.byte	0x3
	.byte	0x63
	.byte	0x10
	.4byte	0x1b2
	.uleb128 0x8
	.4byte	.LASF597
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
	.4byte	.LASF579
	.uleb128 0x2
	.4byte	.LASF580
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.4byte	0x197
	.uleb128 0x2
	.4byte	.LASF581
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.4byte	0x1c9
	.uleb128 0x5
	.4byte	.LASF582
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x4
	.byte	0x13
	.byte	0x6
	.4byte	0x206
	.uleb128 0x6
	.4byte	.LASF583
	.byte	0
	.uleb128 0x6
	.4byte	.LASF584
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF585
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF586
	.byte	0x4
	.byte	0x19
	.byte	0x20
	.4byte	0x1e1
	.uleb128 0x5
	.4byte	.LASF587
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.4byte	0x23d
	.uleb128 0x6
	.4byte	.LASF588
	.byte	0
	.uleb128 0x6
	.4byte	.LASF589
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF590
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF591
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF592
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.4byte	0x212
	.uleb128 0x2
	.4byte	.LASF593
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.4byte	0x255
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25b
	.uleb128 0xc
	.4byte	0x266
	.uleb128 0xd
	.4byte	0x266
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF594
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.4byte	0x274
	.uleb128 0xb
	.byte	0x4
	.4byte	0x27a
	.uleb128 0xf
	.4byte	0x29
	.4byte	0x28e
	.uleb128 0xd
	.4byte	0x266
	.uleb128 0xd
	.4byte	0x23d
	.byte	0
	.uleb128 0x7
	.4byte	.LASF596
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.4byte	0x2b6
	.uleb128 0x8
	.4byte	.LASF598
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.4byte	0x1d5
	.byte	0
	.uleb128 0x8
	.4byte	.LASF599
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.4byte	0x1d5
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF600
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.4byte	0x28e
	.uleb128 0x7
	.4byte	.LASF601
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x4cc
	.uleb128 0x10
	.4byte	.LASF602
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF603
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF604
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF605
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.4byte	0x1c2
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF606
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.4byte	0x29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF607
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.4byte	0x29
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF608
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.4byte	0x1d5
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF609
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.4byte	0x1d5
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF610
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.4byte	0x1d5
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF611
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.4byte	0x77
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF612
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.4byte	0x1d5
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF598
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.4byte	0x1d5
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF613
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.4byte	0x1d5
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF614
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF615
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF616
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
	.4byte	0x249
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF617
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.4byte	0x268
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF618
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.4byte	0x23d
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF619
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.4byte	0x4cc
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
	.4byte	.LASF620
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.4byte	0x4d2
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF621
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.4byte	0x4d2
	.byte	0xbc
	.uleb128 0x8
	.4byte	.LASF622
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.4byte	0x4d2
	.byte	0xc0
	.uleb128 0x8
	.4byte	.LASF623
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.4byte	0x5d
	.byte	0xc4
	.uleb128 0x8
	.4byte	.LASF624
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.4byte	0x4d2
	.byte	0xc8
	.uleb128 0x8
	.4byte	.LASF625
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.4byte	0x206
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2b6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF626
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.4byte	0x2c2
	.uleb128 0x2
	.4byte	.LASF627
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.4byte	0x4f0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4d8
	.uleb128 0x9
	.4byte	0x4f0
	.4byte	0x506
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.4byte	0x4f6
	.uleb128 0x2
	.4byte	.LASF628
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.4byte	0x1d5
	.uleb128 0x5
	.4byte	.LASF629
	.byte	0x7
	.byte	0x1
	.4byte	0x35
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.4byte	0x543
	.uleb128 0x6
	.4byte	.LASF630
	.byte	0
	.uleb128 0x6
	.4byte	.LASF631
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF632
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF633
	.byte	0x6
	.byte	0xa
	.byte	0x19
	.4byte	0x51e
	.uleb128 0x4
	.4byte	0x543
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x565
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.4byte	0x554
	.uleb128 0x9
	.4byte	0xfb
	.4byte	0x581
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.4byte	0x571
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.4byte	0x581
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.4byte	0x54f
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.4byte	0x682
	.uleb128 0xb
	.byte	0x4
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF657
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF658
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF659
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.4byte	0x682
	.uleb128 0x12
	.4byte	.LASF660
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF661
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF662
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.4byte	0x682
	.uleb128 0x12
	.4byte	.LASF663
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF664
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF665
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.4byte	0x682
	.uleb128 0x12
	.4byte	.LASF666
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF667
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF668
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.4byte	0x682
	.uleb128 0x12
	.4byte	.LASF669
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF670
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF671
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.4byte	0x682
	.uleb128 0x12
	.4byte	.LASF672
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.4byte	0x83
	.uleb128 0x12
	.4byte	.LASF673
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.4byte	0x83
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x765
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF674
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF675
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF676
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF677
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF678
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.4byte	0x754
	.uleb128 0x12
	.4byte	.LASF679
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.4byte	0x512
	.uleb128 0x9
	.4byte	0x4e4
	.4byte	0x7bd
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF680
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.4byte	0x7ad
	.uleb128 0x12
	.4byte	.LASF681
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.4byte	0x7d5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4e4
	.uleb128 0x9
	.4byte	0x4d8
	.4byte	0x7eb
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF682
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.4byte	0x7db
	.uleb128 0x9
	.4byte	0x4d8
	.4byte	0x807
	.uleb128 0xa
	.4byte	0x1c2
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF683
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.4byte	0x7f7
	.uleb128 0x12
	.4byte	.LASF684
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.4byte	0x7f7
	.uleb128 0x12
	.4byte	.LASF685
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF686
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.4byte	0x4d8
	.uleb128 0x12
	.4byte	.LASF687
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.4byte	0x4d8
	.uleb128 0x12
	.4byte	.LASF688
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.4byte	0x4d8
	.uleb128 0x12
	.4byte	.LASF689
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.4byte	0x4d8
	.uleb128 0x12
	.4byte	.LASF690
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF691
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF692
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF693
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF694
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF695
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.4byte	0x4f0
	.uleb128 0x12
	.4byte	.LASF696
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.4byte	0x23d
	.uleb128 0x12
	.4byte	.LASF697
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.4byte	0x23d
	.uleb128 0x12
	.4byte	.LASF698
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.4byte	0x54f
	.uleb128 0x12
	.4byte	.LASF699
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.4byte	0x1d5
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x8e4
	.uleb128 0x13
	.4byte	0x1c2
	.2byte	0x3ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF700
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.4byte	0x8d3
	.uleb128 0x14
	.4byte	0x506
	.byte	0x1
	.byte	0xd
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_PTR
	.uleb128 0x15
	.4byte	.LASF701
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x16
	.4byte	.LASF703
	.byte	0x1
	.byte	0x39
	.byte	0x2c
	.4byte	0x4f0
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x17
	.4byte	.LVL20
	.4byte	0xadc
	.4byte	0x93c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 6
	.byte	0
	.uleb128 0x17
	.4byte	.LVL21
	.4byte	0xadc
	.4byte	0x950
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 22
	.byte	0
	.uleb128 0x17
	.4byte	.LVL22
	.4byte	0xae8
	.4byte	0x969
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 38
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x17
	.4byte	.LVL23
	.4byte	0xae8
	.4byte	0x986
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
	.4byte	.LVL24
	.4byte	0xadc
	.4byte	0x99b
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.byte	0
	.uleb128 0x19
	.4byte	.LVL27
	.4byte	0xaf4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF702
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9ec
	.uleb128 0x16
	.4byte	.LASF704
	.byte	0x1
	.byte	0x35
	.byte	0x27
	.4byte	0x9ec
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xb00
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x43
	.uleb128 0x15
	.4byte	.LASF705
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2e
	.uleb128 0x16
	.4byte	.LASF704
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.4byte	0x9ec
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0xb0c
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF706
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8b
	.uleb128 0x16
	.4byte	.LASF703
	.byte	0x1
	.byte	0x25
	.byte	0x2e
	.4byte	0x4f0
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1a
	.4byte	.LVL9
	.4byte	0xb18
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0xb24
	.4byte	0xa76
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xaf4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF707
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xadc
	.uleb128 0x16
	.4byte	.LASF703
	.byte	0x1
	.byte	0xf
	.byte	0x2c
	.4byte	0x4f0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1a
	.4byte	.LVL2
	.4byte	0xb30
	.uleb128 0x1c
	.4byte	.LVL4
	.4byte	0xb3c
	.uleb128 0x19
	.4byte	.LVL6
	.4byte	0xaf4
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF708
	.4byte	.LASF708
	.byte	0x3
	.byte	0x72
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF709
	.4byte	.LASF709
	.byte	0x3
	.byte	0x74
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF710
	.4byte	.LASF710
	.byte	0x3
	.byte	0x60
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF711
	.4byte	.LASF711
	.byte	0x9
	.byte	0x15
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF712
	.4byte	.LASF712
	.byte	0x9
	.byte	0x14
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF713
	.4byte	.LASF713
	.byte	0x9
	.byte	0x12
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF714
	.4byte	.LASF714
	.byte	0x9
	.byte	0x13
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF715
	.4byte	.LASF715
	.byte	0x9
	.byte	0x16
	.byte	0xd
	.uleb128 0x1d
	.4byte	.LASF716
	.4byte	.LASF716
	.byte	0x9
	.byte	0x11
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x16
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST4:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST3:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17-1-.Ltext0
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
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST2:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15-1-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST1:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF501
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF502
	.file 12 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
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
	.file 13 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 14 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF516
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.file 15 "c:\\users\\president\\desktop\\sbx\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xf
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
	.file 16 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF521
	.byte	0x4
	.file 17 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x11
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
	.file 18 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
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
	.file 19 "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro7
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
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.15617e18d7400fa01024e50e30c98462,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF529
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF206:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF715:
	.ascii	"LLF_SAVE_TASK_STACK\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF718:
	.ascii	"C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_"
	.ascii	"base\\os_task_common.c\000"
.LASF573:
	.ascii	"E_FUNC_SHUTDOWN\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF551:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF460:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF663:
	.ascii	"TASK1_STACK_POS\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF543:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF474:
	.ascii	"OS_PROCESS_STACK_TASK4_SIZE 0x200u\000"
.LASF676:
	.ascii	"TASK2_STACK\000"
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
.LASF485:
	.ascii	"GLOBAL_INLINE __inline__\000"
.LASF576:
	.ascii	"E_FUNC_STATE_HANDLER\000"
.LASF702:
	.ascii	"OS_TASK_SAVE_SYSTEM_STACK\000"
.LASF581:
	.ascii	"timebig_t\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF685:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF681:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF407:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF678:
	.ascii	"TASK4_STACK\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF546:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF561:
	.ascii	"E_FUNC_DELETETASKENVIRONMENT\000"
.LASF519:
	.ascii	"_LED_H_ \000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF439:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF579:
	.ascii	"unsigned int\000"
.LASF458:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF586:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF639:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF540:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF477:
	.ascii	"FALSE 0u\000"
.LASF708:
	.ascii	"ASSIGN_NULL\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF659:
	.ascii	"TASK0_STACK_ADDR\000"
.LASF626:
	.ascii	"task_t\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF2:
	.ascii	"__GNUC__ 8\000"
.LASF557:
	.ascii	"E_FUNC_NOFUNCTION\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF656:
	.ascii	"OS_MAIN_STACK_ADDR\000"
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
.LASF707:
	.ascii	"OS_TASK_SAVE_TASK_ENVIRONMENT\000"
.LASF40:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF701:
	.ascii	"OS_TASK_INIT_TASK_ENVIRONMENT\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF235:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF174:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF195:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF711:
	.ascii	"LLF_SAVE_SYSTEM_STACK\000"
.LASF582:
	.ascii	"privilige_mode_e\000"
.LASF709:
	.ascii	"ASSIGN_UINT32\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF679:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF644:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF565:
	.ascii	"E_FUNC_TERMINATETASK\000"
.LASF716:
	.ascii	"LLF_SAVE_REGISTERS\000"
.LASF412:
	.ascii	"__ARM_ARCH 7\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF618:
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
.LASF660:
	.ascii	"TASK0_STACK_POS\000"
.LASF698:
	.ascii	"SYSTEM_STATE_ACCEPTED\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF670:
	.ascii	"TASK3_STACK_USAGE_PERCENT\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF602:
	.ascii	"active\000"
.LASF471:
	.ascii	"OS_PROCESS_STACK_TASK1_SIZE 0x200u\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF456:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF533:
	.ascii	"uint8\000"
.LASF668:
	.ascii	"TASK3_STACK_ADDR\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF415:
	.ascii	"__thumb2__ 1\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF621:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF494:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF625:
	.ascii	"privilige_mode\000"
.LASF424:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF556:
	.ascii	"os_sw_bugs_function_e\000"
.LASF591:
	.ascii	"E_TASK_RUNNING\000"
.LASF688:
	.ascii	"TASK_2_VAR\000"
.LASF506:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF515:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF607:
	.ascii	"nr_of_ins_activated\000"
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
.LASF617:
	.ascii	"state_request\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF426:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF646:
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
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF559:
	.ascii	"E_FUNC_RESTORETASKENVIRONMENT\000"
.LASF695:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF610:
	.ascii	"time_to_prio_inc\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF619:
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
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
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
.LASF566:
	.ascii	"E_FUNC_TASKSCHEDULER\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF447:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF404:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF650:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF578:
	.ascii	"E_FUNC_SHIFT_LEFT\000"
.LASF588:
	.ascii	"E_TASK_UNSPECIFIED\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF661:
	.ascii	"TASK0_STACK_USAGE_PERCENT\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF513:
	.ascii	"TASK4_STACK_SIZE 2000u\000"
.LASF564:
	.ascii	"E_FUNC_PREEMPTTASK\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF514:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF241:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF612:
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
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF437:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF547:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF648:
	.ascii	"DBG_RLD_VALUE\000"
.LASF483:
	.ascii	"LOCAL static\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF614:
	.ascii	"current_prio\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF450:
	.ascii	"INTEGER_LP64_I32LP64 2u\000"
.LASF420:
	.ascii	"__SOFTFP__ 1\000"
.LASF643:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF529:
	.ascii	"TASK_3_PTR 3u\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF499:
	.ascii	"HALT_MCU() LLF_WAIT_FOR_INTERRUPT()\000"
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
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF524:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF12:
	.ascii	"__OPTIMIZE__ 1\000"
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
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF605:
	.ascii	"free\000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF504:
	.ascii	"_OS_TASK_CONFIG_H_ \000"
.LASF399:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF587:
	.ascii	"task_state_e\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF680:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF403:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF620:
	.ascii	"p_stack_pointer\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF592:
	.ascii	"task_state_t\000"
.LASF550:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF440:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF599:
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
.LASF528:
	.ascii	"TASK_2_PTR 2u\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF700:
	.ascii	"OS_MAIN_STACK\000"
.LASF433:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF512:
	.ascii	"TASK3_STACK_SIZE 2000u\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF628:
	.ascii	"scheduler_time_t\000"
.LASF541:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF636:
	.ascii	"OS_SW_BUG\000"
.LASF608:
	.ascii	"wait_act_until\000"
.LASF435:
	.ascii	"__ARM_PCS 1\000"
.LASF59:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF696:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF552:
	.ascii	"E_OS_BUG_DIVISION_BY_ZERO\000"
.LASF563:
	.ascii	"E_FUNC_STARTTASK\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF503:
	.ascii	"_OS_TASK_COMMON_H_ \000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
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
.LASF570:
	.ascii	"E_FUNC_PREEMPT_TASK\000"
.LASF593:
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
.LASF558:
	.ascii	"E_FUNC_SAVETASKENVIRONMENT\000"
.LASF463:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF467:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF675:
	.ascii	"TASK1_STACK\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF595:
	.ascii	"big_int_s\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF542:
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
.LASF568:
	.ascii	"E_FUNC_ACTIVATETASK\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF615:
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
.LASF672:
	.ascii	"TASK4_STACK_POS\000"
.LASF422:
	.ascii	"__ARM_FP\000"
.LASF525:
	.ascii	"_OS_TASK_SCHEDULER_H_ \000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF553:
	.ascii	"E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\000"
.LASF410:
	.ascii	"__arm__ 1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF523:
	.ascii	"_OS_MAIN_H_ \000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF703:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF671:
	.ascii	"TASK4_STACK_ADDR\000"
.LASF520:
	.ascii	"_OS_RAM_H_ \000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF655:
	.ascii	"TASK4_CALL_NR\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF645:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF544:
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
.LASF431:
	.ascii	"__ARM_NEON\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF497:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF667:
	.ascii	"TASK2_STACK_USAGE_PERCENT\000"
.LASF419:
	.ascii	"__ARMEL__ 1\000"
.LASF584:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF684:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF687:
	.ascii	"TASK_1_VAR\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF704:
	.ascii	"system_stack_ptr\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF590:
	.ascii	"E_TASK_READY\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF532:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF539:
	.ascii	"uint32\000"
.LASF442:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF613:
	.ascii	"start_time\000"
.LASF603:
	.ascii	"task_queued\000"
.LASF432:
	.ascii	"__ARM_NEON_FP\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF510:
	.ascii	"TASK1_STACK_SIZE 2000u\000"
.LASF580:
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
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF677:
	.ascii	"TASK3_STACK\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF594:
	.ascii	"func_p_state_change_t\000"
.LASF476:
	.ascii	"_OS_COMMON_H_ \000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF596:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF658:
	.ascii	"OS_MAIN_STACK_USAGE_PERCENT\000"
.LASF697:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF453:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
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
.LASF402:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
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
.LASF669:
	.ascii	"TASK3_STACK_POS\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF526:
	.ascii	"TASK_0_PTR 0u\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF425:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF451:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF509:
	.ascii	"TASK0_STACK_SIZE 2000u\000"
.LASF562:
	.ascii	"E_FUNC_INITTASKENVIRONMENT\000"
.LASF652:
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
.LASF535:
	.ascii	"short int\000"
.LASF699:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF713:
	.ascii	"LLF_RESTORE_TASK_STACK\000"
.LASF601:
	.ascii	"task_s\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF538:
	.ascii	"long int\000"
.LASF446:
	.ascii	"STM32F407VG 1\000"
.LASF438:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF511:
	.ascii	"TASK2_STACK_SIZE 2000u\000"
.LASF632:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF517:
	.ascii	"OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(tas"
	.ascii	"k_name)] = (task_ptr))\000"
.LASF705:
	.ascii	"OS_TASK_RESTORE_SYSTEM_STACK\000"
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
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF445:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF484:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF642:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF560:
	.ascii	"E_FUNC_CREATETASKENVIRONMENT\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF710:
	.ascii	"OS_SET_SW_BUG\000"
.LASF489:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF429:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF583:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF487:
	.ascii	"NULL ((void*)0)\000"
.LASF500:
	.ascii	"AMOUNT_SW_BUG_FUNCTIONS 22\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF502:
	.ascii	"_LLD_CORE_H_ \000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
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
.LASF574:
	.ascii	"E_FUNC_STACKCHECK\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF548:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF597:
	.ascii	"number\000"
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
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF421:
	.ascii	"__VFP_FP__ 1\000"
.LASF575:
	.ascii	"E_FUNC_ISRHANDLER\000"
.LASF654:
	.ascii	"TASK3_CALL_NR\000"
.LASF604:
	.ascii	"idle_task\000"
.LASF527:
	.ascii	"TASK_1_PTR 1u\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF545:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF714:
	.ascii	"LLF_RESTORE_REGISTERS\000"
.LASF631:
	.ascii	"OS_STATE_RUNNING\000"
.LASF719:
	.ascii	"C:\\Program Files (x86)\\GNU Tools ARM Embedded\\8 "
	.ascii	"2019-q3-update\\bin\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF397:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF624:
	.ascii	"p_stack_pointer_end\000"
.LASF717:
	.ascii	"GNU C89 8.3.1 20190703 (release) [gcc-8-branch revi"
	.ascii	"sion 273027] -mcpu=cortex-m4 -mthumb -mfloat-abi=so"
	.ascii	"ft -march=armv7e-m -g3 -O3 -std=c90\000"
.LASF537:
	.ascii	"long unsigned int\000"
.LASF488:
	.ascii	"MCU_X86 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF662:
	.ascii	"TASK1_STACK_ADDR\000"
.LASF683:
	.ascii	"RUNNING_TASK\000"
.LASF498:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF622:
	.ascii	"p_stack_pointer_start\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF649:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF606:
	.ascii	"nr_of_ins_allowed\000"
.LASF673:
	.ascii	"TASK4_STACK_USAGE_PERCENT\000"
.LASF516:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF572:
	.ascii	"E_FUNC_CREATETASK\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF641:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF555:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF635:
	.ascii	"HEAP\000"
.LASF501:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF457:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF647:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF554:
	.ascii	"os_sw_bugs_t\000"
.LASF530:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF466:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF459:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF611:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF637:
	.ascii	"OS_STATE\000"
.LASF657:
	.ascii	"OS_MAIN_STACK_POS\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF482:
	.ascii	"REJECTED 0u\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF689:
	.ascii	"TASK_3_VAR\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF665:
	.ascii	"TASK2_STACK_ADDR\000"
.LASF508:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF616:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF706:
	.ascii	"OS_TASK_RESTORETASK_ENVIRONMENT\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF585:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF505:
	.ascii	"TASK_MIN_TIME (1e0)\000"
.LASF598:
	.ascii	"exe_time\000"
.LASF629:
	.ascii	"os_state_e\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF666:
	.ascii	"TASK2_STACK_POS\000"
.LASF571:
	.ascii	"E_FUNC_OS_EXCEPTION\000"
.LASF448:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF633:
	.ascii	"os_state_t\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF536:
	.ascii	"unsigned_int32_t\000"
.LASF609:
	.ascii	"wait_time\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF686:
	.ascii	"TASK_0_VAR\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF664:
	.ascii	"TASK1_STACK_USAGE_PERCENT\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF427:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF413:
	.ascii	"__APCS_32__ 1\000"
.LASF674:
	.ascii	"TASK0_STACK\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF531:
	.ascii	"signed char\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF651:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF549:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF481:
	.ascii	"ACCEPTED 1u\000"
.LASF534:
	.ascii	"short unsigned int\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF600:
	.ascii	"task_group_t\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF473:
	.ascii	"OS_PROCESS_STACK_TASK3_SIZE 0x200u\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF409:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF634:
	.ascii	"TASK_PTR\000"
.LASF682:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF449:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF414:
	.ascii	"__thumb__ 1\000"
.LASF712:
	.ascii	"LLF_RESTORE_SYSTEM_STACK\000"
.LASF443:
	.ascii	"__ELF__ 1\000"
.LASF569:
	.ascii	"E_FUNC_TASKSTATEREQUEST\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF653:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF623:
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
.LASF690:
	.ascii	"TASK_GROUP_1\000"
.LASF691:
	.ascii	"TASK_GROUP_2\000"
.LASF692:
	.ascii	"TASK_GROUP_3\000"
.LASF693:
	.ascii	"TASK_GROUP_4\000"
.LASF694:
	.ascii	"TASK_GROUP_5\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF470:
	.ascii	"OS_MAIN_STACK_SIZE 0x400u\000"
.LASF640:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF493:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF589:
	.ascii	"E_TASK_SUSPENDED\000"
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
.LASF627:
	.ascii	"scheduling_t\000"
.LASF567:
	.ascii	"E_FUNC_INITTASK\000"
.LASF577:
	.ascii	"E_FUNC_INTDIV\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF630:
	.ascii	"OS_STATE_INIT\000"
.LASF401:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF455:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF638:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF198:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF156:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF165:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 8-2019-q3-update) 8.3.1 20190703 (release) [gcc-8-branch revision 273027]"
