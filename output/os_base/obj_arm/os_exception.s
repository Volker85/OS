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
	.file	"os_exception.c"
@ GNU C89 (GNU Tools for Arm Embedded Processors 7-2018-q2-update) version 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m
@ -iprefix d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../lib/gcc/arm-none-eabi/7.3.1/
@ -isysroot d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c
@ -mcpu=cortex-m4 -mthumb
@ -auxbase-strip E:\NeuOrga\Programmieren\c_cpp\github_os\output\os_base\obj_arm\os_exception.s
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
	.global	OS_EXCEPTION_NMI
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_NMI, %function
OS_EXCEPTION_NMI:
.LFB1:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_exception.c"
	.loc 1 30 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:32:    __asm__ __volatile__ ("LDR r0,%0;\
	.loc 1 32 0
	ldr	r3, .L4	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
.LBB18:
.LBB19:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:17:    VAR_HARDFAULT_STATUS_REG = *HARDFAULT_STATUS_REG;
	.loc 1 17 0
	ldr	r3, .L4+4	@ tmp121,
	ldr	r2, .L4+8	@ tmp122,
	ldr	r1, [r3]	@ _5, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _5, VAR_HARDFAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:18:    VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
	.loc 1 18 0
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L4+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	ldr	r0, .L4+16	@ tmp127,
	ldr	r1, .L4+20	@ tmp130,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	ldr	r2, .L4+24	@ tmp131,
	ldr	r5, .L4+28	@ tmp133,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:18:    VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
	.loc 1 18 0
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _6, VAR_MEM_MANAG_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:21:    VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
	.loc 1 21 0
	ldr	r4, .L4+32	@ tmp134,
	ldr	r0, .L4+36	@ tmp135,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	uxtb	r3, r3	@ _8, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _8, VAR_BUS_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:22:    VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
	.loc 1 22 0
	ldr	r1, .L4+40	@ tmp137,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	uxth	r3, r3	@ _10, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _10, VAR_USAGE_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:21:    VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
	.loc 1 21 0
	ldr	r3, [r4]	@ _12, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _12, VAR_MEM_FAULT_ADDR_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:22:    VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
	.loc 1 22 0
	ldr	r3, [r2, #14]	@ _13, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _13, VAR_BUS_FAULT_ADDR_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:23:    VAR_AUX_FAULT_STATUS_REG = *AUX_FAULT_STATUS_REG;
	.loc 1 23 0
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L4+44	@ tmp139,
	ldr	r2, [r2]	@ _14, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _14, VAR_AUX_FAULT_STATUS_REG
.LBE19:
.LBE18:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:41:    LLF_EXCEPTION_TO_HANDLER_MODE();
	.loc 1 41 0
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
.LVL0:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:43:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 43 0
	movs	r1, #0	@,
	mov	r0, r1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:45: }
	.loc 1 45 0
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:43:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 43 0
	b	OS_SHUTDOWN	@
.LVL1:
.L5:
	.align	2
.L4:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE1:
	.size	OS_EXCEPTION_NMI, .-OS_EXCEPTION_NMI
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_HARDFAULT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_HARDFAULT, %function
OS_EXCEPTION_HARDFAULT:
.LFB11:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, .L8	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L8+4	@ tmp121,
	ldr	r2, .L8+8	@ tmp122,
	ldr	r1, [r3]	@ _3, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _3, VAR_HARDFAULT_STATUS_REG
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L8+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
	ldr	r0, .L8+16	@ tmp127,
	ldr	r1, .L8+20	@ tmp130,
	ldr	r2, .L8+24	@ tmp131,
	ldr	r5, .L8+28	@ tmp133,
	uxtb	r3, r3	@ _4, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _4, VAR_MEM_MANAG_FAULT_STATUS_REG
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
	ldr	r4, .L8+32	@ tmp134,
	ldr	r0, .L8+36	@ tmp135,
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _6, VAR_BUS_FAULT_STATUS_REG
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
	ldr	r1, .L8+40	@ tmp137,
	uxth	r3, r3	@ _8, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _8, VAR_USAGE_FAULT_STATUS_REG
	ldr	r3, [r4]	@ _10, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _10, VAR_MEM_FAULT_ADDR_REG
	ldr	r3, [r2, #14]	@ _11, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _11, VAR_BUS_FAULT_ADDR_REG
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L8+44	@ tmp139,
	ldr	r2, [r2]	@ _12, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _12, VAR_AUX_FAULT_STATUS_REG
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
	movs	r1, #0	@,
	mov	r0, r1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SHUTDOWN	@
.L9:
	.align	2
.L8:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE11:
	.size	OS_EXCEPTION_HARDFAULT, .-OS_EXCEPTION_HARDFAULT
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_MEM_MANAG_FAULT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_MEM_MANAG_FAULT, %function
OS_EXCEPTION_MEM_MANAG_FAULT:
.LFB13:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, .L12	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L12+4	@ tmp121,
	ldr	r2, .L12+8	@ tmp122,
	ldr	r1, [r3]	@ _3, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _3, VAR_HARDFAULT_STATUS_REG
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L12+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
	ldr	r0, .L12+16	@ tmp127,
	ldr	r1, .L12+20	@ tmp130,
	ldr	r2, .L12+24	@ tmp131,
	ldr	r5, .L12+28	@ tmp133,
	uxtb	r3, r3	@ _4, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _4, VAR_MEM_MANAG_FAULT_STATUS_REG
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
	ldr	r4, .L12+32	@ tmp134,
	ldr	r0, .L12+36	@ tmp135,
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _6, VAR_BUS_FAULT_STATUS_REG
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
	ldr	r1, .L12+40	@ tmp137,
	uxth	r3, r3	@ _8, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _8, VAR_USAGE_FAULT_STATUS_REG
	ldr	r3, [r4]	@ _10, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _10, VAR_MEM_FAULT_ADDR_REG
	ldr	r3, [r2, #14]	@ _11, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _11, VAR_BUS_FAULT_ADDR_REG
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L12+44	@ tmp139,
	ldr	r2, [r2]	@ _12, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _12, VAR_AUX_FAULT_STATUS_REG
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
	movs	r1, #0	@,
	mov	r0, r1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SHUTDOWN	@
.L13:
	.align	2
.L12:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE13:
	.size	OS_EXCEPTION_MEM_MANAG_FAULT, .-OS_EXCEPTION_MEM_MANAG_FAULT
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_BUS_FAULT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_BUS_FAULT, %function
OS_EXCEPTION_BUS_FAULT:
.LFB15:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, .L16	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L16+4	@ tmp121,
	ldr	r2, .L16+8	@ tmp122,
	ldr	r1, [r3]	@ _3, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _3, VAR_HARDFAULT_STATUS_REG
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L16+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
	ldr	r0, .L16+16	@ tmp127,
	ldr	r1, .L16+20	@ tmp130,
	ldr	r2, .L16+24	@ tmp131,
	ldr	r5, .L16+28	@ tmp133,
	uxtb	r3, r3	@ _4, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _4, VAR_MEM_MANAG_FAULT_STATUS_REG
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
	ldr	r4, .L16+32	@ tmp134,
	ldr	r0, .L16+36	@ tmp135,
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _6, VAR_BUS_FAULT_STATUS_REG
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
	ldr	r1, .L16+40	@ tmp137,
	uxth	r3, r3	@ _8, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _8, VAR_USAGE_FAULT_STATUS_REG
	ldr	r3, [r4]	@ _10, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _10, VAR_MEM_FAULT_ADDR_REG
	ldr	r3, [r2, #14]	@ _11, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _11, VAR_BUS_FAULT_ADDR_REG
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L16+44	@ tmp139,
	ldr	r2, [r2]	@ _12, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _12, VAR_AUX_FAULT_STATUS_REG
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
	movs	r1, #0	@,
	mov	r0, r1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SHUTDOWN	@
.L17:
	.align	2
.L16:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE15:
	.size	OS_EXCEPTION_BUS_FAULT, .-OS_EXCEPTION_BUS_FAULT
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_USAGE_FAULT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_USAGE_FAULT, %function
OS_EXCEPTION_USAGE_FAULT:
.LFB17:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, .L20	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L20+4	@ tmp121,
	ldr	r2, .L20+8	@ tmp122,
	ldr	r1, [r3]	@ _3, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _3, VAR_HARDFAULT_STATUS_REG
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L20+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
	ldr	r0, .L20+16	@ tmp127,
	ldr	r1, .L20+20	@ tmp130,
	ldr	r2, .L20+24	@ tmp131,
	ldr	r5, .L20+28	@ tmp133,
	uxtb	r3, r3	@ _4, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _4, VAR_MEM_MANAG_FAULT_STATUS_REG
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
	ldr	r4, .L20+32	@ tmp134,
	ldr	r0, .L20+36	@ tmp135,
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _6, VAR_BUS_FAULT_STATUS_REG
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
	ldr	r1, .L20+40	@ tmp137,
	uxth	r3, r3	@ _8, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _8, VAR_USAGE_FAULT_STATUS_REG
	ldr	r3, [r4]	@ _10, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _10, VAR_MEM_FAULT_ADDR_REG
	ldr	r3, [r2, #14]	@ _11, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _11, VAR_BUS_FAULT_ADDR_REG
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L20+44	@ tmp139,
	ldr	r2, [r2]	@ _12, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _12, VAR_AUX_FAULT_STATUS_REG
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
	movs	r1, #0	@,
	mov	r0, r1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SHUTDOWN	@
.L21:
	.align	2
.L20:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE17:
	.size	OS_EXCEPTION_USAGE_FAULT, .-OS_EXCEPTION_USAGE_FAULT
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_DEBUG
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_DEBUG, %function
OS_EXCEPTION_DEBUG:
.LFB6:
	.loc 1 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:125: {
	.loc 1 125 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB20:
.LBB21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:17:    VAR_HARDFAULT_STATUS_REG = *HARDFAULT_STATUS_REG;
	.loc 1 17 0
	ldr	r3, .L24	@ tmp120,
	ldr	r2, .L24+4	@ tmp121,
	ldr	r1, [r3]	@ _4, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _4, VAR_HARDFAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:18:    VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
	.loc 1 18 0
	subs	r3, r3, #4	@ tmp122, tmp122,
	ldr	r4, .L24+8	@ tmp125,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	ldr	r0, .L24+12	@ tmp126,
	ldr	r1, .L24+16	@ tmp129,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	ldr	r2, .L24+20	@ tmp130,
	ldr	r5, .L24+24	@ tmp132,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:18:    VAR_MEM_MANAG_FAULT_STATUS_REG     = *MEM_MANAG_FAULT_STATUS_REG;
	.loc 1 18 0
	uxtb	r3, r3	@ _5, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _5, VAR_MEM_MANAG_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:21:    VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
	.loc 1 21 0
	ldr	r4, .L24+28	@ tmp133,
	ldr	r0, .L24+32	@ tmp134,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:19:    VAR_BUS_FAULT_STATUS_REG   = *BUS_FAULT_STATUS_REG;
	.loc 1 19 0
	uxtb	r3, r3	@ _7, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _7, VAR_BUS_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:22:    VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
	.loc 1 22 0
	ldr	r1, .L24+36	@ tmp136,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:20:    VAR_USAGE_FAULT_STATUS_REG = *USAGE_FAULT_STATUS_REG;
	.loc 1 20 0
	uxth	r3, r3	@ _9, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _9, VAR_USAGE_FAULT_STATUS_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:21:    VAR_MEM_FAULT_ADDR_REG   = *MEM_FAULT_ADDR_REG;
	.loc 1 21 0
	ldr	r3, [r4]	@ _11, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _11, VAR_MEM_FAULT_ADDR_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:22:    VAR_BUS_FAULT_ADDR_REG   = *BUS_FAULT_ADDR_REG;
	.loc 1 22 0
	ldr	r3, [r2, #14]	@ _12, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _12, VAR_BUS_FAULT_ADDR_REG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:23:    VAR_AUX_FAULT_STATUS_REG = *AUX_FAULT_STATUS_REG;
	.loc 1 23 0
	adds	r2, r2, #18	@ tmp137, tmp135,
	ldr	r3, .L24+40	@ tmp138,
	ldr	r2, [r2]	@ _13, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _13, VAR_AUX_FAULT_STATUS_REG
.LBE21:
.LBE20:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:130:    LLF_EXCEPTION_TO_HANDLER_MODE();
	.loc 1 130 0
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
.LVL2:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:132:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 132 0
	movs	r1, #0	@,
	mov	r0, r1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:134: }
	.loc 1 134 0
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:132:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 132 0
	b	OS_SHUTDOWN	@
.LVL3:
.L25:
	.align	2
.L24:
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE6:
	.size	OS_EXCEPTION_DEBUG, .-OS_EXCEPTION_DEBUG
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_PEND_SV
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_PEND_SV, %function
OS_EXCEPTION_PEND_SV:
.LFB7:
	.loc 1 138 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:141:    LLF_EXCEPTION_TO_HANDLER_MODE();
	.loc 1 141 0
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:143:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 143 0
	movs	r1, #0	@,
	mov	r0, r1	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:145: }
	.loc 1 145 0
	pop	{r3, lr}	@
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:143:    OS_SHUTDOWN(E_OS_RESET_HARDRESET,0u);
	.loc 1 143 0
	b	OS_SHUTDOWN	@
.LVL5:
	.cfi_endproc
.LFE7:
	.size	OS_EXCEPTION_PEND_SV, .-OS_EXCEPTION_PEND_SV
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_SYSTICK
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_SYSTICK, %function
OS_EXCEPTION_SYSTICK:
.LFB8:
	.loc 1 148 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36	@,,
	.cfi_def_cfa_offset 56
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:156:    OS_UpdateCurrentTime();
	.loc 1 156 0
	bl	OS_UpdateCurrentTime	@
.LVL6:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:164:    DBG_CTRL_VALUE  = 0xFFFFFFFFu;
	.loc 1 164 0
	ldr	r4, .L34	@ tmp129,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:163:    DBG_CURR_VAL    = 0xFFFFFFFFu;
	.loc 1 163 0
	ldr	r6, .L34+4	@ tmp127,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:179:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000u)| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000u))* LOOPTIME_IN_USEC) ;
	.loc 1 179 0
	ldr	r5, .L34+8	@ tmp133,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:180:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000u);
	.loc 1 180 0
	ldr	r7, .L34+12	@ tmp139,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:160:    LLF_EXCEPTION_TO_HANDLER_MODE();
	.loc 1 160 0
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
.LVL7:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:162:    DBG_RLD_VALUE   = 0xFFFFFFFFu;
	.loc 1 162 0
	ldr	ip, .L34+28	@ tmp125,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:165:    DBG_CALIB_VALUE = 0xFFFFFFFFu;
	.loc 1 165 0
	ldr	r0, .L34+16	@ tmp131,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:181:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 181 0
	ldr	r2, .L34+20	@ tmp141,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:186:    DBG_CALIB_VALUE = *SYSTICK_CALIB_VAL_REG;
	.loc 1 186 0
	ldr	lr, .L34+32	@ tmp151,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:162:    DBG_RLD_VALUE   = 0xFFFFFFFFu;
	.loc 1 162 0
	mov	r3, #-1	@ tmp126,
	str	r3, [ip]	@ tmp126, DBG_RLD_VALUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:163:    DBG_CURR_VAL    = 0xFFFFFFFFu;
	.loc 1 163 0
	str	r3, [r6]	@ tmp126, DBG_CURR_VAL
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:164:    DBG_CTRL_VALUE  = 0xFFFFFFFFu;
	.loc 1 164 0
	str	r3, [r4]	@ tmp126, DBG_CTRL_VALUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:165:    DBG_CALIB_VALUE = 0xFFFFFFFFu;
	.loc 1 165 0
	str	r3, [r0]	@ tmp126, DBG_CALIB_VALUE
.LVL8:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:179:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000u)| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000u))* LOOPTIME_IN_USEC) ;
	.loc 1 179 0
	ldr	r3, [r5]	@ MEM[(uint32 *)3758153748B], MEM[(uint32 *)3758153748B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:181:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 181 0
	ldr	r1, [r2]	@ MEM[(uint32 *)3758153744B], MEM[(uint32 *)3758153744B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:179:    *SYSTICK_RLD_VAL_REG = (*SYSTICK_RLD_VAL_REG & 0xFF000000u)| (((uint32)MCU_CLOCK_IN_HZ / ((uint32)1000000u))* LOOPTIME_IN_USEC) ;
	.loc 1 179 0
	and	r3, r3, #-16777216	@ tmp135, MEM[(uint32 *)3758153748B],
	orr	r3, r3, #1679360	@ tmp137, tmp135,
	orr	r3, r3, #640	@ tmp137, tmp137,
	str	r3, [r5]	@ tmp137, MEM[(uint32 *)3758153748B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:181:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 181 0
	orr	r1, r1, #3	@ tmp143, MEM[(uint32 *)3758153744B],
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:180:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000u);
	.loc 1 180 0
	movs	r5, #0	@ tmp140,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:181:    *SYSTICK_CTRL_STAT_REG = *SYSTICK_CTRL_STAT_REG | SYSTICK_STAT_REG_TICKINT | SYSTICK_STAT_REG_ENABLE;
	.loc 1 181 0
	str	r1, [r2]	@ tmp143, MEM[(uint32 *)3758153744B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:180:    *SYSTICK_CURRENT_VAL_REG = ((uint32)0x00000000u);
	.loc 1 180 0
	str	r5, [r7]	@ tmp140, MEM[(uint32 *)3758153752B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:183:    DBG_RLD_VALUE  = *SYSTICK_RLD_VAL_REG;
	.loc 1 183 0
	str	r3, [ip]	@ tmp137, DBG_RLD_VALUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:184:    DBG_CURR_VAL   = *SYSTICK_CURRENT_VAL_REG;
	.loc 1 184 0
	ldr	r3, [r7]	@ _7, MEM[(uint32 *)3758153752B]
	str	r3, [r6]	@ _7, DBG_CURR_VAL
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:185:    DBG_CTRL_VALUE = *SYSTICK_CTRL_STAT_REG;
	.loc 1 185 0
	ldr	r3, [r2]	@ _8, MEM[(uint32 *)3758153744B]
	str	r3, [r4]	@ _8, DBG_CTRL_VALUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:186:    DBG_CALIB_VALUE = *SYSTICK_CALIB_VAL_REG;
	.loc 1 186 0
	ldr	r3, [lr]	@ _9, MEM[(uint32 *)3758153756B]
	str	r3, [r0]	@ _9, DBG_CALIB_VALUE
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:226:    task = GET_RUNNING_TASK();
	.loc 1 226 0
	bl	GET_RUNNING_TASK	@
.LVL9:
	mov	r4, r0	@ task,
.LVL10:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:227:    scheduling_task_ptr = GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR();
	.loc 1 227 0
	bl	GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR	@
.LVL11:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:228:    if(task != 0u)
	.loc 1 228 0
	cbz	r4, .L29	@ task,
	mov	r7, r0	@ scheduling_task_ptr,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:230:       OS_TASK_SAVE_TASK_ENVIRONMENT(task);
	.loc 1 230 0
	mov	r0, r4	@, task
.LVL12:
	bl	OS_TASK_SAVE_TASK_ENVIRONMENT	@
.LVL13:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:231:       OS_TASK_RESTORE_SYSTEM_STACK((uint8*)&OS_MAIN_STACK);
	.loc 1 231 0
	ldr	r0, .L34+24	@,
	bl	OS_TASK_RESTORE_SYSTEM_STACK	@
.LVL14:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:232:       task->active = FALSE;
	.loc 1 232 0
	ldrb	r3, [r4]	@ zero_extendqisi2	@, task_30->active
	mov	r6, r4	@ tmp157, task
	bfi	r3, r5, #0, #1	@ task_30->active, tmp140,,
	strb	r3, [r6], #92	@ task_30->active, task_30->active
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:234:       OS_GET_CURRENT_TIME(&time);
	.loc 1 234 0
	add	r0, sp, #16	@ tmp162,,
	bl	OS_GET_CURRENT_TIME	@
.LVL15:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:235:       INT_SUB(&Diff, &time, &task->start_time);
	.loc 1 235 0
	mov	r2, r6	@, tmp157
	add	r1, sp, #16	@ tmp163,,
	mov	r0, sp	@,
	bl	INT_SUB	@
.LVL16:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:236:       INT_ADD(&task->exe_time, &task->exe_time, &Diff);
	.loc 1 236 0
	add	r1, r4, #76	@ _11, task,
	mov	r0, r1	@,
	mov	r2, sp	@,
	bl	INT_ADD	@
.LVL17:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:238:       INT_ADD(&task->task_group->exe_time, &task->task_group->exe_time, &Diff);
	.loc 1 238 0
	ldr	r1, [r4, #128]	@ _13, task_30->task_group
	mov	r2, sp	@,
	mov	r0, r1	@,
	bl	INT_ADD	@
.LVL18:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:239:       SET_RUNNING_TASK(0u,0u);
	.loc 1 239 0
	mov	r1, r5	@, tmp140
	mov	r0, r5	@, tmp1
	bl	SET_RUNNING_TASK	@
.LVL19:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:240:       OS_TERMINATE_TASK(task,scheduling_task_ptr);
	.loc 1 240 0
	mov	r1, r7	@, scheduling_task_ptr
	mov	r0, r4	@, task
	bl	OS_TERMINATE_TASK	@
.LVL20:
.L29:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:243:    OS_STATE_HANDLER();
	.loc 1 243 0
	bl	OS_STATE_HANDLER	@
.LVL21:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c:245: }
	.loc 1 245 0
	add	sp, sp, #36	@,,
	.cfi_def_cfa_offset 20
	@ sp needed	@
	pop	{r4, r5, r6, r7, pc}	@
.LVL22:
.L35:
	.align	2
.L34:
	.word	DBG_CTRL_VALUE
	.word	DBG_CURR_VAL
	.word	-536813548
	.word	-536813544
	.word	DBG_CALIB_VALUE
	.word	-536813552
	.word	OS_MAIN_STACK
	.word	DBG_RLD_VALUE
	.word	-536813540
	.cfi_endproc
.LFE8:
	.size	OS_EXCEPTION_SYSTICK, .-OS_EXCEPTION_SYSTICK
	.align	1
	.p2align 2,,3
	.global	OS_EXCEPTION_IRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_EXCEPTION_IRQ, %function
OS_EXCEPTION_IRQ:
.LFB19:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	ldr	r3, .L38	@ tmp120,
	.syntax unified
@ 32 "E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_exception.c" 1
	LDR r0,[r3];                          STR r14,[r0];	@ LINK_REGISTER_HANDLER
@ 0 "" 2
	.thumb
	.syntax unified
	ldr	r3, .L38+4	@ tmp121,
	ldr	r2, .L38+8	@ tmp122,
	ldr	r1, [r3]	@ _3, MEM[(volatile uint32 *)3758157100B]
	str	r1, [r2]	@ _3, VAR_HARDFAULT_STATUS_REG
	subs	r3, r3, #4	@ tmp123, tmp123,
	ldr	r4, .L38+12	@ tmp126,
	ldrb	r3, [r3]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157096B], MEM[(volatile uint8 *)3758157096B]
	ldr	r0, .L38+16	@ tmp127,
	ldr	r1, .L38+20	@ tmp130,
	ldr	r2, .L38+24	@ tmp131,
	ldr	r5, .L38+28	@ tmp133,
	uxtb	r3, r3	@ _4, MEM[(volatile uint8 *)3758157096B]
	str	r3, [r4]	@ _4, VAR_MEM_MANAG_FAULT_STATUS_REG
	ldrb	r3, [r0]	@ zero_extendqisi2	@ MEM[(volatile uint8 *)3758157097B], MEM[(volatile uint8 *)3758157097B]
	ldr	r4, .L38+32	@ tmp134,
	ldr	r0, .L38+36	@ tmp135,
	uxtb	r3, r3	@ _6, MEM[(volatile uint8 *)3758157097B]
	str	r3, [r1]	@ _6, VAR_BUS_FAULT_STATUS_REG
	ldrh	r3, [r2]	@, MEM[(volatile uint16 *)3758157098B]
	ldr	r1, .L38+40	@ tmp137,
	uxth	r3, r3	@ _8, MEM[(volatile uint16 *)3758157098B]
	str	r3, [r5]	@ _8, VAR_USAGE_FAULT_STATUS_REG
	ldr	r3, [r4]	@ _10, MEM[(volatile uint32 *)3758157108B]
	str	r3, [r0]	@ _10, VAR_MEM_FAULT_ADDR_REG
	ldr	r3, [r2, #14]	@ _11, MEM[(volatile uint32 *)3758157112B]
	str	r3, [r1]	@ _11, VAR_BUS_FAULT_ADDR_REG
	adds	r2, r2, #18	@ tmp138, tmp136,
	ldr	r3, .L38+44	@ tmp139,
	ldr	r2, [r2]	@ _12, MEM[(volatile uint32 *)3758157116B]
	str	r2, [r3]	@ _12, VAR_AUX_FAULT_STATUS_REG
	bl	LLF_EXCEPTION_TO_HANDLER_MODE	@
	movs	r1, #0	@,
	mov	r0, r1	@,
	pop	{r3, r4, r5, lr}	@
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	b	OS_SHUTDOWN	@
.L39:
	.align	2
.L38:
	.word	LINK_REGISTER_HANDLER
	.word	-536810196
	.word	VAR_HARDFAULT_STATUS_REG
	.word	VAR_MEM_MANAG_FAULT_STATUS_REG
	.word	-536810199
	.word	VAR_BUS_FAULT_STATUS_REG
	.word	-536810198
	.word	VAR_USAGE_FAULT_STATUS_REG
	.word	-536810188
	.word	VAR_MEM_FAULT_ADDR_REG
	.word	VAR_BUS_FAULT_ADDR_REG
	.word	VAR_AUX_FAULT_STATUS_REG
	.cfi_endproc
.LFE19:
	.size	OS_EXCEPTION_IRQ, .-OS_EXCEPTION_IRQ
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.file 7 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram_stack.h"
	.file 9 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_shutdown.h"
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.h"
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xab0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF727
	.byte	0x1
	.4byte	.LASF728
	.4byte	.LASF729
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF551
	.byte	0x2
	.byte	0x11
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF549
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF550
	.uleb128 0x2
	.4byte	.LASF552
	.byte	0x2
	.byte	0x15
	.4byte	0x34
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF553
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF554
	.uleb128 0x2
	.4byte	.LASF555
	.byte	0x2
	.byte	0x19
	.4byte	0x4d
	.uleb128 0x2
	.4byte	.LASF556
	.byte	0x2
	.byte	0x1b
	.4byte	0x71
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF557
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF558
	.uleb128 0x2
	.4byte	.LASF559
	.byte	0x2
	.byte	0x1d
	.4byte	0x71
	.uleb128 0x4
	.4byte	0x7f
	.uleb128 0x5
	.4byte	.LASF578
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2d
	.4byte	0xf5
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
	.uleb128 0x6
	.4byte	.LASF564
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF566
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF567
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF568
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF569
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF570
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF571
	.byte	0xb
	.uleb128 0x6
	.4byte	.LASF572
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF573
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF574
	.byte	0x3
	.byte	0x3e
	.4byte	0x8f
	.uleb128 0x4
	.4byte	0xf5
	.uleb128 0x7
	.4byte	.LASF592
	.byte	0x10
	.byte	0x3
	.byte	0x62
	.4byte	0x11e
	.uleb128 0x8
	.4byte	.LASF594
	.byte	0x3
	.byte	0x6b
	.4byte	0x11e
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.4byte	0x12e
	.uleb128 0xa
	.4byte	0x12e
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF575
	.uleb128 0x2
	.4byte	.LASF576
	.byte	0x3
	.byte	0x6c
	.4byte	0x105
	.uleb128 0x2
	.4byte	.LASF577
	.byte	0x3
	.byte	0x6e
	.4byte	0x135
	.uleb128 0x5
	.4byte	.LASF579
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x13
	.4byte	0x16f
	.uleb128 0x6
	.4byte	.LASF580
	.byte	0
	.uleb128 0x6
	.4byte	.LASF581
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF582
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF583
	.byte	0x4
	.byte	0x19
	.4byte	0x14b
	.uleb128 0x5
	.4byte	.LASF584
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x1a4
	.uleb128 0x6
	.4byte	.LASF585
	.byte	0
	.uleb128 0x6
	.4byte	.LASF586
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF587
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF588
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF589
	.byte	0x5
	.byte	0xe
	.4byte	0x17a
	.uleb128 0x2
	.4byte	.LASF590
	.byte	0x5
	.byte	0x13
	.4byte	0x1ba
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1c0
	.uleb128 0xc
	.4byte	0x1cb
	.uleb128 0xd
	.4byte	0x1cb
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF591
	.byte	0x5
	.byte	0x15
	.4byte	0x1d8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1de
	.uleb128 0xf
	.4byte	0x29
	.4byte	0x1f2
	.uleb128 0xd
	.4byte	0x1cb
	.uleb128 0xd
	.4byte	0x1a4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF593
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.4byte	0x217
	.uleb128 0x8
	.4byte	.LASF595
	.byte	0x5
	.byte	0x1a
	.4byte	0x140
	.byte	0
	.uleb128 0x8
	.4byte	.LASF596
	.byte	0x5
	.byte	0x1b
	.4byte	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF597
	.byte	0x5
	.byte	0x1d
	.4byte	0x1f2
	.uleb128 0x7
	.4byte	.LASF598
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x10
	.4byte	.LASF599
	.byte	0x5
	.byte	0x21
	.4byte	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF600
	.byte	0x5
	.byte	0x22
	.4byte	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF601
	.byte	0x5
	.byte	0x23
	.4byte	0x12e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF602
	.byte	0x5
	.byte	0x24
	.4byte	0x12e
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF603
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF604
	.byte	0x5
	.byte	0x26
	.4byte	0x29
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF605
	.byte	0x5
	.byte	0x27
	.4byte	0x140
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF606
	.byte	0x5
	.byte	0x28
	.4byte	0x140
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF607
	.byte	0x5
	.byte	0x29
	.4byte	0x140
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF608
	.byte	0x5
	.byte	0x2a
	.4byte	0x7f
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF609
	.byte	0x5
	.byte	0x2b
	.4byte	0x140
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF595
	.byte	0x5
	.byte	0x2c
	.4byte	0x140
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF610
	.byte	0x5
	.byte	0x2d
	.4byte	0x140
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF611
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF612
	.byte	0x5
	.byte	0x2f
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF613
	.byte	0x5
	.byte	0x30
	.4byte	0x66
	.byte	0x70
	.uleb128 0x11
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x1af
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF614
	.byte	0x5
	.byte	0x32
	.4byte	0x1cd
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF615
	.byte	0x5
	.byte	0x33
	.4byte	0x1a4
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF616
	.byte	0x5
	.byte	0x34
	.4byte	0x404
	.byte	0x80
	.uleb128 0x11
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x66
	.byte	0x84
	.uleb128 0x11
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x66
	.byte	0x88
	.uleb128 0x11
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x66
	.byte	0x8c
	.uleb128 0x11
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x66
	.byte	0x90
	.uleb128 0x11
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x66
	.byte	0x94
	.uleb128 0x11
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x66
	.byte	0x98
	.uleb128 0x11
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x66
	.byte	0x9c
	.uleb128 0x11
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x66
	.byte	0xa0
	.uleb128 0x11
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x66
	.byte	0xa4
	.uleb128 0x11
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x66
	.byte	0xa8
	.uleb128 0x11
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x66
	.byte	0xac
	.uleb128 0x11
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x66
	.byte	0xb0
	.uleb128 0x11
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x47
	.4byte	0x66
	.byte	0xb4
	.uleb128 0x8
	.4byte	.LASF617
	.byte	0x5
	.byte	0x49
	.4byte	0x40a
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF618
	.byte	0x5
	.byte	0x4a
	.4byte	0x40a
	.byte	0xbc
	.uleb128 0x8
	.4byte	.LASF619
	.byte	0x5
	.byte	0x4b
	.4byte	0x40a
	.byte	0xc0
	.uleb128 0x8
	.4byte	.LASF620
	.byte	0x5
	.byte	0x4c
	.4byte	0x66
	.byte	0xc4
	.uleb128 0x8
	.4byte	.LASF621
	.byte	0x5
	.byte	0x4d
	.4byte	0x40a
	.byte	0xc8
	.uleb128 0x8
	.4byte	.LASF622
	.byte	0x5
	.byte	0x4e
	.4byte	0x16f
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x217
	.uleb128 0xb
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF623
	.byte	0x5
	.byte	0x50
	.4byte	0x222
	.uleb128 0x2
	.4byte	.LASF624
	.byte	0x5
	.byte	0x51
	.4byte	0x426
	.uleb128 0xb
	.byte	0x4
	.4byte	0x410
	.uleb128 0x9
	.4byte	0x426
	.4byte	0x43c
	.uleb128 0xa
	.4byte	0x12e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x5
	.byte	0x5b
	.4byte	0x42c
	.uleb128 0x2
	.4byte	.LASF625
	.byte	0x5
	.byte	0x5d
	.4byte	0x140
	.uleb128 0x5
	.4byte	.LASF626
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x6
	.byte	0x4
	.4byte	0x476
	.uleb128 0x6
	.4byte	.LASF627
	.byte	0
	.uleb128 0x6
	.4byte	.LASF628
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF629
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF630
	.byte	0x6
	.byte	0xa
	.4byte	0x452
	.uleb128 0x4
	.4byte	0x476
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x497
	.uleb128 0x13
	.4byte	0x12e
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x7
	.byte	0xb
	.4byte	0x486
	.uleb128 0x9
	.4byte	0x100
	.4byte	0x4b2
	.uleb128 0xa
	.4byte	0x12e
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.4byte	0x4a2
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x7
	.byte	0xe
	.4byte	0x4b2
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x7
	.byte	0xf
	.4byte	0x481
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x7
	.byte	0x10
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x7
	.byte	0x11
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x7
	.byte	0x12
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x7
	.byte	0x13
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x7
	.byte	0x14
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x7
	.byte	0x15
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x7
	.byte	0x16
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x7
	.byte	0x17
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x7
	.byte	0x18
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x7
	.byte	0x19
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x7
	.byte	0x1a
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x7
	.byte	0x1b
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x7
	.byte	0x1c
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x7
	.byte	0x1d
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x7
	.byte	0x1e
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x7
	.byte	0x1f
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x7
	.byte	0x20
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x7
	.byte	0x21
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x7
	.byte	0x23
	.4byte	0x59e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x7
	.byte	0x24
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x7
	.byte	0x25
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x7
	.byte	0x26
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF657
	.byte	0x7
	.byte	0x27
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF658
	.byte	0x7
	.byte	0x28
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF659
	.byte	0x7
	.byte	0x29
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF660
	.byte	0x7
	.byte	0x2a
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF661
	.byte	0x7
	.byte	0x2b
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF662
	.byte	0x7
	.byte	0x2c
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF663
	.byte	0x7
	.byte	0x2d
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF664
	.byte	0x7
	.byte	0x2e
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF665
	.byte	0x7
	.byte	0x2f
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF666
	.byte	0x7
	.byte	0x30
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF667
	.byte	0x7
	.byte	0x31
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF668
	.byte	0x7
	.byte	0x32
	.4byte	0x59e
	.uleb128 0x12
	.4byte	.LASF669
	.byte	0x7
	.byte	0x33
	.4byte	0x8a
	.uleb128 0x12
	.4byte	.LASF670
	.byte	0x7
	.byte	0x34
	.4byte	0x8a
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x670
	.uleb128 0x13
	.4byte	0x12e
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF671
	.byte	0x7
	.byte	0x35
	.4byte	0x65f
	.uleb128 0x12
	.4byte	.LASF672
	.byte	0x7
	.byte	0x36
	.4byte	0x65f
	.uleb128 0x12
	.4byte	.LASF673
	.byte	0x7
	.byte	0x37
	.4byte	0x65f
	.uleb128 0x12
	.4byte	.LASF674
	.byte	0x7
	.byte	0x38
	.4byte	0x65f
	.uleb128 0x12
	.4byte	.LASF675
	.byte	0x7
	.byte	0x39
	.4byte	0x65f
	.uleb128 0x12
	.4byte	.LASF676
	.byte	0x7
	.byte	0x3a
	.4byte	0x447
	.uleb128 0x9
	.4byte	0x41b
	.4byte	0x6c2
	.uleb128 0xa
	.4byte	0x12e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF677
	.byte	0x7
	.byte	0x3b
	.4byte	0x6b2
	.uleb128 0x12
	.4byte	.LASF678
	.byte	0x7
	.byte	0x3c
	.4byte	0x6d8
	.uleb128 0xb
	.byte	0x4
	.4byte	0x41b
	.uleb128 0x9
	.4byte	0x410
	.4byte	0x6ee
	.uleb128 0xa
	.4byte	0x12e
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF679
	.byte	0x7
	.byte	0x3d
	.4byte	0x6de
	.uleb128 0x9
	.4byte	0x410
	.4byte	0x709
	.uleb128 0xa
	.4byte	0x12e
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF680
	.byte	0x7
	.byte	0x3e
	.4byte	0x6f9
	.uleb128 0x12
	.4byte	.LASF681
	.byte	0x7
	.byte	0x3f
	.4byte	0x6f9
	.uleb128 0x12
	.4byte	.LASF682
	.byte	0x7
	.byte	0x40
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF683
	.byte	0x7
	.byte	0x41
	.4byte	0x410
	.uleb128 0x12
	.4byte	.LASF684
	.byte	0x7
	.byte	0x41
	.4byte	0x410
	.uleb128 0x12
	.4byte	.LASF685
	.byte	0x7
	.byte	0x41
	.4byte	0x410
	.uleb128 0x12
	.4byte	.LASF686
	.byte	0x7
	.byte	0x41
	.4byte	0x410
	.uleb128 0x12
	.4byte	.LASF687
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF688
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF689
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF690
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF691
	.byte	0x7
	.byte	0x42
	.4byte	0x217
	.uleb128 0x12
	.4byte	.LASF692
	.byte	0x7
	.byte	0x43
	.4byte	0x426
	.uleb128 0x12
	.4byte	.LASF693
	.byte	0x7
	.byte	0x44
	.4byte	0x1a4
	.uleb128 0x12
	.4byte	.LASF694
	.byte	0x7
	.byte	0x45
	.4byte	0x1a4
	.uleb128 0x12
	.4byte	.LASF695
	.byte	0x7
	.byte	0x46
	.4byte	0x481
	.uleb128 0x12
	.4byte	.LASF696
	.byte	0x7
	.byte	0x47
	.4byte	0x140
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x7d5
	.uleb128 0x13
	.4byte	0x12e
	.2byte	0x3ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF697
	.byte	0x8
	.byte	0xc
	.4byte	0x7c4
	.uleb128 0x5
	.4byte	.LASF698
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x9
	.byte	0x3
	.4byte	0x804
	.uleb128 0x6
	.4byte	.LASF699
	.byte	0
	.uleb128 0x6
	.4byte	.LASF700
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF701
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF709
	.byte	0x1
	.byte	0xf7
	.uleb128 0x15
	.4byte	.LASF706
	.byte	0x1
	.byte	0x93
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x943
	.uleb128 0x16
	.4byte	.LASF702
	.byte	0x1
	.byte	0x96
	.4byte	0x426
	.4byte	.LLST0
	.uleb128 0x16
	.4byte	.LASF703
	.byte	0x1
	.byte	0x97
	.4byte	0x6d8
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	.LASF704
	.byte	0x1
	.byte	0x98
	.4byte	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.4byte	.LASF705
	.byte	0x1
	.byte	0x99
	.4byte	0x140
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0xa24
	.uleb128 0x18
	.4byte	.LVL7
	.4byte	0xa2f
	.uleb128 0x18
	.4byte	.LVL9
	.4byte	0xa3a
	.uleb128 0x18
	.4byte	.LVL11
	.4byte	0xa45
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0xa50
	.4byte	0x892
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL14
	.4byte	0xa5b
	.uleb128 0x19
	.4byte	.LVL15
	.4byte	0xa66
	.4byte	0x8af
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.4byte	.LVL16
	.4byte	0xa71
	.4byte	0x8cf
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL17
	.4byte	0xa7c
	.4byte	0x8f1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL18
	.4byte	0xa7c
	.4byte	0x905
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL19
	.4byte	0xa87
	.4byte	0x91f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL20
	.4byte	0xa92
	.4byte	0x939
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL21
	.4byte	0xa9d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF707
	.byte	0x1
	.byte	0x89
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x976
	.uleb128 0x18
	.4byte	.LVL4
	.4byte	0xa2f
	.uleb128 0x1b
	.4byte	.LVL5
	.4byte	0xaa8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF708
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b8
	.uleb128 0x1c
	.4byte	0x9dc
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x7f
	.uleb128 0x18
	.4byte	.LVL2
	.4byte	0xa2f
	.uleb128 0x1b
	.4byte	.LVL3
	.4byte	0xaa8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF710
	.byte	0x1
	.byte	0x65
	.uleb128 0x14
	.4byte	.LASF711
	.byte	0x1
	.byte	0x53
	.uleb128 0x14
	.4byte	.LASF712
	.byte	0x1
	.byte	0x41
	.uleb128 0x14
	.4byte	.LASF713
	.byte	0x1
	.byte	0x2f
	.uleb128 0x1d
	.4byte	.LASF730
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.uleb128 0x1e
	.4byte	.LASF731
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.uleb128 0x1f
	.4byte	0x9d4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa24
	.uleb128 0x1c
	.4byte	0x9dc
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x26
	.uleb128 0x18
	.4byte	.LVL0
	.4byte	0xa2f
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0xaa8
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF714
	.4byte	.LASF714
	.byte	0x3
	.byte	0x80
	.uleb128 0x20
	.4byte	.LASF715
	.4byte	.LASF715
	.byte	0x4
	.byte	0xf
	.uleb128 0x20
	.4byte	.LASF716
	.4byte	.LASF716
	.byte	0xa
	.byte	0xb
	.uleb128 0x20
	.4byte	.LASF717
	.4byte	.LASF717
	.byte	0xa
	.byte	0xc
	.uleb128 0x20
	.4byte	.LASF718
	.4byte	.LASF718
	.byte	0x5
	.byte	0x55
	.uleb128 0x20
	.4byte	.LASF719
	.4byte	.LASF719
	.byte	0x5
	.byte	0x57
	.uleb128 0x20
	.4byte	.LASF720
	.4byte	.LASF720
	.byte	0x5
	.byte	0x53
	.uleb128 0x20
	.4byte	.LASF721
	.4byte	.LASF721
	.byte	0x3
	.byte	0x7b
	.uleb128 0x20
	.4byte	.LASF722
	.4byte	.LASF722
	.byte	0x3
	.byte	0x7c
	.uleb128 0x20
	.4byte	.LASF723
	.4byte	.LASF723
	.byte	0xa
	.byte	0x16
	.uleb128 0x20
	.4byte	.LASF724
	.4byte	.LASF724
	.byte	0xb
	.byte	0x21
	.uleb128 0x20
	.4byte	.LASF725
	.4byte	.LASF725
	.byte	0x6
	.byte	0xb
	.uleb128 0x20
	.4byte	.LASF726
	.4byte	.LASF726
	.byte	0x9
	.byte	0x9
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
.LLST0:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11-1-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x57
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
	.file 12 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF438
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF466
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF491
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF492
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF493
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x4
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 17 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF506
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 18 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF509
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF510
	.file 19 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x4
	.file 20 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF513
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
	.4byte	.LASF514
	.byte	0x4
	.byte	0x4
	.file 21 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_exception_isr_handler.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x15
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 22 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_exception.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF538
	.byte	0x4
	.file 23 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_start_os.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF539
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro9
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
	.section	.debug_macro,"G",%progbits,wm4.os_config.h.2.f6eac9d90a921b6f21f0ccaa4f0194d3,comdat
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
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF465
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.e5c031aba705597809847d8f8f7643a5,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF490
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.6666b50e8a518cf90a10402c04d546aa,comdat
.Ldebug_macro4:
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
	.uleb128 0x7
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF505
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.95.8d8bf4690dc541f58a865736bc15fd8a,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF508
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_exception_isr_handler.h.2.5135980fa4e3951aa157c5167de1136d,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF516
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_exception.h.2.021e31434e3fc31b542c5d8c3891b28a,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF537
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_queue.h.2.322205b6bc95ffadb60992ab4fdadeef,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF543
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.15617e18d7400fa01024e50e30c98462,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF548
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF726:
	.ascii	"OS_SHUTDOWN\000"
.LASF206:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF515:
	.ascii	"_OS_EXCEPTION_ISR_HANDLER_H_ \000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF571:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF451:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF660:
	.ascii	"TASK1_STACK_POS\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF527:
	.ascii	"SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018u)\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF563:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF465:
	.ascii	"OS_PROCESS_STACK_TASK4_SIZE 0x200u\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF577:
	.ascii	"timebig_t\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF682:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF541:
	.ascii	"FIRST_TASK (0u)\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF678:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF675:
	.ascii	"TASK4_STACK\000"
.LASF519:
	.ascii	"MEM_MANAG_FAULT_STATUS_REG ((volatile uint8*)0xE000"
	.ascii	"ED28u)\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF566:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF509:
	.ascii	"_LED_H_ \000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF708:
	.ascii	"OS_EXCEPTION_DEBUG\000"
.LASF575:
	.ascii	"unsigned int\000"
.LASF449:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF583:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF707:
	.ascii	"OS_EXCEPTION_PEND_SV\000"
.LASF636:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF560:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF468:
	.ascii	"FALSE 0u\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF656:
	.ascii	"TASK0_STACK_ADDR\000"
.LASF5:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF2:
	.ascii	"__GNUC__ 7\000"
.LASF494:
	.ascii	"_OS_TASK_CONFIG_H_ \000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF653:
	.ascii	"OS_MAIN_STACK_ADDR\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF159:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF54:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF521:
	.ascii	"USAGE_FAULT_STATUS_REG ((volatile uint16*)0xE000ED2"
	.ascii	"Au)\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF9:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF31:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF718:
	.ascii	"OS_TASK_SAVE_TASK_ENVIRONMENT\000"
.LASF40:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF638:
	.ascii	"VAR_FAULT_STATUS_REG\000"
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
.LASF579:
	.ascii	"privilige_mode_e\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF543:
	.ascii	"FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK;"
	.ascii	" (var) <= LAST_TASK; (var)++)\000"
.LASF533:
	.ascii	"SYS_HANDLER_CTRL_STATE_REG ((uint32*)0xE000ED24u)\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF676:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF641:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF453:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF727:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF615:
	.ascii	"task_state\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF203:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF588:
	.ascii	"E_TASK_RUNNING\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF657:
	.ascii	"TASK0_STACK_POS\000"
.LASF695:
	.ascii	"SYSTEM_STATE_ACCEPTED\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF667:
	.ascii	"TASK3_STACK_USAGE_PERCENT\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF599:
	.ascii	"active\000"
.LASF462:
	.ascii	"OS_PROCESS_STACK_TASK1_SIZE 0x200u\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF447:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF538:
	.ascii	"_OS_SHUTDOWN_H_ \000"
.LASF552:
	.ascii	"uint8\000"
.LASF665:
	.ascii	"TASK3_STACK_ADDR\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF618:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF484:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF536:
	.ascii	"SYS_HANDLER_CTRL_STATE_BIT_MASK_MEMFAULTENA ((uint3"
	.ascii	"2 )0x00010000u)\000"
.LASF721:
	.ascii	"INT_SUB\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF522:
	.ascii	"MEM_FAULT_ADDR_REG ((volatile uint32*)0xE000ED34u)\000"
.LASF534:
	.ascii	"SYS_HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA ((uint3"
	.ascii	"2 )0x00040000u)\000"
.LASF685:
	.ascii	"TASK_2_VAR\000"
.LASF496:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF505:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF604:
	.ascii	"nr_of_ins_activated\000"
.LASF199:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF212:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF614:
	.ascii	"state_request\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF643:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF576:
	.ascii	"big_int\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF518:
	.ascii	"HARDFAULT_STATUS_REG ((volatile uint32*)0xE000ED2Cu"
	.ascii	")\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF460:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8u\000"
.LASF692:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF607:
	.ascii	"time_to_prio_inc\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF616:
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
.LASF704:
	.ascii	"Diff\000"
.LASF466:
	.ascii	"_OS_BASE_TYPES_H_ \000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF546:
	.ascii	"TASK_1_PTR 1u\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF528:
	.ascii	"SYSTICK_CALIB_VAL_REG ((uint32*)0xE000E01Cu)\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF722:
	.ascii	"INT_ADD\000"
.LASF438:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF647:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF585:
	.ascii	"E_TASK_UNSPECIFIED\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF658:
	.ascii	"TASK0_STACK_USAGE_PERCENT\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF535:
	.ascii	"SYS_HANDLER_CTRL_STATE_BIT_MASK_BUSFAULTENA ((uint3"
	.ascii	"2 )0x00020000u)\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF503:
	.ascii	"TASK4_STACK_SIZE 2000u\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF523:
	.ascii	"BUS_FAULT_ADDR_REG ((volatile uint32*)0xE000ED38u)\000"
.LASF504:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF705:
	.ascii	"time\000"
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
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF511:
	.ascii	"_OS_STACK_H_ \000"
.LASF724:
	.ascii	"OS_TERMINATE_TASK\000"
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
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF567:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF645:
	.ascii	"DBG_RLD_VALUE\000"
.LASF474:
	.ascii	"LOCAL static\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2u\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF640:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF611:
	.ascii	"current_prio\000"
.LASF526:
	.ascii	"SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014u)\000"
.LASF530:
	.ascii	"SYSTICK_STAT_REG_CLKSRC_AHB_8 ((uint32 )0x00000000u"
	.ascii	")\000"
.LASF548:
	.ascii	"TASK_3_PTR 3u\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF631:
	.ascii	"TASK_PTR\000"
.LASF489:
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
.LASF514:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF12:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF485:
	.ascii	"ENABLE_INTERRUPTS() LLF_INT_ENABLE()\000"
.LASF452:
	.ascii	"NR_OF_CORES 1u\000"
.LASF532:
	.ascii	"SYSTICK_STAT_REG_ENABLE ((uint32 )0x00000001u)\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF602:
	.ascii	"free\000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF584:
	.ascii	"task_state_e\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF677:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF617:
	.ascii	"p_stack_pointer\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF589:
	.ascii	"task_state_t\000"
.LASF716:
	.ascii	"GET_RUNNING_TASK\000"
.LASF570:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF596:
	.ascii	"fair_exe_time\000"
.LASF648:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF470:
	.ascii	"False FALSE\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF720:
	.ascii	"OS_GET_CURRENT_TIME\000"
.LASF547:
	.ascii	"TASK_2_PTR 2u\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF697:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF502:
	.ascii	"TASK3_STACK_SIZE 2000u\000"
.LASF537:
	.ascii	"SYS_HANDLER_CTRL_STATE_ENA_ALL_EXCEP (*SYS_HANDLER_"
	.ascii	"CTRL_STATE_REG = *SYS_HANDLER_CTRL_STATE_REG | SYS_"
	.ascii	"HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA | SYS_HANDL"
	.ascii	"ER_CTRL_STATE_BIT_MASK_BUSFAULTENA | SYS_HANDLER_CT"
	.ascii	"RL_STATE_BIT_MASK_MEMFAULTENA)\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF625:
	.ascii	"scheduler_time_t\000"
.LASF561:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF482:
	.ascii	"DWT_LAR ((volatile uint32*)0xE0001FB0u)\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF633:
	.ascii	"OS_SW_BUG\000"
.LASF605:
	.ascii	"wait_act_until\000"
.LASF609:
	.ascii	"max_allowed_wait_time\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF59:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF713:
	.ascii	"OS_EXCEPTION_HARDFAULT\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF693:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF555:
	.ascii	"uint16\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF493:
	.ascii	"_OS_TASK_COMMON_H_ \000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
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
.LASF476:
	.ascii	"GLOBAL_INLINE __inline__\000"
.LASF590:
	.ascii	"func_p_t\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF454:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF458:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF531:
	.ascii	"SYSTICK_STAT_REG_TICKINT ((uint32 )0x00000002u)\000"
.LASF672:
	.ascii	"TASK1_STACK\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF592:
	.ascii	"big_int_s\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF562:
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
.LASF471:
	.ascii	"True TRUE\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF216:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF710:
	.ascii	"OS_EXCEPTION_USAGE_FAULT\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF612:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF507:
	.ascii	"OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(tas"
	.ascii	"k_name)] = (task_ptr))\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF669:
	.ascii	"TASK4_STACK_POS\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF544:
	.ascii	"_OS_TASK_SCHEDULER_H_ \000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF573:
	.ascii	"E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF513:
	.ascii	"_OS_MAIN_H_ \000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF702:
	.ascii	"task\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF668:
	.ascii	"TASK4_STACK_ADDR\000"
.LASF712:
	.ascii	"OS_EXCEPTION_MEM_MANAG_FAULT\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF652:
	.ascii	"TASK4_CALL_NR\000"
.LASF729:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF642:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF564:
	.ascii	"E_OS_BUG_TASK_UNSPECIFIED\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF469:
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
.LASF487:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF664:
	.ascii	"TASK2_STACK_USAGE_PERCENT\000"
.LASF525:
	.ascii	"SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010u)\000"
.LASF581:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF683:
	.ascii	"TASK_0_VAR\000"
.LASF681:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF684:
	.ascii	"TASK_1_VAR\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF587:
	.ascii	"E_TASK_READY\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF723:
	.ascii	"SET_RUNNING_TASK\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF551:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF559:
	.ascii	"uint32\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF610:
	.ascii	"start_time\000"
.LASF600:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF703:
	.ascii	"scheduling_task_ptr\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF500:
	.ascii	"TASK1_STACK_SIZE 2000u\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF186:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF512:
	.ascii	"_OS_HEAP_H_ \000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF674:
	.ascii	"TASK3_STACK\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF591:
	.ascii	"func_p_state_change_t\000"
.LASF467:
	.ascii	"_OS_COMMON_H_ \000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF655:
	.ascii	"OS_MAIN_STACK_USAGE_PERCENT\000"
.LASF694:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF700:
	.ascii	"E_OS_RESET_POWERDOWN\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF444:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF711:
	.ascii	"OS_EXCEPTION_BUS_FAULT\000"
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
.LASF480:
	.ascii	"DWT_CTRL ((volatile uint32*)0xE0001000u)\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF477:
	.ascii	"REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\000"
.LASF666:
	.ascii	"TASK3_STACK_POS\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF698:
	.ascii	"os_reset_type_s\000"
.LASF545:
	.ascii	"TASK_0_PTR 0u\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF499:
	.ascii	"TASK0_STACK_SIZE 2000u\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF649:
	.ascii	"TASK1_CALL_NR\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF463:
	.ascii	"OS_PROCESS_STACK_TASK2_SIZE 0x200u\000"
.LASF445:
	.ascii	"CPP_VERSION_NONE 0u\000"
.LASF730:
	.ascii	"OS_EXCEPTION_NMI\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF486:
	.ascii	"PRIVILIGE_LEVEL_SAVE_CURRENT() ;\000"
.LASF728:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_exception.c\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF539:
	.ascii	"_OS_STARTOS_H_ \000"
.LASF554:
	.ascii	"short int\000"
.LASF696:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF598:
	.ascii	"task_s\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF623:
	.ascii	"task_t\000"
.LASF558:
	.ascii	"long int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF501:
	.ascii	"TASK2_STACK_SIZE 2000u\000"
.LASF629:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF719:
	.ascii	"OS_TASK_RESTORE_SYSTEM_STACK\000"
.LASF369:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF246:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF218:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF209:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF497:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF715:
	.ascii	"LLF_EXCEPTION_TO_HANDLER_MODE\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF706:
	.ascii	"OS_EXCEPTION_SYSTICK\000"
.LASF475:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF639:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF540:
	.ascii	"_OS_TASK_QUEUE_H_ \000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF580:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF490:
	.ascii	"AMOUNT_SW_BUG_FUNCTIONS 22\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF492:
	.ascii	"_LLD_CORE_H_ \000"
.LASF464:
	.ascii	"OS_PROCESS_STACK_TASK3_SIZE 0x200u\000"
.LASF572:
	.ascii	"E_OS_BUG_DIVISION_BY_ZERO\000"
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
.LASF520:
	.ascii	"BUS_FAULT_STATUS_REG ((volatile uint8*)0xE000ED29u)"
	.ascii	"\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF510:
	.ascii	"_OS_RAM_H_ \000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF673:
	.ascii	"TASK2_STACK\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF594:
	.ascii	"number\000"
.LASF45:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF176:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF29:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF646:
	.ascii	"DBG_CURR_VAL\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF529:
	.ascii	"SYSTICK_STAT_REG_CLKSRC_AHB ((uint32 )0x00000004u)\000"
.LASF651:
	.ascii	"TASK3_CALL_NR\000"
.LASF601:
	.ascii	"idle_task\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF542:
	.ascii	"LAST_TASK (MAX_RUN_QUEUE_SIZE-1u)\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF565:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF628:
	.ascii	"OS_STATE_RUNNING\000"
.LASF516:
	.ascii	"SVC_00 0x00\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF714:
	.ascii	"OS_UpdateCurrentTime\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF621:
	.ascii	"p_stack_pointer_end\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF557:
	.ascii	"long unsigned int\000"
.LASF478:
	.ascii	"MCU_X86 3\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF659:
	.ascii	"TASK1_STACK_ADDR\000"
.LASF622:
	.ascii	"privilige_mode\000"
.LASF680:
	.ascii	"RUNNING_TASK\000"
.LASF488:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF619:
	.ascii	"p_stack_pointer_start\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF701:
	.ascii	"E_OS_RESET_EXIT\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF699:
	.ascii	"E_OS_RESET_HARDRESET\000"
.LASF603:
	.ascii	"nr_of_ins_allowed\000"
.LASF670:
	.ascii	"TASK4_STACK_USAGE_PERCENT\000"
.LASF506:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF731:
	.ascii	"os_exception_read_status_registers\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF578:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF568:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF632:
	.ascii	"HEAP\000"
.LASF491:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF448:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF644:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF574:
	.ascii	"os_sw_bugs_t\000"
.LASF549:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF457:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF450:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF608:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF634:
	.ascii	"OS_STATE\000"
.LASF654:
	.ascii	"OS_MAIN_STACK_POS\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF473:
	.ascii	"REJECTED 0u\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF686:
	.ascii	"TASK_3_VAR\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF662:
	.ascii	"TASK2_STACK_ADDR\000"
.LASF498:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF524:
	.ascii	"AUX_FAULT_STATUS_REG ((volatile uint32*)0xE000ED3Cu"
	.ascii	")\000"
.LASF613:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF582:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF508:
	.ascii	"OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(tas"
	.ascii	"k_name)])\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF495:
	.ascii	"TASK_MIN_TIME (1e0)\000"
.LASF595:
	.ascii	"exe_time\000"
.LASF626:
	.ascii	"os_state_e\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF620:
	.ascii	"stack_size\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF663:
	.ascii	"TASK2_STACK_POS\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF439:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF630:
	.ascii	"os_state_t\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF556:
	.ascii	"unsigned_int32_t\000"
.LASF606:
	.ascii	"wait_time\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF661:
	.ascii	"TASK1_STACK_USAGE_PERCENT\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
.LASF671:
	.ascii	"TASK0_STACK\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF550:
	.ascii	"signed char\000"
.LASF517:
	.ascii	"_OS_EXCEPTION_H_ \000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF164:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF569:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF472:
	.ascii	"ACCEPTED 1u\000"
.LASF553:
	.ascii	"short unsigned int\000"
.LASF593:
	.ascii	"task_group_s\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF597:
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
.LASF709:
	.ascii	"OS_EXCEPTION_IRQ\000"
.LASF679:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
.LASF717:
	.ascii	"GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF650:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF725:
	.ascii	"OS_STATE_HANDLER\000"
.LASF178:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF221:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF687:
	.ascii	"TASK_GROUP_1\000"
.LASF688:
	.ascii	"TASK_GROUP_2\000"
.LASF689:
	.ascii	"TASK_GROUP_3\000"
.LASF690:
	.ascii	"TASK_GROUP_4\000"
.LASF691:
	.ascii	"TASK_GROUP_5\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF461:
	.ascii	"OS_MAIN_STACK_SIZE 0x400u\000"
.LASF637:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF483:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF586:
	.ascii	"E_TASK_SUSPENDED\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF455:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF481:
	.ascii	"DWT_CYCCNT ((volatile uint32*)0xE0001004u)\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF624:
	.ascii	"scheduling_t\000"
.LASF479:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF627:
	.ascii	"OS_STATE_INIT\000"
.LASF446:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF635:
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
