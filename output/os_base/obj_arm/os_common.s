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
	.file	"os_common.c"
@ GNU C89 (GNU Tools for Arm Embedded Processors 7-2018-q2-update) version 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907] (arm-none-eabi)
@	compiled by GNU C version 5.3.1 20160211, GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.15-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib thumb/v7e-m
@ -iprefix d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../lib/gcc/arm-none-eabi/7.3.1/
@ -isysroot d:\programm\gnu tools arm embedded\7 2018-q2-update\bin\../arm-none-eabi
@ -D__USES_INITFINI__ -D CFG_PROCESSOR=4 -D STM32F407VG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c
@ -mcpu=cortex-m4 -mthumb
@ -auxbase-strip E:\NeuOrga\Programmieren\c_cpp\github_os\output\os_base\obj_arm\os_common.s
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
	.global	OS_SET_SW_BUG
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_SET_SW_BUG, %function
OS_SET_SW_BUG:
.LFB0:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.c"
	.loc 1 5 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:6:    OS_SW_BUG[task_func_nr] = bug_nr;
	.loc 1 6 0
	ldr	r3, .L3	@ tmp113,
	strb	r0, [r3, r1]	@ bug_nr, OS_SW_BUG
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:7: }
	.loc 1 7 0
	bx	lr	@
.L4:
	.align	2
.L3:
	.word	OS_SW_BUG
	.cfi_endproc
.LFE0:
	.size	OS_SET_SW_BUG, .-OS_SET_SW_BUG
	.align	1
	.p2align 2,,3
	.global	OS_GET_CURRENT_TIME
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_GET_CURRENT_TIME, %function
OS_GET_CURRENT_TIME:
.LFB1:
	.loc 1 12 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL1:
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
.LBB28:
.LBB29:
.LBB30:
.LBB31:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r2, .L29	@ tmp280,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r9, .L29+16	@ tmp282,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r1, .L29+4	@ tmp281,
.LBE31:
.LBE30:
.LBB36:
.LBB37:
.LBB38:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldr	r3, .L29+8	@ tmp522,
.LBE38:
.LBE37:
.LBE36:
.LBB45:
.LBB32:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	lr, .L29+20	@ tmp284,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	ip, .L29+24	@ tmp287,
.LBE32:
.LBE45:
.LBE29:
.LBE28:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:12: {
	.loc 1 12 0
	sub	sp, sp, #52	@,,
	.cfi_def_cfa_offset 88
.LVL2:
.LBB53:
.LBB52:
.LBB46:
.LBB33:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:34:    volatile uint32 time = 0u;
	.loc 1 34 0
	mov	r8, #0	@ tmp279,
	str	r8, [sp, #28]	@ tmp279, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	str	r1, [r2]	@ tmp281, MEM[(volatile uint32 *)3758104496B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r7, [r9]	@ _24, MEM[(volatile uint32 *)3758157308B]
.LBE33:
.LBE46:
.LBB47:
.LBB42:
.LBB39:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r2, [r3, #11]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	str	r2, [sp]	@ LOCAL_SYSTEM_TIME.number, %sfp
	ldrb	r1, [r3, #10]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #9]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r2, [r3, #8]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	str	r1, [sp, #8]	@ LOCAL_SYSTEM_TIME.number, %sfp
.LBE39:
.LBE42:
.LBE47:
.LBB48:
.LBB34:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	orr	r7, r7, #16777216	@ _25, _24,
.LBE34:
.LBE48:
.LBB49:
.LBB43:
.LBB40:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	str	r4, [sp, #12]	@ LOCAL_SYSTEM_TIME.number, %sfp
	str	r2, [sp, #16]	@ LOCAL_SYSTEM_TIME.number, %sfp
	ldrb	r6, [r3, #15]	@ zero_extendqisi2	@ _293, LOCAL_SYSTEM_TIME.number
	ldrb	fp, [r3, #14]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r10, [r3, #13]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #12]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r2, [r3, #7]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #6]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #5]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
.LBE40:
.LBE43:
.LBE49:
.LBB50:
.LBB35:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	str	r7, [r9]	@ _25, MEM[(volatile uint32 *)3758157308B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	r7, [lr]	@ _26, MEM[(volatile uint32 *)3758100484B]
	str	r7, [sp, #28]	@ _26, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:46:    *DWT_CYCCNT = 0u;
	.loc 1 46 0
	str	r8, [lr]	@ tmp279, MEM[(volatile uint32 *)3758100484B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	r7, [ip]	@ _27, MEM[(volatile uint32 *)3758100480B]
	orr	r7, r7, #1	@ _28, _27,
	str	r7, [ip]	@ _28, MEM[(volatile uint32 *)3758100480B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:52:    ASSIGN_UINT32(timebig, time);
	.loc 1 52 0
	ldr	r7, [sp, #28]	@ time.0_29, time
.LVL3:
.LBE35:
.LBE50:
.LBB51:
.LBB44:
.LBB41:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtab	r6, r6, r7	@ tmp293, _293, time.0_29
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	ip, r6, #255	@ tmp300, tmp293,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	fp, fp, ip	@ tmp305, tmp300
	ubfx	ip, r7, #1, #8	@ tmp308, time.0_29,,
	add	fp, fp, ip	@ tmp_sum, tmp308
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	ip, fp, #255	@ tmp313, tmp_sum,
	add	r10, r10, ip	@ _194, tmp313
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ubfx	ip, r7, #2, #8	@ tmp321, time.0_29,,
	add	r10, r10, ip	@ tmp_sum, tmp321
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	ip, r10, #255	@ tmp325, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ubfx	r7, r7, #3, #8	@ tmp333, time.0_29,,
.LVL5:
	add	r5, r5, ip	@ _195, tmp325
	adds	r5, r7, r5	@ tmp_sum, tmp333, _195
	ldr	r7, [sp]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	str	r5, [sp, #4]	@ tmp_sum, %sfp
	bic	r5, r5, #255	@ tmp337, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r5, r5, r7	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	ldr	r7, [sp, #8]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	ip, r5, #255	@ tmp348, tmp_sum,
	add	ip, ip, r7	@ tmp353, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	ip, ip	@ tmp_sum, tmp353
	ldr	r7, [sp, #12]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	lr, ip, #255	@ tmp359, tmp_sum,
	add	lr, lr, r7	@ tmp364, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	lr, lr	@ tmp_sum, tmp364
	ldr	r7, [sp, #16]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, lr, #255	@ tmp370, tmp_sum,
	add	r8, r8, r7	@ tmp375, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r8, r8	@ tmp_sum, tmp375
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r9, r8, #255	@ tmp381, tmp_sum,
	add	r2, r2, r9	@ tmp386, tmp381
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r2, r2	@ tmp_sum, tmp386
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r9, r2, #255	@ tmp392, tmp_sum,
	add	r1, r1, r9	@ tmp397, tmp392
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r1, r1	@ tmp_sum, tmp397
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r9, r1, #255	@ tmp403, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtb	r6, r6	@ _299, tmp293
	uxtb	r7, r10	@ _335, tmp_sum
	add	r4, r4, r9	@ tmp408, tmp403
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r4, r4	@ tmp_sum, tmp408
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	str	r6, [sp, #8]	@ _299, %sfp
	str	r7, [sp]	@ _335, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r10, [r3, #4]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	ldrb	r9, [sp, #4]	@ zero_extendqisi2	@ _353, %sfp
	str	r9, [sp, #4]	@ _353, %sfp
	uxtb	r9, r4	@ _479, tmp_sum
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp414, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtb	r5, r5	@ _371, tmp_sum
	add	r4, r4, r10	@ tmp419, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r4, r4	@ tmp_sum, tmp419
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	str	r5, [sp, #12]	@ _371, %sfp
	strb	r5, [r3, #11]	@ _371, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r6, [r3, #15]	@ _299, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r10, r4, #255	@ tmp425, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtb	r2, r2	@ _443, tmp_sum
	add	r5, r5, r10	@ tmp430, tmp425
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r5, r5	@ tmp_sum, tmp430
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	str	r2, [sp, #16]	@ _443, %sfp
	strb	r2, [r3, #7]	@ _443, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	ldr	r7, [sp]	@ _335, %sfp
	strb	r7, [r3, #13]	@ _335, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r10, r5, #255	@ tmp436, tmp_sum,
	add	r2, r2, r10	@ tmp441, tmp436
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r2, r2	@ tmp_sum, tmp441
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r10, r2, #255	@ tmp447, tmp_sum,
	add	r6, r6, r10	@ tmp452, tmp447
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	ldr	r7, [sp, #4]	@ _353, %sfp
	strb	r7, [r3, #12]	@ _353, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r6, r6	@ tmp_sum, tmp452
	add	r10, r0, #4	@ vectp_time.48, time,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtb	r1, r1	@ _461, tmp_sum
	uxtb	fp, fp	@ _317, tmp_sum
	uxtb	ip, ip	@ _389, tmp_sum
	uxtb	lr, lr	@ _407, tmp_sum
	uxtb	r8, r8	@ _425, tmp_sum
.LVL6:
	ldrb	r7, [r3]	@ zero_extendqisi2	@ _19, LOCAL_SYSTEM_TIME.number
	str	r1, [sp, #20]	@ _461, %sfp
	uxtb	r4, r4	@ _497, tmp_sum
	uxtb	r5, r5	@ _515, tmp_sum
	uxtb	r2, r2	@ _533, tmp_sum
	uxtb	r6, r6	@ _551, tmp_sum
	cmp	r10, r3	@ vectp_time.48, tmp522
	strb	fp, [r3, #14]	@ _317, LOCAL_SYSTEM_TIME.number
.LVL7:
	strb	ip, [r3, #10]	@ _389, LOCAL_SYSTEM_TIME.number
.LVL8:
	strb	lr, [r3, #9]	@ _407, LOCAL_SYSTEM_TIME.number
.LVL9:
	strb	r8, [r3, #8]	@ _425, LOCAL_SYSTEM_TIME.number
.LVL10:
	strb	r1, [r3, #6]	@ _461, LOCAL_SYSTEM_TIME.number
.LVL11:
	strb	r9, [r3, #5]	@ _479, LOCAL_SYSTEM_TIME.number
.LVL12:
	strb	r7, [r3]	@ _19, LOCAL_SYSTEM_TIME.number
	strb	r4, [r3, #4]	@ _497, LOCAL_SYSTEM_TIME.number
.LVL13:
	strb	r5, [r3, #3]	@ _515, LOCAL_SYSTEM_TIME.number
.LVL14:
	strb	r2, [r3, #2]	@ _533, LOCAL_SYSTEM_TIME.number
.LVL15:
	strb	r6, [r3, #1]	@ _551, LOCAL_SYSTEM_TIME.number
.LVL16:
	bls	.L17	@,
	adds	r1, r3, #4	@ tmp575,,
	cmp	r0, r1	@ time, tmp575
	bcc	.L6	@,
.L17:
	negs	r1, r3	@ tmp479, tmp522
	ands	r1, r1, #3	@ prolog_loop_niters.38, tmp479,
	beq	.L8	@,
	cmp	r1, #1	@ prolog_loop_niters.38,
.LBE41:
.LBE44:
.LBE51:
.LBE52:
.LBE53:
.LBB54:
.LBB55:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	strb	r7, [r0]	@ _19, MEM[(struct big_int *)time_3(D)].number
.LVL17:
	beq	.L15	@,
	cmp	r1, #3	@ prolog_loop_niters.38,
	strb	r6, [r0, #1]	@ _551, MEM[(struct big_int *)time_3(D)].number
.LVL18:
	bne	.L16	@,
	strb	r2, [r0, #2]	@ _533, MEM[(struct big_int *)time_3(D)].number
.LVL19:
	movs	r5, #13	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r2, r1	@ pos, prolog_loop_niters.38
.LVL20:
.L9:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldr	r4, [r3, r1]	@ vect__6.47, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.46_146]
	str	r4, [r0, r1]	@ unaligned	@ vect__6.47, MEM[(uint8[16] *)vectp_time.49_145]
	rsb	r6, r1, #16	@ tmp517, prolog_loop_niters.38,
	adds	r4, r3, r1	@ vectp_LOCAL_SYSTEM_TIME.46, tmp522, prolog_loop_niters.38
	add	r1, r1, r0	@ vectp_time.49, time
	uxtb	r6, r6	@ niters.40, tmp517
	adds	r4, r4, #4	@ vectp_LOCAL_SYSTEM_TIME.45, vectp_LOCAL_SYSTEM_TIME.46,
	add	r10, r1, #4	@ vectp_time.48, vectp_time.49,
	movs	r7, #3	@ bnd.41,
.L12:
	ldr	r1, [r4]	@ vect__6.47, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.45_81]
	str	r1, [r10]	@ unaligned	@ vect__6.47, MEM[(uint8[16] *)vectp_time.48_78]
	ldr	r1, [r4, #4]	@ vect__6.47, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.45_81 + 4B]
	str	r1, [r10, #4]	@ unaligned	@ vect__6.47, MEM[(uint8[16] *)vectp_time.48_78 + 4B]
	cmp	r7, #4	@ bnd.41,
	bne	.L28	@,
	ldr	r1, [r4, #8]	@ vect__6.47, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.45_81 + 8B]
	str	r1, [r10, #8]	@ unaligned	@ vect__6.47, MEM[(uint8[16] *)vectp_time.48_78 + 8B]
	cmp	r6, #16	@ niters.40,
	sub	r1, r5, #16	@ tmp487, ivtmp_43,
	uxtb	r1, r1	@ tmp.44, tmp487
	add	r2, r2, #16	@ tmp.43, pos,
	beq	.L5	@,
.L14:
.LVL21:
	ldrb	r4, [r3, r2]	@ zero_extendqisi2	@ _229, LOCAL_SYSTEM_TIME.number
	strb	r4, [r0, r2]	@ _229, MEM[(struct big_int *)time_3(D)].number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	cmp	r1, #1	@ tmp.44,
	add	r4, r2, #1	@ tmp490, tmp.43,
	uxtb	r4, r4	@ pos, tmp490
.LVL22:
	beq	.L5	@,
	adds	r2, r2, #2	@ tmp496, tmp.43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ _237, LOCAL_SYSTEM_TIME.number
	strb	r5, [r0, r4]	@ _237, MEM[(struct big_int *)time_3(D)].number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	cmp	r1, #2	@ tmp.44,
	uxtb	r2, r2	@ pos, tmp496
.LVL23:
	beq	.L5	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2	@ _95, LOCAL_SYSTEM_TIME.number
	strb	r3, [r0, r2]	@ _95, MEM[(struct big_int *)time_3(D)].number
.LVL24:
.L5:
.LBE55:
.LBE54:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:18: }
	.loc 1 18 0
	add	sp, sp, #52	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL25:
.L6:
	.cfi_restore_state
.LBB58:
.LBB56:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldr	r3, [sp, #20]	@ _461, %sfp
	strb	r3, [r0, #6]	@ _461, MEM[(struct big_int *)time_3(D)].number
	ldr	r3, [sp, #16]	@ _443, %sfp
	strb	r3, [r0, #7]	@ _443, MEM[(struct big_int *)time_3(D)].number
	ldr	r3, [sp, #12]	@ _371, %sfp
	strb	r3, [r0, #11]	@ _371, MEM[(struct big_int *)time_3(D)].number
	ldr	r3, [sp, #4]	@ _353, %sfp
	strb	r3, [r0, #12]	@ _353, MEM[(struct big_int *)time_3(D)].number
	ldr	r3, [sp]	@ _335, %sfp
	strb	r3, [r0, #13]	@ _335, MEM[(struct big_int *)time_3(D)].number
	ldr	r3, [sp, #8]	@ _299, %sfp
	strb	r7, [r0]	@ _19, MEM[(struct big_int *)time_3(D)].number
.LVL26:
	strb	r6, [r0, #1]	@ _551, MEM[(struct big_int *)time_3(D)].number
.LVL27:
	strb	r2, [r0, #2]	@ _533, MEM[(struct big_int *)time_3(D)].number
.LVL28:
	strb	r5, [r0, #3]	@ _515, MEM[(struct big_int *)time_3(D)].number
.LVL29:
	strb	r4, [r0, #4]	@ _497, MEM[(struct big_int *)time_3(D)].number
.LVL30:
	strb	r9, [r0, #5]	@ _479, MEM[(struct big_int *)time_3(D)].number
.LVL31:
	strb	r8, [r0, #8]	@ _425, MEM[(struct big_int *)time_3(D)].number
.LVL32:
	strb	lr, [r0, #9]	@ _407, MEM[(struct big_int *)time_3(D)].number
.LVL33:
	strb	ip, [r0, #10]	@ _389, MEM[(struct big_int *)time_3(D)].number
.LVL34:
	strb	fp, [r0, #14]	@ _317, MEM[(struct big_int *)time_3(D)].number
.LVL35:
	strb	r3, [r0, #15]	@ _299, MEM[(struct big_int *)time_3(D)].number
.LVL36:
.LBE56:
.LBE58:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:18: }
	.loc 1 18 0
	add	sp, sp, #52	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL37:
.L15:
	.cfi_restore_state
.LBB59:
.LBB57:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	movs	r5, #15	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r2, r1	@ pos, prolog_loop_niters.38
	b	.L9	@
.LVL38:
.L8:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldr	r2, [r3]	@ unaligned	@ tmp516, MEM[(uint8[16] *)&LOCAL_SYSTEM_TIME]
	str	r2, [r0]	@ unaligned	@ tmp516, MEM[(uint8[16] *)vectp_time.49_441]
	movs	r6, #16	@ niters.40,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r2, r1	@ pos, prolog_loop_niters.38
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	mov	r5, r6	@ ivtmp_43, niters.40
	ldr	r4, .L29+12	@ vectp_LOCAL_SYSTEM_TIME.45,
	movs	r7, #4	@ bnd.41,
	b	.L12	@
.LVL39:
.L16:
	movs	r5, #14	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	movs	r2, #2	@ pos,
	b	.L9	@
.LVL40:
.L28:
	sub	r1, r5, #12	@ tmp520, ivtmp_43,
	uxtb	r1, r1	@ tmp.44, tmp520
	adds	r2, r2, #12	@ tmp.43, pos,
	b	.L14	@
.L30:
	.align	2
.L29:
	.word	-536862800
	.word	-978530731
	.word	LOCAL_SYSTEM_TIME
	.word	LOCAL_SYSTEM_TIME+4
	.word	-536809988
	.word	-536866812
	.word	-536866816
.LBE57:
.LBE59:
	.cfi_endproc
.LFE1:
	.size	OS_GET_CURRENT_TIME, .-OS_GET_CURRENT_TIME
	.align	1
	.p2align 2,,3
	.global	OS_UpdateCurrentTime
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_UpdateCurrentTime, %function
OS_UpdateCurrentTime:
.LFB2:
	.loc 1 20 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}	@
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB67:
.LBB68:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r3, .L33	@ tmp246,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r5, .L33+4	@ tmp248,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r2, .L33+8	@ tmp247,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	r0, .L33+12	@ tmp250,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	r1, .L33+16	@ tmp253,
.LBE68:
.LBE67:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:20: {
	.loc 1 20 0
	sub	sp, sp, #24	@,,
	.cfi_def_cfa_offset 48
.LVL41:
.LBB72:
.LBB69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:34:    volatile uint32 time = 0u;
	.loc 1 34 0
	movs	r4, #0	@ tmp245,
	str	r4, [sp, #4]	@ tmp245, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	str	r2, [r3]	@ tmp247, MEM[(volatile uint32 *)3758104496B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r2, [r5]	@ _20, MEM[(volatile uint32 *)3758157308B]
.LBE69:
.LBE72:
.LBB73:
.LBB74:
.LBB75:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldr	r3, .L33+20	@ tmp258,
.LBE75:
.LBE74:
.LBE73:
.LBB80:
.LBB70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	orr	r2, r2, #16777216	@ _21, _20,
	str	r2, [r5]	@ _21, MEM[(volatile uint32 *)3758157308B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	r2, [r0]	@ _22, MEM[(volatile uint32 *)3758100484B]
	str	r2, [sp, #4]	@ _22, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:46:    *DWT_CYCCNT = 0u;
	.loc 1 46 0
	str	r4, [r0]	@ tmp245, MEM[(volatile uint32 *)3758100484B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	r2, [r1]	@ _23, MEM[(volatile uint32 *)3758100480B]
.LBE70:
.LBE80:
.LBB81:
.LBB78:
.LBB76:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	lr, [r3, #14]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r8, [r3, #15]	@ zero_extendqisi2	@ _77, LOCAL_SYSTEM_TIME.number
	ldrb	r7, [r3, #13]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
.LBE76:
.LBE78:
.LBE81:
.LBB82:
.LBB71:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	orr	r2, r2, #1	@ _24, _23,
	str	r2, [r1]	@ _24, MEM[(volatile uint32 *)3758100480B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:52:    ASSIGN_UINT32(timebig, time);
	.loc 1 52 0
	ldr	r2, [sp, #4]	@ time.0_25, time
.LVL42:
.LBE71:
.LBE82:
.LBB83:
.LBB79:
.LBB77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r1, [r3, #12]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	ip, [r3, #11]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r6, [r3, #10]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #9]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #8]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	uxtab	r8, r8, r2	@ tmp260, _77, time.0_25
.LVL43:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r0, r8, #255	@ tmp266, tmp260,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r0, r0, lr	@ tmp271, LOCAL_SYSTEM_TIME.number
	ubfx	lr, r2, #1, #8	@ tmp274, time.0_25,,
	add	lr, lr, r0	@ tmp_sum, tmp271
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r0, lr, #255	@ tmp279, tmp_sum,
	add	r7, r7, r0	@ _263, tmp279
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ubfx	r0, r2, #2, #8	@ tmp287, time.0_25,,
	add	r7, r7, r0	@ tmp_sum, tmp287
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r0, r7, #255	@ tmp291, tmp_sum,
	add	r1, r1, r0	@ _264, tmp291
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ubfx	r2, r2, #3, #8	@ tmp299, time.0_25,,
.LVL44:
	add	r2, r2, r1	@ tmp_sum, _264
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r8, [r3, #15]	@ tmp260, LOCAL_SYSTEM_TIME.number
.LVL45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, r2, #255	@ tmp303, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	ip, ip, r8	@ tmp_sum, tmp303
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, ip, #255	@ tmp314, tmp_sum,
	add	r6, r6, r8	@ tmp319, tmp314
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r6, r6	@ tmp_sum, tmp319
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, r6, #255	@ tmp325, tmp_sum,
	add	r5, r5, r8	@ tmp330, tmp325
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r5, r5	@ tmp_sum, tmp330
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, r5, #255	@ tmp336, tmp_sum,
	add	r4, r4, r8	@ tmp341, tmp336
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r0, [r3, #7]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #6]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	lr, [r3, #14]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r4, r4	@ tmp_sum, tmp341
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r8, r4, #255	@ tmp347, tmp_sum,
	add	r0, r0, r8	@ tmp352, tmp347
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r0, r0	@ tmp_sum, tmp352
.LVL46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	lr, r0, #255	@ tmp358, tmp_sum,
.LVL47:
	add	r1, r1, lr	@ tmp363, tmp358
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r1, r1	@ tmp_sum, tmp363
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r2, [r3, #12]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r2, [r3, #5]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r6, [r3, #10]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r6, r1, #255	@ tmp369, tmp_sum,
	add	r2, r2, r6	@ tmp374, tmp369
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r2, r2	@ tmp_sum, tmp374
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r5, [r3, #9]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	strb	r4, [r3, #8]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	strb	r0, [r3, #7]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	strb	r1, [r3, #6]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	strb	r7, [r3, #13]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL48:
	strb	ip, [r3, #11]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL49:
	strb	r2, [r3, #5]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL50:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r3, #4]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r2, r2, #255	@ tmp380, tmp_sum,
.LVL51:
	add	r2, r2, r4	@ tmp385, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r2, r2	@ tmp_sum, tmp385
.LVL52:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r2, #255	@ tmp391, tmp_sum,
	add	r0, r0, r4	@ tmp396, tmp391
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r0, r0	@ tmp_sum, tmp396
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r0, #255	@ tmp402, tmp_sum,
	add	r1, r1, r4	@ tmp407, tmp402
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r1, r1	@ tmp_sum, tmp407
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r1, #255	@ tmp413, tmp_sum,
	add	r4, r4, r5	@ tmp418, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxth	r4, r4	@ tmp_sum, tmp418
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r2, [r3, #4]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL53:
	strb	r0, [r3, #3]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL54:
	strb	r1, [r3, #2]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL55:
	strb	r4, [r3, #1]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL56:
.LBE77:
.LBE79:
.LBE83:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:29: }
	.loc 1 29 0
	add	sp, sp, #24	@,,
	.cfi_def_cfa_offset 24
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, pc}	@
.LVL57:
.L34:
	.align	2
.L33:
	.word	-536862800
	.word	-536809988
	.word	-978530731
	.word	-536866812
	.word	-536866816
	.word	LOCAL_SYSTEM_TIME
	.cfi_endproc
.LFE2:
	.size	OS_UpdateCurrentTime, .-OS_UpdateCurrentTime
	.align	1
	.p2align 2,,3
	.global	OS_READ_AND_RESET_CURRENT_TIME
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OS_READ_AND_RESET_CURRENT_TIME, %function
OS_READ_AND_RESET_CURRENT_TIME:
.LFB3:
	.loc 1 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL58:
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r2, .L37	@ tmp125,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r5, .L37+4	@ tmp127,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r1, .L37+8	@ tmp126,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	r4, .L37+12	@ tmp129,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:32: {
	.loc 1 32 0
	sub	sp, sp, #8	@,,
	.cfi_def_cfa_offset 16
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:34:    volatile uint32 time = 0u;
	.loc 1 34 0
	movs	r3, #0	@ tmp124,
	str	r3, [sp, #4]	@ tmp124, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	str	r1, [r2]	@ tmp126, MEM[(volatile uint32 *)3758104496B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r2, [r5]	@ _1, MEM[(volatile uint32 *)3758157308B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	r1, .L37+16	@ tmp132,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	orr	r2, r2, #16777216	@ _2, _1,
	str	r2, [r5]	@ _2, MEM[(volatile uint32 *)3758157308B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	r2, [r4]	@ _3, MEM[(volatile uint32 *)3758100484B]
	str	r2, [sp, #4]	@ _3, time
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:46:    *DWT_CYCCNT = 0u;
	.loc 1 46 0
	str	r3, [r4]	@ tmp124, MEM[(volatile uint32 *)3758100484B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	r2, [r1]	@ _4, MEM[(volatile uint32 *)3758100480B]
	orr	r2, r2, #1	@ _5, _4,
	str	r2, [r1]	@ _5, MEM[(volatile uint32 *)3758100480B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:52:    ASSIGN_UINT32(timebig, time);
	.loc 1 52 0
	ldr	r2, [sp, #4]	@ time.0_6, time
.LVL59:
	str	r3, [r0]	@ unaligned	@ tmp124, MEM[(void *)timebig_14(D)]
.LBB84:
.LBB85:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:202:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 202 0
	lsrs	r5, r2, #1	@ tmp137, time.0_6,
	lsrs	r4, r2, #2	@ tmp139, time.0_6,
	lsrs	r1, r2, #3	@ tmp141, time.0_6,
	str	r3, [r0, #4]	@ unaligned	@ tmp124, MEM[(void *)timebig_14(D)]
	str	r3, [r0, #8]	@ unaligned	@ tmp124, MEM[(void *)timebig_14(D)]
.LVL60:
	strb	r2, [r0, #15]	@ time.0_6, MEM[(struct big_int *)timebig_14(D)].number
.LVL61:
	strb	r5, [r0, #14]	@ tmp137, MEM[(struct big_int *)timebig_14(D)].number
.LVL62:
	strb	r4, [r0, #13]	@ tmp139, MEM[(struct big_int *)timebig_14(D)].number
.LVL63:
	strb	r1, [r0, #12]	@ tmp141, MEM[(struct big_int *)timebig_14(D)].number
.LVL64:
.LBE85:
.LBE84:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:56: }
	.loc 1 56 0
	add	sp, sp, #8	@,,
	.cfi_def_cfa_offset 8
	@ sp needed	@
	pop	{r4, r5}	@
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.L38:
	.align	2
.L37:
	.word	-536862800
	.word	-536809988
	.word	-978530731
	.word	-536866812
	.word	-536866816
	.cfi_endproc
.LFE3:
	.size	OS_READ_AND_RESET_CURRENT_TIME, .-OS_READ_AND_RESET_CURRENT_TIME
	.align	1
	.p2align 2,,3
	.global	INT_DIV
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	INT_DIV, %function
INT_DIV:
.LFB4:
	.loc 1 59 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL65:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:61: }
	.loc 1 61 0
	bx	lr	@
	.cfi_endproc
.LFE4:
	.size	INT_DIV, .-INT_DIV
	.align	1
	.p2align 2,,3
	.global	INT_MUL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	INT_MUL, %function
INT_MUL:
.LFB19:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.cfi_endproc
.LFE19:
	.size	INT_MUL, .-INT_MUL
	.align	1
	.p2align 2,,3
	.global	INT_ADD
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	INT_ADD, %function
INT_ADD:
.LFB6:
	.loc 1 69 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL66:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:69: {
	.loc 1 69 0
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
.LBB86:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _30, ErsterSummand_14(D)->number
	ldrb	r4, [r2, #15]	@ zero_extendqisi2	@ _28, ZweiterSummand_15(D)->number
.LVL67:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	add	r4, r4, r3	@ tmp239, _30
.LVL68:
	strb	r4, [r0, #15]	@ tmp239, Summe_17(D)->number
.LVL69:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r5, [r2, #14]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp250, tmp239,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r3, r3, r5	@ tmp245, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp250
.LVL70:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #14]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r5, [r2, #13]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #13]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	and	r3, r3, #768	@ carry, tmp_sum,
.LVL71:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r4, r4, r5	@ tmp260, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp260
.LVL72:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #13]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r5, [r2, #12]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #12]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	and	r3, r3, #1792	@ carry, tmp_sum,
.LVL73:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r4, r4, r5	@ tmp269, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp269
.LVL74:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #12]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r5, [r2, #11]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #11]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	and	r3, r3, #3840	@ carry, tmp_sum,
.LVL75:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r4, r4, r5	@ tmp278, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp278
.LVL76:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #11]	@ tmp_sum, Summe_17(D)->number
.LVL77:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #10]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #10]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp282, tmp_sum,
.LVL78:
	add	r3, r3, r4	@ _258, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r3, r3, r5	@ tmp_sum, ZweiterSummand_15(D)->number
.LVL79:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #10]	@ tmp_sum, Summe_17(D)->number
.LVL80:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #9]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #9]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp291, tmp_sum,
.LVL81:
	add	r4, r4, r3	@ _259, tmp291
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	add	r4, r4, r5	@ tmp298, ZweiterSummand_15(D)->number
	uxth	r4, r4	@ tmp_sum, tmp298
.LVL82:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r4, [r0, #9]	@ tmp_sum, Summe_17(D)->number
.LVL83:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #8]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp300, tmp_sum,
.LVL84:
	add	r3, r3, r4	@ tmp304, tmp300
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r3, r5, r3	@ tmp307, ZweiterSummand_15(D)->number, tmp304
	uxth	r3, r3	@ tmp_sum, tmp307
.LVL85:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #8]	@ tmp_sum, Summe_17(D)->number
.LVL86:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #7]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #7]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp309, tmp_sum,
.LVL87:
	add	r4, r4, r3	@ tmp313, tmp309
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r4, r5, r4	@ tmp316, ZweiterSummand_15(D)->number, tmp313
	uxth	r4, r4	@ tmp_sum, tmp316
.LVL88:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r4, [r0, #7]	@ tmp_sum, Summe_17(D)->number
.LVL89:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #6]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp318, tmp_sum,
.LVL90:
	add	r3, r3, r4	@ tmp322, tmp318
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r3, r5, r3	@ tmp325, ZweiterSummand_15(D)->number, tmp322
	uxth	r3, r3	@ tmp_sum, tmp325
.LVL91:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #6]	@ tmp_sum, Summe_17(D)->number
.LVL92:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #5]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #5]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp327, tmp_sum,
.LVL93:
	add	r4, r4, r3	@ tmp331, tmp327
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r4, r5, r4	@ tmp334, ZweiterSummand_15(D)->number, tmp331
	uxth	r4, r4	@ tmp_sum, tmp334
.LVL94:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r4, [r0, #5]	@ tmp_sum, Summe_17(D)->number
.LVL95:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #4]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp336, tmp_sum,
.LVL96:
	add	r3, r3, r4	@ tmp340, tmp336
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r3, r5, r3	@ tmp343, ZweiterSummand_15(D)->number, tmp340
	uxth	r3, r3	@ tmp_sum, tmp343
.LVL97:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #4]	@ tmp_sum, Summe_17(D)->number
.LVL98:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #3]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #3]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp345, tmp_sum,
.LVL99:
	add	r4, r4, r3	@ tmp349, tmp345
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r4, r5, r4	@ tmp352, ZweiterSummand_15(D)->number, tmp349
	uxth	r4, r4	@ tmp_sum, tmp352
.LVL100:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r4, [r0, #3]	@ tmp_sum, Summe_17(D)->number
.LVL101:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #2]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r4, r4, #255	@ tmp354, tmp_sum,
.LVL102:
	add	r3, r3, r4	@ tmp358, tmp354
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r3, r5, r3	@ tmp361, ZweiterSummand_15(D)->number, tmp358
	uxth	r3, r3	@ tmp_sum, tmp361
.LVL103:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #2]	@ tmp_sum, Summe_17(D)->number
.LVL104:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:77:       carry = tmp_sum & 0xFF00u;
	.loc 1 77 0
	bic	r3, r3, #255	@ tmp363, tmp_sum,
.LVL105:
	add	r3, r3, r4	@ tmp367, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	uxtah	r3, r5, r3	@ tmp370, ZweiterSummand_15(D)->number, tmp367
	uxth	r3, r3	@ tmp_sum, tmp370
.LVL106:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0, #1]	@ tmp_sum, Summe_17(D)->number
.LVL107:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 75 0
	ldrb	r3, [r1]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
.LVL108:
	ldrb	r2, [r2]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
.LVL109:
	add	r3, r3, r2	@ tmp379, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:76:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 76 0
	strb	r3, [r0]	@ tmp379, Summe_17(D)->number
.LVL110:
.LBE86:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:79: }
	.loc 1 79 0
	pop	{r4, r5}	@
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE6:
	.size	INT_ADD, .-INT_ADD
	.align	1
	.p2align 2,,3
	.global	INT_SUB
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	INT_SUB, %function
INT_SUB:
.LFB7:
	.loc 1 81 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL111:
	push	{r4, r5, r6}	@
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
.LBB87:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r4, [r1, #15]	@ zero_extendqisi2	@ _30, Minuend_17(D)->number
	ldrb	r5, [r2, #15]	@ zero_extendqisi2	@ _1, Subtrahend_18(D)->number
	uxth	r3, r4	@ _2, _30
	uxth	r6, r5	@ _3, _1
	cmp	r5, r4	@ _1, _30
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:90:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 90 0
	sub	r3, r3, r6	@ tmp234, _2, _3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	hi
	addhi	r3, r3, #256	@ tmp237, tmp235,
	uxth	r3, r3	@ tmp_diff, tmp237
.LVL112:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #15]	@ tmp_diff, Differenz_20(D)->number
.LVL113:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #14]	@ zero_extendqisi2	@ _54, Minuend_17(D)->number
	ldrb	r4, [r2, #14]	@ zero_extendqisi2	@ _55, Subtrahend_18(D)->number
	uxth	r3, r5	@ _56, _54
	uxth	r6, r4	@ _57, _55
	cmp	r5, r4	@ _54, _55
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:90:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 90 0
	sub	r3, r3, r6	@ tmp239, _56, _57
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp242, tmp240,
	uxth	r3, r3	@ _58, tmp242
.LVL114:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #14]	@ _58, Differenz_20(D)->number
.LVL115:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #13]	@ zero_extendqisi2	@ _72, Minuend_17(D)->number
	ldrb	r4, [r2, #13]	@ zero_extendqisi2	@ _73, Subtrahend_18(D)->number
	uxth	r3, r5	@ _74, _72
	cmp	r5, r4	@ _72, _73
	uxth	r6, r4	@ _75, _73
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp245, _74,
	subs	r3, r3, r6	@ tmp247, tmp245, _75
	uxth	r3, r3	@ _76, tmp247
.LVL116:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #13]	@ _76, Differenz_20(D)->number
.LVL117:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #12]	@ zero_extendqisi2	@ _90, Minuend_17(D)->number
	ldrb	r4, [r2, #12]	@ zero_extendqisi2	@ _91, Subtrahend_18(D)->number
	uxth	r3, r5	@ _92, _90
	cmp	r5, r4	@ _90, _91
	uxth	r6, r4	@ _93, _91
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp250, _92,
	subs	r3, r3, r6	@ tmp252, tmp250, _93
	uxth	r3, r3	@ _94, tmp252
.LVL118:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #12]	@ _94, Differenz_20(D)->number
.LVL119:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #11]	@ zero_extendqisi2	@ _108, Minuend_17(D)->number
	ldrb	r4, [r2, #11]	@ zero_extendqisi2	@ _109, Subtrahend_18(D)->number
	uxth	r3, r5	@ _110, _108
	cmp	r5, r4	@ _108, _109
	uxth	r6, r4	@ _111, _109
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp255, _110,
	subs	r3, r3, r6	@ tmp257, tmp255, _111
	uxth	r3, r3	@ _112, tmp257
.LVL120:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #11]	@ _112, Differenz_20(D)->number
.LVL121:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #10]	@ zero_extendqisi2	@ _126, Minuend_17(D)->number
	ldrb	r4, [r2, #10]	@ zero_extendqisi2	@ _127, Subtrahend_18(D)->number
	uxth	r3, r5	@ _128, _126
	cmp	r5, r4	@ _126, _127
	uxth	r6, r4	@ _129, _127
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp260, _128,
	subs	r3, r3, r6	@ tmp262, tmp260, _129
	uxth	r3, r3	@ _130, tmp262
.LVL122:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #10]	@ _130, Differenz_20(D)->number
.LVL123:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #9]	@ zero_extendqisi2	@ _144, Minuend_17(D)->number
	ldrb	r4, [r2, #9]	@ zero_extendqisi2	@ _145, Subtrahend_18(D)->number
	uxth	r3, r5	@ _146, _144
	cmp	r5, r4	@ _144, _145
	uxth	r6, r4	@ _147, _145
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp265, _146,
	subs	r3, r3, r6	@ tmp267, tmp265, _147
	uxth	r3, r3	@ _148, tmp267
.LVL124:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #9]	@ _148, Differenz_20(D)->number
.LVL125:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #8]	@ zero_extendqisi2	@ _162, Minuend_17(D)->number
	ldrb	r4, [r2, #8]	@ zero_extendqisi2	@ _163, Subtrahend_18(D)->number
	uxth	r3, r5	@ _164, _162
	cmp	r5, r4	@ _162, _163
	uxth	r6, r4	@ _165, _163
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp270, _164,
	subs	r3, r3, r6	@ tmp272, tmp270, _165
	uxth	r3, r3	@ _166, tmp272
.LVL126:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #8]	@ _166, Differenz_20(D)->number
.LVL127:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #7]	@ zero_extendqisi2	@ _180, Minuend_17(D)->number
	ldrb	r4, [r2, #7]	@ zero_extendqisi2	@ _181, Subtrahend_18(D)->number
	uxth	r3, r5	@ _182, _180
	cmp	r5, r4	@ _180, _181
	uxth	r6, r4	@ _183, _181
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp275, _182,
	subs	r3, r3, r6	@ tmp277, tmp275, _183
	uxth	r3, r3	@ _184, tmp277
.LVL128:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #7]	@ _184, Differenz_20(D)->number
.LVL129:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #6]	@ zero_extendqisi2	@ _198, Minuend_17(D)->number
	ldrb	r4, [r2, #6]	@ zero_extendqisi2	@ _199, Subtrahend_18(D)->number
	uxth	r3, r5	@ _200, _198
	cmp	r5, r4	@ _198, _199
	uxth	r6, r4	@ _201, _199
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp280, _200,
	subs	r3, r3, r6	@ tmp282, tmp280, _201
	uxth	r3, r3	@ _202, tmp282
.LVL130:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #6]	@ _202, Differenz_20(D)->number
.LVL131:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #5]	@ zero_extendqisi2	@ _216, Minuend_17(D)->number
	ldrb	r4, [r2, #5]	@ zero_extendqisi2	@ _217, Subtrahend_18(D)->number
	uxth	r3, r5	@ _218, _216
	cmp	r5, r4	@ _216, _217
	uxth	r6, r4	@ _219, _217
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp285, _218,
	subs	r3, r3, r6	@ tmp287, tmp285, _219
	uxth	r3, r3	@ _220, tmp287
.LVL132:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #5]	@ _220, Differenz_20(D)->number
.LVL133:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #4]	@ zero_extendqisi2	@ _234, Minuend_17(D)->number
	ldrb	r4, [r2, #4]	@ zero_extendqisi2	@ _235, Subtrahend_18(D)->number
	uxth	r3, r5	@ _236, _234
	cmp	r5, r4	@ _234, _235
	uxth	r6, r4	@ _237, _235
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp290, _236,
	subs	r3, r3, r6	@ tmp292, tmp290, _237
	uxth	r3, r3	@ _238, tmp292
.LVL134:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #4]	@ _238, Differenz_20(D)->number
.LVL135:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #3]	@ zero_extendqisi2	@ _252, Minuend_17(D)->number
	ldrb	r4, [r2, #3]	@ zero_extendqisi2	@ _253, Subtrahend_18(D)->number
	uxth	r3, r5	@ _254, _252
	cmp	r5, r4	@ _252, _253
	uxth	r6, r4	@ _255, _253
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp295, _254,
	subs	r3, r3, r6	@ tmp297, tmp295, _255
	uxth	r3, r3	@ _256, tmp297
.LVL136:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #3]	@ _256, Differenz_20(D)->number
.LVL137:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #2]	@ zero_extendqisi2	@ _270, Minuend_17(D)->number
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ _271, Subtrahend_18(D)->number
	uxth	r3, r5	@ _272, _270
	cmp	r5, r4	@ _270, _271
	uxth	r6, r4	@ _273, _271
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp300, _272,
	subs	r3, r3, r6	@ tmp302, tmp300, _273
	uxth	r3, r3	@ _274, tmp302
.LVL138:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #2]	@ _274, Differenz_20(D)->number
.LVL139:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ _288, Minuend_17(D)->number
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ _289, Subtrahend_18(D)->number
	uxth	r3, r5	@ _290, _288
	cmp	r5, r4	@ _288, _289
	uxth	r6, r4	@ _291, _289
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	cc
	addcc	r3, r3, #256	@ tmp305, _290,
	subs	r3, r3, r6	@ tmp307, tmp305, _291
	uxth	r3, r3	@ _292, tmp307
.LVL140:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0, #1]	@ _292, Differenz_20(D)->number
.LVL141:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:88:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 88 0
	ldrb	r1, [r1]	@ zero_extendqisi2	@ _25, Minuend_17(D)->number
.LVL142:
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _24, Subtrahend_18(D)->number
.LVL143:
	uxth	r3, r1	@ _15, _25
	cmp	r2, r1	@ _24, _25
	uxth	r4, r2	@ _13, _24
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:94:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 94 0
	it	hi
	addhi	r3, r3, #256	@ tmp310, _15,
	subs	r3, r3, r4	@ tmp312, tmp310, _13
	uxth	r3, r3	@ tmp_diff, tmp312
.LVL144:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:100:       Differenz->number[pos] = tmp_diff;
	.loc 1 100 0
	strb	r3, [r0]	@ tmp_diff, Differenz_20(D)->number
.LVL145:
.LBE87:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:102: }
	.loc 1 102 0
	pop	{r4, r5, r6}	@
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE7:
	.size	INT_SUB, .-INT_SUB
	.align	1
	.p2align 2,,3
	.global	IS_LESS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	IS_LESS, %function
IS_LESS:
.LFB8:
	.loc 1 104 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL146:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _15, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _16, Operand2_8(D)->number
	cmp	r2, r3	@ _15, _16
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL147:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _22, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _23, Operand2_8(D)->number
	cmp	r2, r3	@ _22, _23
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL148:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ _29, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _30, Operand2_8(D)->number
	cmp	r2, r3	@ _29, _30
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL149:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ _36, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _37, Operand2_8(D)->number
	cmp	r2, r3	@ _36, _37
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL150:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _43, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _44, Operand2_8(D)->number
	cmp	r2, r3	@ _43, _44
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL151:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ _50, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _51, Operand2_8(D)->number
	cmp	r2, r3	@ _50, _51
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL152:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ _57, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _58, Operand2_8(D)->number
	cmp	r2, r3	@ _57, _58
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL153:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ _64, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _65, Operand2_8(D)->number
	cmp	r2, r3	@ _64, _65
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL154:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ _71, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _72, Operand2_8(D)->number
	cmp	r2, r3	@ _71, _72
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL155:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ _78, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _79, Operand2_8(D)->number
	cmp	r2, r3	@ _78, _79
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL156:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ _85, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _86, Operand2_8(D)->number
	cmp	r2, r3	@ _85, _86
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL157:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ _92, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _93, Operand2_8(D)->number
	cmp	r2, r3	@ _92, _93
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL158:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ _99, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _100, Operand2_8(D)->number
	cmp	r2, r3	@ _99, _100
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL159:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ _106, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _107, Operand2_8(D)->number
	cmp	r2, r3	@ _106, _107
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL160:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ _113, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _114, Operand2_8(D)->number
	cmp	r2, r3	@ _113, _114
	bcc	.L123	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L124	@,
.LVL161:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
.LVL162:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:111:          is_less = TRUE;
	.loc 1 111 0
	cmp	r0, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	ite	cs
	movcs	r0, #0	@ <retval>,
	movcc	r0, #1	@ <retval>,
	bx	lr	@
.LVL163:
.L124:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:116:          is_less = FALSE;
	.loc 1 116 0
	movs	r0, #0	@ <retval>,
.LVL164:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:125: }
	.loc 1 125 0
	bx	lr	@
.LVL165:
.L123:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:111:          is_less = TRUE;
	.loc 1 111 0
	movs	r0, #1	@ <retval>,
.LVL166:
	bx	lr	@
	.cfi_endproc
.LFE8:
	.size	IS_LESS, .-IS_LESS
	.align	1
	.p2align 2,,3
	.global	IS_LESS_OR_EQUAL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	IS_LESS_OR_EQUAL, %function
IS_LESS_OR_EQUAL:
.LFB9:
	.loc 1 127 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL167:
.LBB88:
.LBB89:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _122, Operand1_3(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _123, Operand2_4(D)->number
	cmp	r2, r3	@ _122, _123
	bcc	.L128	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L129	@,
.LVL168:
.LBE89:
.LBE88:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:127: {
	.loc 1 127 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB93:
.LBB90:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	cmp	r4, r5	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L160	@,
.LVL169:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL170:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ _143, Operand1_3(D)->number
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ _144, Operand2_4(D)->number
	cmp	lr, ip	@ _143, _144
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL171:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ _150, Operand1_3(D)->number
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@ _151, Operand2_4(D)->number
	cmp	lr, ip	@ _150, _151
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL172:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ _157, Operand1_3(D)->number
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ _158, Operand2_4(D)->number
	cmp	lr, ip	@ _157, _158
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL173:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ _164, Operand1_3(D)->number
	ldrb	ip, [r1, #6]	@ zero_extendqisi2	@ _165, Operand2_4(D)->number
	cmp	lr, ip	@ _164, _165
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL174:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ _171, Operand1_3(D)->number
	ldrb	ip, [r1, #7]	@ zero_extendqisi2	@ _172, Operand2_4(D)->number
	cmp	lr, ip	@ _171, _172
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL175:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #8]	@ zero_extendqisi2	@ _178, Operand1_3(D)->number
	ldrb	ip, [r1, #8]	@ zero_extendqisi2	@ _179, Operand2_4(D)->number
	cmp	lr, ip	@ _178, _179
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL176:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ _185, Operand1_3(D)->number
	ldrb	ip, [r1, #9]	@ zero_extendqisi2	@ _186, Operand2_4(D)->number
	cmp	lr, ip	@ _185, _186
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL177:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ _192, Operand1_3(D)->number
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ _193, Operand2_4(D)->number
	cmp	lr, ip	@ _192, _193
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL178:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #11]	@ zero_extendqisi2	@ _199, Operand1_3(D)->number
	ldrb	ip, [r1, #11]	@ zero_extendqisi2	@ _200, Operand2_4(D)->number
	cmp	lr, ip	@ _199, _200
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL179:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #12]	@ zero_extendqisi2	@ _206, Operand1_3(D)->number
	ldrb	ip, [r1, #12]	@ zero_extendqisi2	@ _207, Operand2_4(D)->number
	cmp	lr, ip	@ _206, _207
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL180:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #13]	@ zero_extendqisi2	@ _213, Operand1_3(D)->number
	ldrb	ip, [r1, #13]	@ zero_extendqisi2	@ _214, Operand2_4(D)->number
	cmp	lr, ip	@ _213, _214
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL181:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ _220, Operand1_3(D)->number
	ldrb	ip, [r1, #14]	@ zero_extendqisi2	@ _221, Operand2_4(D)->number
	cmp	lr, ip	@ _220, _221
	bcc	.L145	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	bhi	.L127	@,
.LVL182:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	ldrb	lr, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	ip, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	lr, ip	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L145	@,
.LVL183:
.L127:
.LBE90:
.LBE93:
.LBB94:
.LBB95:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 136 0
	cmp	r2, r3	@ _122, _123
	bne	.L160	@,
.LVL184:
	cmp	r5, r4	@ Operand2_4(D)->number, Operand1_3(D)->number
	bne	.L160	@,
.LVL185:
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL186:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL187:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL188:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL189:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL190:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL191:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL192:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL193:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL194:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL195:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL196:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL197:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L160	@,
.LVL198:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
.LVL199:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	subs	r0, r0, r3	@ <retval>, Operand1_3(D)->number, Operand2_4(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
.LBE95:
.LBE94:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:129: }
	.loc 1 129 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL200:
.L160:
.LBB97:
.LBB96:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 136 0
	movs	r0, #0	@ <retval>,
.LVL201:
.LBE96:
.LBE97:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:129: }
	.loc 1 129 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL202:
.L145:
.LBB98:
.LBB91:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	movs	r0, #1	@ <retval>,
.LVL203:
.LBE91:
.LBE98:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:129: }
	.loc 1 129 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL204:
.L128:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
.LBB99:
.LBB92:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:109:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 109 0
	movs	r0, #1	@ <retval>,
.LVL205:
	bx	lr	@
.LVL206:
.L129:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:114:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 114 0
	movs	r0, #0	@ <retval>,
.LVL207:
.LBE92:
.LBE99:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:129: }
	.loc 1 129 0
	bx	lr	@
	.cfi_endproc
.LFE9:
	.size	IS_LESS_OR_EQUAL, .-IS_LESS_OR_EQUAL
	.align	1
	.p2align 2,,3
	.global	IS_EQUAL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	IS_EQUAL, %function
IS_EQUAL:
.LFB10:
	.loc 1 131 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL208:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 136 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL209:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL210:
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL211:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL212:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL213:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL214:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL215:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL216:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL217:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL218:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL219:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL220:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL221:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL222:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L181	@,
.LVL223:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
.LVL224:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:138:          is_equal = FALSE;
	.loc 1 138 0
	subs	r0, r0, r3	@ <retval>, Operand1_7(D)->number, Operand2_8(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
	bx	lr	@
.LVL225:
.L181:
	movs	r0, #0	@ <retval>,
.LVL226:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:147: }
	.loc 1 147 0
	bx	lr	@
	.cfi_endproc
.LFE10:
	.size	IS_EQUAL, .-IS_EQUAL
	.align	1
	.p2align 2,,3
	.global	IS_GREATER
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	IS_GREATER, %function
IS_GREATER:
.LFB11:
	.loc 1 149 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL227:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _15, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _16, Operand2_8(D)->number
	cmp	r2, r3	@ _15, _16
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL228:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _22, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _23, Operand2_8(D)->number
	cmp	r2, r3	@ _22, _23
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL229:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ _29, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _30, Operand2_8(D)->number
	cmp	r2, r3	@ _29, _30
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL230:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ _36, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _37, Operand2_8(D)->number
	cmp	r2, r3	@ _36, _37
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL231:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _43, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _44, Operand2_8(D)->number
	cmp	r2, r3	@ _43, _44
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL232:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ _50, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _51, Operand2_8(D)->number
	cmp	r2, r3	@ _50, _51
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL233:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ _57, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _58, Operand2_8(D)->number
	cmp	r2, r3	@ _57, _58
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL234:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ _64, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _65, Operand2_8(D)->number
	cmp	r2, r3	@ _64, _65
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL235:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ _71, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _72, Operand2_8(D)->number
	cmp	r2, r3	@ _71, _72
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL236:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ _78, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _79, Operand2_8(D)->number
	cmp	r2, r3	@ _78, _79
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL237:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ _85, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _86, Operand2_8(D)->number
	cmp	r2, r3	@ _85, _86
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL238:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ _92, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _93, Operand2_8(D)->number
	cmp	r2, r3	@ _92, _93
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL239:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ _99, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _100, Operand2_8(D)->number
	cmp	r2, r3	@ _99, _100
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL240:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ _106, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _107, Operand2_8(D)->number
	cmp	r2, r3	@ _106, _107
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL241:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ _113, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _114, Operand2_8(D)->number
	cmp	r2, r3	@ _113, _114
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L213	@,
.LVL242:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0, #15]	@ zero_extendqisi2	@ _2, Operand1_7(D)->number
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _3, Operand2_8(D)->number
	cmp	r2, r3	@ _2, _3
	bcc	.L214	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:156:          is_greater = FALSE;
	.loc 1 156 0
	ite	hi
	movhi	r0, #1	@ <retval>,
.LVL243:
	movls	r0, #0	@ <retval>,
	bx	lr	@
.LVL244:
.L213:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:161:          is_greater = TRUE;
	.loc 1 161 0
	movs	r0, #1	@ <retval>,
.LVL245:
	bx	lr	@
.LVL246:
.L214:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:156:          is_greater = FALSE;
	.loc 1 156 0
	movs	r0, #0	@ <retval>,
.LVL247:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:170: }
	.loc 1 170 0
	bx	lr	@
	.cfi_endproc
.LFE11:
	.size	IS_GREATER, .-IS_GREATER
	.align	1
	.p2align 2,,3
	.global	IS_GREATER_OR_EQUAL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	IS_GREATER_OR_EQUAL, %function
IS_GREATER_OR_EQUAL:
.LFB12:
	.loc 1 172 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL248:
.LBB100:
.LBB101:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _122, Operand1_3(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _123, Operand2_4(D)->number
	cmp	r2, r3	@ _122, _123
	bcc	.L218	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L219	@,
.LVL249:
.LBE101:
.LBE100:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:172: {
	.loc 1 172 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB105:
.LBB102:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	cmp	r4, r5	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L250	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL250:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL251:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ _143, Operand1_3(D)->number
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ _144, Operand2_4(D)->number
	cmp	lr, ip	@ _143, _144
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL252:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ _150, Operand1_3(D)->number
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@ _151, Operand2_4(D)->number
	cmp	lr, ip	@ _150, _151
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL253:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ _157, Operand1_3(D)->number
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ _158, Operand2_4(D)->number
	cmp	lr, ip	@ _157, _158
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL254:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ _164, Operand1_3(D)->number
	ldrb	ip, [r1, #6]	@ zero_extendqisi2	@ _165, Operand2_4(D)->number
	cmp	lr, ip	@ _164, _165
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL255:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ _171, Operand1_3(D)->number
	ldrb	ip, [r1, #7]	@ zero_extendqisi2	@ _172, Operand2_4(D)->number
	cmp	lr, ip	@ _171, _172
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL256:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #8]	@ zero_extendqisi2	@ _178, Operand1_3(D)->number
	ldrb	ip, [r1, #8]	@ zero_extendqisi2	@ _179, Operand2_4(D)->number
	cmp	lr, ip	@ _178, _179
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL257:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ _185, Operand1_3(D)->number
	ldrb	ip, [r1, #9]	@ zero_extendqisi2	@ _186, Operand2_4(D)->number
	cmp	lr, ip	@ _185, _186
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL258:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ _192, Operand1_3(D)->number
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ _193, Operand2_4(D)->number
	cmp	lr, ip	@ _192, _193
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL259:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #11]	@ zero_extendqisi2	@ _199, Operand1_3(D)->number
	ldrb	ip, [r1, #11]	@ zero_extendqisi2	@ _200, Operand2_4(D)->number
	cmp	lr, ip	@ _199, _200
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL260:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #12]	@ zero_extendqisi2	@ _206, Operand1_3(D)->number
	ldrb	ip, [r1, #12]	@ zero_extendqisi2	@ _207, Operand2_4(D)->number
	cmp	lr, ip	@ _206, _207
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL261:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #13]	@ zero_extendqisi2	@ _213, Operand1_3(D)->number
	ldrb	ip, [r1, #13]	@ zero_extendqisi2	@ _214, Operand2_4(D)->number
	cmp	lr, ip	@ _213, _214
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL262:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ _220, Operand1_3(D)->number
	ldrb	ip, [r1, #14]	@ zero_extendqisi2	@ _221, Operand2_4(D)->number
	cmp	lr, ip	@ _220, _221
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL263:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	ldrb	lr, [r0, #15]	@ zero_extendqisi2	@ _8, Operand1_3(D)->number
	ldrb	ip, [r1, #15]	@ zero_extendqisi2	@ _9, Operand2_4(D)->number
	cmp	lr, ip	@ _8, _9
	bcc	.L217	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	bhi	.L235	@,
.LVL264:
.L217:
.LBE102:
.LBE105:
.LBB106:
.LBB107:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 136 0
	cmp	r2, r3	@ _122, _123
	bne	.L250	@,
.LVL265:
	cmp	r5, r4	@ Operand2_4(D)->number, Operand1_3(D)->number
	bne	.L250	@,
.LVL266:
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL267:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL268:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL269:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL270:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL271:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL272:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL273:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL274:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL275:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL276:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL277:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL278:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L250	@,
.LVL279:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
.LVL280:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	subs	r0, r0, r3	@ <retval>, Operand1_3(D)->number, Operand2_4(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
.LBE107:
.LBE106:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:174: }
	.loc 1 174 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL281:
.L250:
.LBB109:
.LBB108:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 136 0
	movs	r0, #0	@ <retval>,
.LVL282:
.LBE108:
.LBE109:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:174: }
	.loc 1 174 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL283:
.L235:
.LBB110:
.LBB103:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	movs	r0, #1	@ <retval>,
.LVL284:
.LBE103:
.LBE110:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:174: }
	.loc 1 174 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL285:
.L218:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
.LBB111:
.LBB104:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:154:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 154 0
	movs	r0, #0	@ <retval>,
.LVL286:
	bx	lr	@
.LVL287:
.L219:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:159:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 159 0
	movs	r0, #1	@ <retval>,
.LVL288:
.LBE104:
.LBE111:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:174: }
	.loc 1 174 0
	bx	lr	@
	.cfi_endproc
.LFE12:
	.size	IS_GREATER_OR_EQUAL, .-IS_GREATER_OR_EQUAL
	.align	1
	.p2align 2,,3
	.global	ASSIGN
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ASSIGN, %function
ASSIGN:
.LFB13:
	.loc 1 176 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL289:
	adds	r2, r0, #4	@ vectp_leftOperand.85, leftOperand,
	cmp	r1, r2	@ rightOperand, vectp_leftOperand.85
	bcs	.L267	@,
	adds	r3, r1, #4	@ tmp169, rightOperand,
	cmp	r0, r3	@ leftOperand, tmp169
	bcc	.L256	@,
.L267:
	negs	r3, r1	@ tmp173, rightOperand
	ands	r3, r3, #3	@ prolog_loop_niters.75, tmp173,
	push	{r4, r5, r6, r7}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	beq	.L258	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r2, [r1]	@ zero_extendqisi2	@ _231, rightOperand_6(D)->number
	strb	r2, [r0]	@ _231, leftOperand_7(D)->number
.LVL290:
	cmp	r3, #1	@ prolog_loop_niters.75,
	beq	.L265	@,
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _241, rightOperand_6(D)->number
	strb	r2, [r0, #1]	@ _241, leftOperand_7(D)->number
.LVL291:
	cmp	r3, #3	@ prolog_loop_niters.75,
	bne	.L266	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ _31, rightOperand_6(D)->number
	strb	r2, [r0, #2]	@ _31, leftOperand_7(D)->number
.LVL292:
	movs	r7, #13	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r6, r3	@ pos, prolog_loop_niters.75
.LVL293:
.L259:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldr	r2, [r1, r3]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.83_199]
	str	r2, [r0, r3]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.86_248]
	adds	r5, r1, r3	@ vectp_rightOperand.83, rightOperand, prolog_loop_niters.75
	adds	r2, r0, r3	@ vectp_leftOperand.86, leftOperand, prolog_loop_niters.75
	adds	r5, r5, #4	@ vectp_rightOperand.82, vectp_rightOperand.83,
	adds	r4, r2, #4	@ vectp_leftOperand.85, vectp_leftOperand.86,
	rsb	ip, r3, #16	@ tmp205, prolog_loop_niters.75,
	ldr	r3, [r5]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.82_263]
	str	r3, [r4]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.85_264]
	movs	r2, #3	@ bnd.78,
	ldr	r3, [r5, #4]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.82_263 + 4B]
	str	r3, [r4, #4]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.85_264 + 4B]
	cmp	r2, #4	@ bnd.78,
	uxtb	ip, ip	@ niters.77, tmp205
	bne	.L280	@,
.L263:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0 is_stmt 0 discriminator 3
	ldr	r3, [r5, #8]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.82_263 + 8B]
	str	r3, [r4, #8]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.85_264 + 8B]
	sub	r2, r7, #16	@ tmp180, ivtmp_254,
	cmp	ip, #16	@ niters.77,
	uxtb	r2, r2	@ tmp.81, tmp180
	add	r3, r6, #16	@ tmp.80, pos,
	beq	.L255	@,
.L264:
.LVL294:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r4, [r1, r3]	@ zero_extendqisi2	@ _187, rightOperand_6(D)->number
	strb	r4, [r0, r3]	@ _187, leftOperand_7(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0 is_stmt 1
	cmp	r2, #1	@ tmp.81,
	add	r4, r3, #1	@ tmp182, tmp.80,
	uxtb	r4, r4	@ pos, tmp182
.LVL295:
	beq	.L255	@,
	adds	r3, r3, #2	@ tmp187, tmp.80,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r5, [r1, r4]	@ zero_extendqisi2	@ _195, rightOperand_6(D)->number
	strb	r5, [r0, r4]	@ _195, leftOperand_7(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	cmp	r2, #2	@ tmp.81,
	uxtb	r3, r3	@ pos, tmp187
.LVL296:
	beq	.L255	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r2, [r1, r3]	@ zero_extendqisi2	@ _53, rightOperand_6(D)->number
	strb	r2, [r0, r3]	@ _53, leftOperand_7(D)->number
.LVL297:
.L255:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:182: }
	.loc 1 182 0
	pop	{r4, r5, r6, r7}	@
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.LVL298:
.L256:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _1, rightOperand_6(D)->number
	strb	r3, [r0]	@ _1, leftOperand_7(D)->number
.LVL299:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _75, rightOperand_6(D)->number
	strb	r3, [r0, #1]	@ _75, leftOperand_7(D)->number
.LVL300:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _83, rightOperand_6(D)->number
	strb	r3, [r0, #2]	@ _83, leftOperand_7(D)->number
.LVL301:
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _91, rightOperand_6(D)->number
	strb	r3, [r0, #3]	@ _91, leftOperand_7(D)->number
.LVL302:
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _99, rightOperand_6(D)->number
	strb	r3, [r0, #4]	@ _99, leftOperand_7(D)->number
.LVL303:
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _107, rightOperand_6(D)->number
	strb	r3, [r0, #5]	@ _107, leftOperand_7(D)->number
.LVL304:
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _115, rightOperand_6(D)->number
	strb	r3, [r0, #6]	@ _115, leftOperand_7(D)->number
.LVL305:
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _123, rightOperand_6(D)->number
	strb	r3, [r0, #7]	@ _123, leftOperand_7(D)->number
.LVL306:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _131, rightOperand_6(D)->number
	strb	r3, [r0, #8]	@ _131, leftOperand_7(D)->number
.LVL307:
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _139, rightOperand_6(D)->number
	strb	r3, [r0, #9]	@ _139, leftOperand_7(D)->number
.LVL308:
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _147, rightOperand_6(D)->number
	strb	r3, [r0, #10]	@ _147, leftOperand_7(D)->number
.LVL309:
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _155, rightOperand_6(D)->number
	strb	r3, [r0, #11]	@ _155, leftOperand_7(D)->number
.LVL310:
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _163, rightOperand_6(D)->number
	strb	r3, [r0, #12]	@ _163, leftOperand_7(D)->number
.LVL311:
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _171, rightOperand_6(D)->number
	strb	r3, [r0, #13]	@ _171, leftOperand_7(D)->number
.LVL312:
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _179, rightOperand_6(D)->number
	strb	r3, [r0, #14]	@ _179, leftOperand_7(D)->number
.LVL313:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _21, rightOperand_6(D)->number
	strb	r3, [r0, #15]	@ _21, leftOperand_7(D)->number
.LVL314:
	bx	lr	@
.LVL315:
.L265:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	movs	r7, #15	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r6, r3	@ pos, prolog_loop_niters.75
	b	.L259	@
.LVL316:
.L258:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	mov	r5, r1	@ vectp_rightOperand.82, rightOperand
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	mov	r6, r3	@ pos, prolog_loop_niters.75
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:180:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 180 0
	ldr	r4, [r5], #4	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.83_118]
	str	r4, [r0]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.86_126]
	mov	r4, r2	@ vectp_leftOperand.85, vectp_leftOperand.85
	ldr	r3, [r5]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.82_263]
	str	r3, [r4]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.85_264]
	movs	r2, #4	@ bnd.78,
	mov	ip, #16	@ niters.77,
	ldr	r3, [r5, #4]	@ vect__2.84, MEM[(uint8[16] *)vectp_rightOperand.82_263 + 4B]
	str	r3, [r4, #4]	@ unaligned	@ vect__2.84, MEM[(uint8[16] *)vectp_leftOperand.85_264 + 4B]
	cmp	r2, #4	@ bnd.78,
	mov	r7, ip	@ ivtmp_254, niters.77
	beq	.L263	@,
.L280:
	sub	r2, r7, #12	@ tmp207, ivtmp_254,
	uxtb	r2, r2	@ tmp.81, tmp207
	add	r3, r6, #12	@ tmp.80, pos,
	b	.L264	@
.LVL317:
.L266:
	movs	r7, #14	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:178:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 178 0
	movs	r6, #2	@ pos,
	b	.L259	@
	.cfi_endproc
.LFE13:
	.size	ASSIGN, .-ASSIGN
	.align	1
	.p2align 2,,3
	.global	ASSIGN_NULL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ASSIGN_NULL, %function
ASSIGN_NULL:
.LFB14:
	.loc 1 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL318:
	movs	r3, #0	@ tmp112,
	str	r3, [r0]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #4]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #8]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #12]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:190: }
	.loc 1 190 0
	bx	lr	@
	.cfi_endproc
.LFE14:
	.size	ASSIGN_NULL, .-ASSIGN_NULL
	.align	1
	.p2align 2,,3
	.global	ASSIGN_UINT32
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ASSIGN_UINT32, %function
ASSIGN_UINT32:
.LFB15:
	.loc 1 193 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL319:
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	movs	r3, #0	@ tmp120,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:202:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 202 0
	lsrs	r5, r1, #1	@ tmp122, rightOperand,
	lsrs	r4, r1, #2	@ tmp124, rightOperand,
	lsrs	r2, r1, #3	@ tmp126, rightOperand,
	strb	r5, [r0, #14]	@ tmp122, leftOperand_13(D)->number
	strb	r4, [r0, #13]	@ tmp124, leftOperand_13(D)->number
	strb	r1, [r0, #15]	@ rightOperand, leftOperand_13(D)->number
	strb	r2, [r0, #12]	@ tmp126, leftOperand_13(D)->number
	str	r3, [r0]	@ unaligned	@ tmp120, MEM[(void *)leftOperand_13(D)]
	str	r3, [r0, #4]	@ unaligned	@ tmp120, MEM[(void *)leftOperand_13(D)]
	str	r3, [r0, #8]	@ unaligned	@ tmp120, MEM[(void *)leftOperand_13(D)]
.LVL320:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204: }
	.loc 1 204 0
	pop	{r4, r5}	@
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE15:
	.size	ASSIGN_UINT32, .-ASSIGN_UINT32
	.align	1
	.p2align 2,,3
	.global	get_uint32_of_4_uint8
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_uint32_of_4_uint8, %function
get_uint32_of_4_uint8:
.LFB16:
	.loc 1 207 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL321:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:212:    ret_val += ((uint32) *ptr)<< 16u;
	.loc 1 212 0
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 1B], MEM[(uint8 *)ptr_13(D) + 1B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:    ret_val += ((uint32) *ptr)<< 24u;
	.loc 1 210 0
	ldrb	r1, [r0]	@ zero_extendqisi2	@ *ptr_13(D), *ptr_13(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:    ret_val += ((uint32) *ptr)<< 0u;
	.loc 1 216 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 3B], MEM[(uint8 *)ptr_13(D) + 3B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:214:    ret_val += ((uint32) *ptr)<< 8u;
	.loc 1 214 0
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 2B], MEM[(uint8 *)ptr_13(D) + 2B]
.LVL322:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:212:    ret_val += ((uint32) *ptr)<< 16u;
	.loc 1 212 0
	lsls	r3, r3, #16	@ tmp128, MEM[(uint8 *)ptr_13(D) + 1B],
	add	r3, r3, r1, lsl #24	@ ret_val, tmp128, *ptr_13(D),
	add	r3, r3, r2	@ _17, MEM[(uint8 *)ptr_13(D) + 3B]
.LVL323:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:219: }
	.loc 1 219 0
	add	r0, r3, r0, lsl #8	@, _17, MEM[(uint8 *)ptr_13(D) + 2B],
	bx	lr	@
	.cfi_endproc
.LFE16:
	.size	get_uint32_of_4_uint8, .-get_uint32_of_4_uint8
	.align	1
	.p2align 2,,3
	.global	set_4_uint8_to_uint32
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_4_uint8_to_uint32, %function
set_4_uint8_to_uint32:
.LFB17:
	.loc 1 221 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL324:
	push	{r4}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:224:    *ptr = (value >>16u)&0xFFu;
	.loc 1 224 0
	lsrs	r2, r1, #16	@ tmp121, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:222:    *ptr = (value >>24u)&0xFFu;
	.loc 1 222 0
	lsrs	r4, r1, #24	@ tmp119, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:226:    *ptr = (value >>8u)&0xFFu;
	.loc 1 226 0
	lsrs	r3, r1, #8	@ tmp123, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:222:    *ptr = (value >>24u)&0xFFu;
	.loc 1 222 0
	strb	r4, [r0]	@ tmp119, *ptr_10(D)
.LVL325:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:228:    *ptr = (value >>0u)&0xFFu;
	.loc 1 228 0
	strb	r1, [r0, #3]	@ value, MEM[(uint8 *)ptr_10(D) + 3B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:224:    *ptr = (value >>16u)&0xFFu;
	.loc 1 224 0
	strb	r2, [r0, #1]	@ tmp121, MEM[(uint8 *)ptr_10(D) + 1B]
.LVL326:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:226:    *ptr = (value >>8u)&0xFFu;
	.loc 1 226 0
	strb	r3, [r0, #2]	@ tmp123, MEM[(uint8 *)ptr_10(D) + 2B]
.LVL327:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:229: }
	.loc 1 229 0
	pop	{r4}	@
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE17:
	.size	set_4_uint8_to_uint32, .-set_4_uint8_to_uint32
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.file 7 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram_stack.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf8a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF703
	.byte	0x1
	.4byte	.LASF704
	.4byte	.LASF705
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF506
	.byte	0x2
	.byte	0x11
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF504
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF505
	.uleb128 0x2
	.4byte	.LASF507
	.byte	0x2
	.byte	0x15
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF508
	.byte	0x2
	.byte	0x16
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF509
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF510
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x2
	.byte	0x19
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x2
	.byte	0x1b
	.4byte	0x7c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF513
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF514
	.uleb128 0x2
	.4byte	.LASF515
	.byte	0x2
	.byte	0x1d
	.4byte	0x7c
	.uleb128 0x4
	.4byte	0x8a
	.uleb128 0x5
	.4byte	.LASF530
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x28
	.4byte	0xf4
	.uleb128 0x6
	.4byte	.LASF516
	.byte	0
	.uleb128 0x6
	.4byte	.LASF517
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF518
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF519
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF520
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF522
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF523
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF524
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF525
	.byte	0x9
	.uleb128 0x6
	.4byte	.LASF526
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF527
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.4byte	.LASF528
	.byte	0x3
	.byte	0x37
	.4byte	0x9a
	.uleb128 0x4
	.4byte	0xf4
	.uleb128 0x2
	.4byte	.LASF529
	.byte	0x3
	.byte	0x38
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF531
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x39
	.4byte	0x199
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
	.uleb128 0x6
	.4byte	.LASF548
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF549
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF550
	.byte	0x12
	.uleb128 0x6
	.4byte	.LASF551
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.4byte	.LASF552
	.byte	0x3
	.byte	0x50
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF569
	.byte	0x10
	.byte	0x3
	.byte	0x57
	.4byte	0x1bd
	.uleb128 0x8
	.4byte	.LASF571
	.byte	0x3
	.byte	0x60
	.4byte	0x1bd
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x42
	.4byte	0x1cd
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF553
	.uleb128 0x2
	.4byte	.LASF554
	.byte	0x3
	.byte	0x61
	.4byte	0x1a4
	.uleb128 0x2
	.4byte	.LASF555
	.byte	0x3
	.byte	0x63
	.4byte	0x1d4
	.uleb128 0x5
	.4byte	.LASF556
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x13
	.4byte	0x20e
	.uleb128 0x6
	.4byte	.LASF557
	.byte	0
	.uleb128 0x6
	.4byte	.LASF558
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF559
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF560
	.byte	0x4
	.byte	0x19
	.4byte	0x1ea
	.uleb128 0x5
	.4byte	.LASF561
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x243
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
	.byte	0x5
	.byte	0xe
	.4byte	0x219
	.uleb128 0x2
	.4byte	.LASF567
	.byte	0x5
	.byte	0x13
	.4byte	0x259
	.uleb128 0xb
	.byte	0x4
	.4byte	0x25f
	.uleb128 0xc
	.4byte	0x26a
	.uleb128 0xd
	.4byte	0x26a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF568
	.byte	0x5
	.byte	0x15
	.4byte	0x277
	.uleb128 0xb
	.byte	0x4
	.4byte	0x27d
	.uleb128 0xf
	.4byte	0x29
	.4byte	0x291
	.uleb128 0xd
	.4byte	0x26a
	.uleb128 0xd
	.4byte	0x243
	.byte	0
	.uleb128 0x7
	.4byte	.LASF570
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.4byte	0x2b6
	.uleb128 0x8
	.4byte	.LASF572
	.byte	0x5
	.byte	0x1a
	.4byte	0x1df
	.byte	0
	.uleb128 0x8
	.4byte	.LASF573
	.byte	0x5
	.byte	0x1b
	.4byte	0x1df
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF574
	.byte	0x5
	.byte	0x1d
	.4byte	0x291
	.uleb128 0x7
	.4byte	.LASF575
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.4byte	0x4a3
	.uleb128 0x10
	.4byte	.LASF576
	.byte	0x5
	.byte	0x21
	.4byte	0x1cd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF577
	.byte	0x5
	.byte	0x22
	.4byte	0x1cd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF578
	.byte	0x5
	.byte	0x23
	.4byte	0x1cd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF579
	.byte	0x5
	.byte	0x24
	.4byte	0x1cd
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF580
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF581
	.byte	0x5
	.byte	0x26
	.4byte	0x29
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF582
	.byte	0x5
	.byte	0x27
	.4byte	0x1df
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF583
	.byte	0x5
	.byte	0x28
	.4byte	0x1df
	.byte	0x16
	.uleb128 0x8
	.4byte	.LASF584
	.byte	0x5
	.byte	0x29
	.4byte	0x1df
	.byte	0x26
	.uleb128 0x8
	.4byte	.LASF585
	.byte	0x5
	.byte	0x2a
	.4byte	0x8a
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF586
	.byte	0x5
	.byte	0x2b
	.4byte	0x1df
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF572
	.byte	0x5
	.byte	0x2c
	.4byte	0x1df
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF587
	.byte	0x5
	.byte	0x2d
	.4byte	0x1df
	.byte	0x5c
	.uleb128 0x8
	.4byte	.LASF588
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x8
	.4byte	.LASF589
	.byte	0x5
	.byte	0x2f
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x8
	.4byte	.LASF590
	.byte	0x5
	.byte	0x30
	.4byte	0x71
	.byte	0x70
	.uleb128 0x11
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x24e
	.byte	0x74
	.uleb128 0x8
	.4byte	.LASF591
	.byte	0x5
	.byte	0x32
	.4byte	0x26c
	.byte	0x78
	.uleb128 0x8
	.4byte	.LASF592
	.byte	0x5
	.byte	0x33
	.4byte	0x243
	.byte	0x7c
	.uleb128 0x8
	.4byte	.LASF593
	.byte	0x5
	.byte	0x34
	.4byte	0x4a3
	.byte	0x80
	.uleb128 0x11
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x71
	.byte	0x84
	.uleb128 0x11
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x71
	.byte	0x88
	.uleb128 0x11
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x71
	.byte	0x8c
	.uleb128 0x11
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x71
	.byte	0x90
	.uleb128 0x11
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x71
	.byte	0x94
	.uleb128 0x11
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x71
	.byte	0x98
	.uleb128 0x11
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x71
	.byte	0x9c
	.uleb128 0x11
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x71
	.byte	0xa0
	.uleb128 0x11
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x71
	.byte	0xa4
	.uleb128 0x11
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x71
	.byte	0xa8
	.uleb128 0x11
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x71
	.byte	0xac
	.uleb128 0x11
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x71
	.byte	0xb0
	.uleb128 0x11
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x47
	.4byte	0x71
	.byte	0xb4
	.uleb128 0x8
	.4byte	.LASF594
	.byte	0x5
	.byte	0x49
	.4byte	0x4a9
	.byte	0xb8
	.uleb128 0x8
	.4byte	.LASF595
	.byte	0x5
	.byte	0x4a
	.4byte	0x4a9
	.byte	0xbc
	.uleb128 0x8
	.4byte	.LASF596
	.byte	0x5
	.byte	0x4b
	.4byte	0x4a9
	.byte	0xc0
	.uleb128 0x8
	.4byte	.LASF597
	.byte	0x5
	.byte	0x4c
	.4byte	0x71
	.byte	0xc4
	.uleb128 0x8
	.4byte	.LASF598
	.byte	0x5
	.byte	0x4d
	.4byte	0x4a9
	.byte	0xc8
	.uleb128 0x8
	.4byte	.LASF599
	.byte	0x5
	.byte	0x4e
	.4byte	0x20e
	.byte	0xcc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2b6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF600
	.byte	0x5
	.byte	0x50
	.4byte	0x2c1
	.uleb128 0x2
	.4byte	.LASF601
	.byte	0x5
	.byte	0x51
	.4byte	0x4c5
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4af
	.uleb128 0x9
	.4byte	0x4c5
	.4byte	0x4db
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF608
	.byte	0x5
	.byte	0x5b
	.4byte	0x4cb
	.uleb128 0x2
	.4byte	.LASF602
	.byte	0x5
	.byte	0x5d
	.4byte	0x1df
	.uleb128 0x5
	.4byte	.LASF603
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x6
	.byte	0x4
	.4byte	0x515
	.uleb128 0x6
	.4byte	.LASF604
	.byte	0
	.uleb128 0x6
	.4byte	.LASF605
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF606
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF607
	.byte	0x6
	.byte	0xa
	.4byte	0x4f1
	.uleb128 0x4
	.4byte	0x515
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x536
	.uleb128 0x13
	.4byte	0x1cd
	.2byte	0x270f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF609
	.byte	0x7
	.byte	0xb
	.4byte	0x525
	.uleb128 0x9
	.4byte	0xff
	.4byte	0x551
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	0x541
	.uleb128 0x12
	.4byte	.LASF610
	.byte	0x7
	.byte	0xe
	.4byte	0x551
	.uleb128 0x12
	.4byte	.LASF611
	.byte	0x7
	.byte	0xf
	.4byte	0x520
	.uleb128 0x12
	.4byte	.LASF612
	.byte	0x7
	.byte	0x10
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF613
	.byte	0x7
	.byte	0x11
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF614
	.byte	0x7
	.byte	0x12
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF615
	.byte	0x7
	.byte	0x13
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF616
	.byte	0x7
	.byte	0x14
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF617
	.byte	0x7
	.byte	0x15
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF618
	.byte	0x7
	.byte	0x16
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF619
	.byte	0x7
	.byte	0x17
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF620
	.byte	0x7
	.byte	0x18
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF621
	.byte	0x7
	.byte	0x19
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF622
	.byte	0x7
	.byte	0x1a
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF623
	.byte	0x7
	.byte	0x1b
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF624
	.byte	0x7
	.byte	0x1c
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF625
	.byte	0x7
	.byte	0x1d
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF626
	.byte	0x7
	.byte	0x1e
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF627
	.byte	0x7
	.byte	0x1f
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF628
	.byte	0x7
	.byte	0x20
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF629
	.byte	0x7
	.byte	0x21
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF630
	.byte	0x7
	.byte	0x23
	.4byte	0x63d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF631
	.byte	0x7
	.byte	0x24
	.4byte	0x95
	.uleb128 0x12
	.4byte	.LASF632
	.byte	0x7
	.byte	0x25
	.4byte	0x95
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x670
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0x9
	.uleb128 0x13
	.4byte	0x1cd
	.2byte	0x7cf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF633
	.byte	0x7
	.byte	0x26
	.4byte	0x659
	.uleb128 0x12
	.4byte	.LASF634
	.byte	0x7
	.byte	0x27
	.4byte	0x4e6
	.uleb128 0x9
	.4byte	0x4ba
	.4byte	0x696
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF635
	.byte	0x7
	.byte	0x28
	.4byte	0x686
	.uleb128 0x12
	.4byte	.LASF636
	.byte	0x7
	.byte	0x29
	.4byte	0x6ac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4ba
	.uleb128 0x9
	.4byte	0x4af
	.4byte	0x6c2
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.4byte	.LASF637
	.byte	0x7
	.byte	0x2a
	.4byte	0x6b2
	.uleb128 0x9
	.4byte	0x4af
	.4byte	0x6dd
	.uleb128 0xa
	.4byte	0x1cd
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF638
	.byte	0x7
	.byte	0x2b
	.4byte	0x6cd
	.uleb128 0x12
	.4byte	.LASF639
	.byte	0x7
	.byte	0x2c
	.4byte	0x6cd
	.uleb128 0x12
	.4byte	.LASF640
	.byte	0x7
	.byte	0x2d
	.4byte	0x29
	.uleb128 0x12
	.4byte	.LASF641
	.byte	0x7
	.byte	0x2e
	.4byte	0x4af
	.uleb128 0x12
	.4byte	.LASF642
	.byte	0x7
	.byte	0x2e
	.4byte	0x4af
	.uleb128 0x12
	.4byte	.LASF643
	.byte	0x7
	.byte	0x2e
	.4byte	0x4af
	.uleb128 0x12
	.4byte	.LASF644
	.byte	0x7
	.byte	0x2e
	.4byte	0x4af
	.uleb128 0x12
	.4byte	.LASF645
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF646
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF647
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF648
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF649
	.byte	0x7
	.byte	0x2f
	.4byte	0x2b6
	.uleb128 0x12
	.4byte	.LASF650
	.byte	0x7
	.byte	0x30
	.4byte	0x4c5
	.uleb128 0x12
	.4byte	.LASF651
	.byte	0x7
	.byte	0x31
	.4byte	0x243
	.uleb128 0x12
	.4byte	.LASF652
	.byte	0x7
	.byte	0x32
	.4byte	0x243
	.uleb128 0x12
	.4byte	.LASF653
	.byte	0x7
	.byte	0x33
	.4byte	0x78d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x793
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x7
	.byte	0x34
	.4byte	0x520
	.uleb128 0x12
	.4byte	.LASF655
	.byte	0x7
	.byte	0x35
	.4byte	0x1df
	.uleb128 0x9
	.4byte	0x29
	.4byte	0x7bb
	.uleb128 0x13
	.4byte	0x1cd
	.2byte	0x1ff
	.byte	0
	.uleb128 0x12
	.4byte	.LASF656
	.byte	0x8
	.byte	0xc
	.4byte	0x7aa
	.uleb128 0x15
	.4byte	.LASF660
	.byte	0x1
	.byte	0xdc
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f8
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0xdc
	.4byte	0x7f8
	.4byte	.LLST38
	.uleb128 0x17
	.4byte	.LASF657
	.byte	0x1
	.byte	0xdc
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x42
	.uleb128 0x18
	.4byte	.LASF665
	.byte	0x1
	.byte	0xce
	.4byte	0x8a
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x836
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0xce
	.4byte	0x7f8
	.4byte	.LLST36
	.uleb128 0x19
	.4byte	.LASF662
	.byte	0x1
	.byte	0xd0
	.4byte	0x8a
	.4byte	.LLST37
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF663
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF658
	.byte	0x1
	.byte	0xc0
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF659
	.byte	0x1
	.byte	0xc0
	.4byte	0x8a
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xc2
	.4byte	0x42
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc3
	.4byte	0x42
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x15
	.4byte	.LASF661
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8a2
	.uleb128 0x17
	.4byte	.LASF658
	.byte	0x1
	.byte	0xb7
	.4byte	0x86d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xb9
	.4byte	0x42
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF664
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.4byte	0x8d0
	.uleb128 0x1b
	.4byte	.LASF658
	.byte	0x1
	.byte	0xaf
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF659
	.byte	0x1
	.byte	0xaf
	.4byte	0x86d
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x42
	.byte	0
	.uleb128 0x18
	.4byte	.LASF666
	.byte	0x1
	.byte	0xab
	.4byte	0x104
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x964
	.uleb128 0x1e
	.4byte	.LASF667
	.byte	0x1
	.byte	0xab
	.4byte	0x86d
	.4byte	.LLST32
	.uleb128 0x17
	.4byte	.LASF668
	.byte	0x1
	.byte	0xab
	.4byte	0x86d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.4byte	0x964
	.4byte	.LBB100
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.byte	0xad
	.4byte	0x939
	.uleb128 0x20
	.4byte	0x97f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	0x974
	.4byte	.LLST33
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x118
	.uleb128 0x23
	.4byte	0xf22
	.uleb128 0x23
	.4byte	0xf2b
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x9a1
	.4byte	.LBB106
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0xad
	.uleb128 0x25
	.4byte	0x9bc
	.uleb128 0x25
	.4byte	0x9b1
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x140
	.uleb128 0x23
	.4byte	0xeec
	.uleb128 0x23
	.4byte	0xef5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF670
	.byte	0x1
	.byte	0x94
	.4byte	0x104
	.byte	0x1
	.4byte	0x9a1
	.uleb128 0x1b
	.4byte	.LASF667
	.byte	0x1
	.byte	0x94
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF668
	.byte	0x1
	.byte	0x94
	.4byte	0x86d
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x96
	.4byte	0x42
	.uleb128 0x27
	.4byte	.LASF669
	.byte	0x1
	.byte	0x97
	.4byte	0x104
	.byte	0
	.uleb128 0x26
	.4byte	.LASF671
	.byte	0x1
	.byte	0x82
	.4byte	0x104
	.byte	0x1
	.4byte	0x9de
	.uleb128 0x1b
	.4byte	.LASF667
	.byte	0x1
	.byte	0x82
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF668
	.byte	0x1
	.byte	0x82
	.4byte	0x86d
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x42
	.uleb128 0x27
	.4byte	.LASF672
	.byte	0x1
	.byte	0x85
	.4byte	0x104
	.byte	0
	.uleb128 0x18
	.4byte	.LASF673
	.byte	0x1
	.byte	0x7e
	.4byte	0x104
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa76
	.uleb128 0x1e
	.4byte	.LASF667
	.byte	0x1
	.byte	0x7e
	.4byte	0x86d
	.4byte	.LLST23
	.uleb128 0x17
	.4byte	.LASF668
	.byte	0x1
	.byte	0x7e
	.4byte	0x86d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.4byte	0xa76
	.4byte	.LBB88
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x80
	.4byte	0xa47
	.uleb128 0x20
	.4byte	0xa91
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	0xa86
	.4byte	.LLST24
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0xd8
	.uleb128 0x23
	.4byte	0xeb6
	.uleb128 0x23
	.4byte	0xebf
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x9a1
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x80
	.uleb128 0x25
	.4byte	0x9bc
	.uleb128 0x25
	.4byte	0x9b1
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x100
	.uleb128 0x28
	.4byte	0x9c7
	.4byte	.LLST25
	.uleb128 0x23
	.4byte	0x9d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF674
	.byte	0x1
	.byte	0x67
	.4byte	0x104
	.byte	0x1
	.4byte	0xab3
	.uleb128 0x1b
	.4byte	.LASF667
	.byte	0x1
	.byte	0x67
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF668
	.byte	0x1
	.byte	0x67
	.4byte	0x86d
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x42
	.uleb128 0x27
	.4byte	.LASF675
	.byte	0x1
	.byte	0x6a
	.4byte	0x104
	.byte	0
	.uleb128 0x15
	.4byte	.LASF676
	.byte	0x1
	.byte	0x50
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb28
	.uleb128 0x17
	.4byte	.LASF677
	.byte	0x1
	.byte	0x50
	.4byte	0x86d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	.LASF678
	.byte	0x1
	.byte	0x50
	.4byte	0x86d
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF679
	.byte	0x1
	.byte	0x50
	.4byte	0x86d
	.4byte	.LLST17
	.uleb128 0x29
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x4d
	.4byte	.LLST18
	.uleb128 0x2a
	.4byte	.LASF680
	.byte	0x1
	.byte	0x53
	.4byte	0x66
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.uleb128 0x19
	.4byte	.LASF681
	.byte	0x1
	.byte	0x57
	.4byte	0x66
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF682
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	0xb79
	.uleb128 0x1b
	.4byte	.LASF683
	.byte	0x1
	.byte	0x44
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF684
	.byte	0x1
	.byte	0x44
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF685
	.byte	0x1
	.byte	0x44
	.4byte	0x86d
	.uleb128 0x1c
	.ascii	"pos\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x4d
	.uleb128 0x27
	.4byte	.LASF680
	.byte	0x1
	.byte	0x47
	.4byte	0x66
	.uleb128 0x2c
	.uleb128 0x27
	.4byte	.LASF686
	.byte	0x1
	.byte	0x4b
	.4byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF706
	.byte	0x1
	.byte	0x3f
	.4byte	0xba6
	.uleb128 0x1b
	.4byte	.LASF687
	.byte	0x1
	.byte	0x3f
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF688
	.byte	0x1
	.byte	0x3f
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF689
	.byte	0x1
	.byte	0x3f
	.4byte	0x86d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF690
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.4byte	0xbd4
	.uleb128 0x1b
	.4byte	.LASF691
	.byte	0x1
	.byte	0x3a
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF692
	.byte	0x1
	.byte	0x3a
	.4byte	0x86d
	.uleb128 0x1b
	.4byte	.LASF693
	.byte	0x1
	.byte	0x3a
	.4byte	0x86d
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF694
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	0xbf7
	.uleb128 0x1b
	.4byte	.LASF695
	.byte	0x1
	.byte	0x1f
	.4byte	0xbf7
	.uleb128 0x27
	.4byte	.LASF696
	.byte	0x1
	.byte	0x22
	.4byte	0x95
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1df
	.uleb128 0x1a
	.4byte	.LASF697
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0xc15
	.uleb128 0x27
	.4byte	.LASF698
	.byte	0x1
	.byte	0x18
	.4byte	0x1df
	.byte	0
	.uleb128 0x15
	.4byte	.LASF699
	.byte	0x1
	.byte	0xb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf8
	.uleb128 0x17
	.4byte	.LASF696
	.byte	0x1
	.byte	0xb
	.4byte	0xbf7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1f
	.4byte	0xbfd
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe
	.4byte	0xcce
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2e
	.4byte	0xc09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	0xbd4
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x19
	.4byte	0xc82
	.uleb128 0x20
	.4byte	0xbe0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x2e
	.4byte	0xbeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0xb28
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x1c
	.uleb128 0x25
	.4byte	0xb4a
	.uleb128 0x25
	.4byte	0xb3f
	.uleb128 0x25
	.4byte	0xb34
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x28
	.4byte	0xb55
	.4byte	.LLST0
	.uleb128 0x28
	.4byte	0xb60
	.4byte	.LLST1
	.uleb128 0x2f
	.4byte	0xb6b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x28
	.4byte	0xb6c
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x8a2
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x10
	.uleb128 0x25
	.4byte	0x8b9
	.uleb128 0x25
	.4byte	0x8ae
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x28
	.4byte	0x8c4
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF700
	.byte	0x1
	.byte	0x4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd28
	.uleb128 0x17
	.4byte	.LASF701
	.byte	0x1
	.byte	0x4
	.4byte	0xf4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x17
	.4byte	.LASF702
	.byte	0x1
	.byte	0x4
	.4byte	0x199
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x30
	.4byte	0xbfd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb9
	.uleb128 0x2e
	.4byte	0xc09
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	0xbd4
	.4byte	.LBB67
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x19
	.4byte	0xd6e
	.uleb128 0x21
	.4byte	0xbe0
	.4byte	.LLST4
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x2e
	.4byte	0xbeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0xb28
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0x1c
	.uleb128 0x25
	.4byte	0xb4a
	.uleb128 0x25
	.4byte	0xb3f
	.uleb128 0x25
	.4byte	0xb34
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x28
	.4byte	0xb55
	.4byte	.LLST5
	.uleb128 0x28
	.4byte	0xb60
	.4byte	.LLST6
	.uleb128 0x2f
	.4byte	0xb6b
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x28
	.4byte	0xb6c
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xbd4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe1a
	.uleb128 0x20
	.4byte	0xbe0
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2e
	.4byte	0xbeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x31
	.4byte	0x836
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.byte	0x34
	.uleb128 0x21
	.4byte	0x84d
	.4byte	.LLST8
	.uleb128 0x21
	.4byte	0x842
	.4byte	.LLST9
	.uleb128 0x2b
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.uleb128 0x28
	.4byte	0x858
	.4byte	.LLST10
	.uleb128 0x28
	.4byte	0x863
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xba6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe43
	.uleb128 0x20
	.4byte	0xbb2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.4byte	0xbbd
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x20
	.4byte	0xbc8
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x30
	.4byte	0xb28
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0x20
	.4byte	0xb34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.4byte	0xb3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.4byte	0xb4a
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	0xb55
	.4byte	.LLST13
	.uleb128 0x28
	.4byte	0xb60
	.4byte	.LLST14
	.uleb128 0x2b
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.uleb128 0x28
	.4byte	0xb6c
	.4byte	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	0xa76
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xec9
	.uleb128 0x21
	.4byte	0xa86
	.4byte	.LLST20
	.uleb128 0x20
	.4byte	0xa91
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	0xa9c
	.4byte	.LLST21
	.uleb128 0x28
	.4byte	0xaa7
	.4byte	.LLST22
	.byte	0
	.uleb128 0x30
	.4byte	0x9a1
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeff
	.uleb128 0x21
	.4byte	0x9b1
	.4byte	.LLST26
	.uleb128 0x20
	.4byte	0x9bc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	0x9c7
	.4byte	.LLST27
	.uleb128 0x28
	.4byte	0x9d2
	.4byte	.LLST28
	.byte	0
	.uleb128 0x30
	.4byte	0x964
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf35
	.uleb128 0x21
	.4byte	0x974
	.4byte	.LLST29
	.uleb128 0x20
	.4byte	0x97f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	0x98a
	.4byte	.LLST30
	.uleb128 0x28
	.4byte	0x995
	.4byte	.LLST31
	.byte	0
	.uleb128 0x30
	.4byte	0x8a2
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf60
	.uleb128 0x20
	.4byte	0x8ae
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.4byte	0x8b9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	0x8c4
	.4byte	.LLST34
	.byte	0
	.uleb128 0x32
	.4byte	0x836
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.4byte	0x842
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x20
	.4byte	0x84d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x28
	.4byte	0x858
	.4byte	.LLST35
	.uleb128 0x33
	.4byte	0x863
	.byte	0x4
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
	.uleb128 0x17
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST38:
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL322-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x70
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1d
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x22
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL288-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL288-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL207-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL142-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL143-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL144-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0xc
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0xe
	.byte	0x73
	.sleb128 15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x7
	.byte	0x7e
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL109-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0xe
	.byte	0x72
	.sleb128 15
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL226-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL214-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL226-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL247-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL247-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL308-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL317-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL320-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x3b
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
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
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
	.file 9 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF438
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
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
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF484
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF485
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
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
	.4byte	.LASF486
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF495
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xf
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
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF500
	.byte	0x4
	.file 17 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x11
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
	.file 18 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x12
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF666:
	.ascii	"IS_GREATER_OR_EQUAL\000"
.LASF683:
	.ascii	"Summe\000"
.LASF206:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF548:
	.ascii	"E_FUNC_SHUTDOWN\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF527:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF451:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF558:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF674:
	.ascii	"IS_LESS\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF519:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF551:
	.ascii	"E_FUNC_STATE_HANDLER\000"
.LASF555:
	.ascii	"timebig_t\000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF640:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF636:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF702:
	.ascii	"task_func_nr\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF539:
	.ascii	"E_FUNC_PREEMPTTASK\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF522:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF556:
	.ascii	"privilige_mode_e\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF536:
	.ascii	"E_FUNC_DELETETASKENVIRONMENT\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF553:
	.ascii	"unsigned int\000"
.LASF449:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF560:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF209:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF516:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF464:
	.ascii	"FALSE 0u\000"
.LASF661:
	.ascii	"ASSIGN_NULL\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF565:
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
.LASF532:
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
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF663:
	.ascii	"ASSIGN_UINT32\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF634:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF618:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF540:
	.ascii	"E_FUNC_TERMINATETASK\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF453:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF703:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF607:
	.ascii	"os_state_t\000"
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
.LASF586:
	.ascii	"max_allowed_wait_time\000"
.LASF654:
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
.LASF576:
	.ascii	"active\000"
.LASF475:
	.ascii	"DWT_CYCCNT ((volatile uint32*)0xE0001004u)\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF447:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF667:
	.ascii	"Operand1\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF595:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF478:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF599:
	.ascii	"privilige_mode\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF531:
	.ascii	"os_sw_bugs_function_e\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF684:
	.ascii	"ErsterSummand\000"
.LASF643:
	.ascii	"TASK_2_VAR\000"
.LASF489:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF494:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF581:
	.ascii	"nr_of_ins_activated\000"
.LASF199:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF681:
	.ascii	"tmp_diff\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF552:
	.ascii	"os_sw_bugs_function_t\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF591:
	.ascii	"state_request\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF639:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF620:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF680:
	.ascii	"carry\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF534:
	.ascii	"E_FUNC_RESTORETASKENVIRONMENT\000"
.LASF650:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF584:
	.ascii	"time_to_prio_inc\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF593:
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
.LASF462:
	.ascii	"_OS_BASE_TYPES_H_ \000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF481:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF541:
	.ascii	"E_FUNC_TASKSCHEDULER\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF682:
	.ascii	"INT_ADD\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF472:
	.ascii	"MCU_X86 3\000"
.LASF562:
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
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF694:
	.ascii	"OS_READ_AND_RESET_CURRENT_TIME\000"
.LASF696:
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
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF657:
	.ascii	"value\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF633:
	.ascii	"TASK_STACK\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF677:
	.ascii	"Differenz\000"
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
.LASF523:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF622:
	.ascii	"DBG_RLD_VALUE\000"
.LASF485:
	.ascii	"_LLD_CORE_H_ \000"
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
.LASF617:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF588:
	.ascii	"current_prio\000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF483:
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
.LASF503:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF679:
	.ascii	"Subtrahend\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF479:
	.ascii	"ENABLE_INTERRUPTS() LLF_INT_ENABLE()\000"
.LASF452:
	.ascii	"NR_OF_CORES 1u\000"
.LASF685:
	.ascii	"ZweiterSummand\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF579:
	.ascii	"free\000"
.LASF498:
	.ascii	"_LED_H_ \000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF592:
	.ascii	"task_state\000"
.LASF561:
	.ascii	"task_state_e\000"
.LASF686:
	.ascii	"tmp_sum\000"
.LASF660:
	.ascii	"set_4_uint8_to_uint32\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF635:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF594:
	.ascii	"p_stack_pointer\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF566:
	.ascii	"task_state_t\000"
.LASF526:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF573:
	.ascii	"fair_exe_time\000"
.LASF493:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF630:
	.ascii	"STACK_ADDR\000"
.LASF474:
	.ascii	"DWT_CTRL ((volatile uint32*)0xE0001000u)\000"
.LASF706:
	.ascii	"INT_MUL\000"
.LASF688:
	.ascii	"Faktor1\000"
.LASF689:
	.ascii	"Faktor2\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF473:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF699:
	.ascii	"OS_GET_CURRENT_TIME\000"
.LASF613:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF615:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF704:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_common.c\000"
.LASF656:
	.ascii	"OS_MAIN_STACK\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF602:
	.ascii	"scheduler_time_t\000"
.LASF517:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF476:
	.ascii	"DWT_LAR ((volatile uint32*)0xE0001FB0u)\000"
.LASF529:
	.ascii	"boolean_t\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF631:
	.ascii	"STACK_POS\000"
.LASF582:
	.ascii	"wait_act_until\000"
.LASF427:
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
.LASF651:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF511:
	.ascii	"uint16\000"
.LASF538:
	.ascii	"E_FUNC_STARTTASK\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF693:
	.ascii	"Divisor\000"
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
.LASF701:
	.ascii	"bug_nr\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF545:
	.ascii	"E_FUNC_PREEMPT_TASK\000"
.LASF567:
	.ascii	"func_p_t\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF533:
	.ascii	"E_FUNC_SAVETASKENVIRONMENT\000"
.LASF454:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF458:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF569:
	.ascii	"big_int_s\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF518:
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
.LASF543:
	.ascii	"E_FUNC_ACTIVATETASK\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF589:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF460:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8u\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF678:
	.ascii	"Minuend\000"
.LASF668:
	.ascii	"Operand2\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF676:
	.ascii	"INT_SUB\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF499:
	.ascii	"_OS_RAM_H_ \000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF629:
	.ascii	"TASK4_CALL_NR\000"
.LASF705:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF619:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF520:
	.ascii	"E_OS_BUG_TASK_UNSPECIFIED\000"
.LASF608:
	.ascii	"TASK_PTR\000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF465:
	.ascii	"TRUE 1u\000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF675:
	.ascii	"is_less\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF659:
	.ascii	"rightOperand\000"
.LASF664:
	.ascii	"ASSIGN\000"
.LASF671:
	.ascii	"IS_EQUAL\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF624:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF564:
	.ascii	"E_TASK_READY\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF670:
	.ascii	"IS_GREATER\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF506:
	.ascii	"unsigned_char_t\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF515:
	.ascii	"uint32\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF669:
	.ascii	"is_greater\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF587:
	.ascii	"start_time\000"
.LASF577:
	.ascii	"task_queued\000"
.LASF642:
	.ascii	"TASK_1_VAR\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF554:
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
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF568:
	.ascii	"func_p_state_change_t\000"
.LASF463:
	.ascii	"_OS_COMMON_H_ \000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF570:
	.ascii	"task_group_s\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF652:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF444:
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
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF687:
	.ascii	"Produkt\000"
.LASF212:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
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
.LASF508:
	.ascii	"sint8\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF461:
	.ascii	"OS_STACK_SIZE 0x200u\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF692:
	.ascii	"Dividend\000"
.LASF658:
	.ascii	"leftOperand\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF537:
	.ascii	"E_FUNC_INITTASKENVIRONMENT\000"
.LASF626:
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
.LASF653:
	.ascii	"SAVED_STACK_POINTER\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF445:
	.ascii	"CPP_VERSION_NONE 0u\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF510:
	.ascii	"short int\000"
.LASF655:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF632:
	.ascii	"STACK_USAGE_PERCENT\000"
.LASF575:
	.ascii	"task_s\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF600:
	.ascii	"task_t\000"
.LASF514:
	.ascii	"long int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF606:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF496:
	.ascii	"OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(tas"
	.ascii	"k_name)] = (task_ptr))\000"
.LASF700:
	.ascii	"OS_SET_SW_BUG\000"
.LASF672:
	.ascii	"is_equal\000"
.LASF246:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF218:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF490:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF610:
	.ascii	"OS_SW_BUG\000"
.LASF469:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF616:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF535:
	.ascii	"E_FUNC_CREATETASKENVIRONMENT\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF438:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF557:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF673:
	.ascii	"IS_LESS_OR_EQUAL\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
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
.LASF401:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF549:
	.ascii	"E_FUNC_STACKCHECK\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF524:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF571:
	.ascii	"number\000"
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
.LASF550:
	.ascii	"E_FUNC_ISRHANDLER\000"
.LASF628:
	.ascii	"TASK3_CALL_NR\000"
.LASF578:
	.ascii	"idle_task\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF521:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF605:
	.ascii	"OS_STATE_RUNNING\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF697:
	.ascii	"OS_UpdateCurrentTime\000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF598:
	.ascii	"p_stack_pointer_end\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF513:
	.ascii	"long unsigned int\000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF690:
	.ascii	"INT_DIV\000"
.LASF492:
	.ascii	"TASK_STACK_SIZE 2000u\000"
.LASF638:
	.ascii	"RUNNING_TASK\000"
.LASF482:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF596:
	.ascii	"p_stack_pointer_start\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF623:
	.ascii	"DBG_CURR_VAL\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF580:
	.ascii	"nr_of_ins_allowed\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF547:
	.ascii	"E_FUNC_CREATETASK\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF530:
	.ascii	"os_sw_bugs_e\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF609:
	.ascii	"HEAP\000"
.LASF484:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF448:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF662:
	.ascii	"ret_val\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF621:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF528:
	.ascii	"os_sw_bugs_t\000"
.LASF504:
	.ascii	"unsigned char\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF457:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF450:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF585:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF611:
	.ascii	"OS_STATE\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF369:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF467:
	.ascii	"REJECTED 0u\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF644:
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
.LASF590:
	.ascii	"task_number\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF500:
	.ascii	"_OS_STACK_H_ \000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF559:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF495:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF572:
	.ascii	"exe_time\000"
.LASF603:
	.ascii	"os_state_e\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF546:
	.ascii	"E_FUNC_OS_EXCEPTION\000"
.LASF439:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF695:
	.ascii	"timebig\000"
.LASF691:
	.ascii	"Quotient\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF512:
	.ascii	"unsigned_int32_t\000"
.LASF583:
	.ascii	"wait_time\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF698:
	.ascii	"tmp_time\000"
.LASF641:
	.ascii	"TASK_0_VAR\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
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
.LASF505:
	.ascii	"signed char\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF625:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF525:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF466:
	.ascii	"ACCEPTED 1u\000"
.LASF509:
	.ascii	"short unsigned int\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF574:
	.ascii	"task_group_t\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF637:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF544:
	.ascii	"E_FUNC_TASKSTATEREQUEST\000"
.LASF507:
	.ascii	"uint8\000"
.LASF627:
	.ascii	"TASK2_CALL_NR\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF597:
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
.LASF665:
	.ascii	"get_uint32_of_4_uint8\000"
.LASF645:
	.ascii	"TASK_GROUP_1\000"
.LASF646:
	.ascii	"TASK_GROUP_2\000"
.LASF647:
	.ascii	"TASK_GROUP_3\000"
.LASF648:
	.ascii	"TASK_GROUP_4\000"
.LASF649:
	.ascii	"TASK_GROUP_5\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF614:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF477:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF563:
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
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF601:
	.ascii	"scheduling_t\000"
.LASF542:
	.ascii	"E_FUNC_INITTASK\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF604:
	.ascii	"OS_STATE_INIT\000"
.LASF446:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF612:
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
