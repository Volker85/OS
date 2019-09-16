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
.LBB105:
.LBB106:
.LBB107:
.LBB108:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r2, .L29	@ tmp280,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	ldr	r9, .L29+16	@ tmp282,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:37:    *DWT_LAR = 0xC5ACCE55u;
	.loc 1 37 0
	ldr	r1, .L29+4	@ tmp281,
.LBE108:
.LBE107:
.LBB113:
.LBB114:
.LBB115:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, .L29+8	@ tmp522,
.LBE115:
.LBE114:
.LBE113:
.LBB122:
.LBB109:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:43:    time = *DWT_CYCCNT;
	.loc 1 43 0
	ldr	lr, .L29+20	@ tmp284,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	ldr	ip, .L29+24	@ tmp287,
.LBE109:
.LBE122:
.LBE106:
.LBE105:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:12: {
	.loc 1 12 0
	sub	sp, sp, #52	@,,
	.cfi_def_cfa_offset 88
.LVL2:
.LBB130:
.LBB129:
.LBB123:
.LBB110:
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
.LBE110:
.LBE123:
.LBB124:
.LBB119:
.LBB116:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r2, [r3, #11]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	str	r2, [sp]	@ LOCAL_SYSTEM_TIME.number, %sfp
	ldrb	r1, [r3, #10]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #9]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r2, [r3, #8]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	str	r1, [sp, #8]	@ LOCAL_SYSTEM_TIME.number, %sfp
.LBE116:
.LBE119:
.LBE124:
.LBB125:
.LBB111:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:40:    *SCB_DEMCR |= 0x01000000u;
	.loc 1 40 0
	orr	r7, r7, #16777216	@ _25, _24,
.LBE111:
.LBE125:
.LBB126:
.LBB120:
.LBB117:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	str	r4, [sp, #12]	@ LOCAL_SYSTEM_TIME.number, %sfp
	str	r2, [sp, #16]	@ LOCAL_SYSTEM_TIME.number, %sfp
	ldrb	r6, [r3, #15]	@ zero_extendqisi2	@ _293, LOCAL_SYSTEM_TIME.number
	ldrb	fp, [r3, #14]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r10, [r3, #13]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #12]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r2, [r3, #7]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #6]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #5]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
.LBE117:
.LBE120:
.LBE126:
.LBB127:
.LBB112:
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
.LBE112:
.LBE127:
.LBB128:
.LBB121:
.LBB118:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtab	r6, r6, r7	@ tmp293, _293, time.0_29
.LVL4:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	ip, r6, #255	@ tmp300, tmp293,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	fp, fp, ip	@ tmp305, tmp300
	ubfx	ip, r7, #1, #8	@ tmp308, time.0_29,,
	add	fp, fp, ip	@ tmp_sum, tmp308
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	ip, fp, #255	@ tmp313, tmp_sum,
	add	r10, r10, ip	@ _194, tmp313
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	ip, r7, #2, #8	@ tmp321, time.0_29,,
	add	r10, r10, ip	@ tmp_sum, tmp321
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	ip, r10, #255	@ tmp325, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r7, r7, #3, #8	@ tmp333, time.0_29,,
.LVL5:
	add	r5, r5, ip	@ _195, tmp325
	adds	r5, r7, r5	@ tmp_sum, tmp333, _195
	ldr	r7, [sp]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r5, [sp, #4]	@ tmp_sum, %sfp
	bic	r5, r5, #255	@ tmp337, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r5, r5, r7	@ tmp_sum, LOCAL_SYSTEM_TIME.number
	ldr	r7, [sp, #8]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	ip, r5, #255	@ tmp348, tmp_sum,
	add	ip, ip, r7	@ tmp353, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	ip, ip	@ tmp_sum, tmp353
	ldr	r7, [sp, #12]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	lr, ip, #255	@ tmp359, tmp_sum,
	add	lr, lr, r7	@ tmp364, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	lr, lr	@ tmp_sum, tmp364
	ldr	r7, [sp, #16]	@ LOCAL_SYSTEM_TIME.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, lr, #255	@ tmp370, tmp_sum,
	add	r8, r8, r7	@ tmp375, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r8, r8	@ tmp_sum, tmp375
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r9, r8, #255	@ tmp381, tmp_sum,
	add	r2, r2, r9	@ tmp386, tmp381
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r2, r2	@ tmp_sum, tmp386
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r9, r2, #255	@ tmp392, tmp_sum,
	add	r1, r1, r9	@ tmp397, tmp392
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r1, r1	@ tmp_sum, tmp397
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r9, r1, #255	@ tmp403, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r6, r6	@ _299, tmp293
	uxtb	r7, r10	@ _335, tmp_sum
	add	r4, r4, r9	@ tmp408, tmp403
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r4, r4	@ tmp_sum, tmp408
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	str	r6, [sp, #8]	@ _299, %sfp
	str	r7, [sp]	@ _335, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r10, [r3, #4]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	r9, [sp, #4]	@ zero_extendqisi2	@ _353, %sfp
	str	r9, [sp, #4]	@ _353, %sfp
	uxtb	r9, r4	@ _479, tmp_sum
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp414, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r5, r5	@ _371, tmp_sum
	add	r4, r4, r10	@ tmp419, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r4, r4	@ tmp_sum, tmp419
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	str	r5, [sp, #12]	@ _371, %sfp
	strb	r5, [r3, #11]	@ _371, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [r3, #3]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r6, [r3, #15]	@ _299, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r10, r4, #255	@ tmp425, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r2, r2	@ _443, tmp_sum
	add	r5, r5, r10	@ tmp430, tmp425
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r5, r5	@ tmp_sum, tmp430
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	str	r2, [sp, #16]	@ _443, %sfp
	strb	r2, [r3, #7]	@ _443, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r7, [sp]	@ _335, %sfp
	strb	r7, [r3, #13]	@ _335, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r10, r5, #255	@ tmp436, tmp_sum,
	add	r2, r2, r10	@ tmp441, tmp436
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r2, r2	@ tmp_sum, tmp441
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r10, r2, #255	@ tmp447, tmp_sum,
	add	r6, r6, r10	@ tmp452, tmp447
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r7, [sp, #4]	@ _353, %sfp
	strb	r7, [r3, #12]	@ _353, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r6, r6	@ tmp_sum, tmp452
	add	r10, r0, #4	@ vectp_time.56, time,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
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
	cmp	r10, r3	@ vectp_time.56, tmp522
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
	ands	r1, r1, #3	@ prolog_loop_niters.46, tmp479,
	beq	.L8	@,
	cmp	r1, #1	@ prolog_loop_niters.46,
.LBE118:
.LBE121:
.LBE128:
.LBE129:
.LBE130:
.LBB131:
.LBB132:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	strb	r7, [r0]	@ _19, MEM[(struct big_int *)time_3(D)].number
.LVL17:
	beq	.L15	@,
	cmp	r1, #3	@ prolog_loop_niters.46,
	strb	r6, [r0, #1]	@ _551, MEM[(struct big_int *)time_3(D)].number
.LVL18:
	bne	.L16	@,
	strb	r2, [r0, #2]	@ _533, MEM[(struct big_int *)time_3(D)].number
.LVL19:
	movs	r5, #13	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r2, r1	@ pos, prolog_loop_niters.46
.LVL20:
.L9:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldr	r4, [r3, r1]	@ vect__6.55, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.54_146]
	str	r4, [r0, r1]	@ unaligned	@ vect__6.55, MEM[(uint8[16] *)vectp_time.57_145]
	rsb	r6, r1, #16	@ tmp517, prolog_loop_niters.46,
	adds	r4, r3, r1	@ vectp_LOCAL_SYSTEM_TIME.54, tmp522, prolog_loop_niters.46
	add	r1, r1, r0	@ vectp_time.57, time
	uxtb	r6, r6	@ niters.48, tmp517
	adds	r4, r4, #4	@ vectp_LOCAL_SYSTEM_TIME.53, vectp_LOCAL_SYSTEM_TIME.54,
	add	r10, r1, #4	@ vectp_time.56, vectp_time.57,
	movs	r7, #3	@ bnd.49,
.L12:
	ldr	r1, [r4]	@ vect__6.55, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.53_81]
	str	r1, [r10]	@ unaligned	@ vect__6.55, MEM[(uint8[16] *)vectp_time.56_78]
	ldr	r1, [r4, #4]	@ vect__6.55, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.53_81 + 4B]
	str	r1, [r10, #4]	@ unaligned	@ vect__6.55, MEM[(uint8[16] *)vectp_time.56_78 + 4B]
	cmp	r7, #4	@ bnd.49,
	bne	.L28	@,
	ldr	r1, [r4, #8]	@ vect__6.55, MEM[(uint8[16] *)vectp_LOCAL_SYSTEM_TIME.53_81 + 8B]
	str	r1, [r10, #8]	@ unaligned	@ vect__6.55, MEM[(uint8[16] *)vectp_time.56_78 + 8B]
	cmp	r6, #16	@ niters.48,
	sub	r1, r5, #16	@ tmp487, ivtmp_43,
	uxtb	r1, r1	@ tmp.52, tmp487
	add	r2, r2, #16	@ tmp.51, pos,
	beq	.L5	@,
.L14:
.LVL21:
	ldrb	r4, [r3, r2]	@ zero_extendqisi2	@ _229, LOCAL_SYSTEM_TIME.number
	strb	r4, [r0, r2]	@ _229, MEM[(struct big_int *)time_3(D)].number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	cmp	r1, #1	@ tmp.52,
	add	r4, r2, #1	@ tmp490, tmp.51,
	uxtb	r4, r4	@ pos, tmp490
.LVL22:
	beq	.L5	@,
	adds	r2, r2, #2	@ tmp496, tmp.51,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r5, [r3, r4]	@ zero_extendqisi2	@ _237, LOCAL_SYSTEM_TIME.number
	strb	r5, [r0, r4]	@ _237, MEM[(struct big_int *)time_3(D)].number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	cmp	r1, #2	@ tmp.52,
	uxtb	r2, r2	@ pos, tmp496
.LVL23:
	beq	.L5	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r3, [r3, r2]	@ zero_extendqisi2	@ _95, LOCAL_SYSTEM_TIME.number
	strb	r3, [r0, r2]	@ _95, MEM[(struct big_int *)time_3(D)].number
.LVL24:
.L5:
.LBE132:
.LBE131:
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
.LBB135:
.LBB133:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
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
.LBE133:
.LBE135:
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
.LBB136:
.LBB134:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	movs	r5, #15	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r2, r1	@ pos, prolog_loop_niters.46
	b	.L9	@
.LVL38:
.L8:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldr	r2, [r3]	@ unaligned	@ tmp516, MEM[(uint8[16] *)&LOCAL_SYSTEM_TIME]
	str	r2, [r0]	@ unaligned	@ tmp516, MEM[(uint8[16] *)vectp_time.57_441]
	movs	r6, #16	@ niters.48,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r2, r1	@ pos, prolog_loop_niters.46
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	mov	r5, r6	@ ivtmp_43, niters.48
	ldr	r4, .L29+12	@ vectp_LOCAL_SYSTEM_TIME.53,
	movs	r7, #4	@ bnd.49,
	b	.L12	@
.LVL39:
.L16:
	movs	r5, #14	@ ivtmp_43,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	movs	r2, #2	@ pos,
	b	.L9	@
.LVL40:
.L28:
	sub	r1, r5, #12	@ tmp520, ivtmp_43,
	uxtb	r1, r1	@ tmp.52, tmp520
	adds	r2, r2, #12	@ tmp.51, pos,
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
.LBE134:
.LBE136:
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
.LBB144:
.LBB145:
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
.LBE145:
.LBE144:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:20: {
	.loc 1 20 0
	sub	sp, sp, #24	@,,
	.cfi_def_cfa_offset 48
.LVL41:
.LBB149:
.LBB146:
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
.LBE146:
.LBE149:
.LBB150:
.LBB151:
.LBB152:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, .L33+20	@ tmp258,
.LBE152:
.LBE151:
.LBE150:
.LBB157:
.LBB147:
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
.LBE147:
.LBE157:
.LBB158:
.LBB155:
.LBB153:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	lr, [r3, #14]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r8, [r3, #15]	@ zero_extendqisi2	@ _77, LOCAL_SYSTEM_TIME.number
	ldrb	r7, [r3, #13]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
.LBE153:
.LBE155:
.LBE158:
.LBB159:
.LBB148:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:49:    *DWT_CTRL |= 1u;
	.loc 1 49 0
	orr	r2, r2, #1	@ _24, _23,
	str	r2, [r1]	@ _24, MEM[(volatile uint32 *)3758100480B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:52:    ASSIGN_UINT32(timebig, time);
	.loc 1 52 0
	ldr	r2, [sp, #4]	@ time.0_25, time
.LVL42:
.LBE148:
.LBE159:
.LBB160:
.LBB156:
.LBB154:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r1, [r3, #12]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	ip, [r3, #11]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r6, [r3, #10]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #9]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r4, [r3, #8]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtab	r8, r8, r2	@ tmp260, _77, time.0_25
.LVL43:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r0, r8, #255	@ tmp266, tmp260,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r0, r0, lr	@ tmp271, LOCAL_SYSTEM_TIME.number
	ubfx	lr, r2, #1, #8	@ tmp274, time.0_25,,
	add	lr, lr, r0	@ tmp_sum, tmp271
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r0, lr, #255	@ tmp279, tmp_sum,
	add	r7, r7, r0	@ _263, tmp279
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r0, r2, #2, #8	@ tmp287, time.0_25,,
	add	r7, r7, r0	@ tmp_sum, tmp287
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r0, r7, #255	@ tmp291, tmp_sum,
	add	r1, r1, r0	@ _264, tmp291
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r2, r2, #3, #8	@ tmp299, time.0_25,,
.LVL44:
	add	r2, r2, r1	@ tmp_sum, _264
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r8, [r3, #15]	@ tmp260, LOCAL_SYSTEM_TIME.number
.LVL45:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, r2, #255	@ tmp303, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	ip, ip, r8	@ tmp_sum, tmp303
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, ip, #255	@ tmp314, tmp_sum,
	add	r6, r6, r8	@ tmp319, tmp314
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r6, r6	@ tmp_sum, tmp319
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, r6, #255	@ tmp325, tmp_sum,
	add	r5, r5, r8	@ tmp330, tmp325
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r5, r5	@ tmp_sum, tmp330
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, r5, #255	@ tmp336, tmp_sum,
	add	r4, r4, r8	@ tmp341, tmp336
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r0, [r3, #7]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #6]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	lr, [r3, #14]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r4, r4	@ tmp_sum, tmp341
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r8, r4, #255	@ tmp347, tmp_sum,
	add	r0, r0, r8	@ tmp352, tmp347
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r0, r0	@ tmp_sum, tmp352
.LVL46:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	lr, r0, #255	@ tmp358, tmp_sum,
.LVL47:
	add	r1, r1, lr	@ tmp363, tmp358
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r1, r1	@ tmp_sum, tmp363
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r2, [r3, #12]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r2, [r3, #5]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r6, [r3, #10]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r6, r1, #255	@ tmp369, tmp_sum,
	add	r2, r2, r6	@ tmp374, tmp369
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r2, r2	@ tmp_sum, tmp374
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
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
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r3, #4]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ LOCAL_SYSTEM_TIME.number, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r2, r2, #255	@ tmp380, tmp_sum,
.LVL51:
	add	r2, r2, r4	@ tmp385, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r2, r2	@ tmp_sum, tmp385
.LVL52:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r2, #255	@ tmp391, tmp_sum,
	add	r0, r0, r4	@ tmp396, tmp391
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r0, r0	@ tmp_sum, tmp396
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r0, #255	@ tmp402, tmp_sum,
	add	r1, r1, r4	@ tmp407, tmp402
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r1, r1	@ tmp_sum, tmp407
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r1, #255	@ tmp413, tmp_sum,
	add	r4, r4, r5	@ tmp418, LOCAL_SYSTEM_TIME.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r4, r4	@ tmp_sum, tmp418
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r2, [r3, #4]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL53:
	strb	r0, [r3, #3]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL54:
	strb	r1, [r3, #2]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL55:
	strb	r4, [r3, #1]	@ tmp_sum, LOCAL_SYSTEM_TIME.number
.LVL56:
.LBE154:
.LBE156:
.LBE160:
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
.LBB161:
.LBB162:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:319:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 319 0
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
.LBE162:
.LBE161:
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
	@ args = 0, pretend = 0, frame = 368
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL65:
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
	mov	r4, r1	@ Dividend, Dividend
	sub	sp, sp, #372	@,,
	.cfi_def_cfa_offset 408
.LVL66:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:59: {
	.loc 1 59 0
	mov	r6, r2	@ Divisor, Divisor
	ldr	r3, [r4, #12]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
	ldr	r2, [r4, #8]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
.LVL67:
	str	r0, [sp, #232]	@ Quotient, %sfp
	ldr	r0, [r1]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
.LVL68:
	ldr	r1, [r1, #4]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
.LVL69:
	add	r5, sp, #288	@ tmp562,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp562,,,,
	ldr	r0, [r6]	@ unaligned	@, MEM[(char * {ref-all})Divisor_11(D)]
	ldr	r1, [r6, #4]	@ unaligned	@, MEM[(char * {ref-all})Divisor_11(D)]
	ldr	r2, [r6, #8]	@ unaligned	@, MEM[(char * {ref-all})Divisor_11(D)]
	ldr	r3, [r6, #12]	@ unaligned	@, MEM[(char * {ref-all})Divisor_11(D)]
	add	r5, sp, #304	@ tmp564,,
	stmia	r5!, {r0, r1, r2, r3}	@ tmp564,,,,
	ldr	r0, [r4]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
	ldr	r1, [r4, #4]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
	ldr	r2, [r4, #8]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
	ldr	r3, [r4, #12]	@ unaligned	@, MEM[(char * {ref-all})Dividend_10(D)]
.LBB218:
.LBB219:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldrb	r6, [sp, #304]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
.LVL70:
	movs	r5, #0	@ tmp561,
	add	r4, sp, #320	@ tmp566,,
.LVL71:
	stmia	r4!, {r0, r1, r2, r3}	@ tmp566,,,,
.LVL72:
	str	r5, [sp, #276]	@ tmp561, MEM[(void *)&local_zero]
	str	r5, [sp, #272]	@ tmp561, MEM[(void *)&local_zero]
	str	r5, [sp, #280]	@ tmp561, MEM[(void *)&local_zero]
	str	r5, [sp, #284]	@ tmp561, MEM[(void *)&local_zero]
	cmp	r6, #0	@ tmp_Divisor.number
	bne	.L40	@
.LVL73:
	ldrb	r2, [sp, #305]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	ldrb	r3, [sp, #273]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	cmp	r2, r3	@ tmp_Divisor.number, local_zero.number
	bne	.L40	@,
.LVL74:
	ldrb	r2, [sp, #274]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #306]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL75:
	ldrb	r2, [sp, #307]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	ldrb	r3, [sp, #275]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	cmp	r2, r3	@ tmp_Divisor.number, local_zero.number
	bne	.L40	@,
.LVL76:
	ldrb	r2, [sp, #276]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #308]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL77:
	ldrb	r2, [sp, #277]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #309]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL78:
	ldrb	r2, [sp, #278]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #310]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL79:
	ldrb	r2, [sp, #279]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #311]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL80:
	ldrb	r2, [sp, #280]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #312]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL81:
	ldrb	r2, [sp, #281]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #313]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL82:
	ldrb	r2, [sp, #282]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #314]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL83:
	ldrb	r2, [sp, #283]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #315]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL84:
	ldrb	r2, [sp, #284]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #316]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL85:
	ldrb	r2, [sp, #285]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL86:
	ldrb	r2, [sp, #286]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #318]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL87:
	ldrb	r2, [sp, #287]	@ zero_extendqisi2	@ local_zero.number, local_zero.number
	ldrb	r3, [sp, #319]	@ zero_extendqisi2	@ tmp_Divisor.number, tmp_Divisor.number
	cmp	r2, r3	@ local_zero.number, tmp_Divisor.number
	bne	.L40	@,
.LVL88:
.LBE219:
.LBE218:
.LBB220:
.LBB221:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:6:    OS_SW_BUG[task_func_nr] = bug_nr;
	.loc 1 6 0
	ldr	r3, .L226	@ tmp600,
	movs	r2, #12	@ tmp601,
	strb	r2, [r3, #20]	@ tmp601, OS_SW_BUG
.LVL89:
.LBE221:
.LBE220:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:133: }
	.loc 1 133 0
	add	sp, sp, #372	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL90:
.L227:
	.align	2
.L226:
	.word	OS_SW_BUG
.LVL91:
.L40:
	.cfi_restore_state
.LBB222:
.LBB223:
.LBB224:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r3, [sp, #288]	@ zero_extendqisi2	@ _164, tmp_Dividend.number
	ldrb	ip, [sp, #320]	@ zero_extendqisi2	@ rest_number_I_lsm.81, rest.number
	str	r3, [sp, #140]	@ _164, %sfp
	cmp	r3, ip	@ _164, rest_number_I_lsm.81
	bhi	.L82	@,
	ldrb	r2, [sp, #289]	@ zero_extendqisi2	@ pretmp_5080, tmp_Dividend.number
	str	r2, [sp, #220]	@ pretmp_5080, %sfp
.LBE224:
.LBE223:
.LBE222:
.LBB235:
.LBB236:
.LBB237:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	uxth	r3, r3	@ _861, _164
	uxth	r2, r2	@ _843, pretmp_5080
	str	r3, [sp, #264]	@ _861, %sfp
	add	r3, r3, #256	@ tmp1234, _861,
	ldrb	r1, [sp, #321]	@ zero_extendqisi2	@ rest_number_I_lsm.83, rest.number
	str	r2, [sp, #256]	@ _843, %sfp
.LBE237:
.LBE236:
.LBE235:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:    uint32 nibble_shift_left_amount = 0u;
	.loc 1 75 0
	movs	r0, #0	@ nibble_shift_left_amount,
.LBB246:
.LBB242:
.LBB238:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r2, #256	@ tmp1232, _843,
	str	r3, [sp, #268]	@ tmp1234, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r1, [sp, #184]	@ rest_number_I_lsm.83, %sfp
.LBE238:
.LBE242:
.LBE246:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:75:    uint32 nibble_shift_left_amount = 0u;
	.loc 1 75 0
	str	r0, [sp, #224]	@ nibble_shift_left_amount, %sfp
.LBB247:
.LBB243:
.LBB239:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	str	r2, [sp, #260]	@ tmp1232, %sfp
	str	r1, [sp, #100]	@ rest_number_I_lsm.83, %sfp
.LVL92:
.L99:
.LBE239:
.LBE243:
.LBE247:
.LBB248:
.LBB229:
.LBB225:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	cmp	ip, r3	@ rest_number_I_lsm.81, _164
	bhi	.L83	@,
.LVL93:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldr	r3, [sp, #184]	@ rest_number_I_lsm.83, %sfp
	ldr	r2, [sp, #220]	@ pretmp_5080, %sfp
	cmp	r3, r2	@ rest_number_I_lsm.83, pretmp_5080
	bcc	.L82	@,
	ldrb	r2, [sp, #322]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r3, [sp, #290]	@ zero_extendqisi2	@ pretmp_3631, tmp_Dividend.number
	str	r2, [sp, #188]	@ rest.number, %sfp
	str	r3, [sp, #152]	@ pretmp_3631, %sfp
	str	r2, [sp, #72]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L189	@,
.LVL94:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r3	@ rest.number, pretmp_3631
	bcc	.L86	@,
	ldrb	r2, [sp, #323]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #291]	@ zero_extendqisi2	@ pretmp_3633, tmp_Dividend.number
	str	r2, [sp, #164]	@ rest.number, %sfp
	str	r1, [sp, #156]	@ pretmp_3633, %sfp
	str	r2, [sp, #80]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L190	@,
.LVL95:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3633
	bcc	.L86	@,
	ldrb	r2, [sp, #324]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #292]	@ zero_extendqisi2	@ pretmp_3635, tmp_Dividend.number
	str	r2, [sp, #148]	@ rest.number, %sfp
	str	r1, [sp, #160]	@ pretmp_3635, %sfp
	str	r2, [sp, #76]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L191	@,
.LVL96:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3635
	bcc	.L86	@,
	ldrb	r2, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #293]	@ zero_extendqisi2	@ pretmp_3637, tmp_Dividend.number
	str	r2, [sp, #144]	@ rest.number, %sfp
	str	r1, [sp, #168]	@ pretmp_3637, %sfp
	str	r2, [sp, #120]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L192	@,
.LVL97:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3637
	bcc	.L86	@,
	ldrb	r1, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	str	r1, [sp, #136]	@ rest.number, %sfp
	str	r4, [sp, #172]	@ pretmp_3639, %sfp
	str	r1, [sp, #116]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L193	@,
	mov	r2, r1	@ rest.number, rest.number
.LVL98:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldr	r1, [sp, #172]	@ pretmp_3639, %sfp
	cmp	r2, r1	@ rest.number, pretmp_3639
	bcc	.L86	@,
	ldrb	r2, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	str	r2, [sp, #128]	@ rest.number, %sfp
	str	r1, [sp, #176]	@ pretmp_3641, %sfp
	str	r2, [sp, #68]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L194	@,
.LVL99:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3641
	bcc	.L86	@,
	ldrb	r2, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	r2, [sp, #132]	@ rest.number, %sfp
	str	r1, [sp, #180]	@ pretmp_3643, %sfp
	str	r2, [sp, #60]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L195	@,
.LVL100:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3643
	bcc	.L86	@,
	ldrb	r2, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	r2, [sp, #124]	@ rest.number, %sfp
	str	r1, [sp, #192]	@ pretmp_3645, %sfp
	str	r2, [sp, #64]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L196	@,
.LVL101:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3645
	bcc	.L86	@,
	ldrb	r2, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	r2, [sp, #112]	@ rest.number, %sfp
	str	r1, [sp, #196]	@ pretmp_3647, %sfp
	str	r2, [sp, #56]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L197	@,
.LVL102:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3647
	bcc	.L86	@,
	ldrb	r1, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	r1, [sp, #108]	@ rest.number, %sfp
	str	r4, [sp, #200]	@ pretmp_3649, %sfp
	str	r1, [sp, #52]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L198	@,
	mov	r2, r1	@ rest.number, rest.number
.LVL103:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldr	r1, [sp, #200]	@ pretmp_3649, %sfp
	cmp	r2, r1	@ rest.number, pretmp_3649
	bcc	.L86	@,
	ldrb	r2, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	r2, [sp, #84]	@ rest.number, %sfp
	str	r1, [sp, #204]	@ pretmp_3651, %sfp
	str	r2, [sp, #104]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L199	@,
.LVL104:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3651
	bcc	.L86	@,
	ldrb	r2, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r2, [sp, #88]	@ rest.number, %sfp
	str	r1, [sp, #208]	@ pretmp_3652, %sfp
	str	r2, [sp, #48]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L200	@,
	mov	r2, r1	@ pretmp_3652, pretmp_3652
.LVL105:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldr	r1, [sp, #88]	@ rest.number, %sfp
	cmp	r2, r1	@ pretmp_3652, rest.number
	bhi	.L86	@,
	ldrb	r2, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r2, [sp, #92]	@ rest.number, %sfp
	str	r1, [sp, #212]	@ pretmp_3655, %sfp
	str	r2, [sp, #44]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bcc	.L201	@,
.LVL106:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	r2, r1	@ rest.number, pretmp_3655
	bcc	.L86	@,
	ldrb	r2, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r1, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r2, [sp, #96]	@ _216, %sfp
	str	r1, [sp, #216]	@ pretmp_3657, %sfp
	str	r2, [sp, #40]	@ _216, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L85	@,
.LVL107:
	cmp	r2, r1	@ _216, pretmp_3657
	bhi	.L85	@,
.LVL108:
.L86:
.LBE225:
.LBE229:
.LBB230:
.LBB231:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldr	r2, [sp, #140]	@ _164, %sfp
	cmp	ip, r2	@ rest_number_I_lsm.81, _164
	bne	.L82	@,
.LVL109:
	ldr	r2, [sp, #184]	@ rest_number_I_lsm.83, %sfp
	ldr	r1, [sp, #220]	@ pretmp_5080, %sfp
	cmp	r2, r1	@ rest_number_I_lsm.83, pretmp_5080
	bne	.L82	@,
.LVL110:
	ldr	r2, [sp, #188]	@ rest.number, %sfp
	str	r3, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	cmp	r2, r3	@ rest.number, rest_number_I_lsm.85
	str	r2, [sp, #152]	@ rest.number, %sfp
	bne	.L82	@,
.LVL111:
	ldrb	r3, [sp, #323]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #291]	@ zero_extendqisi2	@ rest_number_I_lsm.87, tmp_Dividend.number
	str	r3, [sp, #164]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.87
	str	r2, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r3, [sp, #156]	@ rest.number, %sfp
	bne	.L82	@,
.LVL112:
	ldrb	r3, [sp, #324]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #292]	@ zero_extendqisi2	@ rest_number_I_lsm.89, tmp_Dividend.number
	str	r3, [sp, #148]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.89
	str	r2, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	str	r3, [sp, #160]	@ rest.number, %sfp
	bne	.L82	@,
.LVL113:
	ldrb	r3, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #293]	@ zero_extendqisi2	@ rest_number_I_lsm.91, tmp_Dividend.number
	str	r3, [sp, #144]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.91
	str	r2, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	str	r3, [sp, #168]	@ rest.number, %sfp
	bne	.L82	@,
.LVL114:
	ldrb	r3, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #294]	@ zero_extendqisi2	@ rest_number_I_lsm.93, tmp_Dividend.number
	str	r3, [sp, #136]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.93
	str	r2, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	str	r3, [sp, #172]	@ rest.number, %sfp
	bne	.L82	@,
.LVL115:
	ldrb	r3, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #295]	@ zero_extendqisi2	@ rest_number_I_lsm.95, tmp_Dividend.number
	str	r3, [sp, #128]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.95
	str	r2, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	str	r3, [sp, #176]	@ rest.number, %sfp
	bne	.L82	@,
.LVL116:
	ldrb	r3, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #296]	@ zero_extendqisi2	@ rest_number_I_lsm.97, tmp_Dividend.number
	str	r3, [sp, #132]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.97
	str	r2, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	str	r3, [sp, #180]	@ rest.number, %sfp
	bne	.L82	@,
.LVL117:
	ldrb	r3, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #297]	@ zero_extendqisi2	@ rest_number_I_lsm.99, tmp_Dividend.number
	str	r3, [sp, #124]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.99
	str	r2, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	str	r3, [sp, #192]	@ rest.number, %sfp
	bne	.L82	@,
.LVL118:
	ldrb	r3, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #298]	@ zero_extendqisi2	@ rest_number_I_lsm.79, tmp_Dividend.number
	str	r3, [sp, #112]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.79
	str	r2, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	str	r3, [sp, #196]	@ rest.number, %sfp
	bne	.L82	@,
.LVL119:
	ldrb	r3, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #299]	@ zero_extendqisi2	@ rest_number_I_lsm.101, tmp_Dividend.number
	str	r3, [sp, #108]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.101
	str	r2, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	str	r3, [sp, #200]	@ rest.number, %sfp
	bne	.L82	@,
.LVL120:
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #300]	@ zero_extendqisi2	@ rest_number_I_lsm.103, tmp_Dividend.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.103
	str	r2, [sp, #104]	@ rest_number_I_lsm.103, %sfp
	str	r3, [sp, #204]	@ rest.number, %sfp
	bne	.L82	@,
.LVL121:
	ldrb	r3, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #301]	@ zero_extendqisi2	@ rest_number_I_lsm.105, tmp_Dividend.number
	str	r3, [sp, #88]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.105
	str	r2, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	str	r3, [sp, #208]	@ rest.number, %sfp
	bne	.L82	@,
.LVL122:
	ldrb	r3, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #302]	@ zero_extendqisi2	@ rest_number_I_lsm.107, tmp_Dividend.number
	str	r3, [sp, #92]	@ rest.number, %sfp
	cmp	r3, r2	@ rest.number, rest_number_I_lsm.107
	str	r2, [sp, #44]	@ rest_number_I_lsm.107, %sfp
	str	r3, [sp, #212]	@ rest.number, %sfp
	bne	.L82	@,
.LVL123:
	ldrb	r3, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	ldrb	r2, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	str	r3, [sp, #216]	@ pretmp_3657, %sfp
	cmp	r2, r3	@ _216, pretmp_3657
	str	r2, [sp, #96]	@ _216, %sfp
	bne	.L82	@,
	str	r2, [sp, #40]	@ _216, %sfp
.LVL124:
.L85:
	ldrb	r3, [sp, #304]	@ zero_extendqisi2	@ result$number$0, tmp_Divisor.number
	ldrb	r10, [sp, #319]	@ zero_extendqisi2	@ result$number$15, tmp_Divisor.number
	str	r3, [sp, #4]	@ result$number$0, %sfp
	mov	r2, r3	@ result$number$0, result$number$0
.L43:
.LVL125:
.LBE231:
.LBE230:
.LBE248:
.LBB249:
.LBB250:
.LBB251:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #140]	@ _164, %sfp
	cmp	r3, r2	@ _164, result$number$0
	bhi	.L44	@,
	ldrb	ip, [sp, #305]	@ zero_extendqisi2	@ pretmp_3930, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L202	@,
.LVL126:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	cmp	ip, r3	@ pretmp_3930, pretmp_5080
	bcc	.L44	@,
	ldrb	r3, [sp, #306]	@ zero_extendqisi2	@ prephitmp_4023, tmp_Divisor.number
	str	r3, [sp, #12]	@ prephitmp_4023, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L203	@,
	mov	r2, r3	@ prephitmp_4023, prephitmp_4023
.LVL127:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #152]	@ pretmp_3631, %sfp
	cmp	r3, r2	@ pretmp_3631, prephitmp_4023
	bhi	.L44	@,
	ldrb	r3, [sp, #307]	@ zero_extendqisi2	@ prephitmp_4020, tmp_Divisor.number
	str	r3, [sp]	@ prephitmp_4020, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L204	@,
	mov	r2, r3	@ prephitmp_4020, prephitmp_4020
.LVL128:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #156]	@ pretmp_3633, %sfp
	cmp	r3, r2	@ pretmp_3633, prephitmp_4020
	bhi	.L44	@,
	ldrb	r5, [sp, #308]	@ zero_extendqisi2	@ prephitmp_5049, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L205	@,
.LVL129:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #160]	@ pretmp_3635, %sfp
	cmp	r3, r5	@ pretmp_3635, prephitmp_5049
	bhi	.L44	@,
	ldrb	r3, [sp, #309]	@ zero_extendqisi2	@ prephitmp_5046, tmp_Divisor.number
	str	r3, [sp, #8]	@ prephitmp_5046, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L206	@,
	mov	r2, r3	@ prephitmp_5046, prephitmp_5046
.LVL130:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	cmp	r3, r2	@ pretmp_3637, prephitmp_5046
	bhi	.L44	@,
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L207	@,
.LVL131:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #172]	@ pretmp_3639, %sfp
	cmp	r3, r9	@ pretmp_3639, prephitmp_5042
	bhi	.L44	@,
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L208	@,
.LVL132:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #176]	@ pretmp_3641, %sfp
	cmp	r3, r8	@ pretmp_3641, prephitmp_5037
	bhi	.L44	@,
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L209	@,
.LVL133:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #180]	@ pretmp_3643, %sfp
	cmp	r3, lr	@ pretmp_3643, prephitmp_5031
	bhi	.L44	@,
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L210	@,
.LVL134:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	cmp	r3, r0	@ pretmp_3645, prephitmp_5024
	bhi	.L44	@,
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L211	@,
.LVL135:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #196]	@ pretmp_3647, %sfp
	cmp	r3, r4	@ pretmp_3647, prephitmp_5016
	bhi	.L44	@,
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L212	@,
.LVL136:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #200]	@ pretmp_3649, %sfp
	cmp	r3, r1	@ pretmp_3649, prephitmp_5007
	bhi	.L44	@,
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L213	@,
.LVL137:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r3, [sp, #204]	@ pretmp_3651, %sfp
	cmp	r3, r2	@ pretmp_3651, prephitmp_4997
	bhi	.L44	@,
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L214	@,
.LVL138:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r6, [sp, #208]	@ pretmp_3652, %sfp
	cmp	r6, r3	@ pretmp_3652, prephitmp_4986
	bhi	.L44	@,
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L49	@,
.LVL139:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r6, [sp, #212]	@ pretmp_3655, %sfp
	cmp	r6, fp	@ pretmp_3655, prephitmp_4974
	bhi	.L44	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bcc	.L49	@,
.LVL140:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r6, [sp, #216]	@ pretmp_3657, %sfp
	cmp	r6, r10	@ pretmp_3657, result$number$15
	bhi	.L44	@,
.LVL141:
.L49:
.LBE251:
.LBE250:
.LBB252:
.LBB253:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldr	r6, [sp, #140]	@ _164, %sfp
	mov	r7, r6	@ _164, _164
	ldr	r6, [sp, #4]	@ result$number$0, %sfp
	cmp	r7, r6	@ _164, result$number$0
	bne	.L169	@,
.L216:
.LVL142:
	ldr	r6, [sp, #220]	@ pretmp_5080, %sfp
	cmp	ip, r6	@ pretmp_3930, pretmp_5080
	bne	.L102	@,
.LVL143:
	ldr	r6, [sp, #152]	@ pretmp_3631, %sfp
	ldr	r7, [sp, #12]	@ prephitmp_4023, %sfp
	cmp	r6, r7	@ pretmp_3631, prephitmp_4023
	bne	.L103	@,
.LVL144:
	ldr	r6, [sp, #156]	@ pretmp_3633, %sfp
	ldr	r7, [sp]	@ prephitmp_4020, %sfp
	cmp	r6, r7	@ pretmp_3633, prephitmp_4020
	bne	.L104	@,
.LVL145:
	ldr	r6, [sp, #160]	@ pretmp_3635, %sfp
	cmp	r6, r5	@ pretmp_3635, prephitmp_5049
	bne	.L105	@,
.LVL146:
	ldr	r5, [sp, #168]	@ pretmp_3637, %sfp
	ldr	r6, [sp, #8]	@ prephitmp_5046, %sfp
	cmp	r5, r6	@ pretmp_3637, prephitmp_5046
	bne	.L106	@,
.LVL147:
	ldr	r5, [sp, #172]	@ pretmp_3639, %sfp
	cmp	r5, r9	@ pretmp_3639, prephitmp_5042
	bne	.L107	@,
.LVL148:
	ldr	r5, [sp, #176]	@ pretmp_3641, %sfp
	cmp	r5, r8	@ pretmp_3641, prephitmp_5037
	bne	.L108	@,
.LVL149:
	ldr	r5, [sp, #180]	@ pretmp_3643, %sfp
	cmp	r5, lr	@ pretmp_3643, prephitmp_5031
	bne	.L109	@,
.LVL150:
	ldr	r5, [sp, #192]	@ pretmp_3645, %sfp
	cmp	r5, r0	@ pretmp_3645, prephitmp_5024
	bne	.L110	@,
.LVL151:
	ldr	r0, [sp, #196]	@ pretmp_3647, %sfp
	cmp	r0, r4	@ pretmp_3647, prephitmp_5016
	bne	.L111	@,
.LVL152:
	ldr	r0, [sp, #200]	@ pretmp_3649, %sfp
	cmp	r0, r1	@ pretmp_3649, prephitmp_5007
	bne	.L112	@,
.LVL153:
	ldr	r1, [sp, #204]	@ pretmp_3651, %sfp
	cmp	r1, r2	@ pretmp_3651, prephitmp_4997
	bne	.L113	@,
.LVL154:
	ldr	r2, [sp, #208]	@ pretmp_3652, %sfp
	cmp	r2, r3	@ pretmp_3652, prephitmp_4986
	bne	.L114	@,
.LVL155:
	ldr	r3, [sp, #212]	@ pretmp_3655, %sfp
	cmp	r3, fp	@ pretmp_3655, prephitmp_4974
	bne	.L115	@,
.LVL156:
	ldr	r3, [sp, #216]	@ pretmp_3657, %sfp
	cmp	r3, r10	@ pretmp_3657, result$number$15
	bne	.L215	@,
.LVL157:
.L44:
.LBE253:
.LBE252:
.LBE249:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:59: {
	.loc 1 59 0
	mov	r10, #0	@ result$number$15,
	addw	r3, sp, #319	@ ivtmp.127,,
	str	r3, [sp]	@ ivtmp.127, %sfp
	strd	r10, r10, [sp, #16]	@ result$number$15, result$number$15,,
	strd	r10, r10, [sp, #8]	@ result$number$15, result$number$15,,
	mov	r7, r10	@ result$number$10, result$number$15
	add	r0, sp, #368	@ ivtmp.130,,
	ldr	r4, [sp]	@ ivtmp.127, %sfp
	str	r10, [sp, #4]	@ result$number$15, %sfp
	mov	r9, r10	@ result$number$14, result$number$15
	mov	r8, r10	@ result$number$13, result$number$15
	mov	lr, r10	@ result$number$12, result$number$15
	mov	ip, r10	@ result$number$11, result$number$15
	mov	r6, r10	@ result$number$9, result$number$15
	mov	r1, r10	@ result$number$5, result$number$15
	mov	r2, r7	@ result$number$7, result$number$7
	mov	r3, r7	@ result$number$5, result$number$5
	str	r10, [sp, #24]	@ result$number$12, %sfp
	mov	fp, r0	@ ivtmp.130, ivtmp.130
.L42:
.LVL158:
.LBB258:
.LBB259:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:340:       tmp32 = ((uint32)number->number[(uint32)pos]) << amount_bits_shift;
	.loc 1 340 0
	ldrb	r0, [r4], #-1	@ zero_extendqisi2	@ _166, MEM[base: _1074, offset: 0B]
	str	r4, [sp]	@ ivtmp.127, %sfp
.LVL159:
.LBB260:
.LBB261:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:304:       leftOperand->number[pos] = 0x00u;
	.loc 1 304 0
	movs	r5, #0	@ tmp1548,
.LBE261:
.LBE260:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:340:       tmp32 = ((uint32)number->number[(uint32)pos]) << amount_bits_shift;
	.loc 1 340 0
	lsls	r0, r0, #4	@ tmp32, _166,
.LBB263:
.LBB262:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:304:       leftOperand->number[pos] = 0x00u;
	.loc 1 304 0
	str	r5, [sp, #356]	@ tmp1550, MEM[(uint8[16] *)&tmpBigInt + 4B]
	str	r5, [sp, #360]	@ tmp1552, MEM[(uint8[16] *)&tmpBigInt + 8B]
	str	r5, [sp, #364]	@ tmp1554, MEM[(uint8[16] *)&tmpBigInt + 12B]
.LVL160:
	str	r5, [sp, #352]	@ tmp1548, MEM[(uint8[16] *)&tmpBigInt]
.LBE262:
.LBE263:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:341:       tmpBigInt.number[(uint32)pos]      = (tmp32 >> 0u) & 0xFF;
	.loc 1 341 0
	strb	r0, [fp, #-1]!	@ tmp32, MEM[base: _1068, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:342:       tmpBigInt.number[(uint32)pos+1u]   = (tmp32 >> 8u) & 0xFF;
	.loc 1 342 0
	lsrs	r0, r0, #8	@ tmp611, tmp32,
.LVL161:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:343:       tmpBigInt.number[(uint32)pos+2u]   = (tmp32 >>16u) & 0xFF;
	.loc 1 343 0
	strb	r5, [fp, #2]	@ tmp1556, MEM[base: _1068, offset: 2B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:344:       tmpBigInt.number[(uint32)pos+3u]   = (tmp32 >>24u) & 0xFF;
	.loc 1 344 0
	strb	r5, [fp, #3]	@ tmp1557, MEM[base: _1068, offset: 3B]
.LVL162:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:342:       tmpBigInt.number[(uint32)pos+1u]   = (tmp32 >> 8u) & 0xFF;
	.loc 1 342 0
	strb	r0, [fp, #1]	@ tmp611, MEM[base: _1068, offset: 1B]
.LBB264:
.LBB265:
.LBB266:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [sp, #367]	@ zero_extendqisi2	@ _1136, tmpBigInt.number
	ldrb	r4, [sp, #366]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
.LVL163:
	ldrb	r0, [sp, #365]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r10, r10, r5	@ tmp619, _1136
.LVL164:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r5, r10, #65280	@ tmp625, tmp619,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r9, r9, r4	@ tmp624, tmpBigInt.number
.LVL165:
	add	r9, r9, r5	@ tmp628, tmp625
	uxth	r9, r9	@ tmp_sum, tmp628
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r9, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r8, r8, r0	@ tmp633, tmpBigInt.number
.LVL166:
	add	r8, r8, r4	@ tmp635, carry
	ldrb	r0, [sp, #363]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	str	r0, [sp, #32]	@ tmpBigInt.number, %sfp
	uxth	r0, r8	@ tmp_sum, tmp635
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r0, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [sp, #364]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r0, [sp, #28]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r0, [sp, #24]	@ result$number$12, %sfp
	add	r5, r5, r0	@ tmp640, result$number$12
	add	r5, r5, r4	@ tmp642, carry
	ldr	r0, [sp, #32]	@ tmpBigInt.number, %sfp
	uxth	r5, r5	@ tmp_sum, tmp642
	add	r0, r0, lr	@ tmpBigInt.number, result$number$11
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r5, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r0	@ tmp649, tmp647
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r5, [sp, #24]	@ tmp_sum, %sfp
.LVL167:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [sp, #362]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r0, [sp, #361]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	uxth	lr, r4	@ tmp_sum, tmp649
.LVL168:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, lr, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	ip, ip, r5	@ tmp654, tmpBigInt.number
.LVL169:
	add	ip, ip, r4	@ tmp656, carry
	uxth	ip, ip	@ tmp_sum, tmp656
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, ip, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r1, r1, r0	@ tmp661, tmpBigInt.number
.LVL170:
	ldrb	r5, [sp, #360]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r0, [sp, #359]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	lr, [sp, #32]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r1, r1, r4	@ tmp663, carry
	uxth	r1, r1	@ tmp_sum, tmp663
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r1, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r7, r7, r5	@ tmp668, tmpBigInt.number
.LVL171:
	add	r7, r7, r4	@ tmp670, carry
	uxth	r7, r7	@ tmp_sum, tmp670
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r7, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r2, r2, r0	@ tmp675, tmpBigInt.number
.LVL172:
	ldrb	r5, [sp, #358]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r0, [sp, #357]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r2, r2, r4	@ tmp677, carry
	uxth	r2, r2	@ tmp_sum, tmp677
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r2, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r6, r6, r5	@ tmp682, tmpBigInt.number
.LVL173:
	add	r6, r6, r4	@ tmp684, carry
	uxth	r6, r6	@ tmp_sum, tmp684
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r6, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r0	@ tmp689, tmpBigInt.number
.LVL174:
	add	r3, r3, r4	@ tmp691, carry
	uxth	r3, r3	@ tmp_sum, tmp691
	ldrb	r0, [sp, #356]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r3, [sp, #36]	@ tmp_sum, %sfp
	and	r5, r3, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, [sp, #20]	@ result$number$4, %sfp
	ldrb	r4, [sp, #355]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r0, r0, r3	@ tmp696, result$number$4
	add	r5, r5, r0	@ tmp698, tmp696
	ldr	r3, [sp, #16]	@ result$number$3, %sfp
	ldrb	lr, [sp, #354]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r8, [sp, #353]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	uxth	r5, r5	@ tmp_sum, tmp698
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r0, r5, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r3	@ tmp703, result$number$3
	add	r4, r4, r0	@ tmp705, carry
	ldr	r3, [sp, #12]	@ result$number$2, %sfp
	uxth	r4, r4	@ tmp_sum, tmp705
	add	lr, lr, r3	@ tmp710, result$number$2
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r0, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, [sp, #8]	@ result$number$1, %sfp
	add	r0, r0, lr	@ tmp712, tmp710
	uxth	r0, r0	@ tmp_sum, tmp712
	add	r8, r8, r3	@ tmp717, result$number$1
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	lr, r0, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	lr, lr, r8	@ tmp719, tmp717
	ldrb	r3, [sp, #352]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	str	r3, [sp, #12]	@ tmpBigInt.number, %sfp
.LVL175:
	uxth	r3, lr	@ tmp_sum, tmp719
	str	r3, [sp, #8]	@ tmp_sum, %sfp
.LVL176:
	ldr	r3, [sp, #4]	@ result$number$0, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	r8, [sp, #28]	@ zero_extendqisi2	@ result$number$13, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	mov	lr, r3	@ result$number$0, result$number$0
	ldr	r3, [sp, #12]	@ tmpBigInt.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r0, r0	@ result$number$2, tmp_sum
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	lr, lr, r3	@ result$number$0, tmpBigInt.number
	str	lr, [sp, #4]	@ result$number$0, %sfp
.LVL177:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r5, r5	@ result$number$4, tmp_sum
	str	r0, [sp, #12]	@ result$number$2, %sfp
	ldrb	r0, [sp, #8]	@ zero_extendqisi2	@ result$number$1, %sfp
	str	r5, [sp, #20]	@ result$number$4, %sfp
.LVL178:
	str	r0, [sp, #8]	@ result$number$1, %sfp
	uxtb	r5, r4	@ result$number$3, tmp_sum
	ldrb	r0, [sp, #4]	@ zero_extendqisi2	@ result$number$0, %sfp
.LBE266:
.LBE265:
.LBE264:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	ldr	r4, [sp]	@ ivtmp.127, %sfp
.LBB273:
.LBB270:
.LBB267:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	str	r0, [sp, #4]	@ result$number$0, %sfp
.LBE267:
.LBE270:
.LBE273:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	addw	r0, sp, #303	@ tmp1601,,
.LBB274:
.LBB271:
.LBB268:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	lr, [sp, #24]	@ zero_extendqisi2	@ result$number$12, %sfp
	str	lr, [sp, #24]	@ result$number$12, %sfp
.LBE268:
.LBE271:
.LBE274:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	cmp	r0, r4	@ tmp1601, ivtmp.127
.LBB275:
.LBB272:
.LBB269:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r10, r10	@ result$number$15, tmp619
.LVL179:
	uxtb	r9, r9	@ result$number$14, tmp_sum
.LVL180:
	ldrb	lr, [sp, #32]	@ zero_extendqisi2	@ result$number$11, %sfp
.LVL181:
	ldrb	r3, [sp, #36]	@ zero_extendqisi2	@ result$number$5, %sfp
	str	r5, [sp, #16]	@ result$number$3, %sfp
.LVL182:
	uxtb	ip, ip	@ result$number$10, tmp_sum
.LVL183:
	uxtb	r1, r1	@ result$number$9, tmp_sum
.LVL184:
	uxtb	r7, r7	@ result$number$8, tmp_sum
.LVL185:
	uxtb	r2, r2	@ result$number$7, tmp_sum
.LVL186:
	uxtb	r6, r6	@ result$number$6, tmp_sum
.LVL187:
.LBE269:
.LBE272:
.LBE275:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	bne	.L42	@,
.LBB276:
.LBB277:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldr	r0, [sp, #4]	@ result$number$0, %sfp
	str	r3, [sp]	@ result$number$5, %sfp
.LVL188:
	mov	r4, r2	@ result$number$7, result$number$7
.LVL189:
	mov	fp, r6	@ result$number$6, result$number$6
	movs	r2, #0	@ result$number$0,
.LVL190:
	mov	r6, r1	@ result$number$9, result$number$9
.LVL191:
	ldr	r1, [sp, #8]	@ result$number$1, %sfp
.LVL192:
	mov	r3, r2	@ result$number$4, result$number$0
.LVL193:
	bfi	r2, r0, #0, #8	@ result$number$0, result$number$0,,
.LVL194:
	ldr	r0, [sp, #20]	@ result$number$4, %sfp
	bfi	r2, r1, #8, #8	@ result$number$0, result$number$1,,
	ldr	r1, [sp]	@ result$number$5, %sfp
	bfi	r3, r0, #0, #8	@ result$number$4, result$number$4,,
.LVL195:
	bfi	r3, r1, #8, #8	@ result$number$4, result$number$5,,
	ldr	r1, [sp, #12]	@ result$number$2, %sfp
	mov	r5, r7	@ result$number$8, result$number$8
	movs	r0, #0	@ result$number$8,
	mov	r7, ip	@ result$number$10, result$number$10
.LVL196:
	mov	ip, lr	@ result$number$11, result$number$11
.LVL197:
	ldr	lr, [sp, #24]	@ result$number$12, %sfp
.LVL198:
	bfi	r0, r5, #0, #8	@ result$number$8, result$number$8,,
.LVL199:
	bfi	r2, r1, #16, #8	@ result$number$0, result$number$2,,
	movs	r5, #0	@ result$number$12,
	ldr	r1, [sp, #16]	@ result$number$3, %sfp
	bfi	r5, lr, #0, #8	@ result$number$12, result$number$12,,
.LVL200:
	bfi	r2, r1, #24, #8	@ result$number$0, result$number$3,,
	bfi	r0, r6, #8, #8	@ result$number$8, result$number$9,,
.LBE277:
.LBE276:
.LBE259:
.LBE258:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:110:          nibble_shift_left_amount++;
	.loc 1 110 0
	ldr	r1, [sp, #224]	@ nibble_shift_left_amount, %sfp
.LBB284:
.LBB282:
.LBB280:
.LBB278:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	str	r2, [sp, #304]	@ result$number$0, MEM[(uint8[16] *)&tmp_Divisor]
	bfi	r5, r8, #8, #8	@ result$number$12, result$number$13,,
	bfi	r3, fp, #16, #8	@ result$number$4, result$number$6,,
	bfi	r0, r7, #16, #8	@ result$number$8, result$number$10,,
	bfi	r5, r9, #16, #8	@ result$number$12, result$number$14,,
	bfi	r3, r4, #24, #8	@ result$number$4, result$number$7,,
	bfi	r0, ip, #24, #8	@ result$number$8, result$number$11,,
	bfi	r5, r10, #24, #8	@ result$number$12, result$number$15,,
.LBE278:
.LBE280:
.LBE282:
.LBE284:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:110:          nibble_shift_left_amount++;
	.loc 1 110 0
	adds	r1, r1, #1	@ nibble_shift_left_amount, nibble_shift_left_amount,
	str	r1, [sp, #224]	@ nibble_shift_left_amount, %sfp
.LVL201:
.LBB285:
.LBB283:
.LBB281:
.LBB279:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	str	r3, [sp, #308]	@ result$number$4, MEM[(uint8[16] *)&tmp_Divisor + 4B]
	str	r0, [sp, #312]	@ result$number$8, MEM[(uint8[16] *)&tmp_Divisor + 8B]
	str	r5, [sp, #316]	@ result$number$12, MEM[(uint8[16] *)&tmp_Divisor + 12B]
.LVL202:
	ldr	r2, [sp, #4]	@ result$number$0, %sfp
	b	.L43	@
.LVL203:
.L205:
	ldrb	r6, [sp, #309]	@ zero_extendqisi2	@ prephitmp_5046, tmp_Divisor.number
	str	r6, [sp, #8]	@ prephitmp_5046, %sfp
.LVL204:
.LBE279:
.LBE281:
.LBE283:
.LBE285:
.LBB286:
.LBB256:
.LBB254:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldr	r6, [sp, #140]	@ _164, %sfp
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
	mov	r7, r6	@ _164, _164
	ldr	r6, [sp, #4]	@ result$number$0, %sfp
	cmp	r7, r6	@ _164, result$number$0
	beq	.L216	@,
.LVL205:
.L169:
	ldr	r6, [sp]	@ prephitmp_4020, %sfp
	ldr	r7, [sp, #12]	@ prephitmp_4023, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL206:
.L204:
	ldrb	r5, [sp, #309]	@ zero_extendqisi2	@ prephitmp_5046, tmp_Divisor.number
	str	r5, [sp, #8]	@ prephitmp_5046, %sfp
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
	ldrb	r5, [sp, #308]	@ zero_extendqisi2	@ prephitmp_5049, tmp_Divisor.number
	b	.L49	@
.LVL207:
.L203:
	mov	r7, r3	@ prephitmp_4023, prephitmp_4023
	ldrb	r3, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	str	r3, [sp, #28]	@ prephitmp_5007, %sfp
	ldrb	r3, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	str	r3, [sp, #12]	@ prephitmp_5016, %sfp
	ldrb	r3, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	str	r3, [sp, #16]	@ prephitmp_5024, %sfp
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r3, [sp, #309]	@ zero_extendqisi2	@ prephitmp_5046, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
	ldrb	r5, [sp, #308]	@ zero_extendqisi2	@ prephitmp_5049, tmp_Divisor.number
	ldrb	r6, [sp, #307]	@ zero_extendqisi2	@ prephitmp_4020, tmp_Divisor.number
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r3, [sp, #8]	@ prephitmp_5046, %sfp
.LVL208:
.L174:
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	str	r3, [sp, #20]	@ prephitmp_4986, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	ldrb	r3, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	str	r3, [sp, #24]	@ prephitmp_4997, %sfp
.L46:
.LBE254:
.LBE256:
.LBE286:
.LBB287:
.LBB244:
.LBB240:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r2, [sp, #216]	@ _591, %sfp
	ldrh	r0, [sp, #204]	@ _645, %sfp
	str	r0, [sp, #36]	@ _645, %sfp
	add	r0, r2, #256	@ tmp732, _591,
	str	r0, [sp, #212]	@ tmp732, %sfp
	ldrh	r0, [sp, #200]	@ _663, %sfp
	str	r0, [sp, #208]	@ _663, %sfp
	uxth	r1, ip	@ _627, pretmp_3652
	ldr	r0, [sp, #212]	@ tmp732, %sfp
	str	r1, [sp, #32]	@ _627, %sfp
	uxth	r1, r10	@ _592, result$number$15
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r2, r2, r1	@ tmp736, _591, _592
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	subs	r0, r0, r1	@ tmp734, tmp732, _592
	ldrh	r1, [sp, #196]	@ _681, %sfp
	str	r1, [sp, #212]	@ _681, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r1, [sp, #216]	@ pretmp_3657, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	uxth	r3, r4	@ _609, pretmp_3655
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	cmp	r1, r10	@ pretmp_3657, result$number$15
	it	cs	@
	movcs	r0, r2	@, tmp734, tmp736
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	uxth	r1, fp	@ _610, prephitmp_4974
	add	r2, r3, #256	@ tmp738, _609,
	subs	r2, r2, r1	@ tmp740, tmp738, _610
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r3, r1	@ tmp742, _609, _610
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r0, [sp, #216]	@ tmp734, %sfp
	mov	r0, r2	@ tmp740, tmp740
	cmp	r4, fp	@ pretmp_3655, prephitmp_4974
	it	cs	@
	movcs	r0, r3	@, tmp740, tmp742
	str	r0, [sp, #228]	@ tmp740, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r4, [sp, #20]	@ prephitmp_4986, %sfp
	ldr	r0, [sp, #32]	@ _627, %sfp
	ldrh	r1, [sp, #192]	@ _699, %sfp
	uxth	r3, r4	@ _628, prephitmp_4986
	add	r2, r0, #256	@ tmp744, _627,
	subs	r2, r2, r3	@ tmp746, tmp744, _628
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r0, r3	@ tmp748, _627, _628
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r0, [sp, #180]	@ _717, %sfp
	str	r0, [sp, #32]	@ _717, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r0, r2	@ tmp746, tmp746
	cmp	ip, r4	@ pretmp_3652, prephitmp_4986
	it	cs	@
	movcs	r0, r3	@, tmp746, tmp748
	str	r0, [sp, #236]	@ tmp746, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r4, [sp, #24]	@ prephitmp_4997, %sfp
	ldr	r0, [sp, #36]	@ _645, %sfp
	ldrh	ip, [sp, #176]	@ _735, %sfp
	str	ip, [sp, #36]	@ _735, %sfp
	uxth	r3, r4	@ _646, prephitmp_4997
	add	r2, r0, #256	@ tmp750, _645,
	subs	r2, r2, r3	@ tmp752, tmp750, _646
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	ip, r2	@ tmp752, tmp752
	ldr	r2, [sp, #204]	@ pretmp_3651, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r0, r3	@ tmp754, _645, _646
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	cmp	r2, r4	@ pretmp_3651, prephitmp_4997
	it	cs	@
	movcs	ip, r3	@, tmp752, tmp754
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r0, [sp, #208]	@ _663, %sfp
	ldr	r4, [sp, #28]	@ prephitmp_5007, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	ip, [sp, #240]	@ tmp752, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	uxth	r3, r4	@ _664, prephitmp_5007
	add	r2, r0, #256	@ tmp756, _663,
	subs	r2, r2, r3	@ tmp758, tmp756, _664
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r0, r3	@ tmp760, _663, _664
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r0, [sp, #172]	@ _753, %sfp
	str	r0, [sp, #204]	@ _753, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r0, r2	@ tmp758, tmp758
	ldr	r2, [sp, #200]	@ pretmp_3649, %sfp
	cmp	r2, r4	@ pretmp_3649, prephitmp_5007
	it	cs	@
	movcs	r0, r3	@, tmp758, tmp760
	str	r0, [sp, #200]	@ tmp758, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r0, [sp, #212]	@ _681, %sfp
	ldrh	r3, [sp, #12]	@ _682, %sfp
	ldrh	r4, [sp, #168]	@ _771, %sfp
	add	r2, r0, #256	@ tmp762, _681,
	subs	r2, r2, r3	@ tmp764, tmp762, _682
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r0, r3	@ tmp766, _681, _682
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	mov	r0, r4	@ _771, _771
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r2	@ tmp764, tmp764
	ldr	r2, [sp, #196]	@ pretmp_3647, %sfp
	mov	ip, r2	@ pretmp_3647, pretmp_3647
	ldr	r2, [sp, #12]	@ prephitmp_5016, %sfp
	cmp	ip, r2	@ pretmp_3647, prephitmp_5016
	it	cs	@
	movcs	r4, r3	@, tmp764, tmp766
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r3, [sp, #16]	@ _700, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #208]	@ tmp764, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r1, #256	@ tmp768, _699,
	subs	r2, r2, r3	@ tmp770, tmp768, _700
	ldrh	r4, [sp, #160]	@ _789, %sfp
	str	r4, [sp, #196]	@ _789, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r2	@ tmp770, tmp770
	ldr	r2, [sp, #192]	@ pretmp_3645, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r1, r3	@ tmp772, _699, _700
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	ip, r2	@ pretmp_3645, pretmp_3645
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r1, [sp, #32]	@ _717, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r2, [sp, #16]	@ prephitmp_5024, %sfp
	cmp	ip, r2	@ pretmp_3645, prephitmp_5024
	it	cs	@
	movcs	r4, r3	@, tmp770, tmp772
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r1, #256	@ tmp774, _717,
	uxth	r3, lr	@ _718, prephitmp_5031
	subs	r2, r2, r3	@ tmp776, tmp774, _718
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #192]	@ tmp770, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r4, [sp, #156]	@ _807, %sfp
	str	r4, [sp, #32]	@ _807, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r1, r3	@ tmp778, _717, _718
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r2	@ tmp776, tmp776
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r1, [sp, #36]	@ _735, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r2, [sp, #180]	@ pretmp_3643, %sfp
	cmp	r2, lr	@ pretmp_3643, prephitmp_5031
	it	cs	@
	movcs	r4, r3	@, tmp776, tmp778
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r1, #256	@ tmp780, _735,
	uxth	r3, r8	@ _736, prephitmp_5037
	subs	r2, r2, r3	@ tmp782, tmp780, _736
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #180]	@ tmp776, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r4, [sp, #152]	@ _825, %sfp
	str	r4, [sp, #36]	@ _825, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r1, r3	@ tmp784, _735, _736
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r2	@ tmp782, tmp782
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r1, [sp, #204]	@ _753, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r2, [sp, #176]	@ pretmp_3641, %sfp
	cmp	r2, r8	@ pretmp_3641, prephitmp_5037
	it	cs	@
	movcs	r4, r3	@, tmp782, tmp784
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r1, #256	@ tmp786, _753,
	uxth	r3, r9	@ _754, prephitmp_5042
	subs	r2, r2, r3	@ tmp788, tmp786, _754
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #212]	@ tmp782, %sfp
	mov	r4, r2	@ tmp788, tmp788
	ldr	r2, [sp, #172]	@ pretmp_3639, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r1, r3	@ tmp790, _753, _754
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	cmp	r2, r9	@ pretmp_3639, prephitmp_5042
	it	cs	@
	movcs	r4, r3	@, tmp788, tmp790
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r3, [sp, #8]	@ _772, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #204]	@ tmp788, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r1, r0, #256	@ tmp792, _771,
	subs	r1, r1, r3	@ tmp794, tmp792, _772
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r1	@ tmp794, tmp794
	ldr	r1, [sp, #168]	@ pretmp_3637, %sfp
	mov	ip, r1	@ pretmp_3637, pretmp_3637
	ldr	r1, [sp, #8]	@ prephitmp_5046, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r3, r0, r3	@ tmp796, _771, _772
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	cmp	ip, r1	@ pretmp_3637, prephitmp_5046
	it	cs	@
	movcs	r4, r3	@, tmp794, tmp796
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r1, [sp, #32]	@ _807, %sfp
	ldr	r0, [sp, #196]	@ _789, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #196]	@ tmp794, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r1, r1, #256	@ tmp804, _807,
	uxth	r4, r6	@ _808, prephitmp_4020
	sub	ip, r1, r4	@ tmp806, tmp804, _808
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	ldr	r1, [sp, #32]	@ _807, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r2, r0, #256	@ tmp798, _789,
	uxth	r3, r5	@ _790, prephitmp_5049
	subs	r2, r2, r3	@ tmp800, tmp798, _790
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r1, r1, r4	@ tmp808, _807, _808
	subs	r3, r0, r3	@ tmp802, _789, _790
	str	r3, [sp, #168]	@ tmp802, %sfp
	str	r1, [sp, #172]	@ tmp808, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r0, [sp, #36]	@ _825, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r1, [sp, #160]	@ pretmp_3635, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	add	r4, r0, #256	@ tmp810, _825,
	mov	r3, r4	@ tmp810, tmp810
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	mov	r4, r2	@ tmp800, tmp800
	ldr	r2, [sp, #168]	@ tmp802, %sfp
	cmp	r1, r5	@ pretmp_3635, prephitmp_5049
	it	cs	@
	movcs	r4, r2	@, tmp800, tmp802
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	uxth	r1, r7	@ _826, prephitmp_4023
	subs	r3, r3, r1	@ tmp812, tmp810, _826
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	subs	r1, r0, r1	@ tmp814, _825, _826
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r0, [sp, #172]	@ tmp808, %sfp
	str	r4, [sp, #32]	@ tmp800, %sfp
	mov	r4, r0	@ tmp808, tmp808
	ldr	r0, [sp, #156]	@ pretmp_3633, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldrh	r2, [sp]	@ _844, %sfp
	str	r3, [sp, #36]	@ tmp812, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	cmp	r0, r6	@ pretmp_3633, prephitmp_4020
	it	cc	@
	movcc	r4, ip	@, tmp808, tmp806
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r0, [sp, #260]	@ tmp1232, %sfp
	ldrh	r3, [sp, #4]	@ _862, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	str	r4, [sp, #244]	@ tmp808, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	subs	r0, r0, r2	@ tmp818, tmp1232, _844
	str	r0, [sp, #156]	@ tmp818, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	ldr	r0, [sp, #256]	@ _843, %sfp
	subs	r2, r0, r2	@ tmp820, _843, _844
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	ldr	r0, [sp, #268]	@ tmp1234, %sfp
	sub	ip, r0, r3	@ tmp824, tmp1234, _862
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	ldr	r0, [sp, #264]	@ _861, %sfp
	subs	r3, r0, r3	@ tmp826, _861, _862
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r0, [sp, #36]	@ tmp812, %sfp
	mov	r4, r0	@ tmp812, tmp812
	ldr	r0, [sp, #152]	@ pretmp_3631, %sfp
	cmp	r0, r7	@ pretmp_3631, prephitmp_4023
	it	cs	@
	movcs	r4, r1	@, tmp812, tmp814
	ldr	r1, [sp, #156]	@ tmp818, %sfp
	ldr	r0, [sp]	@ pretmp_3930, %sfp
	str	r4, [sp, #248]	@ tmp812, %sfp
	mov	r4, r1	@ tmp818, tmp818
	ldr	r1, [sp, #220]	@ pretmp_5080, %sfp
	cmp	r0, r1	@ pretmp_3930, pretmp_5080
	it	hi	@
	movhi	r2, r4	@, tmp819, tmp818
	ldr	r1, [sp, #140]	@ _164, %sfp
	ldr	r0, [sp, #228]	@ tmp741, %sfp
	mov	r4, r1	@ _164, _164
	ldr	r1, [sp, #4]	@ result$number$0, %sfp
	cmp	r4, r1	@ _164, result$number$0
	it	cs	@
	movcs	ip, r3	@, tmp824, tmp826
	and	r4, r0, #255	@ _617, tmp741,
	ldr	r0, [sp, #236]	@ tmp747, %sfp
	str	r4, [sp, #36]	@ _617, %sfp
	and	r4, r0, #255	@ _635, tmp747,
	ldr	r0, [sp, #240]	@ tmp753, %sfp
	str	r4, [sp, #152]	@ _635, %sfp
	and	r4, r0, #255	@ _653, tmp753,
	str	ip, [sp, #252]	@ tmp824, %sfp
	ldr	r1, [sp, #216]	@ tmp735, %sfp
	str	r4, [sp, #156]	@ _653, %sfp
	ldrb	ip, [sp, #320]	@ zero_extendqisi2	@ rest_number_I_lsm.81, rest.number
	ldr	r0, [sp, #200]	@ tmp759, %sfp
	str	r10, [sp, #228]	@ result$number$15, %sfp
	and	r4, r0, #255	@ _671, tmp759,
	ldr	r0, [sp, #208]	@ tmp765, %sfp
	str	r4, [sp, #160]	@ _671, %sfp
	and	r4, r0, #255	@ _689, tmp765,
	ldr	r0, [sp, #192]	@ tmp771, %sfp
	str	r4, [sp, #168]	@ _689, %sfp
	and	r4, r0, #255	@ _707, tmp771,
	ldr	r0, [sp, #180]	@ tmp777, %sfp
	str	r4, [sp, #172]	@ _707, %sfp
	and	r4, r0, #255	@ _725, tmp777,
	ldr	r0, [sp, #212]	@ tmp783, %sfp
	str	r4, [sp, #176]	@ _725, %sfp
	and	r4, r0, #255	@ _743, tmp783,
	ldr	r0, [sp, #204]	@ tmp789, %sfp
	str	r4, [sp, #180]	@ _743, %sfp
	and	r4, r0, #255	@ _761, tmp789,
	ldr	r0, [sp, #196]	@ tmp795, %sfp
	str	r4, [sp, #192]	@ _761, %sfp
	and	r4, r0, #255	@ _779, tmp795,
	ldr	r0, [sp, #32]	@ tmp801, %sfp
	str	r4, [sp, #196]	@ _779, %sfp
	and	r4, r0, #255	@ _797, tmp801,
	ldr	r0, [sp, #244]	@ tmp807, %sfp
	str	r4, [sp, #200]	@ _797, %sfp
	and	r4, r0, #255	@ _815, tmp807,
	ldr	r0, [sp, #248]	@ tmp813, %sfp
	ldr	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r4, [sp, #204]	@ _815, %sfp
	and	r0, r0, #255	@ _833, tmp813,
	str	r0, [sp, #208]	@ _833, %sfp
	and	r0, r2, #255	@ _851, tmp819,
	ldr	r2, [sp, #252]	@ tmp825, %sfp
	str	r0, [sp, #212]	@ _851, %sfp
	movs	r3, #0	@ rest_number_I_lsm.80,
	and	r1, r1, #255	@ _599, tmp735,
	and	r2, r2, #255	@ _869, tmp825,
	str	r2, [sp, #216]	@ _869, %sfp
	str	fp, [sp, #100]	@ prephitmp_4974, %sfp
	mov	r2, r3	@ local_cnt, rest_number_I_lsm.80
	mov	fp, r1	@ _599, _599
	mov	r0, r3	@ rest_number_I_lsm.80, rest_number_I_lsm.80
	ldr	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	lr, [sp, #76]	@ prephitmp_5031, %sfp
	str	r5, [sp, #32]	@ prephitmp_5049, %sfp
	b	.L81	@
.LVL209:
.L61:
.LBE240:
.LBE244:
.LBE287:
.LBB288:
.LBB289:
.LBB290:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp]	@ pretmp_3930, %sfp
	cmp	r10, r4	@ rest_number_I_lsm.83, pretmp_3930
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L188	@,
.LVL210:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	cmp	r4, r7	@ rest_number_I_lsm.85, prephitmp_4023
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL211:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	cmp	r3, r6	@ rest_number_I_lsm.87, prephitmp_4020
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL212:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #32]	@ prephitmp_5049, %sfp
	cmp	r1, r4	@ rest_number_I_lsm.89, prephitmp_5049
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL213:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	mov	lr, r4	@ rest_number_I_lsm.91, rest_number_I_lsm.91
	ldr	r4, [sp, #8]	@ prephitmp_5046, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.91, prephitmp_5046
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL214:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	cmp	r4, r9	@ rest_number_I_lsm.93, prephitmp_5042
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL215:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	cmp	r4, r8	@ rest_number_I_lsm.95, prephitmp_5037
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL216:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	ldr	r5, [sp, #76]	@ prephitmp_5031, %sfp
	cmp	r4, r5	@ rest_number_I_lsm.97, prephitmp_5031
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL217:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	mov	lr, r4	@ rest_number_I_lsm.99, rest_number_I_lsm.99
	ldr	r4, [sp, #16]	@ prephitmp_5024, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.99, prephitmp_5024
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL218:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	mov	lr, r4	@ rest_number_I_lsm.79, rest_number_I_lsm.79
	ldr	r4, [sp, #12]	@ prephitmp_5016, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.79, prephitmp_5016
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL219:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	mov	lr, r4	@ rest_number_I_lsm.101, rest_number_I_lsm.101
	ldr	r4, [sp, #28]	@ prephitmp_5007, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.101, prephitmp_5007
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL220:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #104]	@ rest_number_I_lsm.103, %sfp
	mov	lr, r4	@ rest_number_I_lsm.103, rest_number_I_lsm.103
	ldr	r4, [sp, #24]	@ prephitmp_4997, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.103, prephitmp_4997
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL221:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	mov	lr, r4	@ rest_number_I_lsm.105, rest_number_I_lsm.105
	ldr	r4, [sp, #20]	@ prephitmp_4986, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.105, prephitmp_4986
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL222:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #44]	@ rest_number_I_lsm.107, %sfp
	mov	lr, r4	@ rest_number_I_lsm.107, rest_number_I_lsm.107
	ldr	r4, [sp, #100]	@ prephitmp_4974, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.107, prephitmp_4974
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L64	@,
.LVL223:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #40]	@ rest_number_I_lsm.109, %sfp
	mov	lr, r4	@ rest_number_I_lsm.109, rest_number_I_lsm.109
	ldr	r4, [sp, #228]	@ result$number$15, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.109, result$number$15
	bcc	.L60	@,
.LVL224:
.L64:
.LBE290:
.LBE289:
.LBB292:
.LBB293:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldr	r4, [sp, #4]	@ result$number$0, %sfp
	cmp	ip, r4	@ rest_number_I_lsm.81, result$number$0
	bne	.L188	@,
.LVL225:
	ldr	r4, [sp]	@ pretmp_3930, %sfp
	cmp	r10, r4	@ rest_number_I_lsm.83, pretmp_3930
	bne	.L188	@,
.LVL226:
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	cmp	r4, r7	@ rest_number_I_lsm.85, prephitmp_4023
	bne	.L217	@,
.LVL227:
	cmp	r3, r6	@ rest_number_I_lsm.87, prephitmp_4020
	bne	.L80	@,
.LVL228:
	ldr	r4, [sp, #32]	@ prephitmp_5049, %sfp
	cmp	r1, r4	@ rest_number_I_lsm.89, prephitmp_5049
	bne	.L80	@,
.LVL229:
	ldr	r4, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	mov	lr, r4	@ rest_number_I_lsm.91, rest_number_I_lsm.91
	ldr	r4, [sp, #8]	@ prephitmp_5046, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.91, prephitmp_5046
	bne	.L218	@,
.LVL230:
	ldr	r4, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	cmp	r4, r9	@ rest_number_I_lsm.93, prephitmp_5042
	bne	.L80	@,
.LVL231:
	ldr	r4, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	cmp	r4, r8	@ rest_number_I_lsm.95, prephitmp_5037
	bne	.L80	@,
.LVL232:
	ldr	r4, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	ldr	r5, [sp, #76]	@ prephitmp_5031, %sfp
	cmp	r4, r5	@ rest_number_I_lsm.97, prephitmp_5031
	bne	.L80	@,
.LVL233:
	ldr	r4, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	mov	lr, r4	@ rest_number_I_lsm.99, rest_number_I_lsm.99
	ldr	r4, [sp, #16]	@ prephitmp_5024, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.99, prephitmp_5024
	bne	.L219	@,
.LVL234:
	ldr	r4, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	mov	lr, r4	@ rest_number_I_lsm.79, rest_number_I_lsm.79
	ldr	r4, [sp, #12]	@ prephitmp_5016, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.79, prephitmp_5016
	bne	.L220	@,
.LVL235:
	ldr	r4, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	mov	lr, r4	@ rest_number_I_lsm.101, rest_number_I_lsm.101
	ldr	r4, [sp, #28]	@ prephitmp_5007, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.101, prephitmp_5007
	bne	.L221	@,
.LVL236:
	ldr	r4, [sp, #104]	@ rest_number_I_lsm.103, %sfp
	mov	lr, r4	@ rest_number_I_lsm.103, rest_number_I_lsm.103
	ldr	r4, [sp, #24]	@ prephitmp_4997, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.103, prephitmp_4997
	bne	.L222	@,
.LVL237:
	ldr	r4, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	mov	lr, r4	@ rest_number_I_lsm.105, rest_number_I_lsm.105
	ldr	r4, [sp, #20]	@ prephitmp_4986, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.105, prephitmp_4986
	bne	.L223	@,
.LVL238:
	ldr	r4, [sp, #44]	@ rest_number_I_lsm.107, %sfp
	mov	lr, r4	@ rest_number_I_lsm.107, rest_number_I_lsm.107
	ldr	r4, [sp, #100]	@ prephitmp_4974, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.107, prephitmp_4974
	bne	.L224	@,
.LVL239:
	ldr	r4, [sp, #40]	@ rest_number_I_lsm.109, %sfp
	mov	lr, r4	@ rest_number_I_lsm.109, rest_number_I_lsm.109
	ldr	r4, [sp, #228]	@ result$number$15, %sfp
	cmp	lr, r4	@ rest_number_I_lsm.109, result$number$15
	bne	.L80	@,
.LVL240:
.L60:
.LBE293:
.LBE292:
.LBE288:
.LBB295:
.LBB245:
.LBB241:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	ldr	r4, [sp, #196]	@ _779, %sfp
	str	r4, [sp, #120]	@ _779, %sfp
	ldr	r4, [sp, #192]	@ _761, %sfp
	str	r4, [sp, #116]	@ _761, %sfp
	ldr	r4, [sp, #180]	@ _743, %sfp
	str	r4, [sp, #68]	@ _743, %sfp
	ldr	r4, [sp, #176]	@ _725, %sfp
	str	r4, [sp, #60]	@ _725, %sfp
	ldr	r4, [sp, #172]	@ _707, %sfp
	str	r4, [sp, #64]	@ _707, %sfp
	ldr	r4, [sp, #160]	@ _671, %sfp
	str	r4, [sp, #52]	@ _671, %sfp
	ldr	r4, [sp, #156]	@ _653, %sfp
	str	r4, [sp, #104]	@ _653, %sfp
	ldr	r4, [sp, #152]	@ _635, %sfp
	ldr	r3, [sp, #168]	@ _689, %sfp
	str	r4, [sp, #48]	@ _635, %sfp
	ldr	r4, [sp, #36]	@ _617, %sfp
	str	r3, [sp, #56]	@ _689, %sfp
	ldr	r3, [sp, #208]	@ _833, %sfp
	str	r3, [sp, #72]	@ _833, %sfp
	ldrd	r10, ip, [sp, #212]	@ rest_number_I_lsm.83, rest_number_I_lsm.81,,
	ldrd	r1, r3, [sp, #200]	@ rest_number_I_lsm.89, rest_number_I_lsm.87,,
	strd	fp, r4, [sp, #40]	@ _599, _617,,
.LBE241:
.LBE245:
.LBE295:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:119:          local_cnt++;      
	.loc 1 119 0
	adds	r2, r2, #1	@ local_cnt, local_cnt,
.LVL241:
	movs	r0, #1	@ rest_number_I_lsm.80,
.LVL242:
.L81:
.LBB296:
.LBB294:
.LBB291:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldr	r4, [sp, #4]	@ result$number$0, %sfp
	cmp	ip, r4	@ rest_number_I_lsm.81, result$number$0
	bcc	.L60	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bls	.L61	@,
.LVL243:
.L80:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	bne	.L225	@
.L62:
.LVL244:
.LBE291:
.LBE294:
.LBE296:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:123:       u32_teilergebnis = local_cnt * one_shifted_nibble;
	.loc 1 123 0
	ldr	r3, [sp, #224]	@ nibble_shift_left_amount, %sfp
.LBB297:
.LBB298:
.LBB299:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r1, [sp, #92]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	ip, [sp, #336]	@ rest_number_I_lsm.81, teilergebnis.number
.LBE299:
.LBE298:
.LBE297:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:123:       u32_teilergebnis = local_cnt * one_shifted_nibble;
	.loc 1 123 0
	lsl	r3, r2, r3	@ u32_teilergebnis, local_cnt, nibble_shift_left_amount
.LVL245:
.LBB306:
.LBB303:
.LBB300:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r2, [sp, #96]	@ _216, %sfp
.LVL246:
	uxtab	r0, r2, r3	@ tmp1103, _216, u32_teilergebnis
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r2, r3, #1, #8	@ tmp1107, u32_teilergebnis,,
	add	r2, r2, r1	@ tmp1110, rest.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r1, r0, #255	@ tmp1115, tmp1103,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r2, r2, r1	@ tmp1118, tmp1115
	uxth	r4, r2	@ tmp_sum, tmp1118
	ldr	r2, [sp, #88]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r0, [sp, #351]	@ tmp1103, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r1, r3, #2, #8	@ tmp1123, u32_teilergebnis,,
	add	r1, r1, r2	@ tmp1126, rest.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r2, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r2, r2, r1	@ tmp1128, tmp1126
	uxth	r1, r2	@ tmp_sum, tmp1128
	ldr	r2, [sp, #84]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r1, [sp]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ubfx	r3, r3, #3, #8	@ tmp1133, u32_teilergebnis,,
.LVL247:
	add	r3, r3, r2	@ tmp1136, rest.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r2, r1, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r2	@ tmp1138, carry
	uxth	r2, r3	@ tmp_sum, tmp1138
	ldr	r1, [sp, #108]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r2, [sp, #348]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r2, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1143, rest.number
	uxth	r5, r3	@ tmp_sum, tmp1143
	ldr	r1, [sp, #112]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r4, [sp, #350]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r5, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1148, rest.number
	uxth	r6, r3	@ tmp_sum, tmp1148
	ldr	r1, [sp, #124]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r5, [sp, #347]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r6, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1153, rest.number
	uxth	r7, r3	@ tmp_sum, tmp1153
	ldr	r1, [sp, #132]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r6, [sp, #346]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r7, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1158, rest.number
	uxth	lr, r3	@ tmp_sum, tmp1158
	ldr	r1, [sp, #128]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r7, [sp, #345]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, lr, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1163, rest.number
	uxth	r8, r3	@ tmp_sum, tmp1163
	ldr	r1, [sp, #136]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	lr, [sp, #344]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r8, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1168, rest.number
	uxth	r9, r3	@ tmp_sum, tmp1168
	ldr	r1, [sp, #144]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r8, [sp, #343]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r9, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1173, rest.number
	uxth	r10, r3	@ tmp_sum, tmp1173
	ldr	r1, [sp, #148]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r9, [sp, #342]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r10, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1178, rest.number
	uxth	fp, r3	@ tmp_sum, tmp1178
	ldr	r1, [sp, #164]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r10, [sp, #341]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, fp, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1183, rest.number
	uxth	r3, r3	@ tmp_sum, tmp1183
	ldr	r1, [sp, #188]	@ rest.number, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r3, [sp, #4]	@ tmp_sum, %sfp
	and	r3, r3, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r1	@ tmp1188, rest.number
	uxth	r1, r3	@ tmp_sum, tmp1188
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r1, [sp, #8]	@ tmp_sum, %sfp
	and	r3, r1, #65280	@ carry, tmp_sum,
.LVL248:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r1, [sp, #184]	@ rest_number_I_lsm.83, %sfp
	add	r3, r3, r1	@ tmp1192, rest_number_I_lsm.83
	uxth	r3, r3	@ tmp_sum, tmp1192
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r1, [sp]	@ tmp_sum, %sfp
	strb	r1, [sp, #349]	@ tmp_sum, teilergebnis.number
	strb	fp, [sp, #340]	@ tmp_sum, teilergebnis.number
	strb	r3, [sp, #337]	@ tmp_sum, teilergebnis.number
.LBE300:
.LBE303:
.LBE306:
.LBB307:
.LBB232:
.LBB226:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldr	r3, [sp, #140]	@ _164, %sfp
.LBE226:
.LBE232:
.LBE307:
.LBB308:
.LBB304:
.LBB301:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r2, [sp, #4]	@ tmp_sum, %sfp
	strb	r2, [sp, #339]	@ tmp_sum, teilergebnis.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r1, [sp, #184]	@ rest_number_I_lsm.83, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldr	r2, [sp, #8]	@ tmp_sum, %sfp
	strb	r2, [sp, #338]	@ tmp_sum, teilergebnis.number
.LBE301:
.LBE304:
.LBE308:
.LBB309:
.LBB233:
.LBB227:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	cmp	ip, r3	@ rest_number_I_lsm.81, _164
.LBE227:
.LBE233:
.LBE309:
.LBB310:
.LBB305:
.LBB302:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	str	r1, [sp, #100]	@ rest_number_I_lsm.83, %sfp
.LBE302:
.LBE305:
.LBE310:
.LBB311:
.LBB234:
.LBB228:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	bcs	.L99	@,
.LVL249:
.L82:
	add	r4, sp, #336	@ tmp1086,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp1086,,,,
	ldr	r4, [sp, #232]	@ Quotient, %sfp
	str	r0, [r4]	@ unaligned	@, MEM[(char * {ref-all})Quotient_14(D)]
	str	r1, [r4, #4]	@ unaligned	@, MEM[(char * {ref-all})Quotient_14(D)]
	str	r2, [r4, #8]	@ unaligned	@, MEM[(char * {ref-all})Quotient_14(D)]
	str	r3, [r4, #12]	@ unaligned	@, MEM[(char * {ref-all})Quotient_14(D)]
.LBE228:
.LBE234:
.LBE311:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:133: }
	.loc 1 133 0
	add	sp, sp, #372	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL250:
.L188:
	.cfi_restore_state
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	ldr	r1, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	b	.L179	@
.LVL251:
.L202:
	ldrb	r3, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	str	r3, [sp, #28]	@ prephitmp_5007, %sfp
	ldrb	r3, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	str	r3, [sp, #12]	@ prephitmp_5016, %sfp
	ldrb	r3, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	str	r3, [sp, #16]	@ prephitmp_5024, %sfp
	ldrb	r3, [sp, #309]	@ zero_extendqisi2	@ prephitmp_5046, tmp_Divisor.number
	str	ip, [sp]	@ pretmp_3930, %sfp
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
	str	r3, [sp, #8]	@ prephitmp_5046, %sfp
	ldrb	r5, [sp, #308]	@ zero_extendqisi2	@ prephitmp_5049, tmp_Divisor.number
	ldrb	r6, [sp, #307]	@ zero_extendqisi2	@ prephitmp_4020, tmp_Divisor.number
	ldrb	r7, [sp, #306]	@ zero_extendqisi2	@ prephitmp_4023, tmp_Divisor.number
	b	.L174	@
.LVL252:
.L221:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	ldr	r0, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	r0, [sp, #329]	@ rest_number_I_lsm.99, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
	mov	r0, lr	@ rest_number_I_lsm.101, rest_number_I_lsm.101
	b	.L184	@
.LVL253:
.L207:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	b	.L49	@
.LVL254:
.L206:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	ldrb	r8, [sp, #311]	@ zero_extendqisi2	@ prephitmp_5037, tmp_Divisor.number
	ldrb	r9, [sp, #310]	@ zero_extendqisi2	@ prephitmp_5042, tmp_Divisor.number
	b	.L49	@
.LVL255:
.L112:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
.LBB312:
.LBB257:
.LBB255:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	str	r3, [sp, #16]	@ pretmp_3645, %sfp
	ldr	r3, [sp, #196]	@ pretmp_3647, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	str	r3, [sp, #12]	@ pretmp_3647, %sfp
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL256:
.L111:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	str	r3, [sp, #16]	@ pretmp_3645, %sfp
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL257:
.L220:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	mov	r1, lr	@ rest_number_I_lsm.79, rest_number_I_lsm.79
.LVL258:
.L178:
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
.L179:
	strb	r1, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	b	.L181	@
.LVL259:
.L219:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
	mov	r0, lr	@ rest_number_I_lsm.99, rest_number_I_lsm.99
	b	.L183	@
.LVL260:
.L218:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	mov	r6, lr	@ rest_number_I_lsm.91, rest_number_I_lsm.91
	b	.L185	@
.LVL261:
.L217:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
.LVL262:
.L181:
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
.L185:
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	ldr	r0, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
.L183:
	strb	r0, [sp, #329]	@ rest_number_I_lsm.99, rest.number
	ldr	r0, [sp, #52]	@ rest_number_I_lsm.101, %sfp
.L184:
	strb	r0, [sp, #331]	@ rest_number_I_lsm.101, rest.number
	ldr	r0, [sp, #104]	@ rest_number_I_lsm.103, %sfp
.L182:
	ldr	r3, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	strb	r0, [sp, #332]	@ rest_number_I_lsm.103, rest.number
.L180:
	strb	r3, [sp, #333]	@ rest_number_I_lsm.105, rest.number
	ldr	r3, [sp, #44]	@ rest_number_I_lsm.107, %sfp
	mov	lr, r3	@ rest_number_I_lsm.107, rest_number_I_lsm.107
.L177:
	ldr	r3, [sp, #40]	@ rest_number_I_lsm.109, %sfp
	str	r0, [sp, #84]	@ rest_number_I_lsm.103, %sfp
	ldr	r0, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	str	r0, [sp, #188]	@ rest_number_I_lsm.85, %sfp
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	strb	lr, [sp, #334]	@ rest_number_I_lsm.107, rest.number
	strb	r3, [sp, #335]	@ rest_number_I_lsm.109, rest.number
	mov	lr, r3	@ rest_number_I_lsm.109, rest_number_I_lsm.109
	str	r4, [sp, #164]	@ rest_number_I_lsm.87, %sfp
	ldr	r3, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	ldr	r4, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	str	r0, [sp, #128]	@ rest_number_I_lsm.95, %sfp
	ldr	r0, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	str	r3, [sp, #112]	@ rest_number_I_lsm.79, %sfp
	strd	r6, r5, [sp, #144]	@ rest_number_I_lsm.91, rest_number_I_lsm.89,,
	str	r0, [sp, #108]	@ rest_number_I_lsm.101, %sfp
	ldr	r5, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	ldr	r0, [sp, #44]	@ rest_number_I_lsm.107, %sfp
	ldr	r3, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	str	r5, [sp, #124]	@ rest_number_I_lsm.99, %sfp
	strd	r4, r7, [sp, #132]	@ rest_number_I_lsm.97, rest_number_I_lsm.93,,
	str	lr, [sp, #96]	@ rest_number_I_lsm.109, %sfp
	str	r0, [sp, #92]	@ rest_number_I_lsm.107, %sfp
	str	r3, [sp, #88]	@ rest_number_I_lsm.105, %sfp
	str	r1, [sp, #184]	@ rest_number_I_lsm.83, %sfp
	b	.L62	@
.LVL263:
.L211:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	b	.L49	@
.LVL264:
.L210:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	b	.L49	@
.LVL265:
.L209:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	b	.L49	@
.LVL266:
.L208:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	ldrb	r1, [sp, #315]	@ zero_extendqisi2	@ prephitmp_5007, tmp_Divisor.number
	ldrb	r4, [sp, #314]	@ zero_extendqisi2	@ prephitmp_5016, tmp_Divisor.number
	ldrb	r0, [sp, #313]	@ zero_extendqisi2	@ prephitmp_5024, tmp_Divisor.number
	ldrb	lr, [sp, #312]	@ zero_extendqisi2	@ prephitmp_5031, tmp_Divisor.number
	b	.L49	@
.LVL267:
.L213:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	b	.L49	@
.LVL268:
.L214:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	b	.L49	@
.LVL269:
.L212:
	ldrb	fp, [sp, #318]	@ zero_extendqisi2	@ prephitmp_4974, tmp_Divisor.number
	ldrb	r3, [sp, #317]	@ zero_extendqisi2	@ prephitmp_4986, tmp_Divisor.number
	ldrb	r2, [sp, #316]	@ zero_extendqisi2	@ prephitmp_4997, tmp_Divisor.number
	b	.L49	@
.LVL270:
.L110:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	strd	r4, r0, [sp, #12]	@ prephitmp_5016, prephitmp_5024,,
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL271:
.L109:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL272:
.L108:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r9, [sp, #172]	@ prephitmp_5042, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL273:
.L107:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL274:
.L106:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL275:
.L105:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL276:
.L104:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	mov	r6, r7	@ prephitmp_4020, prephitmp_4020
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r7, [sp, #152]	@ prephitmp_4023, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL277:
.L103:
	ldr	r6, [sp]	@ prephitmp_4020, %sfp
.LVL278:
.L175:
	str	r4, [sp, #12]	@ prephitmp_5016, %sfp
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	ip, [sp]	@ pretmp_3930, %sfp
	str	r1, [sp, #28]	@ prephitmp_5007, %sfp
	str	r0, [sp, #16]	@ prephitmp_5024, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL279:
.L83:
	ldrb	ip, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #112]	@ rest.number, %sfp
	ldrb	ip, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #108]	@ rest.number, %sfp
	ldrb	ip, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	str	ip, [sp, #96]	@ _216, %sfp
	ldrb	ip, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #92]	@ rest.number, %sfp
	ldrb	ip, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #88]	@ rest.number, %sfp
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	ldrb	r2, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #324]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #323]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #322]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r3, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r3, [sp, #128]	@ rest.number, %sfp
	str	r2, [sp, #144]	@ rest.number, %sfp
	str	r1, [sp, #148]	@ rest.number, %sfp
	str	r0, [sp, #164]	@ rest.number, %sfp
	str	r4, [sp, #188]	@ rest.number, %sfp
	str	r5, [sp, #124]	@ rest.number, %sfp
	str	r6, [sp, #132]	@ rest.number, %sfp
	str	r7, [sp, #136]	@ rest.number, %sfp
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	ldrb	ip, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	str	ip, [sp, #172]	@ pretmp_3639, %sfp
	ldrb	ip, [sp, #293]	@ zero_extendqisi2	@ pretmp_3637, tmp_Dividend.number
	str	ip, [sp, #168]	@ pretmp_3637, %sfp
	ldrb	ip, [sp, #292]	@ zero_extendqisi2	@ pretmp_3635, tmp_Dividend.number
	str	ip, [sp, #160]	@ pretmp_3635, %sfp
	ldrb	ip, [sp, #291]	@ zero_extendqisi2	@ pretmp_3633, tmp_Dividend.number
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #156]	@ pretmp_3633, %sfp
	ldrb	ip, [sp, #290]	@ zero_extendqisi2	@ pretmp_3631, tmp_Dividend.number
	str	r3, [sp, #104]	@ rest.number, %sfp
	str	ip, [sp, #152]	@ pretmp_3631, %sfp
	str	r2, [sp, #120]	@ rest.number, %sfp
	strd	r1, r0, [sp, #76]	@ rest.number, rest.number,,
	str	r4, [sp, #72]	@ rest.number, %sfp
	strd	r6, r5, [sp, #60]	@ rest.number, rest.number,,
	str	r7, [sp, #116]	@ rest.number, %sfp
	ldr	r3, [sp, #128]	@ rest.number, %sfp
	str	r3, [sp, #68]	@ rest.number, %sfp
	ldr	r3, [sp, #112]	@ rest.number, %sfp
	str	r3, [sp, #56]	@ rest.number, %sfp
.LVL280:
.L171:
	ldr	r3, [sp, #108]	@ rest.number, %sfp
	str	r3, [sp, #52]	@ rest.number, %sfp
.L172:
	ldr	r3, [sp, #96]	@ _216, %sfp
	str	r3, [sp, #40]	@ _216, %sfp
	ldr	r3, [sp, #92]	@ rest.number, %sfp
	str	r3, [sp, #44]	@ rest.number, %sfp
	ldr	r3, [sp, #88]	@ rest.number, %sfp
	str	r3, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL281:
.L225:
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	b	.L178	@
.LVL282:
.L224:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	ldr	r0, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	strb	r0, [sp, #329]	@ rest_number_I_lsm.99, rest.number
	ldr	r0, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #331]	@ rest_number_I_lsm.101, rest.number
	ldr	r3, [sp, #48]	@ rest_number_I_lsm.105, %sfp
	ldr	r0, [sp, #104]	@ rest_number_I_lsm.103, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
	strb	r0, [sp, #332]	@ rest_number_I_lsm.103, rest.number
	strb	r3, [sp, #333]	@ rest_number_I_lsm.105, rest.number
	b	.L177	@
.LVL283:
.L223:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	ldr	r0, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	strb	r0, [sp, #329]	@ rest_number_I_lsm.99, rest.number
	ldr	r0, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #331]	@ rest_number_I_lsm.101, rest.number
	ldr	r0, [sp, #104]	@ rest_number_I_lsm.103, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
	strb	r0, [sp, #332]	@ rest_number_I_lsm.103, rest.number
	mov	r3, lr	@ rest_number_I_lsm.105, rest_number_I_lsm.105
	b	.L180	@
.LVL284:
.L222:
	str	r10, [sp, #100]	@ rest_number_I_lsm.83, %sfp
	str	r3, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	str	r1, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	cmp	r0, #0	@ rest_number_I_lsm.80
	beq	.L62	@
	ldr	r0, [sp, #68]	@ rest_number_I_lsm.95, %sfp
	strb	r0, [sp, #327]	@ rest_number_I_lsm.95, rest.number
	ldr	r0, [sp, #60]	@ rest_number_I_lsm.97, %sfp
	ldr	r4, [sp, #72]	@ rest_number_I_lsm.85, %sfp
	strb	r0, [sp, #328]	@ rest_number_I_lsm.97, rest.number
	ldr	r0, [sp, #64]	@ rest_number_I_lsm.99, %sfp
	ldr	r1, [sp, #56]	@ rest_number_I_lsm.79, %sfp
	strb	r4, [sp, #322]	@ rest_number_I_lsm.85, rest.number
	ldr	r5, [sp, #76]	@ rest_number_I_lsm.89, %sfp
	ldr	r4, [sp, #80]	@ rest_number_I_lsm.87, %sfp
	ldr	r6, [sp, #120]	@ rest_number_I_lsm.91, %sfp
	ldr	r7, [sp, #116]	@ rest_number_I_lsm.93, %sfp
	strb	r0, [sp, #329]	@ rest_number_I_lsm.99, rest.number
	ldr	r0, [sp, #52]	@ rest_number_I_lsm.101, %sfp
	strb	r1, [sp, #330]	@ rest_number_I_lsm.79, rest.number
	strb	r0, [sp, #331]	@ rest_number_I_lsm.101, rest.number
	strb	ip, [sp, #320]	@ rest_number_I_lsm.81, rest.number
	mov	r1, r10	@ rest_number_I_lsm.83, rest_number_I_lsm.83
	strb	r10, [sp, #321]	@ rest_number_I_lsm.83, rest.number
	strb	r4, [sp, #323]	@ rest_number_I_lsm.87, rest.number
	strb	r5, [sp, #324]	@ rest_number_I_lsm.89, rest.number
	strb	r6, [sp, #325]	@ rest_number_I_lsm.91, rest.number
	strb	r7, [sp, #326]	@ rest_number_I_lsm.93, rest.number
	mov	r0, lr	@ rest_number_I_lsm.103, rest_number_I_lsm.103
	b	.L182	@
.LVL285:
.L215:
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	ldr	fp, [sp, #212]	@ prephitmp_4974, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	str	r3, [sp, #16]	@ pretmp_3645, %sfp
	ldr	r3, [sp, #196]	@ pretmp_3647, %sfp
	str	r1, [sp, #24]	@ pretmp_3651, %sfp
	str	r2, [sp, #20]	@ pretmp_3652, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	str	r3, [sp, #12]	@ pretmp_3647, %sfp
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	str	r0, [sp, #28]	@ pretmp_3649, %sfp
	mov	r4, fp	@ pretmp_3655, prephitmp_4974
	mov	ip, r2	@ pretmp_3652, pretmp_3652
	b	.L46	@
.LVL286:
.L115:
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #204]	@ pretmp_3651, %sfp
	str	r3, [sp, #24]	@ pretmp_3651, %sfp
	ldr	r3, [sp, #208]	@ pretmp_3652, %sfp
	str	r3, [sp, #20]	@ pretmp_3652, %sfp
.LVL287:
.L173:
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	str	r3, [sp, #16]	@ pretmp_3645, %sfp
	ldr	r3, [sp, #196]	@ pretmp_3647, %sfp
	str	r3, [sp, #12]	@ pretmp_3647, %sfp
	ldr	r3, [sp, #200]	@ pretmp_3649, %sfp
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	str	r3, [sp, #28]	@ pretmp_3649, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldrd	ip, r4, [sp, #208]	@ pretmp_3652, pretmp_3655,,
	b	.L46	@
.LVL288:
.L114:
	str	r3, [sp, #20]	@ prephitmp_4986, %sfp
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	ldr	r3, [sp, #204]	@ pretmp_3651, %sfp
	str	r3, [sp, #24]	@ pretmp_3651, %sfp
	ldr	r3, [sp, #168]	@ pretmp_3637, %sfp
	str	r3, [sp, #8]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #192]	@ pretmp_3645, %sfp
	str	r3, [sp, #16]	@ pretmp_3645, %sfp
	ldr	r3, [sp, #196]	@ pretmp_3647, %sfp
	str	r3, [sp, #12]	@ pretmp_3647, %sfp
	ldr	r3, [sp, #200]	@ pretmp_3649, %sfp
	ldr	r5, [sp, #160]	@ prephitmp_5049, %sfp
	ldr	lr, [sp, #180]	@ prephitmp_5031, %sfp
	str	r3, [sp, #28]	@ pretmp_3649, %sfp
	ldrd	r7, r6, [sp, #152]	@ prephitmp_4023, prephitmp_4020,,
	ldrd	r9, r8, [sp, #172]	@ prephitmp_5042, prephitmp_5037,,
	ldr	r4, [sp, #212]	@ pretmp_3655, %sfp
	mov	ip, r2	@ pretmp_3652, pretmp_3652
	b	.L46	@
.LVL289:
.L113:
	strd	r3, r2, [sp, #20]	@ prephitmp_4986, prephitmp_4997,,
	ldr	r3, [sp, #220]	@ pretmp_5080, %sfp
	str	r3, [sp]	@ pretmp_5080, %sfp
	ldr	r3, [sp, #140]	@ _164, %sfp
	str	r3, [sp, #4]	@ _164, %sfp
	b	.L173	@
.LVL290:
.L102:
	ldr	r6, [sp]	@ prephitmp_4020, %sfp
	ldr	r7, [sp, #12]	@ prephitmp_4023, %sfp
	b	.L175	@
.LVL291:
.L201:
	ldrb	r3, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r2, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r3, [sp, #96]	@ _216, %sfp
	str	r2, [sp, #216]	@ pretmp_3657, %sfp
	str	r3, [sp, #40]	@ _216, %sfp
	b	.L85	@
.LVL292:
.L200:
	ldrb	r3, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r2, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r1, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r1, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r3, [sp, #96]	@ _216, %sfp
	str	r2, [sp, #92]	@ rest.number, %sfp
	str	r1, [sp, #212]	@ pretmp_3655, %sfp
	strd	r3, r2, [sp, #40]	@ _216, rest.number,,
	b	.L85	@
.LVL293:
.L199:
	ldrb	r0, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	ldrb	r3, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r2, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r0, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r0, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	ldrb	r1, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r0, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r0, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r3, [sp, #96]	@ _216, %sfp
	str	r2, [sp, #92]	@ rest.number, %sfp
	str	r1, [sp, #88]	@ rest.number, %sfp
	str	r0, [sp, #208]	@ pretmp_3652, %sfp
	strd	r3, r2, [sp, #40]	@ _216, rest.number,,
	str	r1, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL294:
.L198:
	ldrb	r4, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r4, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r4, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	ldrb	r2, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r1, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r4, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r4, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r4, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r4, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	r2, [sp, #96]	@ _216, %sfp
	str	r1, [sp, #92]	@ rest.number, %sfp
	str	r0, [sp, #88]	@ rest.number, %sfp
	str	r4, [sp, #204]	@ pretmp_3651, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	strd	r2, r1, [sp, #40]	@ _216, rest.number,,
	str	r0, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL295:
.L197:
	ldrb	r5, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r5, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r5, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r5, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r5, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	ldrb	r1, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r0, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r5, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r5, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r5, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	r5, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	r2, [sp, #108]	@ rest.number, %sfp
	str	r1, [sp, #96]	@ _216, %sfp
	str	r0, [sp, #92]	@ rest.number, %sfp
	str	r4, [sp, #88]	@ rest.number, %sfp
	str	r5, [sp, #200]	@ pretmp_3649, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	str	r2, [sp, #52]	@ rest.number, %sfp
	strd	r1, r0, [sp, #40]	@ _216, rest.number,,
	str	r4, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL296:
.L196:
	ldrb	r6, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r6, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r6, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r6, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r6, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r6, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r6, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	ldrb	r2, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r4, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r6, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	r6, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r6, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	r6, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	r2, [sp, #112]	@ rest.number, %sfp
	str	r1, [sp, #108]	@ rest.number, %sfp
	str	r0, [sp, #96]	@ _216, %sfp
	str	r4, [sp, #92]	@ rest.number, %sfp
	str	r5, [sp, #88]	@ rest.number, %sfp
	str	r6, [sp, #196]	@ pretmp_3647, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	strd	r1, r2, [sp, #52]	@ rest.number, rest.number,,
	strd	r0, r4, [sp, #40]	@ _216, rest.number,,
	str	r5, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL297:
.L195:
	ldrb	r7, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r7, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r7, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r7, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r7, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r7, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r7, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	r7, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	r7, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	ldrb	r1, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r5, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r7, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	r7, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r2, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r7, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	r7, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	r2, [sp, #124]	@ rest.number, %sfp
	str	r1, [sp, #112]	@ rest.number, %sfp
	str	r0, [sp, #108]	@ rest.number, %sfp
	str	r4, [sp, #96]	@ _216, %sfp
	str	r5, [sp, #92]	@ rest.number, %sfp
	str	r6, [sp, #88]	@ rest.number, %sfp
	str	r7, [sp, #192]	@ pretmp_3645, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	str	r2, [sp, #64]	@ rest.number, %sfp
	strd	r0, r1, [sp, #52]	@ rest.number, rest.number,,
	strd	r4, r5, [sp, #40]	@ _216, rest.number,,
	str	r6, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL298:
.L194:
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	ldrb	r3, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	r3, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	r3, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	r3, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r3, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r3, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r3, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	r3, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	r3, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	r3, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	r3, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	r3, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	r3, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	ldrb	r2, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r6, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	r3, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	r2, [sp, #124]	@ rest.number, %sfp
	str	r1, [sp, #132]	@ rest.number, %sfp
	str	r0, [sp, #112]	@ rest.number, %sfp
	str	r4, [sp, #108]	@ rest.number, %sfp
	str	r5, [sp, #96]	@ _216, %sfp
	str	r6, [sp, #92]	@ rest.number, %sfp
	str	r7, [sp, #88]	@ rest.number, %sfp
	str	r3, [sp, #180]	@ pretmp_3643, %sfp
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	strd	r1, r2, [sp, #60]	@ rest.number, rest.number,,
	strd	r4, r0, [sp, #52]	@ rest.number, rest.number,,
	strd	r5, r6, [sp, #40]	@ _216, rest.number,,
	str	r7, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL299:
.L193:
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	ldrb	r2, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	r7, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	r3, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	r3, [sp, #88]	@ rest.number, %sfp
	str	r2, [sp, #124]	@ rest.number, %sfp
	str	r1, [sp, #132]	@ rest.number, %sfp
	str	r0, [sp, #128]	@ rest.number, %sfp
	str	r4, [sp, #112]	@ rest.number, %sfp
	str	r5, [sp, #108]	@ rest.number, %sfp
	str	r6, [sp, #96]	@ _216, %sfp
	str	r7, [sp, #92]	@ rest.number, %sfp
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	ldr	r3, [sp, #88]	@ rest.number, %sfp
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	strd	r1, r2, [sp, #60]	@ rest.number, rest.number,,
	str	r0, [sp, #68]	@ rest.number, %sfp
	strd	r5, r4, [sp, #52]	@ rest.number, rest.number,,
	strd	r6, r7, [sp, #40]	@ _216, rest.number,,
	str	r3, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL300:
.L192:
	ldrb	ip, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #88]	@ rest.number, %sfp
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	ldrb	r2, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	r3, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	r3, [sp, #92]	@ rest.number, %sfp
	str	r2, [sp, #124]	@ rest.number, %sfp
	str	r1, [sp, #132]	@ rest.number, %sfp
	str	r0, [sp, #136]	@ rest.number, %sfp
	str	r4, [sp, #128]	@ rest.number, %sfp
	str	r5, [sp, #112]	@ rest.number, %sfp
	str	r6, [sp, #108]	@ rest.number, %sfp
	str	r7, [sp, #96]	@ _216, %sfp
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	ldr	r3, [sp, #92]	@ rest.number, %sfp
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	str	r3, [sp, #44]	@ rest.number, %sfp
	ldrb	ip, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	ldr	r3, [sp, #88]	@ rest.number, %sfp
	str	ip, [sp, #172]	@ pretmp_3639, %sfp
	strd	r1, r2, [sp, #60]	@ rest.number, rest.number,,
	str	r0, [sp, #116]	@ rest.number, %sfp
	str	r4, [sp, #68]	@ rest.number, %sfp
	strd	r6, r5, [sp, #52]	@ rest.number, rest.number,,
	str	r7, [sp, #40]	@ _216, %sfp
	str	r3, [sp, #48]	@ rest.number, %sfp
	b	.L85	@
.LVL301:
.L191:
	ldrb	ip, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #92]	@ rest.number, %sfp
	ldrb	ip, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #88]	@ rest.number, %sfp
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	ldrb	r2, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	r3, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	r3, [sp, #96]	@ _216, %sfp
	str	r2, [sp, #144]	@ rest.number, %sfp
	str	r1, [sp, #124]	@ rest.number, %sfp
	str	r0, [sp, #132]	@ rest.number, %sfp
	str	r4, [sp, #136]	@ rest.number, %sfp
	str	r5, [sp, #128]	@ rest.number, %sfp
	str	r6, [sp, #112]	@ rest.number, %sfp
	str	r7, [sp, #108]	@ rest.number, %sfp
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	ldrb	ip, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	str	ip, [sp, #172]	@ pretmp_3639, %sfp
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	ldrb	ip, [sp, #293]	@ zero_extendqisi2	@ pretmp_3637, tmp_Dividend.number
	str	ip, [sp, #168]	@ pretmp_3637, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	str	r2, [sp, #120]	@ rest.number, %sfp
	strd	r0, r1, [sp, #60]	@ rest.number, rest.number,,
	str	r4, [sp, #116]	@ rest.number, %sfp
	str	r5, [sp, #68]	@ rest.number, %sfp
	strd	r7, r6, [sp, #52]	@ rest.number, rest.number,,
	b	.L172	@
.LVL302:
.L190:
	ldrb	ip, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	str	ip, [sp, #96]	@ _216, %sfp
	ldrb	ip, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #92]	@ rest.number, %sfp
	ldrb	ip, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #88]	@ rest.number, %sfp
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	ldrb	r2, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #324]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	r3, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	r3, [sp, #108]	@ rest.number, %sfp
	str	r2, [sp, #144]	@ rest.number, %sfp
	str	r1, [sp, #148]	@ rest.number, %sfp
	str	r0, [sp, #124]	@ rest.number, %sfp
	str	r4, [sp, #132]	@ rest.number, %sfp
	str	r5, [sp, #136]	@ rest.number, %sfp
	str	r6, [sp, #128]	@ rest.number, %sfp
	str	r7, [sp, #112]	@ rest.number, %sfp
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	ldrb	ip, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	str	ip, [sp, #172]	@ pretmp_3639, %sfp
	ldrb	ip, [sp, #293]	@ zero_extendqisi2	@ pretmp_3637, tmp_Dividend.number
	str	ip, [sp, #168]	@ pretmp_3637, %sfp
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	ldrb	ip, [sp, #292]	@ zero_extendqisi2	@ pretmp_3635, tmp_Dividend.number
	str	ip, [sp, #160]	@ pretmp_3635, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	str	r2, [sp, #120]	@ rest.number, %sfp
	str	r1, [sp, #76]	@ rest.number, %sfp
	strd	r4, r0, [sp, #60]	@ rest.number, rest.number,,
	str	r5, [sp, #116]	@ rest.number, %sfp
	str	r6, [sp, #68]	@ rest.number, %sfp
	str	r7, [sp, #56]	@ rest.number, %sfp
	b	.L171	@
.LVL303:
.L189:
	ldrb	ip, [sp, #331]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #108]	@ rest.number, %sfp
	ldrb	ip, [sp, #335]	@ zero_extendqisi2	@ _216, rest.number
	str	ip, [sp, #96]	@ _216, %sfp
	ldrb	ip, [sp, #334]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #92]	@ rest.number, %sfp
	ldrb	ip, [sp, #333]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #88]	@ rest.number, %sfp
	ldrb	ip, [sp, #303]	@ zero_extendqisi2	@ pretmp_3657, tmp_Dividend.number
	ldrb	r3, [sp, #332]	@ zero_extendqisi2	@ rest.number, rest.number
	str	ip, [sp, #216]	@ pretmp_3657, %sfp
	ldrb	ip, [sp, #302]	@ zero_extendqisi2	@ pretmp_3655, tmp_Dividend.number
	ldrb	r2, [sp, #325]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r1, [sp, #324]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r0, [sp, #323]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r4, [sp, #329]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r5, [sp, #328]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r6, [sp, #326]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	r7, [sp, #327]	@ zero_extendqisi2	@ rest.number, rest.number
	str	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #212]	@ pretmp_3655, %sfp
	ldrb	r3, [sp, #330]	@ zero_extendqisi2	@ rest.number, rest.number
	ldrb	ip, [sp, #301]	@ zero_extendqisi2	@ pretmp_3652, tmp_Dividend.number
	str	r3, [sp, #112]	@ rest.number, %sfp
	str	r2, [sp, #144]	@ rest.number, %sfp
	str	r1, [sp, #148]	@ rest.number, %sfp
	str	r0, [sp, #164]	@ rest.number, %sfp
	str	r4, [sp, #124]	@ rest.number, %sfp
	str	r5, [sp, #132]	@ rest.number, %sfp
	str	r6, [sp, #136]	@ rest.number, %sfp
	str	r7, [sp, #128]	@ rest.number, %sfp
	str	ip, [sp, #208]	@ pretmp_3652, %sfp
	ldrb	ip, [sp, #300]	@ zero_extendqisi2	@ pretmp_3651, tmp_Dividend.number
	str	ip, [sp, #204]	@ pretmp_3651, %sfp
	ldrb	ip, [sp, #299]	@ zero_extendqisi2	@ pretmp_3649, tmp_Dividend.number
	str	ip, [sp, #200]	@ pretmp_3649, %sfp
	ldrb	ip, [sp, #298]	@ zero_extendqisi2	@ pretmp_3647, tmp_Dividend.number
	str	ip, [sp, #196]	@ pretmp_3647, %sfp
	ldrb	ip, [sp, #297]	@ zero_extendqisi2	@ pretmp_3645, tmp_Dividend.number
	str	ip, [sp, #192]	@ pretmp_3645, %sfp
	ldrb	ip, [sp, #296]	@ zero_extendqisi2	@ pretmp_3643, tmp_Dividend.number
	str	ip, [sp, #180]	@ pretmp_3643, %sfp
	ldrb	ip, [sp, #295]	@ zero_extendqisi2	@ pretmp_3641, tmp_Dividend.number
	str	ip, [sp, #176]	@ pretmp_3641, %sfp
	ldrb	ip, [sp, #294]	@ zero_extendqisi2	@ pretmp_3639, tmp_Dividend.number
	str	ip, [sp, #172]	@ pretmp_3639, %sfp
	ldrb	ip, [sp, #293]	@ zero_extendqisi2	@ pretmp_3637, tmp_Dividend.number
	ldr	r3, [sp, #84]	@ rest.number, %sfp
	str	ip, [sp, #168]	@ pretmp_3637, %sfp
	ldrb	ip, [sp, #292]	@ zero_extendqisi2	@ pretmp_3635, tmp_Dividend.number
	str	ip, [sp, #160]	@ pretmp_3635, %sfp
	str	r3, [sp, #104]	@ rest.number, %sfp
	ldrb	ip, [sp, #291]	@ zero_extendqisi2	@ pretmp_3633, tmp_Dividend.number
	ldr	r3, [sp, #112]	@ rest.number, %sfp
	str	ip, [sp, #156]	@ pretmp_3633, %sfp
	str	r2, [sp, #120]	@ rest.number, %sfp
	strd	r1, r0, [sp, #76]	@ rest.number, rest.number,,
	strd	r5, r4, [sp, #60]	@ rest.number, rest.number,,
	str	r6, [sp, #116]	@ rest.number, %sfp
	str	r7, [sp, #68]	@ rest.number, %sfp
	str	r3, [sp, #56]	@ rest.number, %sfp
	b	.L171	@
.LBE255:
.LBE257:
.LBE312:
	.cfi_endproc
.LFE4:
	.size	INT_DIV, .-INT_DIV
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
	.loc 1 185 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL304:
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
.LBB313:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _30, ErsterSummand_14(D)->number
	ldrb	r4, [r2, #15]	@ zero_extendqisi2	@ _28, ZweiterSummand_15(D)->number
.LVL305:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	add	r4, r4, r3	@ tmp239, _30
.LVL306:
	strb	r4, [r0, #15]	@ tmp239, Summe_17(D)->number
.LVL307:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [r2, #14]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp250, tmp239,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r5	@ tmp245, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp250
.LVL308:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #14]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [r2, #13]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #13]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r3, #768	@ carry, tmp_sum,
.LVL309:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r5	@ tmp260, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp260
.LVL310:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #13]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [r2, #12]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #12]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r3, #1792	@ carry, tmp_sum,
.LVL311:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r5	@ tmp269, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp269
.LVL312:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #12]	@ tmp_sum, Summe_17(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [r2, #11]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
	ldrb	r4, [r1, #11]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r3, r3, #3840	@ carry, tmp_sum,
.LVL313:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r5	@ tmp278, ZweiterSummand_15(D)->number
	add	r3, r3, r4	@ tmp_sum, tmp278
.LVL314:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #11]	@ tmp_sum, Summe_17(D)->number
.LVL315:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #10]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #10]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp282, tmp_sum,
.LVL316:
	add	r3, r3, r4	@ _258, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r5	@ tmp_sum, ZweiterSummand_15(D)->number
.LVL317:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #10]	@ tmp_sum, Summe_17(D)->number
.LVL318:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #9]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #9]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp291, tmp_sum,
.LVL319:
	add	r4, r4, r3	@ _259, tmp291
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r4, r4, r5	@ tmp298, ZweiterSummand_15(D)->number
	uxth	r4, r4	@ tmp_sum, tmp298
.LVL320:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r4, [r0, #9]	@ tmp_sum, Summe_17(D)->number
.LVL321:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #8]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp300, tmp_sum,
.LVL322:
	add	r3, r3, r4	@ tmp304, tmp300
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r3, r5, r3	@ tmp307, ZweiterSummand_15(D)->number, tmp304
	uxth	r3, r3	@ tmp_sum, tmp307
.LVL323:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #8]	@ tmp_sum, Summe_17(D)->number
.LVL324:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #7]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #7]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp309, tmp_sum,
.LVL325:
	add	r4, r4, r3	@ tmp313, tmp309
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r4, r5, r4	@ tmp316, ZweiterSummand_15(D)->number, tmp313
	uxth	r4, r4	@ tmp_sum, tmp316
.LVL326:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r4, [r0, #7]	@ tmp_sum, Summe_17(D)->number
.LVL327:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #6]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp318, tmp_sum,
.LVL328:
	add	r3, r3, r4	@ tmp322, tmp318
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r3, r5, r3	@ tmp325, ZweiterSummand_15(D)->number, tmp322
	uxth	r3, r3	@ tmp_sum, tmp325
.LVL329:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #6]	@ tmp_sum, Summe_17(D)->number
.LVL330:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #5]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #5]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp327, tmp_sum,
.LVL331:
	add	r4, r4, r3	@ tmp331, tmp327
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r4, r5, r4	@ tmp334, ZweiterSummand_15(D)->number, tmp331
	uxth	r4, r4	@ tmp_sum, tmp334
.LVL332:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r4, [r0, #5]	@ tmp_sum, Summe_17(D)->number
.LVL333:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #4]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp336, tmp_sum,
.LVL334:
	add	r3, r3, r4	@ tmp340, tmp336
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r3, r5, r3	@ tmp343, ZweiterSummand_15(D)->number, tmp340
	uxth	r3, r3	@ tmp_sum, tmp343
.LVL335:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #4]	@ tmp_sum, Summe_17(D)->number
.LVL336:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #3]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #3]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp345, tmp_sum,
.LVL337:
	add	r4, r4, r3	@ tmp349, tmp345
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r4, r5, r4	@ tmp352, ZweiterSummand_15(D)->number, tmp349
	uxth	r4, r4	@ tmp_sum, tmp352
.LVL338:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r4, [r0, #3]	@ tmp_sum, Summe_17(D)->number
.LVL339:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #2]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r4, r4, #255	@ tmp354, tmp_sum,
.LVL340:
	add	r3, r3, r4	@ tmp358, tmp354
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r3, r5, r3	@ tmp361, ZweiterSummand_15(D)->number, tmp358
	uxth	r3, r3	@ tmp_sum, tmp361
.LVL341:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #2]	@ tmp_sum, Summe_17(D)->number
.LVL342:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	bic	r3, r3, #255	@ tmp363, tmp_sum,
.LVL343:
	add	r3, r3, r4	@ tmp367, ErsterSummand_14(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxtah	r3, r5, r3	@ tmp370, ZweiterSummand_15(D)->number, tmp367
	uxth	r3, r3	@ tmp_sum, tmp370
.LVL344:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0, #1]	@ tmp_sum, Summe_17(D)->number
.LVL345:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r3, [r1]	@ zero_extendqisi2	@ ErsterSummand_14(D)->number, ErsterSummand_14(D)->number
.LVL346:
	ldrb	r2, [r2]	@ zero_extendqisi2	@ ZweiterSummand_15(D)->number, ZweiterSummand_15(D)->number
.LVL347:
	add	r3, r3, r2	@ tmp379, ZweiterSummand_15(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	strb	r3, [r0]	@ tmp379, Summe_17(D)->number
.LVL348:
.LBE313:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:195: }
	.loc 1 195 0
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
	.loc 1 197 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL349:
	push	{r4, r5, r6}	@
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
.LBB314:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r4, [r1, #15]	@ zero_extendqisi2	@ _30, Minuend_17(D)->number
	ldrb	r5, [r2, #15]	@ zero_extendqisi2	@ _1, Subtrahend_18(D)->number
	uxth	r3, r4	@ _2, _30
	uxth	r6, r5	@ _3, _1
	cmp	r5, r4	@ _1, _30
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	sub	r3, r3, r6	@ tmp234, _2, _3
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	hi
	addhi	r3, r3, #256	@ tmp237, tmp235,
	uxth	r3, r3	@ tmp_diff, tmp237
.LVL350:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #15]	@ tmp_diff, Differenz_20(D)->number
.LVL351:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #14]	@ zero_extendqisi2	@ _54, Minuend_17(D)->number
	ldrb	r4, [r2, #14]	@ zero_extendqisi2	@ _55, Subtrahend_18(D)->number
	uxth	r3, r5	@ _56, _54
	uxth	r6, r4	@ _57, _55
	cmp	r5, r4	@ _54, _55
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:206:          tmp_diff = (uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - carry;
	.loc 1 206 0
	sub	r3, r3, r6	@ tmp239, _56, _57
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp242, tmp240,
	uxth	r3, r3	@ _58, tmp242
.LVL352:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #14]	@ _58, Differenz_20(D)->number
.LVL353:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #13]	@ zero_extendqisi2	@ _72, Minuend_17(D)->number
	ldrb	r4, [r2, #13]	@ zero_extendqisi2	@ _73, Subtrahend_18(D)->number
	uxth	r3, r5	@ _74, _72
	cmp	r5, r4	@ _72, _73
	uxth	r6, r4	@ _75, _73
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp245, _74,
	subs	r3, r3, r6	@ tmp247, tmp245, _75
	uxth	r3, r3	@ _76, tmp247
.LVL354:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #13]	@ _76, Differenz_20(D)->number
.LVL355:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #12]	@ zero_extendqisi2	@ _90, Minuend_17(D)->number
	ldrb	r4, [r2, #12]	@ zero_extendqisi2	@ _91, Subtrahend_18(D)->number
	uxth	r3, r5	@ _92, _90
	cmp	r5, r4	@ _90, _91
	uxth	r6, r4	@ _93, _91
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp250, _92,
	subs	r3, r3, r6	@ tmp252, tmp250, _93
	uxth	r3, r3	@ _94, tmp252
.LVL356:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #12]	@ _94, Differenz_20(D)->number
.LVL357:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #11]	@ zero_extendqisi2	@ _108, Minuend_17(D)->number
	ldrb	r4, [r2, #11]	@ zero_extendqisi2	@ _109, Subtrahend_18(D)->number
	uxth	r3, r5	@ _110, _108
	cmp	r5, r4	@ _108, _109
	uxth	r6, r4	@ _111, _109
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp255, _110,
	subs	r3, r3, r6	@ tmp257, tmp255, _111
	uxth	r3, r3	@ _112, tmp257
.LVL358:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #11]	@ _112, Differenz_20(D)->number
.LVL359:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #10]	@ zero_extendqisi2	@ _126, Minuend_17(D)->number
	ldrb	r4, [r2, #10]	@ zero_extendqisi2	@ _127, Subtrahend_18(D)->number
	uxth	r3, r5	@ _128, _126
	cmp	r5, r4	@ _126, _127
	uxth	r6, r4	@ _129, _127
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp260, _128,
	subs	r3, r3, r6	@ tmp262, tmp260, _129
	uxth	r3, r3	@ _130, tmp262
.LVL360:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #10]	@ _130, Differenz_20(D)->number
.LVL361:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #9]	@ zero_extendqisi2	@ _144, Minuend_17(D)->number
	ldrb	r4, [r2, #9]	@ zero_extendqisi2	@ _145, Subtrahend_18(D)->number
	uxth	r3, r5	@ _146, _144
	cmp	r5, r4	@ _144, _145
	uxth	r6, r4	@ _147, _145
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp265, _146,
	subs	r3, r3, r6	@ tmp267, tmp265, _147
	uxth	r3, r3	@ _148, tmp267
.LVL362:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #9]	@ _148, Differenz_20(D)->number
.LVL363:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #8]	@ zero_extendqisi2	@ _162, Minuend_17(D)->number
	ldrb	r4, [r2, #8]	@ zero_extendqisi2	@ _163, Subtrahend_18(D)->number
	uxth	r3, r5	@ _164, _162
	cmp	r5, r4	@ _162, _163
	uxth	r6, r4	@ _165, _163
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp270, _164,
	subs	r3, r3, r6	@ tmp272, tmp270, _165
	uxth	r3, r3	@ _166, tmp272
.LVL364:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #8]	@ _166, Differenz_20(D)->number
.LVL365:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #7]	@ zero_extendqisi2	@ _180, Minuend_17(D)->number
	ldrb	r4, [r2, #7]	@ zero_extendqisi2	@ _181, Subtrahend_18(D)->number
	uxth	r3, r5	@ _182, _180
	cmp	r5, r4	@ _180, _181
	uxth	r6, r4	@ _183, _181
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp275, _182,
	subs	r3, r3, r6	@ tmp277, tmp275, _183
	uxth	r3, r3	@ _184, tmp277
.LVL366:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #7]	@ _184, Differenz_20(D)->number
.LVL367:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #6]	@ zero_extendqisi2	@ _198, Minuend_17(D)->number
	ldrb	r4, [r2, #6]	@ zero_extendqisi2	@ _199, Subtrahend_18(D)->number
	uxth	r3, r5	@ _200, _198
	cmp	r5, r4	@ _198, _199
	uxth	r6, r4	@ _201, _199
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp280, _200,
	subs	r3, r3, r6	@ tmp282, tmp280, _201
	uxth	r3, r3	@ _202, tmp282
.LVL368:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #6]	@ _202, Differenz_20(D)->number
.LVL369:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #5]	@ zero_extendqisi2	@ _216, Minuend_17(D)->number
	ldrb	r4, [r2, #5]	@ zero_extendqisi2	@ _217, Subtrahend_18(D)->number
	uxth	r3, r5	@ _218, _216
	cmp	r5, r4	@ _216, _217
	uxth	r6, r4	@ _219, _217
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp285, _218,
	subs	r3, r3, r6	@ tmp287, tmp285, _219
	uxth	r3, r3	@ _220, tmp287
.LVL370:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #5]	@ _220, Differenz_20(D)->number
.LVL371:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #4]	@ zero_extendqisi2	@ _234, Minuend_17(D)->number
	ldrb	r4, [r2, #4]	@ zero_extendqisi2	@ _235, Subtrahend_18(D)->number
	uxth	r3, r5	@ _236, _234
	cmp	r5, r4	@ _234, _235
	uxth	r6, r4	@ _237, _235
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp290, _236,
	subs	r3, r3, r6	@ tmp292, tmp290, _237
	uxth	r3, r3	@ _238, tmp292
.LVL372:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #4]	@ _238, Differenz_20(D)->number
.LVL373:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #3]	@ zero_extendqisi2	@ _252, Minuend_17(D)->number
	ldrb	r4, [r2, #3]	@ zero_extendqisi2	@ _253, Subtrahend_18(D)->number
	uxth	r3, r5	@ _254, _252
	cmp	r5, r4	@ _252, _253
	uxth	r6, r4	@ _255, _253
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp295, _254,
	subs	r3, r3, r6	@ tmp297, tmp295, _255
	uxth	r3, r3	@ _256, tmp297
.LVL374:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #3]	@ _256, Differenz_20(D)->number
.LVL375:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #2]	@ zero_extendqisi2	@ _270, Minuend_17(D)->number
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ _271, Subtrahend_18(D)->number
	uxth	r3, r5	@ _272, _270
	cmp	r5, r4	@ _270, _271
	uxth	r6, r4	@ _273, _271
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp300, _272,
	subs	r3, r3, r6	@ tmp302, tmp300, _273
	uxth	r3, r3	@ _274, tmp302
.LVL376:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #2]	@ _274, Differenz_20(D)->number
.LVL377:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ _288, Minuend_17(D)->number
	ldrb	r4, [r2, #1]	@ zero_extendqisi2	@ _289, Subtrahend_18(D)->number
	uxth	r3, r5	@ _290, _288
	cmp	r5, r4	@ _288, _289
	uxth	r6, r4	@ _291, _289
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	cc
	addcc	r3, r3, #256	@ tmp305, _290,
	subs	r3, r3, r6	@ tmp307, tmp305, _291
	uxth	r3, r3	@ _292, tmp307
.LVL378:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0, #1]	@ _292, Differenz_20(D)->number
.LVL379:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:204:       if(Minuend->number[pos]  >= (Subtrahend->number[pos] + carry))
	.loc 1 204 0
	ldrb	r1, [r1]	@ zero_extendqisi2	@ _25, Minuend_17(D)->number
.LVL380:
	ldrb	r2, [r2]	@ zero_extendqisi2	@ _24, Subtrahend_18(D)->number
.LVL381:
	uxth	r3, r1	@ _15, _25
	cmp	r2, r1	@ _24, _25
	uxth	r4, r2	@ _13, _24
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:210:          tmp_diff = 0x100u+(uint16)Minuend->number[pos] - (uint16)Subtrahend->number[pos] - (uint16)carry;
	.loc 1 210 0
	it	hi
	addhi	r3, r3, #256	@ tmp310, _15,
	subs	r3, r3, r4	@ tmp312, tmp310, _13
	uxth	r3, r3	@ tmp_diff, tmp312
.LVL382:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:216:       Differenz->number[pos] = tmp_diff;
	.loc 1 216 0
	strb	r3, [r0]	@ tmp_diff, Differenz_20(D)->number
.LVL383:
.LBE314:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:218: }
	.loc 1 218 0
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
	.loc 1 220 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL384:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _15, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _16, Operand2_8(D)->number
	cmp	r2, r3	@ _15, _16
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL385:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _22, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _23, Operand2_8(D)->number
	cmp	r2, r3	@ _22, _23
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL386:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ _29, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _30, Operand2_8(D)->number
	cmp	r2, r3	@ _29, _30
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL387:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ _36, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _37, Operand2_8(D)->number
	cmp	r2, r3	@ _36, _37
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL388:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _43, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _44, Operand2_8(D)->number
	cmp	r2, r3	@ _43, _44
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL389:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ _50, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _51, Operand2_8(D)->number
	cmp	r2, r3	@ _50, _51
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL390:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ _57, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _58, Operand2_8(D)->number
	cmp	r2, r3	@ _57, _58
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL391:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ _64, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _65, Operand2_8(D)->number
	cmp	r2, r3	@ _64, _65
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL392:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ _71, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _72, Operand2_8(D)->number
	cmp	r2, r3	@ _71, _72
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL393:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ _78, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _79, Operand2_8(D)->number
	cmp	r2, r3	@ _78, _79
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL394:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ _85, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _86, Operand2_8(D)->number
	cmp	r2, r3	@ _85, _86
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL395:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ _92, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _93, Operand2_8(D)->number
	cmp	r2, r3	@ _92, _93
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL396:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ _99, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _100, Operand2_8(D)->number
	cmp	r2, r3	@ _99, _100
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL397:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ _106, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _107, Operand2_8(D)->number
	cmp	r2, r3	@ _106, _107
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL398:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ _113, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _114, Operand2_8(D)->number
	cmp	r2, r3	@ _113, _114
	bcc	.L310	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L311	@,
.LVL399:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
.LVL400:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:227:          is_less = TRUE;
	.loc 1 227 0
	cmp	r0, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	ite	cs
	movcs	r0, #0	@ <retval>,
	movcc	r0, #1	@ <retval>,
	bx	lr	@
.LVL401:
.L311:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:232:          is_less = FALSE;
	.loc 1 232 0
	movs	r0, #0	@ <retval>,
.LVL402:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:241: }
	.loc 1 241 0
	bx	lr	@
.LVL403:
.L310:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:227:          is_less = TRUE;
	.loc 1 227 0
	movs	r0, #1	@ <retval>,
.LVL404:
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
	.loc 1 243 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL405:
.LBB315:
.LBB316:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _122, Operand1_3(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _123, Operand2_4(D)->number
	cmp	r2, r3	@ _122, _123
	bcc	.L315	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L316	@,
.LVL406:
.LBE316:
.LBE315:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:243: {
	.loc 1 243 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB320:
.LBB317:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	cmp	r4, r5	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L347	@,
.LVL407:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL408:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ _143, Operand1_3(D)->number
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ _144, Operand2_4(D)->number
	cmp	lr, ip	@ _143, _144
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL409:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ _150, Operand1_3(D)->number
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@ _151, Operand2_4(D)->number
	cmp	lr, ip	@ _150, _151
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL410:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ _157, Operand1_3(D)->number
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ _158, Operand2_4(D)->number
	cmp	lr, ip	@ _157, _158
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL411:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ _164, Operand1_3(D)->number
	ldrb	ip, [r1, #6]	@ zero_extendqisi2	@ _165, Operand2_4(D)->number
	cmp	lr, ip	@ _164, _165
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL412:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ _171, Operand1_3(D)->number
	ldrb	ip, [r1, #7]	@ zero_extendqisi2	@ _172, Operand2_4(D)->number
	cmp	lr, ip	@ _171, _172
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL413:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #8]	@ zero_extendqisi2	@ _178, Operand1_3(D)->number
	ldrb	ip, [r1, #8]	@ zero_extendqisi2	@ _179, Operand2_4(D)->number
	cmp	lr, ip	@ _178, _179
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL414:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ _185, Operand1_3(D)->number
	ldrb	ip, [r1, #9]	@ zero_extendqisi2	@ _186, Operand2_4(D)->number
	cmp	lr, ip	@ _185, _186
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL415:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ _192, Operand1_3(D)->number
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ _193, Operand2_4(D)->number
	cmp	lr, ip	@ _192, _193
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL416:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #11]	@ zero_extendqisi2	@ _199, Operand1_3(D)->number
	ldrb	ip, [r1, #11]	@ zero_extendqisi2	@ _200, Operand2_4(D)->number
	cmp	lr, ip	@ _199, _200
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL417:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #12]	@ zero_extendqisi2	@ _206, Operand1_3(D)->number
	ldrb	ip, [r1, #12]	@ zero_extendqisi2	@ _207, Operand2_4(D)->number
	cmp	lr, ip	@ _206, _207
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL418:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #13]	@ zero_extendqisi2	@ _213, Operand1_3(D)->number
	ldrb	ip, [r1, #13]	@ zero_extendqisi2	@ _214, Operand2_4(D)->number
	cmp	lr, ip	@ _213, _214
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL419:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ _220, Operand1_3(D)->number
	ldrb	ip, [r1, #14]	@ zero_extendqisi2	@ _221, Operand2_4(D)->number
	cmp	lr, ip	@ _220, _221
	bcc	.L332	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	bhi	.L314	@,
.LVL420:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	ldrb	lr, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	ip, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	lr, ip	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L332	@,
.LVL421:
.L314:
.LBE317:
.LBE320:
.LBB321:
.LBB322:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	cmp	r2, r3	@ _122, _123
	bne	.L347	@,
.LVL422:
	cmp	r5, r4	@ Operand2_4(D)->number, Operand1_3(D)->number
	bne	.L347	@,
.LVL423:
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL424:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL425:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL426:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL427:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL428:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL429:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL430:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL431:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL432:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL433:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL434:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL435:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L347	@,
.LVL436:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
.LVL437:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	subs	r0, r0, r3	@ <retval>, Operand1_3(D)->number, Operand2_4(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
.LBE322:
.LBE321:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:245: }
	.loc 1 245 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL438:
.L347:
.LBB324:
.LBB323:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	movs	r0, #0	@ <retval>,
.LVL439:
.LBE323:
.LBE324:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:245: }
	.loc 1 245 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL440:
.L332:
.LBB325:
.LBB318:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	movs	r0, #1	@ <retval>,
.LVL441:
.LBE318:
.LBE325:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:245: }
	.loc 1 245 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL442:
.L315:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
.LBB326:
.LBB319:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:225:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 225 0
	movs	r0, #1	@ <retval>,
.LVL443:
	bx	lr	@
.LVL444:
.L316:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:230:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 230 0
	movs	r0, #0	@ <retval>,
.LVL445:
.LBE319:
.LBE326:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:245: }
	.loc 1 245 0
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
	.loc 1 247 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL446:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL447:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL448:
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL449:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL450:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL451:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL452:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL453:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL454:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL455:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL456:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL457:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL458:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL459:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL460:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
	cmp	r2, r3	@ Operand1_7(D)->number, Operand2_8(D)->number
	bne	.L368	@,
.LVL461:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_7(D)->number, Operand1_7(D)->number
.LVL462:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_8(D)->number, Operand2_8(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:254:          is_equal = FALSE;
	.loc 1 254 0
	subs	r0, r0, r3	@ <retval>, Operand1_7(D)->number, Operand2_8(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
	bx	lr	@
.LVL463:
.L368:
	movs	r0, #0	@ <retval>,
.LVL464:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:263: }
	.loc 1 263 0
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
	.loc 1 265 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL465:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _15, Operand1_7(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _16, Operand2_8(D)->number
	cmp	r2, r3	@ _15, _16
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL466:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ _22, Operand1_7(D)->number
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _23, Operand2_8(D)->number
	cmp	r2, r3	@ _22, _23
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL467:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ _29, Operand1_7(D)->number
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _30, Operand2_8(D)->number
	cmp	r2, r3	@ _29, _30
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL468:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ _36, Operand1_7(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _37, Operand2_8(D)->number
	cmp	r2, r3	@ _36, _37
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL469:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ _43, Operand1_7(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _44, Operand2_8(D)->number
	cmp	r2, r3	@ _43, _44
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL470:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ _50, Operand1_7(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _51, Operand2_8(D)->number
	cmp	r2, r3	@ _50, _51
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL471:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ _57, Operand1_7(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _58, Operand2_8(D)->number
	cmp	r2, r3	@ _57, _58
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL472:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ _64, Operand1_7(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _65, Operand2_8(D)->number
	cmp	r2, r3	@ _64, _65
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL473:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ _71, Operand1_7(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _72, Operand2_8(D)->number
	cmp	r2, r3	@ _71, _72
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL474:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ _78, Operand1_7(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _79, Operand2_8(D)->number
	cmp	r2, r3	@ _78, _79
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL475:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ _85, Operand1_7(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _86, Operand2_8(D)->number
	cmp	r2, r3	@ _85, _86
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL476:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ _92, Operand1_7(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _93, Operand2_8(D)->number
	cmp	r2, r3	@ _92, _93
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL477:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ _99, Operand1_7(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _100, Operand2_8(D)->number
	cmp	r2, r3	@ _99, _100
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL478:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ _106, Operand1_7(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _107, Operand2_8(D)->number
	cmp	r2, r3	@ _106, _107
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL479:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ _113, Operand1_7(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _114, Operand2_8(D)->number
	cmp	r2, r3	@ _113, _114
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L400	@,
.LVL480:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0, #15]	@ zero_extendqisi2	@ _2, Operand1_7(D)->number
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _3, Operand2_8(D)->number
	cmp	r2, r3	@ _2, _3
	bcc	.L401	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:272:          is_greater = FALSE;
	.loc 1 272 0
	ite	hi
	movhi	r0, #1	@ <retval>,
.LVL481:
	movls	r0, #0	@ <retval>,
	bx	lr	@
.LVL482:
.L400:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:277:          is_greater = TRUE;
	.loc 1 277 0
	movs	r0, #1	@ <retval>,
.LVL483:
	bx	lr	@
.LVL484:
.L401:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:272:          is_greater = FALSE;
	.loc 1 272 0
	movs	r0, #0	@ <retval>,
.LVL485:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:286: }
	.loc 1 286 0
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
	.loc 1 288 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL486:
.LBB327:
.LBB328:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r2, [r0]	@ zero_extendqisi2	@ _122, Operand1_3(D)->number
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _123, Operand2_4(D)->number
	cmp	r2, r3	@ _122, _123
	bcc	.L405	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L406	@,
.LVL487:
.LBE328:
.LBE327:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:288: {
	.loc 1 288 0
	push	{r4, r5, r6, r7, lr}	@
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LBB332:
.LBB329:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	cmp	r4, r5	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L437	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL488:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL489:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ _143, Operand1_3(D)->number
	ldrb	ip, [r1, #3]	@ zero_extendqisi2	@ _144, Operand2_4(D)->number
	cmp	lr, ip	@ _143, _144
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL490:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ _150, Operand1_3(D)->number
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@ _151, Operand2_4(D)->number
	cmp	lr, ip	@ _150, _151
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL491:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ _157, Operand1_3(D)->number
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ _158, Operand2_4(D)->number
	cmp	lr, ip	@ _157, _158
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL492:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ _164, Operand1_3(D)->number
	ldrb	ip, [r1, #6]	@ zero_extendqisi2	@ _165, Operand2_4(D)->number
	cmp	lr, ip	@ _164, _165
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL493:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ _171, Operand1_3(D)->number
	ldrb	ip, [r1, #7]	@ zero_extendqisi2	@ _172, Operand2_4(D)->number
	cmp	lr, ip	@ _171, _172
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL494:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #8]	@ zero_extendqisi2	@ _178, Operand1_3(D)->number
	ldrb	ip, [r1, #8]	@ zero_extendqisi2	@ _179, Operand2_4(D)->number
	cmp	lr, ip	@ _178, _179
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL495:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ _185, Operand1_3(D)->number
	ldrb	ip, [r1, #9]	@ zero_extendqisi2	@ _186, Operand2_4(D)->number
	cmp	lr, ip	@ _185, _186
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL496:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #10]	@ zero_extendqisi2	@ _192, Operand1_3(D)->number
	ldrb	ip, [r1, #10]	@ zero_extendqisi2	@ _193, Operand2_4(D)->number
	cmp	lr, ip	@ _192, _193
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL497:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #11]	@ zero_extendqisi2	@ _199, Operand1_3(D)->number
	ldrb	ip, [r1, #11]	@ zero_extendqisi2	@ _200, Operand2_4(D)->number
	cmp	lr, ip	@ _199, _200
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL498:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #12]	@ zero_extendqisi2	@ _206, Operand1_3(D)->number
	ldrb	ip, [r1, #12]	@ zero_extendqisi2	@ _207, Operand2_4(D)->number
	cmp	lr, ip	@ _206, _207
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL499:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #13]	@ zero_extendqisi2	@ _213, Operand1_3(D)->number
	ldrb	ip, [r1, #13]	@ zero_extendqisi2	@ _214, Operand2_4(D)->number
	cmp	lr, ip	@ _213, _214
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL500:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ _220, Operand1_3(D)->number
	ldrb	ip, [r1, #14]	@ zero_extendqisi2	@ _221, Operand2_4(D)->number
	cmp	lr, ip	@ _220, _221
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL501:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	ldrb	lr, [r0, #15]	@ zero_extendqisi2	@ _8, Operand1_3(D)->number
	ldrb	ip, [r1, #15]	@ zero_extendqisi2	@ _9, Operand2_4(D)->number
	cmp	lr, ip	@ _8, _9
	bcc	.L404	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	bhi	.L422	@,
.LVL502:
.L404:
.LBE329:
.LBE332:
.LBB333:
.LBB334:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	cmp	r2, r3	@ _122, _123
	bne	.L437	@,
.LVL503:
	cmp	r5, r4	@ Operand2_4(D)->number, Operand1_3(D)->number
	bne	.L437	@,
.LVL504:
	cmp	r7, r6	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL505:
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL506:
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL507:
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL508:
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL509:
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL510:
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL511:
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL512:
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL513:
	ldrb	r2, [r0, #11]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL514:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL515:
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL516:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	cmp	r2, r3	@ Operand1_3(D)->number, Operand2_4(D)->number
	bne	.L437	@,
.LVL517:
	ldrb	r0, [r0, #15]	@ zero_extendqisi2	@ Operand1_3(D)->number, Operand1_3(D)->number
.LVL518:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ Operand2_4(D)->number, Operand2_4(D)->number
	subs	r0, r0, r3	@ <retval>, Operand1_3(D)->number, Operand2_4(D)->number
	clz	r0, r0	@ <retval>, <retval>
	lsrs	r0, r0, #5	@ <retval>, <retval>,
.LBE334:
.LBE333:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:290: }
	.loc 1 290 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL519:
.L437:
.LBB336:
.LBB335:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:252:       if(Operand1->number[pos] != Operand2->number[pos])
	.loc 1 252 0
	movs	r0, #0	@ <retval>,
.LVL520:
.LBE335:
.LBE336:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:290: }
	.loc 1 290 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL521:
.L422:
.LBB337:
.LBB330:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	movs	r0, #1	@ <retval>,
.LVL522:
.LBE330:
.LBE337:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:290: }
	.loc 1 290 0
	pop	{r4, r5, r6, r7, pc}	@
.LVL523:
.L405:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 14
.LBB338:
.LBB331:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:270:       if(Operand1->number[pos] < Operand2->number[pos])
	.loc 1 270 0
	movs	r0, #0	@ <retval>,
.LVL524:
	bx	lr	@
.LVL525:
.L406:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:275:       else if (Operand1->number[pos] > Operand2->number[pos])
	.loc 1 275 0
	movs	r0, #1	@ <retval>,
.LVL526:
.LBE331:
.LBE338:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:290: }
	.loc 1 290 0
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
	.loc 1 292 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL527:
	adds	r2, r0, #4	@ vectp_leftOperand.162, leftOperand,
	cmp	r1, r2	@ rightOperand, vectp_leftOperand.162
	bcs	.L454	@,
	adds	r3, r1, #4	@ tmp169, rightOperand,
	cmp	r0, r3	@ leftOperand, tmp169
	bcc	.L443	@,
.L454:
	negs	r3, r1	@ tmp173, rightOperand
	ands	r3, r3, #3	@ prolog_loop_niters.152, tmp173,
	push	{r4, r5, r6, r7}	@
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	beq	.L445	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r2, [r1]	@ zero_extendqisi2	@ _231, rightOperand_6(D)->number
	strb	r2, [r0]	@ _231, leftOperand_7(D)->number
.LVL528:
	cmp	r3, #1	@ prolog_loop_niters.152,
	beq	.L452	@,
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ _241, rightOperand_6(D)->number
	strb	r2, [r0, #1]	@ _241, leftOperand_7(D)->number
.LVL529:
	cmp	r3, #3	@ prolog_loop_niters.152,
	bne	.L453	@,
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ _31, rightOperand_6(D)->number
	strb	r2, [r0, #2]	@ _31, leftOperand_7(D)->number
.LVL530:
	movs	r7, #13	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r6, r3	@ pos, prolog_loop_niters.152
.LVL531:
.L446:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldr	r2, [r1, r3]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.160_199]
	str	r2, [r0, r3]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.163_248]
	adds	r5, r1, r3	@ vectp_rightOperand.160, rightOperand, prolog_loop_niters.152
	adds	r2, r0, r3	@ vectp_leftOperand.163, leftOperand, prolog_loop_niters.152
	adds	r5, r5, #4	@ vectp_rightOperand.159, vectp_rightOperand.160,
	adds	r4, r2, #4	@ vectp_leftOperand.162, vectp_leftOperand.163,
	rsb	ip, r3, #16	@ tmp205, prolog_loop_niters.152,
	ldr	r3, [r5]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.159_263]
	str	r3, [r4]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.162_264]
	movs	r2, #3	@ bnd.155,
	ldr	r3, [r5, #4]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.159_263 + 4B]
	str	r3, [r4, #4]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.162_264 + 4B]
	cmp	r2, #4	@ bnd.155,
	uxtb	ip, ip	@ niters.154, tmp205
	bne	.L467	@,
.L450:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0 is_stmt 0 discriminator 3
	ldr	r3, [r5, #8]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.159_263 + 8B]
	str	r3, [r4, #8]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.162_264 + 8B]
	sub	r2, r7, #16	@ tmp180, ivtmp_254,
	cmp	ip, #16	@ niters.154,
	uxtb	r2, r2	@ tmp.158, tmp180
	add	r3, r6, #16	@ tmp.157, pos,
	beq	.L442	@,
.L451:
.LVL532:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r4, [r1, r3]	@ zero_extendqisi2	@ _187, rightOperand_6(D)->number
	strb	r4, [r0, r3]	@ _187, leftOperand_7(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0 is_stmt 1
	cmp	r2, #1	@ tmp.158,
	add	r4, r3, #1	@ tmp182, tmp.157,
	uxtb	r4, r4	@ pos, tmp182
.LVL533:
	beq	.L442	@,
	adds	r3, r3, #2	@ tmp187, tmp.157,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r5, [r1, r4]	@ zero_extendqisi2	@ _195, rightOperand_6(D)->number
	strb	r5, [r0, r4]	@ _195, leftOperand_7(D)->number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	cmp	r2, #2	@ tmp.158,
	uxtb	r3, r3	@ pos, tmp187
.LVL534:
	beq	.L442	@,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r2, [r1, r3]	@ zero_extendqisi2	@ _53, rightOperand_6(D)->number
	strb	r2, [r0, r3]	@ _53, leftOperand_7(D)->number
.LVL535:
.L442:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:298: }
	.loc 1 298 0
	pop	{r4, r5, r6, r7}	@
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
.LVL536:
.L443:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _1, rightOperand_6(D)->number
	strb	r3, [r0]	@ _1, leftOperand_7(D)->number
.LVL537:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _75, rightOperand_6(D)->number
	strb	r3, [r0, #1]	@ _75, leftOperand_7(D)->number
.LVL538:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ _83, rightOperand_6(D)->number
	strb	r3, [r0, #2]	@ _83, leftOperand_7(D)->number
.LVL539:
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ _91, rightOperand_6(D)->number
	strb	r3, [r0, #3]	@ _91, leftOperand_7(D)->number
.LVL540:
	ldrb	r3, [r1, #4]	@ zero_extendqisi2	@ _99, rightOperand_6(D)->number
	strb	r3, [r0, #4]	@ _99, leftOperand_7(D)->number
.LVL541:
	ldrb	r3, [r1, #5]	@ zero_extendqisi2	@ _107, rightOperand_6(D)->number
	strb	r3, [r0, #5]	@ _107, leftOperand_7(D)->number
.LVL542:
	ldrb	r3, [r1, #6]	@ zero_extendqisi2	@ _115, rightOperand_6(D)->number
	strb	r3, [r0, #6]	@ _115, leftOperand_7(D)->number
.LVL543:
	ldrb	r3, [r1, #7]	@ zero_extendqisi2	@ _123, rightOperand_6(D)->number
	strb	r3, [r0, #7]	@ _123, leftOperand_7(D)->number
.LVL544:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ _131, rightOperand_6(D)->number
	strb	r3, [r0, #8]	@ _131, leftOperand_7(D)->number
.LVL545:
	ldrb	r3, [r1, #9]	@ zero_extendqisi2	@ _139, rightOperand_6(D)->number
	strb	r3, [r0, #9]	@ _139, leftOperand_7(D)->number
.LVL546:
	ldrb	r3, [r1, #10]	@ zero_extendqisi2	@ _147, rightOperand_6(D)->number
	strb	r3, [r0, #10]	@ _147, leftOperand_7(D)->number
.LVL547:
	ldrb	r3, [r1, #11]	@ zero_extendqisi2	@ _155, rightOperand_6(D)->number
	strb	r3, [r0, #11]	@ _155, leftOperand_7(D)->number
.LVL548:
	ldrb	r3, [r1, #12]	@ zero_extendqisi2	@ _163, rightOperand_6(D)->number
	strb	r3, [r0, #12]	@ _163, leftOperand_7(D)->number
.LVL549:
	ldrb	r3, [r1, #13]	@ zero_extendqisi2	@ _171, rightOperand_6(D)->number
	strb	r3, [r0, #13]	@ _171, leftOperand_7(D)->number
.LVL550:
	ldrb	r3, [r1, #14]	@ zero_extendqisi2	@ _179, rightOperand_6(D)->number
	strb	r3, [r0, #14]	@ _179, leftOperand_7(D)->number
.LVL551:
	ldrb	r3, [r1, #15]	@ zero_extendqisi2	@ _21, rightOperand_6(D)->number
	strb	r3, [r0, #15]	@ _21, leftOperand_7(D)->number
.LVL552:
	bx	lr	@
.LVL553:
.L452:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	movs	r7, #15	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r6, r3	@ pos, prolog_loop_niters.152
	b	.L446	@
.LVL554:
.L445:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	mov	r5, r1	@ vectp_rightOperand.159, rightOperand
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	mov	r6, r3	@ pos, prolog_loop_niters.152
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:296:       leftOperand->number[pos] = rightOperand->number[pos];
	.loc 1 296 0
	ldr	r4, [r5], #4	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.160_118]
	str	r4, [r0]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.163_126]
	mov	r4, r2	@ vectp_leftOperand.162, vectp_leftOperand.162
	ldr	r3, [r5]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.159_263]
	str	r3, [r4]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.162_264]
	movs	r2, #4	@ bnd.155,
	mov	ip, #16	@ niters.154,
	ldr	r3, [r5, #4]	@ vect__2.161, MEM[(uint8[16] *)vectp_rightOperand.159_263 + 4B]
	str	r3, [r4, #4]	@ unaligned	@ vect__2.161, MEM[(uint8[16] *)vectp_leftOperand.162_264 + 4B]
	cmp	r2, #4	@ bnd.155,
	mov	r7, ip	@ ivtmp_254, niters.154
	beq	.L450	@,
.L467:
	sub	r2, r7, #12	@ tmp207, ivtmp_254,
	uxtb	r2, r2	@ tmp.158, tmp207
	add	r3, r6, #12	@ tmp.157, pos,
	b	.L451	@
.LVL555:
.L453:
	movs	r7, #14	@ ivtmp_254,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:294:    for (pos = 0u; pos < BIG_INT_SIZE; pos++)
	.loc 1 294 0
	movs	r6, #2	@ pos,
	b	.L446	@
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
	.loc 1 300 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL556:
	movs	r3, #0	@ tmp112,
	str	r3, [r0]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #4]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #8]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
	str	r3, [r0, #12]	@ unaligned	@ tmp112, MEM[(void *)leftOperand_5(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:306: }
	.loc 1 306 0
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
	.loc 1 309 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL557:
	push	{r4, r5}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	movs	r3, #0	@ tmp120,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:319:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 319 0
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
.LVL558:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:321: }
	.loc 1 321 0
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
	.global	SHIFT_LEFT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SHIFT_LEFT, %function
SHIFT_LEFT:
.LFB16:
	.loc 1 323 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL559:
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
	sub	sp, sp, #92	@,,
	.cfi_def_cfa_offset 128
.LVL560:
	movs	r3, #0	@ tmp244,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:332:    if(amount_bits_shift > 24u)
	.loc 1 332 0
	cmp	r1, #24	@ amount_bits_shift,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:323: {
	.loc 1 323 0
	str	r1, [sp, #44]	@ amount_bits_shift, %sfp
	str	r0, [sp, #52]	@ number, %sfp
	strd	r3, r3, [sp, #72]	@ tmp244, tmp244,,
	strd	r3, r3, [sp, #80]	@ tmp244, tmp244,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:332:    if(amount_bits_shift > 24u)
	.loc 1 332 0
	bhi	.L477	@,
	ldrb	r2, [sp, #87]	@ zero_extendqisi2	@ result_number_I_lsm.169, result.number
	str	r2, [sp]	@ result_number_I_lsm.169, %sfp
	ldrb	r2, [sp, #77]	@ zero_extendqisi2	@ result_number_I_lsm.189, result.number
	str	r2, [sp, #24]	@ result_number_I_lsm.189, %sfp
	ldrb	r2, [sp, #76]	@ zero_extendqisi2	@ result_number_I_lsm.191, result.number
	str	r2, [sp, #20]	@ result_number_I_lsm.191, %sfp
	ldrb	r2, [sp, #75]	@ zero_extendqisi2	@ result_number_I_lsm.193, result.number
	str	r2, [sp, #16]	@ result_number_I_lsm.193, %sfp
.LBB339:
.LBB340:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:304:       leftOperand->number[pos] = 0x00u;
	.loc 1 304 0
	str	r3, [sp, #48]	@ tmp244, %sfp
	ldrb	r2, [sp, #74]	@ zero_extendqisi2	@ result_number_I_lsm.195, result.number
	ldr	r3, [sp, #52]	@ number, %sfp
	ldrb	lr, [sp, #84]	@ zero_extendqisi2	@ result_number_I_lsm.175, result.number
	ldrb	ip, [sp, #83]	@ zero_extendqisi2	@ result_number_I_lsm.177, result.number
	ldrb	r7, [sp, #82]	@ zero_extendqisi2	@ result_number_I_lsm.179, result.number
	ldrb	r0, [sp, #78]	@ zero_extendqisi2	@ result_number_I_lsm.187, result.number
.LVL561:
	ldrb	r6, [sp, #81]	@ zero_extendqisi2	@ result_number_I_lsm.181, result.number
	ldrb	r5, [sp, #80]	@ zero_extendqisi2	@ result_number_I_lsm.183, result.number
	ldrb	r4, [sp, #79]	@ zero_extendqisi2	@ result_number_I_lsm.185, result.number
	str	r2, [sp, #12]	@ result_number_I_lsm.195, %sfp
	ldrb	r2, [sp, #73]	@ zero_extendqisi2	@ result_number_I_lsm.197, result.number
	str	r2, [sp, #8]	@ result_number_I_lsm.197, %sfp
	adds	r3, r3, #16	@ ivtmp.213, number,
.LVL562:
	ldrb	r2, [sp, #72]	@ zero_extendqisi2	@ result_number_I_lsm.199, result.number
	ldrb	r9, [sp, #86]	@ zero_extendqisi2	@ result_number_I_lsm.171, result.number
	ldrb	r8, [sp, #85]	@ zero_extendqisi2	@ result_number_I_lsm.173, result.number
	str	r2, [sp, #4]	@ result_number_I_lsm.199, %sfp
	mov	r10, lr	@ result_number_I_lsm.175, result_number_I_lsm.175
	str	r3, [sp, #28]	@ ivtmp.213, %sfp
	mov	lr, r7	@ result_number_I_lsm.179, result_number_I_lsm.179
	add	fp, sp, #72	@ tmp413,,
	mov	r7, r0	@ result_number_I_lsm.187, result_number_I_lsm.187
	mov	r2, r4	@ result_number_I_lsm.185, result_number_I_lsm.185
	mov	r0, ip	@ result_number_I_lsm.177, result_number_I_lsm.177
	mov	r1, r6	@ result_number_I_lsm.181, result_number_I_lsm.181
.LVL563:
	mov	ip, r5	@ result_number_I_lsm.183, result_number_I_lsm.183
.L474:
.LVL564:
.LBE340:
.LBE339:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:340:       tmp32 = ((uint32)number->number[(uint32)pos]) << amount_bits_shift;
	.loc 1 340 0
	ldr	r4, [sp, #28]	@ ivtmp.213, %sfp
	ldr	r5, [sp, #44]	@ amount_bits_shift, %sfp
	ldrb	r3, [r4, #-1]!	@ zero_extendqisi2	@ MEM[base: _212, offset: 0B], MEM[base: _212, offset: 0B]
	str	r4, [sp, #28]	@ ivtmp.213, %sfp
.LBB343:
.LBB341:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:304:       leftOperand->number[pos] = 0x00u;
	.loc 1 304 0
	ldr	r4, [sp, #48]	@ tmp249, %sfp
	str	r4, [sp, #68]	@ tmp249, MEM[(uint8[16] *)&tmpBigInt + 12B]
.LVL565:
.LBE341:
.LBE343:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:340:       tmp32 = ((uint32)number->number[(uint32)pos]) << amount_bits_shift;
	.loc 1 340 0
	lsls	r3, r3, r5	@ tmp32, MEM[base: _212, offset: 0B], amount_bits_shift
.LVL566:
.LBB344:
.LBB342:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:304:       leftOperand->number[pos] = 0x00u;
	.loc 1 304 0
	strd	r4, r4, [sp, #60]	@ tmp249, tmp249,,
	str	r4, [sp, #56]	@ tmp249, MEM[(uint8[16] *)&tmpBigInt]
.LBE342:
.LBE344:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:341:       tmpBigInt.number[(uint32)pos]      = (tmp32 >> 0u) & 0xFF;
	.loc 1 341 0
	strb	r3, [fp, #-1]!	@ tmp32, MEM[base: _211, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:342:       tmpBigInt.number[(uint32)pos+1u]   = (tmp32 >> 8u) & 0xFF;
	.loc 1 342 0
	lsrs	r5, r3, #8	@ tmp255, tmp32,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:343:       tmpBigInt.number[(uint32)pos+2u]   = (tmp32 >>16u) & 0xFF;
	.loc 1 343 0
	lsrs	r4, r3, #16	@ tmp257, tmp32,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:344:       tmpBigInt.number[(uint32)pos+3u]   = (tmp32 >>24u) & 0xFF;
	.loc 1 344 0
	lsrs	r3, r3, #24	@ tmp259, tmp32,
.LVL567:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:342:       tmpBigInt.number[(uint32)pos+1u]   = (tmp32 >> 8u) & 0xFF;
	.loc 1 342 0
	strb	r5, [fp, #1]	@ tmp255, MEM[base: _211, offset: 1B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:343:       tmpBigInt.number[(uint32)pos+2u]   = (tmp32 >>16u) & 0xFF;
	.loc 1 343 0
	strb	r4, [fp, #2]	@ tmp257, MEM[base: _211, offset: 2B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:344:       tmpBigInt.number[(uint32)pos+3u]   = (tmp32 >>24u) & 0xFF;
	.loc 1 344 0
	strb	r3, [fp, #3]	@ tmp259, MEM[base: _211, offset: 3B]
.LVL568:
.LBB345:
.LBB346:
.LBB347:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldrb	r5, [sp, #71]	@ zero_extendqisi2	@ _74, tmpBigInt.number
	ldr	r6, [sp]	@ result_number_I_lsm.169, %sfp
	ldrb	r4, [sp, #70]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r3, [sp, #69]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r6, r6, r5	@ result_number_I_lsm.169, _74
.LVL569:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r5, r6, #65280	@ tmp269, tmp263,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r9, r9, r4	@ tmp268, tmpBigInt.number
	add	r9, r9, r5	@ tmp272, tmp269
	uxth	r4, r9	@ tmp_sum, tmp272
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r4, [sp, #32]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r8, r8, r3	@ tmp277, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r8, r8, r4	@ tmp279, carry
	ldrb	r5, [sp, #68]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r6, [sp]	@ tmp263, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	uxth	r6, r8	@ tmp_sum, tmp279
.LVL570:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r6, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r5, r5, r10	@ tmp284, result_number_I_lsm.175
	ldrb	r3, [sp, #67]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r6, [sp, #36]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r5, r5, r4	@ tmp286, carry
	uxth	r8, r5	@ tmp_sum, tmp286
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r8, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r0, r0, r3	@ tmp291, tmpBigInt.number
	ldrb	r5, [sp, #66]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r3, [sp, #65]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldr	r6, [sp, #24]	@ result_number_I_lsm.189, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r8, [sp, #40]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r0, r0, r4	@ tmp293, carry
	uxth	r0, r0	@ tmp_sum, tmp293
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r0, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	lr, lr, r5	@ tmp298, tmpBigInt.number
	add	lr, lr, r4	@ tmp300, carry
	uxth	lr, lr	@ tmp_sum, tmp300
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, lr, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r1, r1, r3	@ tmp305, tmpBigInt.number
	ldrb	r5, [sp, #64]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r3, [sp, #63]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r1, r1, r4	@ tmp307, carry
	uxth	r1, r1	@ tmp_sum, tmp307
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r1, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	ip, ip, r5	@ tmp312, tmpBigInt.number
	add	ip, ip, r4	@ tmp314, carry
	uxth	ip, ip	@ tmp_sum, tmp314
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, ip, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r2, r2, r3	@ tmp319, tmpBigInt.number
	ldrb	r5, [sp, #62]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r3, [sp, #61]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r2, r2, r4	@ tmp321, carry
	uxth	r2, r2	@ tmp_sum, tmp321
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r2, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r7, r7, r5	@ tmp326, tmpBigInt.number
	add	r7, r7, r4	@ tmp328, carry
	uxth	r7, r7	@ tmp_sum, tmp328
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r7, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r6	@ tmp333, result_number_I_lsm.189
	add	r3, r3, r4	@ tmp335, carry
	uxth	r3, r3	@ tmp_sum, tmp335
	ldrb	r4, [sp, #60]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r5, [sp, #59]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	str	r3, [sp, #24]	@ tmp_sum, %sfp
	and	r6, r3, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, [sp, #20]	@ result_number_I_lsm.191, %sfp
	ldrb	r9, [sp, #58]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldrb	r8, [sp, #57]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	add	r4, r4, r3	@ tmp340, result_number_I_lsm.191
	add	r6, r6, r4	@ tmp342, tmp340
	ldr	r3, [sp, #16]	@ result_number_I_lsm.193, %sfp
	uxth	r6, r6	@ tmp_sum, tmp342
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r6, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r5, r5, r3	@ tmp347, result_number_I_lsm.193
	add	r5, r5, r4	@ tmp349, carry
	ldr	r3, [sp, #12]	@ result_number_I_lsm.195, %sfp
	uxth	r5, r5	@ tmp_sum, tmp349
	add	r9, r9, r3	@ tmp354, result_number_I_lsm.195
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r4, r5, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	ldr	r3, [sp, #8]	@ result_number_I_lsm.197, %sfp
	add	r4, r4, r9	@ tmp356, tmp354
	uxth	r4, r4	@ tmp_sum, tmp356
	add	r8, r8, r3	@ tmp361, result_number_I_lsm.197
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0
	and	r10, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r10, r10, r8	@ tmp363, tmp361
	uxth	r3, r10	@ tmp_sum, tmp363
	str	r3, [sp, #8]	@ tmp_sum, %sfp
	ldrb	r9, [sp, #56]	@ zero_extendqisi2	@ tmpBigInt.number, tmpBigInt.number
	ldr	r3, [sp, #4]	@ result_number_I_lsm.199, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	r8, [sp, #36]	@ zero_extendqisi2	@ result_number_I_lsm.173, %sfp
	ldrb	r10, [sp, #40]	@ zero_extendqisi2	@ result_number_I_lsm.175, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0
	add	r3, r3, r9	@ result_number_I_lsm.199, tmpBigInt.number
	str	r3, [sp, #4]	@ result_number_I_lsm.199, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	r3, [sp]	@ zero_extendqisi2	@ result_number_I_lsm.169, %sfp
	str	r3, [sp]	@ result_number_I_lsm.169, %sfp
.LVL571:
	ldrb	r3, [sp, #24]	@ zero_extendqisi2	@ result_number_I_lsm.189, %sfp
	str	r3, [sp, #24]	@ result_number_I_lsm.189, %sfp
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@ result_number_I_lsm.199, %sfp
	str	r3, [sp, #4]	@ result_number_I_lsm.199, %sfp
.LVL572:
	uxtb	r4, r4	@ result_number_I_lsm.195, tmp_sum
.LBE347:
.LBE346:
.LBE345:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	add	r3, sp, #56	@ tmp468,,
.LVL573:
.LBB352:
.LBB350:
.LBB348:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	uxtb	r6, r6	@ result_number_I_lsm.191, tmp_sum
	uxtb	r5, r5	@ result_number_I_lsm.193, tmp_sum
	str	r4, [sp, #12]	@ result_number_I_lsm.195, %sfp
.LBE348:
.LBE350:
.LBE352:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	cmp	r3, fp	@ tmp468, ivtmp.217
.LBB353:
.LBB351:
.LBB349:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0
	ldrb	r4, [sp, #8]	@ zero_extendqisi2	@ result_number_I_lsm.197, %sfp
	ldrb	r9, [sp, #32]	@ zero_extendqisi2	@ result_number_I_lsm.171, %sfp
	str	r6, [sp, #20]	@ result_number_I_lsm.191, %sfp
	uxtb	r0, r0	@ result_number_I_lsm.177, tmp_sum
	uxtb	lr, lr	@ result_number_I_lsm.179, tmp_sum
	uxtb	r1, r1	@ result_number_I_lsm.181, tmp_sum
	uxtb	ip, ip	@ result_number_I_lsm.183, tmp_sum
	uxtb	r2, r2	@ result_number_I_lsm.185, tmp_sum
	uxtb	r7, r7	@ result_number_I_lsm.187, tmp_sum
	str	r5, [sp, #16]	@ result_number_I_lsm.193, %sfp
	str	r4, [sp, #8]	@ result_number_I_lsm.197, %sfp
.LBE349:
.LBE351:
.LBE353:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:337:    for (pos = BIG_INT_SIZE-1u; pos >= 0; pos--)
	.loc 1 337 0
	bne	.L474	@,
	mov	r4, r2	@ result_number_I_lsm.185, result_number_I_lsm.185
	mov	r5, ip	@ result_number_I_lsm.183, result_number_I_lsm.183
	mov	r6, r1	@ result_number_I_lsm.181, result_number_I_lsm.181
	mov	ip, r0	@ result_number_I_lsm.177, result_number_I_lsm.177
	ldr	r1, [sp, #4]	@ result_number_I_lsm.199, %sfp
	ldr	r0, [sp, #20]	@ result_number_I_lsm.191, %sfp
	movs	r2, #0	@ result_number_I_lsm.199,
	mov	r3, r2	@ result_number_I_lsm.191, result_number_I_lsm.199
.LVL574:
	bfi	r2, r1, #0, #8	@ result_number_I_lsm.199, result_number_I_lsm.199,,
	mov	r1, r3	@ result_number_I_lsm.183, result_number_I_lsm.191
	bfi	r3, r0, #0, #8	@ result_number_I_lsm.191, result_number_I_lsm.191,,
	ldr	r0, [sp, #8]	@ result_number_I_lsm.197, %sfp
	bfi	r2, r0, #8, #8	@ result_number_I_lsm.199, result_number_I_lsm.197,,
	ldr	r0, [sp, #24]	@ result_number_I_lsm.189, %sfp
	bfi	r3, r0, #8, #8	@ result_number_I_lsm.191, result_number_I_lsm.189,,
	ldr	r0, [sp, #12]	@ result_number_I_lsm.195, %sfp
	mov	fp, r7	@ result_number_I_lsm.187, result_number_I_lsm.187
	bfi	r2, r0, #16, #8	@ result_number_I_lsm.199, result_number_I_lsm.195,,
	mov	r7, lr	@ result_number_I_lsm.179, result_number_I_lsm.179
	ldr	r0, [sp, #16]	@ result_number_I_lsm.193, %sfp
	mov	lr, r10	@ result_number_I_lsm.175, result_number_I_lsm.175
	mov	r10, r1	@ result_number_I_lsm.175, result_number_I_lsm.183
	bfi	r10, lr, #0, #8	@ result_number_I_lsm.175, result_number_I_lsm.175,,
	bfi	r1, r5, #0, #8	@ result_number_I_lsm.183, result_number_I_lsm.183,,
	bfi	r2, r0, #24, #8	@ result_number_I_lsm.199, result_number_I_lsm.193,,
	bfi	r1, r6, #8, #8	@ result_number_I_lsm.183, result_number_I_lsm.181,,
	ldr	r0, [sp]	@ result_number_I_lsm.169, %sfp
	bfi	r10, r8, #8, #8	@ result_number_I_lsm.175, result_number_I_lsm.173,,
	bfi	r3, fp, #16, #8	@ result_number_I_lsm.191, result_number_I_lsm.187,,
	bfi	r1, r7, #16, #8	@ result_number_I_lsm.183, result_number_I_lsm.179,,
	bfi	r10, r9, #16, #8	@ result_number_I_lsm.175, result_number_I_lsm.171,,
	bfi	r3, r4, #24, #8	@ result_number_I_lsm.191, result_number_I_lsm.185,,
	bfi	r1, ip, #24, #8	@ result_number_I_lsm.183, result_number_I_lsm.177,,
	bfi	r10, r0, #24, #8	@ result_number_I_lsm.175, result_number_I_lsm.169,,
	strd	r2, r3, [sp, #72]	@ result_number_I_lsm.199, result_number_I_lsm.191,,
	strd	r1, r10, [sp, #80]	@ result_number_I_lsm.183, result_number_I_lsm.175,,
	add	r4, sp, #72	@ tmp483,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp377,,,,
	ldr	r4, [sp, #52]	@ number, %sfp
	str	r0, [r4]	@ unaligned	@, MEM[(char * {ref-all})number_19(D)]
.LVL575:
	str	r1, [r4, #4]	@ unaligned	@, MEM[(char * {ref-all})number_19(D)]
	str	r2, [r4, #8]	@ unaligned	@, MEM[(char * {ref-all})number_19(D)]
	str	r3, [r4, #12]	@ unaligned	@, MEM[(char * {ref-all})number_19(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:348: }
	.loc 1 348 0
	add	sp, sp, #92	@,,
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL576:
.L477:
	.cfi_restore_state
.LBB354:
.LBB355:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:6:    OS_SW_BUG[task_func_nr] = bug_nr;
	.loc 1 6 0
	ldr	r3, .L478	@ tmp245,
	movs	r2, #13	@ tmp246,
	strb	r2, [r3, #21]	@ tmp246, OS_SW_BUG
.LVL577:
.LBE355:
.LBE354:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:348: }
	.loc 1 348 0
	add	sp, sp, #92	@,,
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.LVL578:
.L479:
	.align	2
.L478:
	.word	OS_SW_BUG
	.cfi_endproc
.LFE16:
	.size	SHIFT_LEFT, .-SHIFT_LEFT
	.align	1
	.p2align 2,,3
	.global	INT_MUL
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	INT_MUL, %function
INT_MUL:
.LFB5:
	.loc 1 136 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL579:
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
	sub	sp, sp, #116	@,,
	.cfi_def_cfa_offset 152
.LVL580:
	movs	r3, #0	@ tmp248,
	adds	r1, r1, #15	@ ivtmp.239, Faktor1,
.LVL581:
	str	r1, [sp, #56]	@ ivtmp.239, %sfp
	strd	r3, r3, [sp, #80]	@ tmp248, tmp248,,
	rsb	r1, r2, #15	@ ivtmp.241, Faktor2,
.LVL582:
	strd	r3, r3, [sp, #88]	@ tmp248, tmp248,,
	strd	r3, r3, [sp, #32]	@ prephitmp_73, prephitmp_74,,
	strd	r3, r3, [sp, #16]	@ _323, prephitmp_92,,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:136: {
	.loc 1 136 0
	str	r2, [sp, #60]	@ Faktor2, %sfp
	str	r1, [sp, #52]	@ ivtmp.241, %sfp
	mvns	r1, r2	@ _367, Faktor2
	adds	r2, r2, #16	@ ivtmp.230, Faktor2,
.LVL583:
	str	r0, [sp, #76]	@ Produkt, %sfp
	str	r1, [sp, #68]	@ _367, %sfp
	str	r2, [sp, #72]	@ ivtmp.230, %sfp
.LBB356:
.LBB357:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:314:       leftOperand->number[pos] = 0x00u;
	.loc 1 314 0
	str	r3, [sp, #64]	@ tmp248, %sfp
	mov	fp, r3	@ _83, tmp248
	mov	r9, r3	@ _99, _83
	str	r3, [sp, #12]	@ prephitmp_103, %sfp
	mov	r6, r3	@ prephitmp_92, prephitmp_102
	mov	r5, r3	@ prephitmp_89, prephitmp_92
	mov	r4, r3	@ prephitmp_88, prephitmp_89
	mov	r10, r3	@ prephitmp_86, prephitmp_87
	mov	r0, r3	@ prephitmp_76, prephitmp_76
.LVL584:
	str	r3, [sp, #28]	@ prephitmp_49, %sfp
	str	r3, [sp, #8]	@ prephitmp_52, %sfp
	str	r3, [sp, #24]	@ prephitmp_102, %sfp
	mov	r8, r3	@ prephitmp_104, prephitmp_104
.LVL585:
.L481:
	ldr	r3, [sp, #72]	@ ivtmp.230, %sfp
	str	r3, [sp, #4]	@ ivtmp.230, %sfp
	mov	r1, r6	@ prephitmp_89, prephitmp_89
	mov	r3, r0	@ prephitmp_76, prephitmp_76
	mov	r6, r10	@ prephitmp_86, prephitmp_86
	mov	r2, r4	@ prephitmp_87, prephitmp_87
	mov	r7, r5	@ prephitmp_88, prephitmp_88
	mov	r10, r1	@ prephitmp_89, prephitmp_89
.LVL586:
.L482:
	strd	r2, r3, [sp, #44]	@ prephitmp_87, prephitmp_76,,
.LBE357:
.LBE356:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:172:          local_tmp16 = ((uint16) *((uint8*)Faktor1+(uint32)pos1)) * ((uint16) *((uint8*)Faktor2+(uint32)pos2));
	.loc 1 172 0 discriminator 3
	ldr	r3, [sp, #56]	@ ivtmp.239, %sfp
.LBB363:
.LBB358:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:314:       leftOperand->number[pos] = 0x00u;
	.loc 1 314 0 discriminator 3
	ldr	r2, [sp, #64]	@ tmp255, %sfp
.LBE358:
.LBE363:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:172:          local_tmp16 = ((uint16) *((uint8*)Faktor1+(uint32)pos1)) * ((uint16) *((uint8*)Faktor2+(uint32)pos2));
	.loc 1 172 0 discriminator 3
	ldrb	r1, [r3]	@ zero_extendqisi2	@ MEM[base: _364, offset: 0B], MEM[base: _364, offset: 0B]
	ldr	r3, [sp, #4]	@ ivtmp.230, %sfp
.LBB364:
.LBB359:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:314:       leftOperand->number[pos] = 0x00u;
	.loc 1 314 0 discriminator 3
	str	r2, [sp, #96]	@ tmp255, MEM[(uint8[16] *)&local_tmp_bigInt]
.LBE359:
.LBE364:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:172:          local_tmp16 = ((uint16) *((uint8*)Faktor1+(uint32)pos1)) * ((uint16) *((uint8*)Faktor2+(uint32)pos2));
	.loc 1 172 0 discriminator 3
	ldrb	r0, [r3, #-1]!	@ zero_extendqisi2	@ MEM[base: _407, offset: 0B], MEM[base: _407, offset: 0B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:176:          SHIFT_LEFT(&local_tmp_bigInt, pos1+pos2);
	.loc 1 176 0 discriminator 3
	str	r3, [sp, #4]	@ ivtmp.230, %sfp
.LVL587:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:172:          local_tmp16 = ((uint16) *((uint8*)Faktor1+(uint32)pos1)) * ((uint16) *((uint8*)Faktor2+(uint32)pos2));
	.loc 1 172 0 discriminator 3
	mul	r1, r1, r0	@ local_tmp16, MEM[base: _364, offset: 0B], MEM[base: _407, offset: 0B]
.LVL588:
.LBB365:
.LBB360:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:314:       leftOperand->number[pos] = 0x00u;
	.loc 1 314 0 discriminator 3
	strd	r2, r2, [sp, #100]	@ tmp255, tmp255,,
.LVL589:
.LBE360:
.LBE365:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:176:          SHIFT_LEFT(&local_tmp_bigInt, pos1+pos2);
	.loc 1 176 0 discriminator 3
	ldr	r2, [sp, #52]	@ ivtmp.241, %sfp
.LBB366:
.LBB361:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:319:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 319 0 discriminator 3
	strb	r1, [sp, #111]	@ local_tmp16, local_tmp_bigInt.number
.LVL590:
	lsrs	r0, r1, #2	@ tmp261, local_tmp16,
	lsrs	r5, r1, #1	@ tmp259, local_tmp16,
	lsrs	r4, r1, #3	@ tmp263, local_tmp16,
	strb	r0, [sp, #109]	@ tmp261, local_tmp_bigInt.number
.LBE361:
.LBE366:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:176:          SHIFT_LEFT(&local_tmp_bigInt, pos1+pos2);
	.loc 1 176 0 discriminator 3
	adds	r1, r2, r3	@, ivtmp.241, ivtmp.230
.LVL591:
	add	r0, sp, #96	@ tmp486,,
.LVL592:
.LBB367:
.LBB362:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:319:       leftOperand->number[pos] = (rightOperand>>i)&0xFFu;
	.loc 1 319 0 discriminator 3
	strb	r5, [sp, #110]	@ tmp259, local_tmp_bigInt.number
.LVL593:
	strb	r4, [sp, #108]	@ tmp263, local_tmp_bigInt.number
.LVL594:
.LBE362:
.LBE367:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:176:          SHIFT_LEFT(&local_tmp_bigInt, pos1+pos2);
	.loc 1 176 0 discriminator 3
	bl	SHIFT_LEFT	@
.LVL595:
.LBB368:
.LBB369:
.LBB370:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldrb	r0, [sp, #111]	@ zero_extendqisi2	@ _79, local_tmp_bigInt.number
	ldrb	r4, [sp, #110]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldrb	r1, [sp, #109]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldr	r5, [sp, #12]	@ prephitmp_103, %sfp
	ldrb	ip, [sp, #106]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldrb	lr, [sp, #99]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	add	fp, fp, r0	@ tmp269, _79
.LVL596:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, fp, #65280	@ tmp276, tmp269,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r9, r9, r4	@ tmp275, local_tmp_bigInt.number
	add	r9, r9, r0	@ tmp279, tmp276
	uxth	r9, r9	@ tmp_sum, tmp279
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, r9, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r8, r8, r1	@ tmp285, local_tmp_bigInt.number
	add	r8, r8, r0	@ tmp287, carry
	ldrb	r4, [sp, #108]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldrb	r1, [sp, #107]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	uxth	r2, r8	@ tmp_sum, tmp287
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, r2, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r4, r4, r5	@ tmp293, prephitmp_103
	add	r4, r4, r0	@ tmp295, carry
	ldr	r5, [sp, #24]	@ prephitmp_102, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	str	r2, [sp, #40]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	uxth	r4, r4	@ tmp_sum, tmp295
	add	r1, r1, r5	@ tmp301, prephitmp_102
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldr	r2, [sp, #20]	@ prephitmp_92, %sfp
	ldrb	r5, [sp, #104]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	str	r4, [sp, #12]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r0, r0, r1	@ tmp303, tmp301
	uxth	r0, r0	@ tmp_sum, tmp303
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	str	r0, [sp, #24]	@ tmp_sum, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	ip, ip, r2	@ tmp309, prephitmp_92
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, r0, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldrb	r1, [sp, #105]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldr	r2, [sp, #44]	@ prephitmp_87, %sfp
	ldrb	r8, [sp, #97]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	add	ip, ip, r0	@ tmp311, carry
	uxth	ip, ip	@ tmp_sum, tmp311
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, ip, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r1, r1, r10	@ tmp317, prephitmp_89
	add	r1, r1, r0	@ tmp319, carry
	uxth	r1, r1	@ tmp_sum, tmp319
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r4, r1, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r7, r7, r5	@ tmp325, local_tmp_bigInt.number
	ldrb	r0, [sp, #103]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldrb	r5, [sp, #102]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	ldrb	r10, [sp, #96]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	add	r7, r7, r4	@ tmp327, carry
	uxth	r7, r7	@ tmp_sum, tmp327
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r4, r7, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r2, r2, r0	@ tmp333, local_tmp_bigInt.number
	add	r2, r2, r4	@ tmp335, carry
	uxth	r2, r2	@ tmp_sum, tmp335
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r4, r2, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r6, r6, r5	@ tmp341, local_tmp_bigInt.number
	add	r6, r6, r4	@ tmp343, carry
	uxth	r3, r6	@ tmp_sum, tmp343
	ldrb	r0, [sp, #101]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	str	r3, [sp, #44]	@ tmp_sum, %sfp
	and	r4, r3, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldr	r3, [sp, #48]	@ prephitmp_76, %sfp
	ldr	r6, [sp, #36]	@ prephitmp_74, %sfp
	add	r3, r3, r0	@ tmp349, local_tmp_bigInt.number
	add	r3, r3, r4	@ tmp351, carry
	ldrb	r4, [sp, #100]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	uxth	r3, r3	@ tmp_sum, tmp351
	add	r4, r4, r6	@ tmp357, prephitmp_74
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r5, r3, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldr	r6, [sp, #32]	@ prephitmp_73, %sfp
	add	r5, r5, r4	@ tmp359, tmp357
	uxth	r5, r5	@ tmp_sum, tmp359
	add	lr, lr, r6	@ tmp365, prephitmp_73
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r4, r5, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	ldr	r6, [sp, #28]	@ prephitmp_49, %sfp
	add	r4, r4, lr	@ tmp367, tmp365
	ldrb	lr, [sp, #98]	@ zero_extendqisi2	@ local_tmp_bigInt.number, local_tmp_bigInt.number
	uxth	r4, r4	@ tmp_sum, tmp367
	add	lr, lr, r6	@ tmp373, prephitmp_49
	ldr	r6, [sp, #8]	@ prephitmp_52, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	r0, r4, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	r8, r8, r6	@ tmp381, prephitmp_52
	add	r0, r0, lr	@ tmp375, tmp373
	ldr	r6, [sp, #16]	@ _323, %sfp
	uxth	r0, r0	@ tmp_sum, tmp375
	add	r6, r6, r10	@ _323, local_tmp_bigInt.number
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:193:       carry = tmp_sum & 0xFF00u;
	.loc 1 193 0 discriminator 3
	and	lr, r0, #65280	@ carry, tmp_sum,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	add	lr, lr, r8	@ tmp383, tmp381
	str	r6, [sp, #16]	@ _323, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0 discriminator 3
	ldrb	r8, [sp, #40]	@ zero_extendqisi2	@ prephitmp_104, %sfp
	ldrb	r6, [sp, #12]	@ zero_extendqisi2	@ prephitmp_103, %sfp
	str	r6, [sp, #12]	@ prephitmp_103, %sfp
	ldrb	r10, [sp, #24]	@ zero_extendqisi2	@ prephitmp_102, %sfp
	str	r10, [sp, #24]	@ prephitmp_102, %sfp
	uxtb	ip, ip	@ prephitmp_92, tmp_sum
	uxtb	r10, r1	@ prephitmp_89, tmp_sum
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:191:       uint16 tmp_sum = (uint16)ErsterSummand->number[pos] +(uint16)ZweiterSummand->number[pos] + carry;
	.loc 1 191 0 discriminator 3
	uxth	lr, lr	@ tmp_sum, tmp383
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:192:       Summe->number[pos] = tmp_sum & 0xFFu;
	.loc 1 192 0 discriminator 3
	uxtb	r1, r0	@ prephitmp_49, tmp_sum
	ldr	r0, [sp, #12]	@ prephitmp_103, %sfp
	str	ip, [sp, #20]	@ prephitmp_92, %sfp
	strb	r0, [sp, #92]	@ prephitmp_103, result.number
	uxtb	ip, lr	@ prephitmp_52, tmp_sum
	ldr	r0, [sp, #24]	@ prephitmp_102, %sfp
	str	ip, [sp, #8]	@ prephitmp_52, %sfp
	strb	r0, [sp, #91]	@ prephitmp_102, result.number
	ldrb	ip, [sp, #16]	@ zero_extendqisi2	@ _323, %sfp
	ldr	r0, [sp, #20]	@ prephitmp_92, %sfp
	str	ip, [sp, #16]	@ _323, %sfp
	strb	r0, [sp, #90]	@ prephitmp_92, result.number
	ldr	r0, [sp, #8]	@ prephitmp_52, %sfp
	ldrb	r6, [sp, #44]	@ zero_extendqisi2	@ prephitmp_86, %sfp
	strb	r0, [sp, #81]	@ prephitmp_52, result.number
	uxtb	r5, r5	@ prephitmp_74, tmp_sum
	uxtb	r4, r4	@ prephitmp_73, tmp_sum
	ldr	r0, [sp, #16]	@ _323, %sfp
	str	r1, [sp, #28]	@ prephitmp_49, %sfp
	uxtb	fp, fp	@ _83, tmp269
.LVL597:
	uxtb	r9, r9	@ _99, tmp_sum
	uxtb	r7, r7	@ prephitmp_88, tmp_sum
	uxtb	r2, r2	@ prephitmp_87, tmp_sum
	uxtb	r3, r3	@ prephitmp_76, tmp_sum
	strb	r1, [sp, #82]	@ prephitmp_49, result.number
	str	r5, [sp, #36]	@ prephitmp_74, %sfp
	str	r4, [sp, #32]	@ prephitmp_73, %sfp
	strb	fp, [sp, #95]	@ _83, result.number
.LVL598:
	strb	r9, [sp, #94]	@ _99, result.number
	strb	r8, [sp, #93]	@ prephitmp_104, result.number
	strb	r10, [sp, #89]	@ prephitmp_89, result.number
	strb	r7, [sp, #88]	@ prephitmp_88, result.number
	strb	r2, [sp, #87]	@ prephitmp_87, result.number
	strb	r6, [sp, #86]	@ prephitmp_86, result.number
	strb	r3, [sp, #85]	@ prephitmp_76, result.number
	strb	r5, [sp, #84]	@ prephitmp_74, result.number
	strb	r4, [sp, #83]	@ prephitmp_73, result.number
	strb	r0, [sp, #80]	@ _323, result.number
.LVL599:
.LBE370:
.LBE369:
.LBE368:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:170:       for(pos2 = BIG_INT_SIZE-1; pos2 >= 0; pos2--)
	.loc 1 170 0 discriminator 3
	ldr	r0, [sp, #60]	@ Faktor2, %sfp
	ldr	r1, [sp, #4]	@ ivtmp.230, %sfp
	cmp	r0, r1	@ Faktor2, ivtmp.230
	bne	.L482	@,
	mov	r4, r2	@ prephitmp_87, prephitmp_87
	ldr	r2, [sp, #56]	@ ivtmp.239, %sfp
	mov	r0, r3	@ prephitmp_76, prephitmp_76
	mov	r3, r10	@ prephitmp_89, prephitmp_89
	subs	r2, r2, #1	@ ivtmp.239, ivtmp.239,
	mov	r10, r6	@ prephitmp_86, prephitmp_86
	mov	r6, r3	@ prephitmp_89, prephitmp_89
.LVL600:
	ldr	r3, [sp, #52]	@ ivtmp.241, %sfp
	str	r2, [sp, #56]	@ ivtmp.239, %sfp
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:168:    for(pos1 = BIG_INT_SIZE-1; pos1 >= 0; pos1--)
	.loc 1 168 0 discriminator 2
	ldr	r2, [sp, #68]	@ _367, %sfp
	subs	r3, r3, #1	@ ivtmp.241, ivtmp.241,
	cmp	r3, r2	@ ivtmp.241, _367
	mov	r5, r7	@ prephitmp_88, prephitmp_88
	str	r3, [sp, #52]	@ ivtmp.241, %sfp
	bne	.L481	@,
	add	r4, sp, #80	@ tmp395,,
	ldmia	r4!, {r0, r1, r2, r3}	@ tmp395,,,,
	ldr	r4, [sp, #76]	@ Produkt, %sfp
	str	r0, [r4]	@ unaligned	@, MEM[(char * {ref-all})Produkt_17(D)]
	str	r1, [r4, #4]	@ unaligned	@, MEM[(char * {ref-all})Produkt_17(D)]
	str	r2, [r4, #8]	@ unaligned	@, MEM[(char * {ref-all})Produkt_17(D)]
	str	r3, [r4, #12]	@ unaligned	@, MEM[(char * {ref-all})Produkt_17(D)]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:182: }
	.loc 1 182 0
	add	sp, sp, #116	@,,
	.cfi_def_cfa_offset 36
	@ sp needed	@
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.cfi_endproc
.LFE5:
	.size	INT_MUL, .-INT_MUL
	.align	1
	.p2align 2,,3
	.global	get_uint32_of_4_uint8
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_uint32_of_4_uint8, %function
get_uint32_of_4_uint8:
.LFB17:
	.loc 1 351 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL601:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:356:    ret_val += ((uint32) *ptr)<< 16u;
	.loc 1 356 0
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 1B], MEM[(uint8 *)ptr_13(D) + 1B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:354:    ret_val += ((uint32) *ptr)<< 24u;
	.loc 1 354 0
	ldrb	r1, [r0]	@ zero_extendqisi2	@ *ptr_13(D), *ptr_13(D)
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:360:    ret_val += ((uint32) *ptr)<< 0u;
	.loc 1 360 0
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 3B], MEM[(uint8 *)ptr_13(D) + 3B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:358:    ret_val += ((uint32) *ptr)<< 8u;
	.loc 1 358 0
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ MEM[(uint8 *)ptr_13(D) + 2B], MEM[(uint8 *)ptr_13(D) + 2B]
.LVL602:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:356:    ret_val += ((uint32) *ptr)<< 16u;
	.loc 1 356 0
	lsls	r3, r3, #16	@ tmp128, MEM[(uint8 *)ptr_13(D) + 1B],
	add	r3, r3, r1, lsl #24	@ ret_val, tmp128, *ptr_13(D),
	add	r3, r3, r2	@ _17, MEM[(uint8 *)ptr_13(D) + 3B]
.LVL603:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:363: }
	.loc 1 363 0
	add	r0, r3, r0, lsl #8	@, _17, MEM[(uint8 *)ptr_13(D) + 2B],
	bx	lr	@
	.cfi_endproc
.LFE17:
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
.LFB18:
	.loc 1 365 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL604:
	push	{r4}	@
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:368:    *ptr = (value >>16u)&0xFFu;
	.loc 1 368 0
	lsrs	r2, r1, #16	@ tmp121, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:366:    *ptr = (value >>24u)&0xFFu;
	.loc 1 366 0
	lsrs	r4, r1, #24	@ tmp119, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:370:    *ptr = (value >>8u)&0xFFu;
	.loc 1 370 0
	lsrs	r3, r1, #8	@ tmp123, value,
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:366:    *ptr = (value >>24u)&0xFFu;
	.loc 1 366 0
	strb	r4, [r0]	@ tmp119, *ptr_10(D)
.LVL605:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:372:    *ptr = (value >>0u)&0xFFu;
	.loc 1 372 0
	strb	r1, [r0, #3]	@ value, MEM[(uint8 *)ptr_10(D) + 3B]
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:368:    *ptr = (value >>16u)&0xFFu;
	.loc 1 368 0
	strb	r2, [r0, #1]	@ tmp121, MEM[(uint8 *)ptr_10(D) + 1B]
.LVL606:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:370:    *ptr = (value >>8u)&0xFFu;
	.loc 1 370 0
	strb	r3, [r0, #2]	@ tmp123, MEM[(uint8 *)ptr_10(D) + 2B]
.LVL607:
@ E:\NeuOrga\Programmieren\c_cpp\github_os\input\src\os_base\os_common.c:373: }
	.loc 1 373 0
	pop	{r4}	@
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr	@
	.cfi_endproc
.LFE18:
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
	.4byte	0x175b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF755
	.byte	0x1
	.4byte	.LASF756
	.4byte	.LASF757
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF517
	.byte	0x2
	.byte	0x11
	.4byte	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF515
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF516
	.uleb128 0x2
	.4byte	.LASF518
	.byte	0x2
	.byte	0x15
	.4byte	0x34
	.uleb128 0x2
	.4byte	.LASF519
	.byte	0x2
	.byte	0x16
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF520
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF521
	.uleb128 0x2
	.4byte	.LASF522
	.byte	0x2
	.byte	0x19
	.4byte	0x58
	.uleb128 0x2
	.4byte	.LASF523
	.byte	0x2
	.byte	0x1b
	.4byte	0x7c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF524
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF525
	.uleb128 0x2
	.4byte	.LASF526
	.byte	0x2
	.byte	0x1d
	.4byte	0x7c
	.uleb128 0x4
	.4byte	0x8a
	.uleb128 0x5
	.4byte	0x8a
	.uleb128 0x2
	.4byte	.LASF527
	.byte	0x2
	.byte	0x1e
	.4byte	0x83
	.uleb128 0x6
	.4byte	.LASF544
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x2d
	.4byte	0x110
	.uleb128 0x7
	.4byte	.LASF528
	.byte	0
	.uleb128 0x7
	.4byte	.LASF529
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF530
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF531
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF532
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF534
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF535
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF536
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF537
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF538
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF539
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF540
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF541
	.byte	0xd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF542
	.byte	0x3
	.byte	0x3e
	.4byte	0xaa
	.uleb128 0x4
	.4byte	0x110
	.uleb128 0x2
	.4byte	.LASF543
	.byte	0x3
	.byte	0x3f
	.4byte	0x42
	.uleb128 0x6
	.4byte	.LASF545
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x3
	.byte	0x42
	.4byte	0x1c1
	.uleb128 0x7
	.4byte	.LASF546
	.byte	0
	.uleb128 0x7
	.4byte	.LASF547
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF548
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF549
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF550
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF552
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF553
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF554
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF555
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF556
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF557
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF558
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF559
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF560
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF561
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF562
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF563
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF564
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF565
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF566
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF567
	.byte	0x15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF568
	.byte	0x3
	.byte	0x5b
	.4byte	0x12b
	.uleb128 0x8
	.4byte	.LASF585
	.byte	0x10
	.byte	0x3
	.byte	0x62
	.4byte	0x1e5
	.uleb128 0x9
	.4byte	.LASF587
	.byte	0x3
	.byte	0x6b
	.4byte	0x1e5
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x42
	.4byte	0x1f5
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF569
	.uleb128 0x2
	.4byte	.LASF570
	.byte	0x3
	.byte	0x6c
	.4byte	0x1cc
	.uleb128 0x5
	.4byte	0x1fc
	.uleb128 0x2
	.4byte	.LASF571
	.byte	0x3
	.byte	0x6e
	.4byte	0x1fc
	.uleb128 0x6
	.4byte	.LASF572
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x4
	.byte	0x13
	.4byte	0x23b
	.uleb128 0x7
	.4byte	.LASF573
	.byte	0
	.uleb128 0x7
	.4byte	.LASF574
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF575
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF576
	.byte	0x4
	.byte	0x19
	.4byte	0x217
	.uleb128 0x6
	.4byte	.LASF577
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x5
	.byte	0x7
	.4byte	0x270
	.uleb128 0x7
	.4byte	.LASF578
	.byte	0
	.uleb128 0x7
	.4byte	.LASF579
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF580
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF581
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF582
	.byte	0x5
	.byte	0xe
	.4byte	0x246
	.uleb128 0x2
	.4byte	.LASF583
	.byte	0x5
	.byte	0x13
	.4byte	0x286
	.uleb128 0xc
	.byte	0x4
	.4byte	0x28c
	.uleb128 0xd
	.4byte	0x297
	.uleb128 0xe
	.4byte	0x297
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF584
	.byte	0x5
	.byte	0x15
	.4byte	0x2a4
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2aa
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x2be
	.uleb128 0xe
	.4byte	0x297
	.uleb128 0xe
	.4byte	0x270
	.byte	0
	.uleb128 0x8
	.4byte	.LASF586
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.4byte	0x2e3
	.uleb128 0x9
	.4byte	.LASF588
	.byte	0x5
	.byte	0x1a
	.4byte	0x20c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF589
	.byte	0x5
	.byte	0x1b
	.4byte	0x20c
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.4byte	.LASF590
	.byte	0x5
	.byte	0x1d
	.4byte	0x2be
	.uleb128 0x8
	.4byte	.LASF591
	.byte	0xd0
	.byte	0x5
	.byte	0x1f
	.4byte	0x4d0
	.uleb128 0x11
	.4byte	.LASF592
	.byte	0x5
	.byte	0x21
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF593
	.byte	0x5
	.byte	0x22
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF594
	.byte	0x5
	.byte	0x23
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF595
	.byte	0x5
	.byte	0x24
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF596
	.byte	0x5
	.byte	0x25
	.4byte	0x29
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF597
	.byte	0x5
	.byte	0x26
	.4byte	0x29
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF598
	.byte	0x5
	.byte	0x27
	.4byte	0x20c
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF599
	.byte	0x5
	.byte	0x28
	.4byte	0x20c
	.byte	0x16
	.uleb128 0x9
	.4byte	.LASF600
	.byte	0x5
	.byte	0x29
	.4byte	0x20c
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF601
	.byte	0x5
	.byte	0x2a
	.4byte	0x8a
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF602
	.byte	0x5
	.byte	0x2b
	.4byte	0x20c
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF588
	.byte	0x5
	.byte	0x2c
	.4byte	0x20c
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF603
	.byte	0x5
	.byte	0x2d
	.4byte	0x20c
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF604
	.byte	0x5
	.byte	0x2e
	.4byte	0x29
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF605
	.byte	0x5
	.byte	0x2f
	.4byte	0x29
	.byte	0x6d
	.uleb128 0x9
	.4byte	.LASF606
	.byte	0x5
	.byte	0x30
	.4byte	0x71
	.byte	0x70
	.uleb128 0x12
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x31
	.4byte	0x27b
	.byte	0x74
	.uleb128 0x9
	.4byte	.LASF607
	.byte	0x5
	.byte	0x32
	.4byte	0x299
	.byte	0x78
	.uleb128 0x9
	.4byte	.LASF608
	.byte	0x5
	.byte	0x33
	.4byte	0x270
	.byte	0x7c
	.uleb128 0x9
	.4byte	.LASF609
	.byte	0x5
	.byte	0x34
	.4byte	0x4d0
	.byte	0x80
	.uleb128 0x12
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x71
	.byte	0x84
	.uleb128 0x12
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x71
	.byte	0x88
	.uleb128 0x12
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x71
	.byte	0x8c
	.uleb128 0x12
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x71
	.byte	0x90
	.uleb128 0x12
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x71
	.byte	0x94
	.uleb128 0x12
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x71
	.byte	0x98
	.uleb128 0x12
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x71
	.byte	0x9c
	.uleb128 0x12
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x71
	.byte	0xa0
	.uleb128 0x12
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x71
	.byte	0xa4
	.uleb128 0x12
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x71
	.byte	0xa8
	.uleb128 0x12
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x71
	.byte	0xac
	.uleb128 0x12
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x46
	.4byte	0x71
	.byte	0xb0
	.uleb128 0x12
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x47
	.4byte	0x71
	.byte	0xb4
	.uleb128 0x9
	.4byte	.LASF610
	.byte	0x5
	.byte	0x49
	.4byte	0x4d6
	.byte	0xb8
	.uleb128 0x9
	.4byte	.LASF611
	.byte	0x5
	.byte	0x4a
	.4byte	0x4d6
	.byte	0xbc
	.uleb128 0x9
	.4byte	.LASF612
	.byte	0x5
	.byte	0x4b
	.4byte	0x4d6
	.byte	0xc0
	.uleb128 0x9
	.4byte	.LASF613
	.byte	0x5
	.byte	0x4c
	.4byte	0x71
	.byte	0xc4
	.uleb128 0x9
	.4byte	.LASF614
	.byte	0x5
	.byte	0x4d
	.4byte	0x4d6
	.byte	0xc8
	.uleb128 0x9
	.4byte	.LASF615
	.byte	0x5
	.byte	0x4e
	.4byte	0x23b
	.byte	0xcc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0xc
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.4byte	.LASF616
	.byte	0x5
	.byte	0x50
	.4byte	0x2ee
	.uleb128 0x2
	.4byte	.LASF617
	.byte	0x5
	.byte	0x51
	.4byte	0x4f2
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4dc
	.uleb128 0xa
	.4byte	0x4f2
	.4byte	0x508
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF624
	.byte	0x5
	.byte	0x5b
	.4byte	0x4f8
	.uleb128 0x2
	.4byte	.LASF618
	.byte	0x5
	.byte	0x5d
	.4byte	0x20c
	.uleb128 0x6
	.4byte	.LASF619
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0x6
	.byte	0x4
	.4byte	0x542
	.uleb128 0x7
	.4byte	.LASF620
	.byte	0
	.uleb128 0x7
	.4byte	.LASF621
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF622
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF623
	.byte	0x6
	.byte	0xa
	.4byte	0x51e
	.uleb128 0x4
	.4byte	0x542
	.uleb128 0xa
	.4byte	0x29
	.4byte	0x563
	.uleb128 0x14
	.4byte	0x1f5
	.2byte	0x270f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF625
	.byte	0x7
	.byte	0xb
	.4byte	0x552
	.uleb128 0xa
	.4byte	0x11b
	.4byte	0x57e
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.4byte	0x56e
	.uleb128 0x13
	.4byte	.LASF626
	.byte	0x7
	.byte	0xe
	.4byte	0x57e
	.uleb128 0x13
	.4byte	.LASF627
	.byte	0x7
	.byte	0xf
	.4byte	0x54d
	.uleb128 0x13
	.4byte	.LASF628
	.byte	0x7
	.byte	0x10
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF629
	.byte	0x7
	.byte	0x11
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF630
	.byte	0x7
	.byte	0x12
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF631
	.byte	0x7
	.byte	0x13
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF632
	.byte	0x7
	.byte	0x14
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF633
	.byte	0x7
	.byte	0x15
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF634
	.byte	0x7
	.byte	0x16
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF635
	.byte	0x7
	.byte	0x17
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF636
	.byte	0x7
	.byte	0x18
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF637
	.byte	0x7
	.byte	0x19
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF638
	.byte	0x7
	.byte	0x1a
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF639
	.byte	0x7
	.byte	0x1b
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF640
	.byte	0x7
	.byte	0x1c
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF641
	.byte	0x7
	.byte	0x1d
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF642
	.byte	0x7
	.byte	0x1e
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF643
	.byte	0x7
	.byte	0x1f
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF644
	.byte	0x7
	.byte	0x20
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF645
	.byte	0x7
	.byte	0x21
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF646
	.byte	0x7
	.byte	0x23
	.4byte	0x66a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF647
	.byte	0x7
	.byte	0x24
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF648
	.byte	0x7
	.byte	0x25
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF649
	.byte	0x7
	.byte	0x26
	.4byte	0x66a
	.uleb128 0x13
	.4byte	.LASF650
	.byte	0x7
	.byte	0x27
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF651
	.byte	0x7
	.byte	0x28
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF652
	.byte	0x7
	.byte	0x29
	.4byte	0x66a
	.uleb128 0x13
	.4byte	.LASF653
	.byte	0x7
	.byte	0x2a
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF654
	.byte	0x7
	.byte	0x2b
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF655
	.byte	0x7
	.byte	0x2c
	.4byte	0x66a
	.uleb128 0x13
	.4byte	.LASF656
	.byte	0x7
	.byte	0x2d
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF657
	.byte	0x7
	.byte	0x2e
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF658
	.byte	0x7
	.byte	0x2f
	.4byte	0x66a
	.uleb128 0x13
	.4byte	.LASF659
	.byte	0x7
	.byte	0x30
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF660
	.byte	0x7
	.byte	0x31
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF661
	.byte	0x7
	.byte	0x32
	.4byte	0x66a
	.uleb128 0x13
	.4byte	.LASF662
	.byte	0x7
	.byte	0x33
	.4byte	0x95
	.uleb128 0x13
	.4byte	.LASF663
	.byte	0x7
	.byte	0x34
	.4byte	0x95
	.uleb128 0xa
	.4byte	0x29
	.4byte	0x73c
	.uleb128 0x14
	.4byte	0x1f5
	.2byte	0x7cf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF664
	.byte	0x7
	.byte	0x35
	.4byte	0x72b
	.uleb128 0x13
	.4byte	.LASF665
	.byte	0x7
	.byte	0x36
	.4byte	0x72b
	.uleb128 0x13
	.4byte	.LASF666
	.byte	0x7
	.byte	0x37
	.4byte	0x72b
	.uleb128 0x13
	.4byte	.LASF667
	.byte	0x7
	.byte	0x38
	.4byte	0x72b
	.uleb128 0x13
	.4byte	.LASF668
	.byte	0x7
	.byte	0x39
	.4byte	0x72b
	.uleb128 0x13
	.4byte	.LASF669
	.byte	0x7
	.byte	0x3a
	.4byte	0x513
	.uleb128 0xa
	.4byte	0x4e7
	.4byte	0x78e
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF670
	.byte	0x7
	.byte	0x3b
	.4byte	0x77e
	.uleb128 0x13
	.4byte	.LASF671
	.byte	0x7
	.byte	0x3c
	.4byte	0x7a4
	.uleb128 0xc
	.byte	0x4
	.4byte	0x4e7
	.uleb128 0xa
	.4byte	0x4dc
	.4byte	0x7ba
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF672
	.byte	0x7
	.byte	0x3d
	.4byte	0x7aa
	.uleb128 0xa
	.4byte	0x4dc
	.4byte	0x7d5
	.uleb128 0xb
	.4byte	0x1f5
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF673
	.byte	0x7
	.byte	0x3e
	.4byte	0x7c5
	.uleb128 0x13
	.4byte	.LASF674
	.byte	0x7
	.byte	0x3f
	.4byte	0x7c5
	.uleb128 0x13
	.4byte	.LASF675
	.byte	0x7
	.byte	0x40
	.4byte	0x29
	.uleb128 0x13
	.4byte	.LASF676
	.byte	0x7
	.byte	0x41
	.4byte	0x4dc
	.uleb128 0x13
	.4byte	.LASF677
	.byte	0x7
	.byte	0x41
	.4byte	0x4dc
	.uleb128 0x13
	.4byte	.LASF678
	.byte	0x7
	.byte	0x41
	.4byte	0x4dc
	.uleb128 0x13
	.4byte	.LASF679
	.byte	0x7
	.byte	0x41
	.4byte	0x4dc
	.uleb128 0x13
	.4byte	.LASF680
	.byte	0x7
	.byte	0x42
	.4byte	0x2e3
	.uleb128 0x13
	.4byte	.LASF681
	.byte	0x7
	.byte	0x42
	.4byte	0x2e3
	.uleb128 0x13
	.4byte	.LASF682
	.byte	0x7
	.byte	0x42
	.4byte	0x2e3
	.uleb128 0x13
	.4byte	.LASF683
	.byte	0x7
	.byte	0x42
	.4byte	0x2e3
	.uleb128 0x13
	.4byte	.LASF684
	.byte	0x7
	.byte	0x42
	.4byte	0x2e3
	.uleb128 0x13
	.4byte	.LASF685
	.byte	0x7
	.byte	0x43
	.4byte	0x4f2
	.uleb128 0x13
	.4byte	.LASF686
	.byte	0x7
	.byte	0x44
	.4byte	0x270
	.uleb128 0x13
	.4byte	.LASF687
	.byte	0x7
	.byte	0x45
	.4byte	0x270
	.uleb128 0x13
	.4byte	.LASF688
	.byte	0x7
	.byte	0x46
	.4byte	0x54d
	.uleb128 0x13
	.4byte	.LASF689
	.byte	0x7
	.byte	0x47
	.4byte	0x20c
	.uleb128 0xa
	.4byte	0x29
	.4byte	0x8a1
	.uleb128 0x14
	.4byte	0x1f5
	.2byte	0x3ff
	.byte	0
	.uleb128 0x13
	.4byte	.LASF690
	.byte	0x8
	.byte	0xc
	.4byte	0x890
	.uleb128 0x15
	.4byte	.LASF723
	.byte	0x1
	.2byte	0x16c
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e1
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x8e1
	.4byte	.LLST98
	.uleb128 0x17
	.4byte	.LASF691
	.byte	0x1
	.2byte	0x16c
	.4byte	0x8a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x42
	.uleb128 0x18
	.4byte	.LASF758
	.byte	0x1
	.2byte	0x15e
	.4byte	0x8a
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x922
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x15e
	.4byte	0x8e1
	.4byte	.LLST96
	.uleb128 0x19
	.4byte	.LASF728
	.byte	0x1
	.2byte	0x160
	.4byte	0x8a
	.4byte	.LLST97
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF696
	.byte	0x1
	.2byte	0x142
	.byte	0x1
	.4byte	0x978
	.uleb128 0x1b
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x142
	.4byte	0x978
	.uleb128 0x1b
	.4byte	.LASF692
	.byte	0x1
	.2byte	0x142
	.4byte	0x8a
	.uleb128 0x1c
	.4byte	.LASF693
	.byte	0x1
	.2byte	0x144
	.4byte	0x1fc
	.uleb128 0x1c
	.4byte	.LASF694
	.byte	0x1
	.2byte	0x144
	.4byte	0x1fc
	.uleb128 0x1c
	.4byte	.LASF695
	.byte	0x1
	.2byte	0x145
	.4byte	0x8a
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x146
	.4byte	0x9f
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1fc
	.uleb128 0x1a
	.4byte	.LASF697
	.byte	0x1
	.2byte	0x134
	.byte	0x1
	.4byte	0x9ba
	.uleb128 0x1b
	.4byte	.LASF698
	.byte	0x1
	.2byte	0x134
	.4byte	0x978
	.uleb128 0x1b
	.4byte	.LASF699
	.byte	0x1
	.2byte	0x134
	.4byte	0x9a
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x136
	.4byte	0x42
	.uleb128 0x1d
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x137
	.4byte	0x42
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF700
	.byte	0x1
	.2byte	0x12b
	.byte	0x1
	.4byte	0x9e0
	.uleb128 0x1b
	.4byte	.LASF698
	.byte	0x1
	.2byte	0x12b
	.4byte	0x978
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x12d
	.4byte	0x42
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF701
	.byte	0x1
	.2byte	0x123
	.byte	0x1
	.4byte	0xa12
	.uleb128 0x1b
	.4byte	.LASF698
	.byte	0x1
	.2byte	0x123
	.4byte	0x978
	.uleb128 0x1b
	.4byte	.LASF699
	.byte	0x1
	.2byte	0x123
	.4byte	0xa12
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x125
	.4byte	0x42
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x207
	.uleb128 0x1e
	.4byte	.LASF704
	.byte	0x1
	.2byte	0x11f
	.4byte	0x120
	.byte	0x1
	.4byte	0xa42
	.uleb128 0x1b
	.4byte	.LASF702
	.byte	0x1
	.2byte	0x11f
	.4byte	0xa12
	.uleb128 0x1b
	.4byte	.LASF703
	.byte	0x1
	.2byte	0x11f
	.4byte	0xa12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF705
	.byte	0x1
	.2byte	0x108
	.4byte	0x120
	.byte	0x1
	.4byte	0xa84
	.uleb128 0x1b
	.4byte	.LASF702
	.byte	0x1
	.2byte	0x108
	.4byte	0xa12
	.uleb128 0x1b
	.4byte	.LASF703
	.byte	0x1
	.2byte	0x108
	.4byte	0xa12
	.uleb128 0x1d
	.ascii	"pos\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x42
	.uleb128 0x1c
	.4byte	.LASF706
	.byte	0x1
	.2byte	0x10b
	.4byte	0x120
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF707
	.byte	0x1
	.byte	0xf6
	.4byte	0x120
	.byte	0x1
	.4byte	0xac1
	.uleb128 0x20
	.4byte	.LASF702
	.byte	0x1
	.byte	0xf6
	.4byte	0xa12
	.uleb128 0x20
	.4byte	.LASF703
	.byte	0x1
	.byte	0xf6
	.4byte	0xa12
	.uleb128 0x21
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x42
	.uleb128 0x22
	.4byte	.LASF708
	.byte	0x1
	.byte	0xf9
	.4byte	0x120
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF709
	.byte	0x1
	.byte	0xf2
	.4byte	0x120
	.byte	0x1
	.4byte	0xae8
	.uleb128 0x20
	.4byte	.LASF702
	.byte	0x1
	.byte	0xf2
	.4byte	0xa12
	.uleb128 0x20
	.4byte	.LASF703
	.byte	0x1
	.byte	0xf2
	.4byte	0xa12
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF710
	.byte	0x1
	.byte	0xdb
	.4byte	0x120
	.byte	0x1
	.4byte	0xb25
	.uleb128 0x20
	.4byte	.LASF702
	.byte	0x1
	.byte	0xdb
	.4byte	0xa12
	.uleb128 0x20
	.4byte	.LASF703
	.byte	0x1
	.byte	0xdb
	.4byte	0xa12
	.uleb128 0x21
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xdd
	.4byte	0x42
	.uleb128 0x22
	.4byte	.LASF711
	.byte	0x1
	.byte	0xde
	.4byte	0x120
	.byte	0
	.uleb128 0x23
	.4byte	.LASF712
	.byte	0x1
	.byte	0xc4
	.byte	0x1
	.4byte	0xb76
	.uleb128 0x20
	.4byte	.LASF713
	.byte	0x1
	.byte	0xc4
	.4byte	0x978
	.uleb128 0x20
	.4byte	.LASF714
	.byte	0x1
	.byte	0xc4
	.4byte	0xa12
	.uleb128 0x20
	.4byte	.LASF715
	.byte	0x1
	.byte	0xc4
	.4byte	0xa12
	.uleb128 0x21
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xc6
	.4byte	0x4d
	.uleb128 0x22
	.4byte	.LASF716
	.byte	0x1
	.byte	0xc7
	.4byte	0x66
	.uleb128 0x24
	.uleb128 0x22
	.4byte	.LASF717
	.byte	0x1
	.byte	0xcb
	.4byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF718
	.byte	0x1
	.byte	0xb8
	.byte	0x1
	.4byte	0xbc7
	.uleb128 0x20
	.4byte	.LASF719
	.byte	0x1
	.byte	0xb8
	.4byte	0x978
	.uleb128 0x20
	.4byte	.LASF720
	.byte	0x1
	.byte	0xb8
	.4byte	0xa12
	.uleb128 0x20
	.4byte	.LASF721
	.byte	0x1
	.byte	0xb8
	.4byte	0xa12
	.uleb128 0x21
	.ascii	"pos\000"
	.byte	0x1
	.byte	0xba
	.4byte	0x4d
	.uleb128 0x22
	.4byte	.LASF716
	.byte	0x1
	.byte	0xbb
	.4byte	0x66
	.uleb128 0x24
	.uleb128 0x22
	.4byte	.LASF722
	.byte	0x1
	.byte	0xbf
	.4byte	0x66
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF724
	.byte	0x1
	.byte	0x87
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcf9
	.uleb128 0x26
	.4byte	.LASF725
	.byte	0x1
	.byte	0x87
	.4byte	0x978
	.4byte	.LLST86
	.uleb128 0x26
	.4byte	.LASF726
	.byte	0x1
	.byte	0x87
	.4byte	0xa12
	.4byte	.LLST87
	.uleb128 0x26
	.4byte	.LASF727
	.byte	0x1
	.byte	0x87
	.4byte	0xa12
	.4byte	.LLST88
	.uleb128 0x27
	.4byte	.LASF694
	.byte	0x1
	.byte	0x92
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x27
	.4byte	.LASF729
	.byte	0x1
	.byte	0x92
	.4byte	0x1fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.4byte	.LASF730
	.byte	0x1
	.byte	0x93
	.4byte	0x9f
	.uleb128 0x28
	.4byte	.LASF731
	.byte	0x1
	.byte	0x93
	.4byte	0x9f
	.4byte	.LLST89
	.uleb128 0x28
	.4byte	.LASF732
	.byte	0x1
	.byte	0x94
	.4byte	0x66
	.4byte	.LLST90
	.uleb128 0x29
	.4byte	0x97e
	.4byte	.LBB356
	.4byte	.Ldebug_ranges0+0x340
	.byte	0x1
	.byte	0xae
	.4byte	0xc85
	.uleb128 0x2a
	.4byte	0x997
	.4byte	.LLST91
	.uleb128 0x2a
	.4byte	0x98b
	.4byte	.LLST92
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x340
	.uleb128 0x2c
	.4byte	0x1676
	.uleb128 0x2c
	.4byte	0x167f
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0xb76
	.4byte	.LBB368
	.4byte	.LBE368-.LBB368
	.byte	0x1
	.byte	0xb2
	.4byte	0xcdb
	.uleb128 0x2a
	.4byte	0xb98
	.4byte	.LLST93
	.uleb128 0x2a
	.4byte	0xb8d
	.4byte	.LLST94
	.uleb128 0x2a
	.4byte	0xb82
	.4byte	.LLST94
	.uleb128 0x2e
	.4byte	.LBB369
	.4byte	.LBE369-.LBB369
	.uleb128 0x2c
	.4byte	0x13e8
	.uleb128 0x2c
	.4byte	0x13f1
	.uleb128 0x2f
	.4byte	0x13fa
	.4byte	.LBB370
	.4byte	.LBE370-.LBB370
	.uleb128 0x2c
	.4byte	0x1403
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LVL595
	.4byte	0x922
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF733
	.byte	0x1
	.byte	0x3a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1163
	.uleb128 0x26
	.4byte	.LASF734
	.byte	0x1
	.byte	0x3a
	.4byte	0x978
	.4byte	.LLST12
	.uleb128 0x26
	.4byte	.LASF735
	.byte	0x1
	.byte	0x3a
	.4byte	0xa12
	.4byte	.LLST13
	.uleb128 0x26
	.4byte	.LASF736
	.byte	0x1
	.byte	0x3a
	.4byte	0xa12
	.4byte	.LLST14
	.uleb128 0x28
	.4byte	.LASF737
	.byte	0x1
	.byte	0x4b
	.4byte	0x8a
	.4byte	.LLST15
	.uleb128 0x27
	.4byte	.LASF738
	.byte	0x1
	.byte	0x4c
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x27
	.4byte	.LASF739
	.byte	0x1
	.byte	0x4d
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x27
	.4byte	.LASF740
	.byte	0x1
	.byte	0x4d
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x27
	.4byte	.LASF741
	.byte	0x1
	.byte	0x4e
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.4byte	.LASF742
	.byte	0x1
	.byte	0x4f
	.4byte	0x8a
	.4byte	.LLST16
	.uleb128 0x28
	.4byte	.LASF743
	.byte	0x1
	.byte	0x50
	.4byte	0x8a
	.4byte	.LLST17
	.uleb128 0x28
	.4byte	.LASF744
	.byte	0x1
	.byte	0x51
	.4byte	0x8a
	.4byte	.LLST18
	.uleb128 0x27
	.4byte	.LASF745
	.byte	0x1
	.byte	0x52
	.4byte	0x1fc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.4byte	0xa84
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x1
	.byte	0x5a
	.4byte	0xdf8
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2e
	.4byte	.LBB219
	.4byte	.LBE219-.LBB219
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST19
	.uleb128 0x2c
	.4byte	0xab5
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	0x1287
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.byte	0x1
	.byte	0x5d
	.4byte	0xe1e
	.uleb128 0x2a
	.4byte	0x129e
	.4byte	.LLST20
	.uleb128 0x2a
	.4byte	0x1293
	.4byte	.LLST21
	.byte	0
	.uleb128 0x29
	.4byte	0xa18
	.4byte	.LBB222
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x60
	.4byte	0xeb5
	.uleb128 0x34
	.4byte	0xa35
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.uleb128 0x2a
	.4byte	0xa29
	.4byte	.LLST22
	.uleb128 0x35
	.4byte	0xa42
	.4byte	.LBB223
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.2byte	0x121
	.4byte	0xe81
	.uleb128 0x34
	.4byte	0xa5f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.uleb128 0x2a
	.4byte	0xa53
	.4byte	.LLST22
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x108
	.uleb128 0x33
	.4byte	0xa6b
	.4byte	.LLST24
	.uleb128 0x36
	.4byte	0xa77
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0xa84
	.4byte	.LBB230
	.4byte	.LBE230-.LBB230
	.byte	0x1
	.2byte	0x121
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2e
	.4byte	.LBB231
	.4byte	.LBE231-.LBB231
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST25
	.uleb128 0x2c
	.4byte	0xab5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xb25
	.4byte	.LBB235
	.4byte	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0x76
	.4byte	0xef7
	.uleb128 0x32
	.4byte	0xb47
	.uleb128 0x32
	.4byte	0xb3c
	.uleb128 0x32
	.4byte	0xb31
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x2c
	.4byte	0xb52
	.uleb128 0x2c
	.4byte	0xb5d
	.uleb128 0x38
	.4byte	0xb68
	.4byte	.Ldebug_ranges0+0x138
	.uleb128 0x2c
	.4byte	0xb69
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xac1
	.4byte	.LBB249
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.byte	0x6b
	.4byte	0xf8d
	.uleb128 0x2a
	.4byte	0xadc
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	0xad1
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	0xae8
	.4byte	.LBB250
	.4byte	.LBE250-.LBB250
	.byte	0x1
	.byte	0xf4
	.4byte	0xf5e
	.uleb128 0x2a
	.4byte	0xb03
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	0xaf8
	.4byte	.LLST27
	.uleb128 0x2e
	.4byte	.LBB251
	.4byte	.LBE251-.LBB251
	.uleb128 0x33
	.4byte	0xb0e
	.4byte	.LLST30
	.uleb128 0x33
	.4byte	0xb19
	.4byte	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xa84
	.4byte	.LBB252
	.4byte	.Ldebug_ranges0+0x188
	.byte	0x1
	.byte	0xf4
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x188
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST32
	.uleb128 0x2c
	.4byte	0xab5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0x922
	.4byte	.LBB258
	.4byte	.Ldebug_ranges0+0x1a8
	.byte	0x1
	.byte	0x6d
	.4byte	0x1082
	.uleb128 0x32
	.4byte	0x93b
	.uleb128 0x32
	.4byte	0x92f
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x1a8
	.uleb128 0x3a
	.4byte	0x947
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.4byte	0x953
	.4byte	.LLST33
	.uleb128 0x33
	.4byte	0x95f
	.4byte	.LLST34
	.uleb128 0x33
	.4byte	0x96b
	.4byte	.LLST35
	.uleb128 0x35
	.4byte	0x9ba
	.4byte	.LBB260
	.4byte	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.2byte	0x153
	.4byte	0xffb
	.uleb128 0x32
	.4byte	0x9c7
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x1c8
	.uleb128 0x33
	.4byte	0x9d3
	.4byte	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xb76
	.4byte	.LBB264
	.4byte	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.2byte	0x159
	.4byte	0x1056
	.uleb128 0x2a
	.4byte	0xb98
	.4byte	.LLST37
	.uleb128 0x2a
	.4byte	0xb8d
	.4byte	.LLST38
	.uleb128 0x2a
	.4byte	0xb82
	.4byte	.LLST38
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x1e0
	.uleb128 0x33
	.4byte	0xba3
	.4byte	.LLST40
	.uleb128 0x33
	.4byte	0xbae
	.4byte	.LLST41
	.uleb128 0x38
	.4byte	0xbb9
	.4byte	.Ldebug_ranges0+0x1e0
	.uleb128 0x33
	.4byte	0xbba
	.4byte	.LLST42
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x9e0
	.4byte	.LBB276
	.4byte	.Ldebug_ranges0+0x208
	.byte	0x1
	.2byte	0x15b
	.uleb128 0x32
	.4byte	0x9f9
	.uleb128 0x32
	.4byte	0x9ed
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x208
	.uleb128 0x33
	.4byte	0xa05
	.4byte	.LLST43
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	0xac1
	.4byte	.LBB288
	.4byte	.Ldebug_ranges0+0x228
	.byte	0x1
	.byte	0x74
	.4byte	0x1118
	.uleb128 0x2a
	.4byte	0xadc
	.4byte	.LLST44
	.uleb128 0x2a
	.4byte	0xad1
	.4byte	.LLST45
	.uleb128 0x29
	.4byte	0xae8
	.4byte	.LBB289
	.4byte	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0xf4
	.4byte	0x10e5
	.uleb128 0x2a
	.4byte	0xb03
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	0xaf8
	.4byte	.LLST47
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x240
	.uleb128 0x33
	.4byte	0xb0e
	.4byte	.LLST48
	.uleb128 0x33
	.4byte	0xb19
	.4byte	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x3c
	.4byte	0xa84
	.4byte	.LBB292
	.4byte	.LBE292-.LBB292
	.byte	0x1
	.byte	0xf4
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2e
	.4byte	.LBB293
	.4byte	.LBE293-.LBB293
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST50
	.uleb128 0x2c
	.4byte	0xab5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xb76
	.4byte	.LBB297
	.4byte	.Ldebug_ranges0+0x258
	.byte	0x1
	.byte	0x80
	.uleb128 0x32
	.4byte	0xb98
	.uleb128 0x32
	.4byte	0xb8d
	.uleb128 0x32
	.4byte	0xb82
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x258
	.uleb128 0x33
	.4byte	0xba3
	.4byte	.LLST51
	.uleb128 0x33
	.4byte	0xbae
	.4byte	.LLST52
	.uleb128 0x38
	.4byte	0xbb9
	.4byte	.Ldebug_ranges0+0x258
	.uleb128 0x33
	.4byte	0xbba
	.4byte	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF746
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.4byte	0x1186
	.uleb128 0x20
	.4byte	.LASF747
	.byte	0x1
	.byte	0x1f
	.4byte	0x1186
	.uleb128 0x22
	.4byte	.LASF748
	.byte	0x1
	.byte	0x22
	.4byte	0x95
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x23
	.4byte	.LASF749
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0x11a4
	.uleb128 0x22
	.4byte	.LASF750
	.byte	0x1
	.byte	0x18
	.4byte	0x20c
	.byte	0
	.uleb128 0x25
	.4byte	.LASF751
	.byte	0x1
	.byte	0xb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1287
	.uleb128 0x3d
	.4byte	.LASF748
	.byte	0x1
	.byte	0xb
	.4byte	0x1186
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.4byte	0x118c
	.4byte	.LBB105
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xe
	.4byte	0x125d
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x3a
	.4byte	0x1198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.4byte	0x1163
	.4byte	.LBB107
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x19
	.4byte	0x1211
	.uleb128 0x34
	.4byte	0x116f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x3a
	.4byte	0x117a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xb76
	.4byte	.LBB113
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x1c
	.uleb128 0x32
	.4byte	0xb98
	.uleb128 0x32
	.4byte	0xb8d
	.uleb128 0x32
	.4byte	0xb82
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x33
	.4byte	0xba3
	.4byte	.LLST0
	.uleb128 0x33
	.4byte	0xbae
	.4byte	.LLST1
	.uleb128 0x38
	.4byte	0xbb9
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x33
	.4byte	0xbba
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0x9e0
	.4byte	.LBB131
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x10
	.uleb128 0x32
	.4byte	0x9f9
	.uleb128 0x32
	.4byte	0x9ed
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x70
	.uleb128 0x33
	.4byte	0xa05
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF752
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.4byte	0x12aa
	.uleb128 0x20
	.4byte	.LASF753
	.byte	0x1
	.byte	0x4
	.4byte	0x110
	.uleb128 0x20
	.4byte	.LASF754
	.byte	0x1
	.byte	0x4
	.4byte	0x1c1
	.byte	0
	.uleb128 0x3e
	.4byte	0x1287
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12cc
	.uleb128 0x34
	.4byte	0x1293
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	0x129e
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3e
	.4byte	0x118c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x135d
	.uleb128 0x3a
	.4byte	0x1198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.4byte	0x1163
	.4byte	.LBB144
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x19
	.4byte	0x1312
	.uleb128 0x2a
	.4byte	0x116f
	.4byte	.LLST4
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x90
	.uleb128 0x3a
	.4byte	0x117a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xb76
	.4byte	.LBB150
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0x1c
	.uleb128 0x32
	.4byte	0xb98
	.uleb128 0x32
	.4byte	0xb8d
	.uleb128 0x32
	.4byte	0xb82
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x33
	.4byte	0xba3
	.4byte	.LLST5
	.uleb128 0x33
	.4byte	0xbae
	.4byte	.LLST6
	.uleb128 0x38
	.4byte	0xbb9
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x33
	.4byte	0xbba
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x1163
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13be
	.uleb128 0x34
	.4byte	0x116f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3a
	.4byte	0x117a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3c
	.4byte	0x97e
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.byte	0x1
	.byte	0x34
	.uleb128 0x2a
	.4byte	0x997
	.4byte	.LLST8
	.uleb128 0x2a
	.4byte	0x98b
	.4byte	.LLST9
	.uleb128 0x2e
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.uleb128 0x33
	.4byte	0x9a3
	.4byte	.LLST10
	.uleb128 0x33
	.4byte	0x9af
	.4byte	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0xb76
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140e
	.uleb128 0x34
	.4byte	0xb82
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	0xb8d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	0xb98
	.4byte	.LLST54
	.uleb128 0x33
	.4byte	0xba3
	.4byte	.LLST55
	.uleb128 0x33
	.4byte	0xbae
	.4byte	.LLST56
	.uleb128 0x2e
	.4byte	.LBB313
	.4byte	.LBE313-.LBB313
	.uleb128 0x33
	.4byte	0xbba
	.4byte	.LLST57
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0xb25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x145d
	.uleb128 0x34
	.4byte	0xb31
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	0xb3c
	.4byte	.LLST58
	.uleb128 0x2a
	.4byte	0xb47
	.4byte	.LLST59
	.uleb128 0x33
	.4byte	0xb52
	.4byte	.LLST60
	.uleb128 0x36
	.4byte	0xb5d
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB314
	.4byte	.LBE314-.LBB314
	.uleb128 0x33
	.4byte	0xb69
	.4byte	.LLST61
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0xae8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1493
	.uleb128 0x2a
	.4byte	0xaf8
	.4byte	.LLST62
	.uleb128 0x34
	.4byte	0xb03
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x33
	.4byte	0xb0e
	.4byte	.LLST63
	.uleb128 0x33
	.4byte	0xb19
	.4byte	.LLST64
	.byte	0
	.uleb128 0x3e
	.4byte	0xac1
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1519
	.uleb128 0x2a
	.4byte	0xad1
	.4byte	.LLST65
	.uleb128 0x34
	.4byte	0xadc
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x29
	.4byte	0xae8
	.4byte	.LBB315
	.4byte	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0xf4
	.4byte	0x14ea
	.uleb128 0x34
	.4byte	0xb03
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	0xaf8
	.4byte	.LLST66
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x280
	.uleb128 0x2c
	.4byte	0x1480
	.uleb128 0x2c
	.4byte	0x1489
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	0xa84
	.4byte	.LBB321
	.4byte	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.byte	0xf4
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x2a8
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST67
	.uleb128 0x2c
	.4byte	0xab5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0xa84
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x154f
	.uleb128 0x2a
	.4byte	0xa94
	.4byte	.LLST68
	.uleb128 0x34
	.4byte	0xa9f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x33
	.4byte	0xaaa
	.4byte	.LLST69
	.uleb128 0x33
	.4byte	0xab5
	.4byte	.LLST70
	.byte	0
	.uleb128 0x3e
	.4byte	0xa42
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1585
	.uleb128 0x2a
	.4byte	0xa53
	.4byte	.LLST71
	.uleb128 0x34
	.4byte	0xa5f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x33
	.4byte	0xa6b
	.4byte	.LLST72
	.uleb128 0x33
	.4byte	0xa77
	.4byte	.LLST73
	.byte	0
	.uleb128 0x3e
	.4byte	0xa18
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1609
	.uleb128 0x2a
	.4byte	0xa29
	.4byte	.LLST74
	.uleb128 0x34
	.4byte	0xa35
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x35
	.4byte	0xa42
	.4byte	.LBB327
	.4byte	.Ldebug_ranges0+0x2c0
	.byte	0x1
	.2byte	0x121
	.4byte	0x15dd
	.uleb128 0x34
	.4byte	0xa5f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	0xa53
	.4byte	.LLST75
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x2c0
	.uleb128 0x2c
	.4byte	0x1572
	.uleb128 0x2c
	.4byte	0x157b
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0xa84
	.4byte	.LBB333
	.4byte	.Ldebug_ranges0+0x2e8
	.byte	0x1
	.2byte	0x121
	.uleb128 0x32
	.4byte	0xa9f
	.uleb128 0x32
	.4byte	0xa94
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x2e8
	.uleb128 0x2c
	.4byte	0x153c
	.uleb128 0x2c
	.4byte	0x1545
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x9e0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1634
	.uleb128 0x34
	.4byte	0x9ed
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	0x9f9
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x33
	.4byte	0xa05
	.4byte	.LLST76
	.byte	0
	.uleb128 0x3e
	.4byte	0x9ba
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1655
	.uleb128 0x34
	.4byte	0x9c7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	0x9d3
	.byte	0
	.byte	0
	.uleb128 0x3e
	.4byte	0x97e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1686
	.uleb128 0x34
	.4byte	0x98b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	0x997
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x33
	.4byte	0x9a3
	.4byte	.LLST77
	.uleb128 0x36
	.4byte	0x9af
	.byte	0x4
	.byte	0
	.uleb128 0x3f
	.4byte	0x922
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	0x92f
	.4byte	.LLST78
	.uleb128 0x2a
	.4byte	0x93b
	.4byte	.LLST79
	.uleb128 0x3a
	.4byte	0x947
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3a
	.4byte	0x953
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.4byte	0x95f
	.4byte	.LLST80
	.uleb128 0x2c
	.4byte	0x96b
	.uleb128 0x35
	.4byte	0x9ba
	.4byte	.LBB339
	.4byte	.Ldebug_ranges0+0x300
	.byte	0x1
	.2byte	0x153
	.4byte	0x16eb
	.uleb128 0x32
	.4byte	0x9c7
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x300
	.uleb128 0x2c
	.4byte	0x164e
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xb76
	.4byte	.LBB345
	.4byte	.Ldebug_ranges0+0x320
	.byte	0x1
	.2byte	0x159
	.4byte	0x173a
	.uleb128 0x2a
	.4byte	0xb98
	.4byte	.LLST81
	.uleb128 0x2a
	.4byte	0xb8d
	.4byte	.LLST82
	.uleb128 0x2a
	.4byte	0xb82
	.4byte	.LLST82
	.uleb128 0x2b
	.4byte	.Ldebug_ranges0+0x320
	.uleb128 0x2c
	.4byte	0x13e8
	.uleb128 0x2c
	.4byte	0x13f1
	.uleb128 0x38
	.4byte	0x13fa
	.4byte	.Ldebug_ranges0+0x320
	.uleb128 0x2c
	.4byte	0x1403
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x1287
	.4byte	.LBB354
	.4byte	.LBE354-.LBB354
	.byte	0x1
	.2byte	0x14e
	.uleb128 0x2a
	.4byte	0x129e
	.4byte	.LLST84
	.uleb128 0x2a
	.4byte	0x1293
	.4byte	.LLST85
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST98:
	.4byte	.LVL604-.Ltext0
	.4byte	.LVL605-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL605-.Ltext0
	.4byte	.LVL606-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL602-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x3
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL601-.Ltext0
	.4byte	.LVL602-.Ltext0
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
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL603-.Ltext0
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
	.4byte	.LVL603-.Ltext0
	.4byte	.LFE17-.Ltext0
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
.LLST86:
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL584-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL584-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL581-.Ltext0
	.4byte	.LVL582-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 -15
	.byte	0x9f
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL585-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x3f
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL585-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL579-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL583-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -92
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL585-.Ltext0
	.4byte	.LVL586-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0xb
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x20
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL587-.Ltext0
	.4byte	.LVL595-1-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL595-1-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0xa
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL599-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0xb
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x20
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL595-1-.Ltext0
	.2byte	0x12
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL591-.Ltext0
	.4byte	.LVL594-.Ltext0
	.2byte	0x12
	.byte	0x91
	.sleb128 -96
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL592-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	.LVL592-.Ltext0
	.4byte	.LVL594-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL595-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x3
	.byte	0x7d
	.sleb128 -176
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL71-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL70-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	.LVL250-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x7
	.byte	0x31
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -16
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL264-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL287-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x3c
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x3b
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x38
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x35
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x30
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x2d
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x2a
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x6
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x27
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x7
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x24
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x21
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x9
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1e
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xa
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1b
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x18
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x13
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x9
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xc
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0xc
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x17
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1a
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x7
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x13
	.byte	0x93
	.uleb128 0xb
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x16
	.byte	0x93
	.uleb128 0xa
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x19
	.byte	0x93
	.uleb128 0x9
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1c
	.byte	0x93
	.uleb128 0x8
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1f
	.byte	0x93
	.uleb128 0x7
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x3c
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x3c
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x3c
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x51
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x3c
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x3d
	.byte	0x91
	.sleb128 -404
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x3a
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -388
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x37
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x37
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x37
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x37
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x36
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -384
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x33
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -400
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -396
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -392
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x7d
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0xd
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0xa
	.byte	0x74
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x68
	.byte	0x9f
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x9
	.byte	0x7d
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x68
	.byte	0x9f
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x68
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+4023
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x9
	.byte	0x91
	.sleb128 -376
	.byte	0x6
	.byte	0xa
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -376
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL185-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL187-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
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
	.4byte	.LVL224-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL283-.Ltext0
	.4byte	.LVL284-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 -312
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
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
.LLST54:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL347-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL336-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL345-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL348-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL342-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xb
	.2byte	0xff00
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
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
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
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
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL319-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL331-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL334-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL337-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL380-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL381-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL383-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL363-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL366-.Ltext0
	.4byte	.LVL367-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL368-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL369-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL372-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL373-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL382-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL400-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL401-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL404-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL390-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL392-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL394-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL395-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL402-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL403-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL445-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL437-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL438-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL443-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL444-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL445-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL423-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL435-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL463-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL464-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL448-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL450-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL456-.Ltext0
	.4byte	.LVL457-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL459-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL464-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL481-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL481-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL482-.Ltext0
	.4byte	.LVL483-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL483-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL484-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL485-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL466-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL466-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL471-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL471-.Ltext0
	.4byte	.LVL472-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL476-.Ltext0
	.4byte	.LVL477-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL477-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL479-.Ltext0
	.4byte	.LVL480-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL485-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL520-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL526-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL518-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL519-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL520-.Ltext0
	.4byte	.LVL521-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL521-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL522-.Ltext0
	.4byte	.LVL523-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL524-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL525-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL526-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL528-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL529-.Ltext0
	.4byte	.LVL530-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL530-.Ltext0
	.4byte	.LVL531-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL534-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL535-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL537-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL539-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL541-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL542-.Ltext0
	.4byte	.LVL543-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL544-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL548-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL549-.Ltext0
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL550-.Ltext0
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL550-.Ltext0
	.4byte	.LVL551-.Ltext0
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL553-.Ltext0
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL553-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL555-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL557-.Ltext0
	.4byte	.LVL558-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL558-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL561-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL561-.Ltext0
	.4byte	.LVL562-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL562-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL576-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL563-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -84
	.4byte	.LVL576-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL575-.Ltext0
	.2byte	0xf
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL568-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x2
	.byte	0x45
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x2
	.byte	0x3d
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
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB130-.Ltext0
	.4byte	.LBE130-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB127-.Ltext0
	.4byte	.LBE127-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	.LBB128-.Ltext0
	.4byte	.LBE128-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB131-.Ltext0
	.4byte	.LBE131-.Ltext0
	.4byte	.LBB135-.Ltext0
	.4byte	.LBE135-.Ltext0
	.4byte	.LBB136-.Ltext0
	.4byte	.LBE136-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB149-.Ltext0
	.4byte	.LBE149-.Ltext0
	.4byte	.LBB157-.Ltext0
	.4byte	.LBE157-.Ltext0
	.4byte	.LBB159-.Ltext0
	.4byte	.LBE159-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB150-.Ltext0
	.4byte	.LBE150-.Ltext0
	.4byte	.LBB158-.Ltext0
	.4byte	.LBE158-.Ltext0
	.4byte	.LBB160-.Ltext0
	.4byte	.LBE160-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB222-.Ltext0
	.4byte	.LBE222-.Ltext0
	.4byte	.LBB248-.Ltext0
	.4byte	.LBE248-.Ltext0
	.4byte	.LBB307-.Ltext0
	.4byte	.LBE307-.Ltext0
	.4byte	.LBB309-.Ltext0
	.4byte	.LBE309-.Ltext0
	.4byte	.LBB311-.Ltext0
	.4byte	.LBE311-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB223-.Ltext0
	.4byte	.LBE223-.Ltext0
	.4byte	.LBB229-.Ltext0
	.4byte	.LBE229-.Ltext0
	.4byte	.LBB232-.Ltext0
	.4byte	.LBE232-.Ltext0
	.4byte	.LBB233-.Ltext0
	.4byte	.LBE233-.Ltext0
	.4byte	.LBB234-.Ltext0
	.4byte	.LBE234-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB235-.Ltext0
	.4byte	.LBE235-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	.LBB247-.Ltext0
	.4byte	.LBE247-.Ltext0
	.4byte	.LBB287-.Ltext0
	.4byte	.LBE287-.Ltext0
	.4byte	.LBB295-.Ltext0
	.4byte	.LBE295-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB249-.Ltext0
	.4byte	.LBE249-.Ltext0
	.4byte	.LBB286-.Ltext0
	.4byte	.LBE286-.Ltext0
	.4byte	.LBB312-.Ltext0
	.4byte	.LBE312-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB252-.Ltext0
	.4byte	.LBE252-.Ltext0
	.4byte	.LBB256-.Ltext0
	.4byte	.LBE256-.Ltext0
	.4byte	.LBB257-.Ltext0
	.4byte	.LBE257-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB258-.Ltext0
	.4byte	.LBE258-.Ltext0
	.4byte	.LBB284-.Ltext0
	.4byte	.LBE284-.Ltext0
	.4byte	.LBB285-.Ltext0
	.4byte	.LBE285-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB263-.Ltext0
	.4byte	.LBE263-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB264-.Ltext0
	.4byte	.LBE264-.Ltext0
	.4byte	.LBB273-.Ltext0
	.4byte	.LBE273-.Ltext0
	.4byte	.LBB274-.Ltext0
	.4byte	.LBE274-.Ltext0
	.4byte	.LBB275-.Ltext0
	.4byte	.LBE275-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB276-.Ltext0
	.4byte	.LBE276-.Ltext0
	.4byte	.LBB280-.Ltext0
	.4byte	.LBE280-.Ltext0
	.4byte	.LBB281-.Ltext0
	.4byte	.LBE281-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB288-.Ltext0
	.4byte	.LBE288-.Ltext0
	.4byte	.LBB296-.Ltext0
	.4byte	.LBE296-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB289-.Ltext0
	.4byte	.LBE289-.Ltext0
	.4byte	.LBB294-.Ltext0
	.4byte	.LBE294-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB297-.Ltext0
	.4byte	.LBE297-.Ltext0
	.4byte	.LBB306-.Ltext0
	.4byte	.LBE306-.Ltext0
	.4byte	.LBB308-.Ltext0
	.4byte	.LBE308-.Ltext0
	.4byte	.LBB310-.Ltext0
	.4byte	.LBE310-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB315-.Ltext0
	.4byte	.LBE315-.Ltext0
	.4byte	.LBB320-.Ltext0
	.4byte	.LBE320-.Ltext0
	.4byte	.LBB325-.Ltext0
	.4byte	.LBE325-.Ltext0
	.4byte	.LBB326-.Ltext0
	.4byte	.LBE326-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB321-.Ltext0
	.4byte	.LBE321-.Ltext0
	.4byte	.LBB324-.Ltext0
	.4byte	.LBE324-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB327-.Ltext0
	.4byte	.LBE327-.Ltext0
	.4byte	.LBB332-.Ltext0
	.4byte	.LBE332-.Ltext0
	.4byte	.LBB337-.Ltext0
	.4byte	.LBE337-.Ltext0
	.4byte	.LBB338-.Ltext0
	.4byte	.LBE338-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB333-.Ltext0
	.4byte	.LBE333-.Ltext0
	.4byte	.LBB336-.Ltext0
	.4byte	.LBE336-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB339-.Ltext0
	.4byte	.LBE339-.Ltext0
	.4byte	.LBB343-.Ltext0
	.4byte	.LBE343-.Ltext0
	.4byte	.LBB344-.Ltext0
	.4byte	.LBE344-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB345-.Ltext0
	.4byte	.LBE345-.Ltext0
	.4byte	.LBB352-.Ltext0
	.4byte	.LBE352-.Ltext0
	.4byte	.LBB353-.Ltext0
	.4byte	.LBE353-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB356-.Ltext0
	.4byte	.LBE356-.Ltext0
	.4byte	.LBB363-.Ltext0
	.4byte	.LBE363-.Ltext0
	.4byte	.LBB364-.Ltext0
	.4byte	.LBE364-.Ltext0
	.4byte	.LBB365-.Ltext0
	.4byte	.LBE365-.Ltext0
	.4byte	.LBB366-.Ltext0
	.4byte	.LBE366-.Ltext0
	.4byte	.LBB367-.Ltext0
	.4byte	.LBE367-.Ltext0
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
	.4byte	.LASF466
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
	.4byte	.LASF491
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF492
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
	.4byte	.LASF493
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
	.4byte	.LASF506
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
	.4byte	.LASF509
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF510
	.file 16 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x4
	.file 17 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x11
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
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF499:
	.ascii	"TASK0_STACK_SIZE 2000u\000"
.LASF249:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF212:
	.ascii	"__FLT64_DENORM_MIN__ 4.9406564584124654e-324F64\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF358:
	.ascii	"__TA_IBIT__ 64\000"
.LASF251:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF475:
	.ascii	"LOCAL_INLINE static __inline__\000"
.LASF717:
	.ascii	"tmp_diff\000"
.LASF323:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF315:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF613:
	.ascii	"stack_size\000"
.LASF77:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF564:
	.ascii	"E_FUNC_ISRHANDLER\000"
.LASF89:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF88:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF236:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF340:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF218:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF511:
	.ascii	"_OS_STACK_H_ \000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF273:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF550:
	.ascii	"E_FUNC_DELETETASKENVIRONMENT\000"
.LASF303:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF622:
	.ascii	"OS_STATE_SHUTDOWN\000"
.LASF464:
	.ascii	"OS_PROCESS_STACK_TASK3_SIZE 0x200u\000"
.LASF502:
	.ascii	"TASK3_STACK_SIZE 2000u\000"
.LASF612:
	.ascii	"p_stack_pointer_start\000"
.LASF516:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF702:
	.ascii	"Operand1\000"
.LASF703:
	.ascii	"Operand2\000"
.LASF487:
	.ascii	"PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() ;\000"
.LASF263:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF329:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF299:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF233:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF92:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF647:
	.ascii	"OS_MAIN_STACK_POS\000"
.LASF336:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF26:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF30:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF239:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF156:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF39:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF526:
	.ascii	"uint32\000"
.LASF461:
	.ascii	"OS_MAIN_STACK_SIZE 0x400u\000"
.LASF298:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3u\000"
.LASF194:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF555:
	.ascii	"E_FUNC_TASKSCHEDULER\000"
.LASF179:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF175:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF654:
	.ascii	"TASK1_STACK_USAGE_PERCENT\000"
.LASF173:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF482:
	.ascii	"DWT_LAR ((volatile uint32*)0xE0001FB0u)\000"
.LASF117:
	.ascii	"__UINT8_C(c) c\000"
.LASF40:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF209:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF505:
	.ascii	"USE_STATIC_CREATED_TASKS TRUE\000"
.LASF492:
	.ascii	"_LLD_CORE_H_ \000"
.LASF708:
	.ascii	"is_equal\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF286:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF38:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF740:
	.ascii	"tmp_Divisor\000"
.LASF58:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF33:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF458:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0u\000"
.LASF503:
	.ascii	"TASK4_STACK_SIZE 2000u\000"
.LASF369:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF514:
	.ascii	"_OS_RAM_STACK_H_ \000"
.LASF259:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF138:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF190:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF536:
	.ascii	"E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\000"
.LASF168:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF709:
	.ascii	"IS_LESS_OR_EQUAL\000"
.LASF356:
	.ascii	"__DA_IBIT__ 32\000"
.LASF276:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF541:
	.ascii	"E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\000"
.LASF205:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF644:
	.ascii	"TASK3_CALL_NR\000"
.LASF131:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF193:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF677:
	.ascii	"TASK_1_VAR\000"
.LASF255:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF567:
	.ascii	"E_FUNC_SHIFT_LEFT\000"
.LASF111:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF25:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF335:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF343:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF204:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF519:
	.ascii	"sint8\000"
.LASF565:
	.ascii	"E_FUNC_STATE_HANDLER\000"
.LASF132:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF686:
	.ascii	"TASK_TRANSITION_REJECTED_STATE\000"
.LASF235:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF477:
	.ascii	"REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\000"
.LASF312:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF79:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF127:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF283:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF136:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF590:
	.ascii	"task_group_t\000"
.LASF694:
	.ascii	"result\000"
.LASF133:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF724:
	.ascii	"INT_MUL\000"
.LASF234:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF268:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF228:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF577:
	.ascii	"task_state_e\000"
.LASF51:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF301:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF307:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF581:
	.ascii	"E_TASK_RUNNING\000"
.LASF582:
	.ascii	"task_state_t\000"
.LASF474:
	.ascii	"LOCAL static\000"
.LASF658:
	.ascii	"TASK3_STACK_ADDR\000"
.LASF130:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF629:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF167:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF229:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF741:
	.ascii	"rest\000"
.LASF225:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF195:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF756:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_common.c\000"
.LASF55:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF363:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF649:
	.ascii	"TASK0_STACK_ADDR\000"
.LASF91:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF585:
	.ascii	"big_int_s\000"
.LASF47:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF558:
	.ascii	"E_FUNC_TASKSTATEREQUEST\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF646:
	.ascii	"OS_MAIN_STACK_ADDR\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF192:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF35:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF289:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF208:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF688:
	.ascii	"SYSTEM_STATE_ACCEPTED\000"
.LASF219:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF751:
	.ascii	"OS_GET_CURRENT_TIME\000"
.LASF37:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF707:
	.ascii	"IS_EQUAL\000"
.LASF134:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF149:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF15:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF148:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF498:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF19:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF112:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF401:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF472:
	.ascii	"ACCEPTED 1u\000"
.LASF241:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF365:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF245:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF151:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF110:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF46:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF635:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF493:
	.ascii	"_OS_TASK_COMMON_H_ \000"
.LASF261:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF325:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF602:
	.ascii	"max_allowed_wait_time\000"
.LASF118:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF207:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF586:
	.ascii	"task_group_s\000"
.LASF749:
	.ascii	"OS_UpdateCurrentTime\000"
.LASF61:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF515:
	.ascii	"unsigned char\000"
.LASF18:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF226:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF150:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF248:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF264:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF128:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF494:
	.ascii	"_OS_TASK_CONFIG_H_ \000"
.LASF338:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF545:
	.ascii	"os_sw_bugs_function_e\000"
.LASF101:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF695:
	.ascii	"tmp32\000"
.LASF339:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF715:
	.ascii	"Subtrahend\000"
.LASF568:
	.ascii	"os_sw_bugs_function_t\000"
.LASF747:
	.ascii	"timebig\000"
.LASF17:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF326:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF627:
	.ascii	"OS_STATE\000"
.LASF676:
	.ascii	"TASK_0_VAR\000"
.LASF155:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF518:
	.ascii	"uint8\000"
.LASF598:
	.ascii	"wait_act_until\000"
.LASF721:
	.ascii	"ZweiterSummand\000"
.LASF691:
	.ascii	"value\000"
.LASF604:
	.ascii	"current_prio\000"
.LASF657:
	.ascii	"TASK2_STACK_USAGE_PERCENT\000"
.LASF588:
	.ascii	"exe_time\000"
.LASF20:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF32:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF466:
	.ascii	"_OS_BASE_TYPES_H_ \000"
.LASF362:
	.ascii	"__USA_IBIT__ 16\000"
.LASF469:
	.ascii	"TRUE 1u\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF445:
	.ascii	"CPP_VERSION_NONE 0u\000"
.LASF692:
	.ascii	"amount_bits_shift\000"
.LASF593:
	.ascii	"task_queued\000"
.LASF153:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF351:
	.ascii	"__HA_FBIT__ 7\000"
.LASF618:
	.ascii	"scheduler_time_t\000"
.LASF231:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF257:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF572:
	.ascii	"privilige_mode_e\000"
.LASF258:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF632:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF100:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF552:
	.ascii	"E_FUNC_STARTTASK\000"
.LASF696:
	.ascii	"SHIFT_LEFT\000"
.LASF551:
	.ascii	"E_FUNC_INITTASKENVIRONMENT\000"
.LASF177:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF576:
	.ascii	"privilige_mode_t\000"
.LASF170:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF601:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF481:
	.ascii	"DWT_CYCCNT ((volatile uint32*)0xE0001004u)\000"
.LASF67:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF701:
	.ascii	"ASSIGN\000"
.LASF355:
	.ascii	"__DA_FBIT__ 31\000"
.LASF513:
	.ascii	"_OS_MAIN_H_ \000"
.LASF107:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF554:
	.ascii	"E_FUNC_TERMINATETASK\000"
.LASF66:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF530:
	.ascii	"E_OS_BUG_NULL_POINTER\000"
.LASF121:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF611:
	.ascii	"p_stack_pointer_by_malloc\000"
.LASF308:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF154:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF685:
	.ascii	"TASK_TRANSITION_REJECTED_TASK_ADDR\000"
.LASF532:
	.ascii	"E_OS_BUG_TASK_UNSPECIFIED\000"
.LASF473:
	.ascii	"REJECTED 0u\000"
.LASF606:
	.ascii	"task_number\000"
.LASF705:
	.ascii	"IS_GREATER\000"
.LASF164:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF31:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF750:
	.ascii	"tmp_time\000"
.LASF506:
	.ascii	"_OS_INIT_TASK_SYSTEM_H_ \000"
.LASF738:
	.ascii	"local_zero\000"
.LASF630:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF609:
	.ascii	"task_group\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF539:
	.ascii	"E_OS_BUG_MAX_WAIT_TIME_REACHED\000"
.LASF296:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF712:
	.ascii	"INT_SUB\000"
.LASF311:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF196:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF201:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF450:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF537:
	.ascii	"E_OS_BUG_CRITICAL_STACK_USAGE\000"
.LASF186:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF357:
	.ascii	"__TA_FBIT__ 63\000"
.LASF221:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF697:
	.ascii	"ASSIGN_UINT32\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF504:
	.ascii	"MS_PER_SEC 1000u\000"
.LASF438:
	.ascii	"_OS_FIRSTINC_H_ \000"
.LASF94:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF531:
	.ascii	"E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\000"
.LASF116:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF624:
	.ascii	"TASK_PTR\000"
.LASF656:
	.ascii	"TASK2_STACK_POS\000"
.LASF728:
	.ascii	"ret_val\000"
.LASF669:
	.ascii	"LAST_CURRENT_TIME\000"
.LASF682:
	.ascii	"TASK_GROUP_3\000"
.LASF683:
	.ascii	"TASK_GROUP_4\000"
.LASF684:
	.ascii	"TASK_GROUP_5\000"
.LASF580:
	.ascii	"E_TASK_READY\000"
.LASF109:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF672:
	.ascii	"TASK_RUN_QUEUE\000"
.LASF549:
	.ascii	"E_FUNC_CREATETASKENVIRONMENT\000"
.LASF636:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF243:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF706:
	.ascii	"is_greater\000"
.LASF648:
	.ascii	"OS_MAIN_STACK_USAGE_PERCENT\000"
.LASF529:
	.ascii	"E_OS_BUG_TASKSTATE_REQUEST_DENIED\000"
.LASF256:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF324:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF368:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF103:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF517:
	.ascii	"unsigned_char_t\000"
.LASF102:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF104:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF457:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8u\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF640:
	.ascii	"DBG_CTRL_VALUE\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF220:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF65:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF120:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF719:
	.ascii	"Summe\000"
.LASF29:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF115:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF157:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF446:
	.ascii	"CPP_VERSION_1998 1u\000"
.LASF304:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF96:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF736:
	.ascii	"Divisor\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF253:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF524:
	.ascii	"long unsigned int\000"
.LASF354:
	.ascii	"__SA_IBIT__ 16\000"
.LASF140:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF2:
	.ascii	"__GNUC__ 7\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF44:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF459:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4u\000"
.LASF413:
	.ascii	"__SOFTFP__ 1\000"
.LASF232:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF142:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF596:
	.ascii	"nr_of_ins_allowed\000"
.LASF560:
	.ascii	"E_FUNC_OS_EXCEPTION\000"
.LASF59:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF322:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF265:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF98:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF620:
	.ascii	"OS_STATE_INIT\000"
.LASF113:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF605:
	.ascii	"default_prio\000"
.LASF592:
	.ascii	"active\000"
.LASF188:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF5:
	.ascii	"__VERSION__ \"7.3.1 20180622 (release) [ARM/embedde"
	.ascii	"d-7-branch revision 261907]\"\000"
.LASF198:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF614:
	.ascii	"p_stack_pointer_end\000"
.LASF54:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF543:
	.ascii	"boolean_t\000"
.LASF183:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF215:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF501:
	.ascii	"TASK2_STACK_SIZE 2000u\000"
.LASF163:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF471:
	.ascii	"True TRUE\000"
.LASF9:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2u\000"
.LASF145:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF631:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF348:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF726:
	.ascii	"Faktor1\000"
.LASF727:
	.ascii	"Faktor2\000"
.LASF589:
	.ascii	"fair_exe_time\000"
.LASF12:
	.ascii	"__OPTIMIZE__ 1\000"
.LASF309:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF690:
	.ascii	"OS_MAIN_STACK\000"
.LASF574:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\000"
.LASF13:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF184:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF99:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF660:
	.ascii	"TASK3_STACK_USAGE_PERCENT\000"
.LASF287:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF655:
	.ascii	"TASK2_STACK_ADDR\000"
.LASF754:
	.ascii	"task_func_nr\000"
.LASF665:
	.ascii	"TASK1_STACK\000"
.LASF610:
	.ascii	"p_stack_pointer\000"
.LASF82:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF152:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF306:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF270:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF74:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF372:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF342:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF664:
	.ascii	"TASK0_STACK\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF318:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF260:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF181:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF527:
	.ascii	"sint32\000"
.LASF698:
	.ascii	"leftOperand\000"
.LASF144:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF73:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF720:
	.ascii	"ErsterSummand\000"
.LASF454:
	.ascii	"DYNAMIC_MEMORY_USED FALSE\000"
.LASF187:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF670:
	.ascii	"TASK_SCHEDULING_QUEUE\000"
.LASF83:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF599:
	.ascii	"wait_time\000"
.LASF562:
	.ascii	"E_FUNC_SHUTDOWN\000"
.LASF135:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF415:
	.ascii	"__ARM_FP\000"
.LASF739:
	.ascii	"tmp_Dividend\000"
.LASF352:
	.ascii	"__HA_IBIT__ 8\000"
.LASF484:
	.ascii	"DISABLE_INTERRUPTS() LLF_INT_DISABLE()\000"
.LASF137:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF674:
	.ascii	"TASK_IDLE_QUEUE\000"
.LASF224:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF206:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF210:
	.ascii	"__FLT64_MIN__ 2.2250738585072014e-308F64\000"
.LASF85:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF42:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF271:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF22:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF525:
	.ascii	"long int\000"
.LASF666:
	.ascii	"TASK2_STACK\000"
.LASF507:
	.ascii	"OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(tas"
	.ascii	"k_name)] = (task_ptr))\000"
.LASF483:
	.ascii	"SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\000"
.LASF269:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF53:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF491:
	.ascii	"_LLD_GLOBAL_H_ \000"
.LASF359:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF570:
	.ascii	"big_int\000"
.LASF252:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF591:
	.ascii	"task_s\000"
.LASF616:
	.ascii	"task_t\000"
.LASF27:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF197:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
.LASF285:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF713:
	.ascii	"Differenz\000"
.LASF680:
	.ascii	"TASK_GROUP_1\000"
.LASF681:
	.ascii	"TASK_GROUP_2\000"
.LASF266:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF460:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8u\000"
.LASF347:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF463:
	.ascii	"OS_PROCESS_STACK_TASK2_SIZE 0x200u\000"
.LASF178:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF169:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF729:
	.ascii	"local_tmp_bigInt\000"
.LASF57:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF222:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF569:
	.ascii	"unsigned int\000"
.LASF147:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF143:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF661:
	.ascii	"TASK4_STACK_ADDR\000"
.LASF746:
	.ascii	"OS_READ_AND_RESET_CURRENT_TIME\000"
.LASF297:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF213:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF146:
	.ascii	"__FLT_DIG__ 6\000"
.LASF310:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF512:
	.ascii	"_OS_HEAP_H_ \000"
.LASF742:
	.ascii	"local_cnt\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF68:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF478:
	.ascii	"MCU_X86 3\000"
.LASF125:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF735:
	.ascii	"Dividend\000"
.LASF607:
	.ascii	"state_request\000"
.LASF341:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF238:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF139:
	.ascii	"__GCC_IEC_559 0\000"
.LASF704:
	.ascii	"IS_GREATER_OR_EQUAL\000"
.LASF559:
	.ascii	"E_FUNC_PREEMPT_TASK\000"
.LASF274:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF652:
	.ascii	"TASK1_STACK_ADDR\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF28:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF43:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF556:
	.ascii	"E_FUNC_INITTASK\000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF80:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF244:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF361:
	.ascii	"__USA_FBIT__ 16\000"
.LASF176:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF757:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF158:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF275:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF608:
	.ascii	"task_state\000"
.LASF191:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF714:
	.ascii	"Minuend\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF496:
	.ascii	"NUMBER_OF_TASKS 10u\000"
.LASF535:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTDATA\000"
.LASF594:
	.ascii	"idle_task\000"
.LASF557:
	.ascii	"E_FUNC_ACTIVATETASK\000"
.LASF23:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF544:
	.ascii	"os_sw_bugs_e\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF476:
	.ascii	"GLOBAL_INLINE __inline__\000"
.LASF722:
	.ascii	"tmp_sum\000"
.LASF542:
	.ascii	"os_sw_bugs_t\000"
.LASF745:
	.ascii	"teilergebnis\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF486:
	.ascii	"PRIVILIGE_LEVEL_SAVE_CURRENT() ;\000"
.LASF72:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF488:
	.ascii	"PRIVILIGE_LEVEL_RESTORE_SAVED() ;\000"
.LASF267:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF105:
	.ascii	"__INT8_C(c) c\000"
.LASF272:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF508:
	.ascii	"OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(tas"
	.ascii	"k_name)])\000"
.LASF520:
	.ascii	"short unsigned int\000"
.LASF642:
	.ascii	"TASK1_CALL_NR\000"
.LASF161:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF575:
	.ascii	"E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\000"
.LASF189:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF240:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF583:
	.ascii	"func_p_t\000"
.LASF185:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF673:
	.ascii	"RUNNING_TASK\000"
.LASF123:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF725:
	.ascii	"Produkt\000"
.LASF49:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF663:
	.ascii	"TASK4_STACK_USAGE_PERCENT\000"
.LASF566:
	.ascii	"E_FUNC_INTDIV\000"
.LASF718:
	.ascii	"INT_ADD\000"
.LASF122:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF262:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF490:
	.ascii	"AMOUNT_SW_BUG_FUNCTIONS 22\000"
.LASF479:
	.ascii	"MCU_CORTEX_M4 4\000"
.LASF24:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF453:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF237:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF626:
	.ascii	"OS_SW_BUG\000"
.LASF653:
	.ascii	"TASK1_STACK_POS\000"
.LASF317:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF69:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF330:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
.LASF337:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF292:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF344:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF671:
	.ascii	"RUNNING_SCHEDULING_QUEUE_ENTRY\000"
.LASF56:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF293:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF279:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF52:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF314:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF36:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF465:
	.ascii	"OS_PROCESS_STACK_TASK4_SIZE 0x200u\000"
.LASF217:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF650:
	.ascii	"TASK0_STACK_POS\000"
.LASF753:
	.ascii	"bug_nr\000"
.LASF349:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1u\000"
.LASF327:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF548:
	.ascii	"E_FUNC_RESTORETASKENVIRONMENT\000"
.LASF126:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF571:
	.ascii	"timebig_t\000"
.LASF319:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF462:
	.ascii	"OS_PROCESS_STACK_TASK1_SIZE 0x200u\000"
.LASF278:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF546:
	.ascii	"E_FUNC_NOFUNCTION\000"
.LASF723:
	.ascii	"set_4_uint8_to_uint32\000"
.LASF41:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF615:
	.ascii	"privilige_mode\000"
.LASF573:
	.ascii	"E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\000"
.LASF641:
	.ascii	"DBG_CALIB_VALUE\000"
.LASF625:
	.ascii	"HEAP\000"
.LASF711:
	.ascii	"is_less\000"
.LASF699:
	.ascii	"rightOperand\000"
.LASF485:
	.ascii	"ENABLE_INTERRUPTS() LLF_INT_ENABLE()\000"
.LASF470:
	.ascii	"False FALSE\000"
.LASF449:
	.ascii	"CPP_VERSION_2011 4u\000"
.LASF350:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF353:
	.ascii	"__SA_FBIT__ 15\000"
.LASF467:
	.ascii	"_OS_COMMON_H_ \000"
.LASF223:
	.ascii	"__FLT32X_MAX__ 1.7976931348623157e+308F32x\000"
.LASF456:
	.ascii	"HEAP_SIZE 10000u\000"
.LASF444:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF410:
	.ascii	"__THUMBEL__ 1\000"
.LASF391:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF638:
	.ascii	"DBG_RLD_VALUE\000"
.LASF332:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF584:
	.ascii	"func_p_state_change_t\000"
.LASF748:
	.ascii	"time\000"
.LASF321:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF346:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF553:
	.ascii	"E_FUNC_PREEMPTTASK\000"
.LASF634:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF587:
	.ascii	"number\000"
.LASF400:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF34:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF563:
	.ascii	"E_FUNC_STACKCHECK\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF371:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF538:
	.ascii	"E_OS_BUG_SVC_NUMBER_MISSING\000"
.LASF510:
	.ascii	"_OS_RAM_H_ \000"
.LASF633:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF439:
	.ascii	"_OS_CONFIG_H_ \000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF300:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF172:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF214:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF284:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF246:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF675:
	.ascii	"bTASK_QUEUE_INITIALIZED\000"
.LASF679:
	.ascii	"TASK_3_VAR\000"
.LASF294:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF63:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF64:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF367:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF250:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF160:
	.ascii	"__DBL_DIG__ 15\000"
.LASF280:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF732:
	.ascii	"local_tmp16\000"
.LASF21:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF455:
	.ascii	"LOOPTIME_IN_USEC ((uint32)10000u)\000"
.LASF247:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF114:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF452:
	.ascii	"NR_OF_CORES 1u\000"
.LASF752:
	.ascii	"OS_SET_SW_BUG\000"
.LASF730:
	.ascii	"pos1\000"
.LASF731:
	.ascii	"pos2\000"
.LASF495:
	.ascii	"TASK_MIN_TIME (1e0)\000"
.LASF182:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF302:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF521:
	.ascii	"short int\000"
.LASF645:
	.ascii	"TASK4_CALL_NR\000"
.LASF119:
	.ascii	"__UINT16_C(c) c\000"
.LASF617:
	.ascii	"scheduling_t\000"
.LASF597:
	.ascii	"nr_of_ins_activated\000"
.LASF364:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF171:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF202:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF743:
	.ascii	"one_shifted_nibble\000"
.LASF737:
	.ascii	"nibble_shift_left_amount\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4u\000"
.LASF165:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF316:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF651:
	.ascii	"TASK0_STACK_USAGE_PERCENT\000"
.LASF561:
	.ascii	"E_FUNC_CREATETASK\000"
.LASF447:
	.ascii	"CPP_VERSION_2003 2u\000"
.LASF81:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF700:
	.ascii	"ASSIGN_NULL\000"
.LASF331:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF290:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF603:
	.ascii	"start_time\000"
.LASF211:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF578:
	.ascii	"E_TASK_UNSPECIFIED\000"
.LASF366:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF637:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF547:
	.ascii	"E_FUNC_SAVETASKENVIRONMENT\000"
.LASF509:
	.ascii	"_LED_H_ \000"
.LASF50:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF180:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF313:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF124:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF199:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF639:
	.ascii	"DBG_CURR_VAL\000"
.LASF643:
	.ascii	"TASK2_CALL_NR\000"
.LASF227:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF328:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF129:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF710:
	.ascii	"IS_LESS\000"
.LASF600:
	.ascii	"time_to_prio_inc\000"
.LASF62:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF667:
	.ascii	"TASK3_STACK\000"
.LASF97:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF579:
	.ascii	"E_TASK_SUSPENDED\000"
.LASF45:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF528:
	.ascii	"E_OS_BUG_NO_BUG\000"
.LASF288:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF14:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF282:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF448:
	.ascii	"CPP_VERSION_2007 3u\000"
.LASF230:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF295:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF60:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF360:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF305:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF320:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF174:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF87:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF533:
	.ascii	"E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\000"
.LASF76:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF203:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF242:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF595:
	.ascii	"free\000"
.LASF75:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF106:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF480:
	.ascii	"DWT_CTRL ((volatile uint32*)0xE0001000u)\000"
.LASF48:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF733:
	.ascii	"INT_DIV\000"
.LASF540:
	.ascii	"E_OS_BUG_DIVISION_BY_ZERO\000"
.LASF166:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF744:
	.ascii	"u32_teilergebnis\000"
.LASF281:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF200:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF500:
	.ascii	"TASK1_STACK_SIZE 2000u\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF755:
	.ascii	"GNU C89 7.3.1 20180622 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 261907] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O3 -std=c90\000"
.LASF333:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF78:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF678:
	.ascii	"TASK_2_VAR\000"
.LASF71:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF668:
	.ascii	"TASK4_STACK\000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF619:
	.ascii	"os_state_e\000"
.LASF468:
	.ascii	"FALSE 0u\000"
.LASF689:
	.ascii	"LOCAL_SYSTEM_TIME\000"
.LASF662:
	.ascii	"TASK4_STACK_POS\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF523:
	.ascii	"unsigned_int32_t\000"
.LASF623:
	.ascii	"os_state_t\000"
.LASF345:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF254:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF216:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF497:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF84:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF687:
	.ascii	"TASK_TRANSITION_CURRENT_STATE\000"
.LASF621:
	.ascii	"OS_STATE_RUNNING\000"
.LASF108:
	.ascii	"__INT16_C(c) c\000"
.LASF734:
	.ascii	"Quotient\000"
.LASF534:
	.ascii	"E_OS_BUG_EXCEPTION_ABORTPREFETCH\000"
.LASF86:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF659:
	.ascii	"TASK3_STACK_POS\000"
.LASF334:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF162:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF489:
	.ascii	"HALT_MCU() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF451:
	.ascii	"BIG_INT_SIZE 16u\000"
.LASF693:
	.ascii	"tmpBigInt\000"
.LASF522:
	.ascii	"uint16\000"
.LASF90:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF159:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF277:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF628:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF70:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF716:
	.ascii	"carry\000"
.LASF291:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF758:
	.ascii	"get_uint32_of_4_uint8\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
