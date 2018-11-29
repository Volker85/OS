	.syntax unified
	.cpu cortex-m4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"os_task_common.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	REGISTER_R0,4,4
	.comm	REGISTER_R1,4,4
	.comm	REGISTER_R2,4,4
	.comm	REGISTER_R3,4,4
	.comm	TASK_PTR,20,4
	.align	2
	.global	OS_TASK_SAVETASK_ENVIRONMENT
	.thumb
	.thumb_func
	.type	OS_TASK_SAVETASK_ENVIRONMENT, %function
OS_TASK_SAVETASK_ENVIRONMENT:
.LFB0:
	.file 1 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.c"
	.loc 1 18 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 19 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	.loc 1 25 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	mov	r0, r3
	bl	LLF_SAVE_TASK_STACK
	.loc 1 29 0
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	bl	LLF_SAVE_REGISTERS
	b	.L3
.L2:
	.loc 1 34 0
	movs	r0, #2
	movs	r1, #1
	bl	OS_SET_SW_BUG
.L3:
	.loc 1 36 0
	nop
	.loc 1 37 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE0:
	.size	OS_TASK_SAVETASK_ENVIRONMENT, .-OS_TASK_SAVETASK_ENVIRONMENT
	.align	2
	.global	OS_TASK_RESTORETASK_ENVIRONMENT
	.thumb
	.thumb_func
	.type	OS_TASK_RESTORETASK_ENVIRONMENT, %function
OS_TASK_RESTORETASK_ENVIRONMENT:
.LFB1:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 41 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L6
	.loc 1 43 0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	mov	r0, r3
	bl	LLF_RESTORE_TASK_STACK
	.loc 1 44 0
	ldr	r0, [r7, #4]
	bl	LLF_RESTORE_REGISTERS
	b	.L5
.L6:
	.loc 1 48 0
	movs	r0, #2
	movs	r1, #2
	bl	OS_SET_SW_BUG
.L5:
	.loc 1 50 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE1:
	.size	OS_TASK_RESTORETASK_ENVIRONMENT, .-OS_TASK_RESTORETASK_ENVIRONMENT
	.align	2
	.global	OS_TASK_RESTORE_SYSTEM_STACK
	.thumb
	.thumb_func
	.type	OS_TASK_RESTORE_SYSTEM_STACK, %function
OS_TASK_RESTORE_SYSTEM_STACK:
.LFB2:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 53 0
	ldr	r0, [r7, #4]
	bl	LLF_RESTORE_SYSTEM_STACK
	.loc 1 54 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	OS_TASK_RESTORE_SYSTEM_STACK, .-OS_TASK_RESTORE_SYSTEM_STACK
	.align	2
	.global	OS_TASK_SAVE_SYSTEM_STACK
	.thumb
	.thumb_func
	.type	OS_TASK_SAVE_SYSTEM_STACK, %function
OS_TASK_SAVE_SYSTEM_STACK:
.LFB3:
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 57 0
	ldr	r0, [r7, #4]
	bl	LLF_SAVE_SYSTEM_STACK
	.loc 1 58 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	OS_TASK_SAVE_SYSTEM_STACK, .-OS_TASK_SAVE_SYSTEM_STACK
	.align	2
	.global	OS_Task_InitTaskEnvironment
	.thumb
	.thumb_func
	.type	OS_Task_InitTaskEnvironment, %function
OS_Task_InitTaskEnvironment:
.LFB4:
	.loc 1 60 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 61 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L11
	.loc 1 64 0
	ldr	r2, [r7, #4]
	ldrb	r3, [r2]
	bfc	r3, #0, #1
	strb	r3, [r2]
	.loc 1 72 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	.loc 1 73 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	.loc 1 74 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	.loc 1 75 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	.loc 1 76 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #72]
	.loc 1 77 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	.loc 1 78 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	.loc 1 79 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	.loc 1 80 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	.loc 1 81 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	.loc 1 82 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #96]
	.loc 1 83 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #100]
	.loc 1 84 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	.loc 1 87 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 88 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 89 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	.loc 1 90 0
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #20]
	.loc 1 91 0
	ldr	r3, [r7, #4]
	ldr	r2, .L13
	str	r2, [r3, #24]
	.loc 1 92 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 93 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
	.loc 1 94 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #33]
	.loc 1 97 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	.loc 1 98 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #48]
	.loc 1 99 0
	ldr	r2, [r7, #4]
	ldrb	r3, [r2]
	bfc	r3, #1, #1
	strb	r3, [r2]
	.loc 1 100 0
	ldr	r2, [r7, #4]
	ldr	r3, [r2]
	bfc	r3, #3, #29
	str	r3, [r2]
	.loc 1 101 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 102 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #5]
	.loc 1 103 0
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	b	.L10
.L11:
	.loc 1 108 0
	movs	r0, #2
	movs	r1, #3
	bl	OS_SET_SW_BUG
.L10:
	.loc 1 110 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	100000
	.cfi_endproc
.LFE4:
	.size	OS_Task_InitTaskEnvironment, .-OS_Task_InitTaskEnvironment
	.align	2
	.global	OS_Task_DeleteTaskEnvironment
	.thumb
	.thumb_func
	.type	OS_Task_DeleteTaskEnvironment, %function
OS_Task_DeleteTaskEnvironment:
.LFB5:
	.loc 1 113 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 114 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L16
	.loc 1 114 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	beq	.L16
	.loc 1 116 0 is_stmt 1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #112]
	mov	r0, r3
	bl	os_free
	b	.L15
.L16:
	.loc 1 120 0
	movs	r0, #2
	movs	r1, #4
	bl	OS_SET_SW_BUG
.L15:
	.loc 1 123 0
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	OS_Task_DeleteTaskEnvironment, .-OS_Task_DeleteTaskEnvironment
	.align	2
	.global	OS_Task_CreateTaskEnvironment
	.thumb
	.thumb_func
	.type	OS_Task_CreateTaskEnvironment, %function
OS_Task_CreateTaskEnvironment:
.LFB6:
	.loc 1 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 126 0
	movs	r3, #0
	str	r3, [r7, #4]
	.loc 1 127 0
	movs	r0, #132
	bl	os_malloc
	str	r0, [r7, #4]
	.loc 1 128 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L19
	.loc 1 130 0
	movs	r0, #2
	movs	r1, #3
	bl	OS_SET_SW_BUG
.L19:
	.loc 1 132 0
	ldr	r3, [r7, #4]
	.loc 1 133 0
	mov	r0, r3
	adds	r7, r7, #8
	.cfi_def_cfa_offset 8
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	OS_Task_CreateTaskEnvironment, .-OS_Task_CreateTaskEnvironment
.Letext0:
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4ff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF511
	.byte	0x1
	.4byte	.LASF512
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF430
	.byte	0x2
	.byte	0x1d
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF432
	.uleb128 0x2
	.4byte	.LASF431
	.byte	0x2
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF433
	.uleb128 0x2
	.4byte	.LASF434
	.byte	0x2
	.byte	0x22
	.4byte	0x54
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF435
	.uleb128 0x4
	.4byte	.LASF444
	.byte	0x1
	.byte	0x3
	.byte	0x35
	.4byte	0x98
	.uleb128 0x5
	.4byte	.LASF436
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF437
	.sleb128 1
	.uleb128 0x5
	.4byte	.LASF438
	.sleb128 2
	.uleb128 0x5
	.4byte	.LASF439
	.sleb128 3
	.uleb128 0x5
	.4byte	.LASF440
	.sleb128 4
	.uleb128 0x5
	.4byte	.LASF441
	.sleb128 5
	.uleb128 0x5
	.4byte	.LASF442
	.sleb128 6
	.uleb128 0x5
	.4byte	.LASF443
	.sleb128 7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF445
	.byte	0x1
	.byte	0x3
	.byte	0x41
	.4byte	0xf3
	.uleb128 0x5
	.4byte	.LASF446
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF447
	.sleb128 1
	.uleb128 0x5
	.4byte	.LASF448
	.sleb128 2
	.uleb128 0x5
	.4byte	.LASF449
	.sleb128 3
	.uleb128 0x5
	.4byte	.LASF450
	.sleb128 4
	.uleb128 0x5
	.4byte	.LASF451
	.sleb128 5
	.uleb128 0x5
	.4byte	.LASF452
	.sleb128 6
	.uleb128 0x5
	.4byte	.LASF453
	.sleb128 7
	.uleb128 0x5
	.4byte	.LASF454
	.sleb128 8
	.uleb128 0x5
	.4byte	.LASF455
	.sleb128 9
	.uleb128 0x5
	.4byte	.LASF456
	.sleb128 10
	.uleb128 0x5
	.4byte	.LASF457
	.sleb128 11
	.uleb128 0x5
	.4byte	.LASF458
	.sleb128 12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF459
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	0x118
	.uleb128 0x5
	.4byte	.LASF460
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF461
	.sleb128 1
	.uleb128 0x5
	.4byte	.LASF462
	.sleb128 2
	.uleb128 0x5
	.4byte	.LASF463
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF464
	.byte	0x4
	.byte	0xe
	.4byte	0xf3
	.uleb128 0x2
	.4byte	.LASF465
	.byte	0x4
	.byte	0x13
	.4byte	0x12e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x134
	.uleb128 0x7
	.4byte	0x13f
	.uleb128 0x8
	.4byte	0x13f
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF466
	.byte	0x4
	.byte	0x15
	.4byte	0x14c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x152
	.uleb128 0xa
	.4byte	0x25
	.4byte	0x166
	.uleb128 0x8
	.4byte	0x13f
	.uleb128 0x8
	.4byte	0x118
	.byte	0
	.uleb128 0xb
	.4byte	.LASF470
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.4byte	0x18b
	.uleb128 0xc
	.4byte	.LASF467
	.byte	0x4
	.byte	0x18
	.4byte	0x49
	.byte	0
	.uleb128 0xc
	.4byte	.LASF468
	.byte	0x4
	.byte	0x19
	.4byte	0x49
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF469
	.byte	0x4
	.byte	0x1b
	.4byte	0x166
	.uleb128 0xb
	.4byte	.LASF471
	.byte	0x84
	.byte	0x4
	.byte	0x1d
	.4byte	0x36c
	.uleb128 0xd
	.4byte	.LASF472
	.byte	0x4
	.byte	0x1f
	.4byte	0x36c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF473
	.byte	0x4
	.byte	0x20
	.4byte	0x36c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF474
	.byte	0x4
	.byte	0x21
	.4byte	0x36c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xd
	.4byte	.LASF475
	.byte	0x4
	.byte	0x22
	.4byte	0x36c
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF476
	.byte	0x4
	.byte	0x23
	.4byte	0x25
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF477
	.byte	0x4
	.byte	0x24
	.4byte	0x25
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF478
	.byte	0x4
	.byte	0x25
	.4byte	0x49
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF479
	.byte	0x4
	.byte	0x26
	.4byte	0x49
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF480
	.byte	0x4
	.byte	0x27
	.4byte	0x49
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF481
	.byte	0x4
	.byte	0x28
	.4byte	0x49
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF482
	.byte	0x4
	.byte	0x29
	.4byte	0x49
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF467
	.byte	0x4
	.byte	0x2a
	.4byte	0x49
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF483
	.byte	0x4
	.byte	0x2b
	.4byte	0x25
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF484
	.byte	0x4
	.byte	0x2c
	.4byte	0x25
	.byte	0x21
	.uleb128 0xc
	.4byte	.LASF485
	.byte	0x4
	.byte	0x2d
	.4byte	0x49
	.byte	0x24
	.uleb128 0xe
	.ascii	"fp\000"
	.byte	0x4
	.byte	0x2e
	.4byte	0x123
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF486
	.byte	0x4
	.byte	0x2f
	.4byte	0x141
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF487
	.byte	0x4
	.byte	0x30
	.4byte	0x118
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF488
	.byte	0x4
	.byte	0x31
	.4byte	0x373
	.byte	0x34
	.uleb128 0xe
	.ascii	"r0\000"
	.byte	0x4
	.byte	0x38
	.4byte	0x49
	.byte	0x38
	.uleb128 0xe
	.ascii	"r1\000"
	.byte	0x4
	.byte	0x39
	.4byte	0x49
	.byte	0x3c
	.uleb128 0xe
	.ascii	"r2\000"
	.byte	0x4
	.byte	0x3a
	.4byte	0x49
	.byte	0x40
	.uleb128 0xe
	.ascii	"r3\000"
	.byte	0x4
	.byte	0x3b
	.4byte	0x49
	.byte	0x44
	.uleb128 0xe
	.ascii	"r4\000"
	.byte	0x4
	.byte	0x3c
	.4byte	0x49
	.byte	0x48
	.uleb128 0xe
	.ascii	"r5\000"
	.byte	0x4
	.byte	0x3d
	.4byte	0x49
	.byte	0x4c
	.uleb128 0xe
	.ascii	"r6\000"
	.byte	0x4
	.byte	0x3e
	.4byte	0x49
	.byte	0x50
	.uleb128 0xe
	.ascii	"r7\000"
	.byte	0x4
	.byte	0x3f
	.4byte	0x49
	.byte	0x54
	.uleb128 0xe
	.ascii	"r8\000"
	.byte	0x4
	.byte	0x40
	.4byte	0x49
	.byte	0x58
	.uleb128 0xe
	.ascii	"r9\000"
	.byte	0x4
	.byte	0x41
	.4byte	0x49
	.byte	0x5c
	.uleb128 0xe
	.ascii	"r10\000"
	.byte	0x4
	.byte	0x42
	.4byte	0x49
	.byte	0x60
	.uleb128 0xe
	.ascii	"r11\000"
	.byte	0x4
	.byte	0x43
	.4byte	0x49
	.byte	0x64
	.uleb128 0xe
	.ascii	"r12\000"
	.byte	0x4
	.byte	0x44
	.4byte	0x49
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF489
	.byte	0x4
	.byte	0x46
	.4byte	0x379
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF490
	.byte	0x4
	.byte	0x47
	.4byte	0x379
	.byte	0x70
	.uleb128 0xc
	.4byte	.LASF491
	.byte	0x4
	.byte	0x48
	.4byte	0x379
	.byte	0x74
	.uleb128 0xc
	.4byte	.LASF492
	.byte	0x4
	.byte	0x49
	.4byte	0x49
	.byte	0x78
	.uleb128 0xc
	.4byte	.LASF493
	.byte	0x4
	.byte	0x4a
	.4byte	0x379
	.byte	0x7c
	.uleb128 0xc
	.4byte	.LASF494
	.byte	0x4
	.byte	0x4b
	.4byte	0x25
	.byte	0x80
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF495
	.uleb128 0x6
	.byte	0x4
	.4byte	0x18b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF496
	.byte	0x4
	.byte	0x4d
	.4byte	0x196
	.uleb128 0xf
	.4byte	.LASF497
	.byte	0x1
	.byte	0x11
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ae
	.uleb128 0x10
	.4byte	.LASF499
	.byte	0x1
	.byte	0x11
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37f
	.uleb128 0xf
	.4byte	.LASF498
	.byte	0x1
	.byte	0x27
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3d8
	.uleb128 0x10
	.4byte	.LASF499
	.byte	0x1
	.byte	0x27
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF500
	.byte	0x1
	.byte	0x33
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fc
	.uleb128 0x10
	.4byte	.LASF501
	.byte	0x1
	.byte	0x33
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x37
	.uleb128 0xf
	.4byte	.LASF502
	.byte	0x1
	.byte	0x37
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x426
	.uleb128 0x10
	.4byte	.LASF501
	.byte	0x1
	.byte	0x37
	.4byte	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF503
	.byte	0x1
	.byte	0x3b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x44a
	.uleb128 0x10
	.4byte	.LASF499
	.byte	0x1
	.byte	0x3b
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF504
	.byte	0x1
	.byte	0x70
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46e
	.uleb128 0x10
	.4byte	.LASF499
	.byte	0x1
	.byte	0x70
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF513
	.byte	0x1
	.byte	0x7c
	.4byte	0x3ae
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x496
	.uleb128 0x12
	.4byte	.LASF499
	.byte	0x1
	.byte	0x7e
	.4byte	0x3ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	0x3ae
	.4byte	0x4a6
	.uleb128 0x14
	.4byte	0x4a6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF505
	.uleb128 0x15
	.4byte	.LASF506
	.byte	0x1
	.byte	0xf
	.4byte	0x496
	.uleb128 0x5
	.byte	0x3
	.4byte	TASK_PTR
	.uleb128 0x15
	.4byte	.LASF507
	.byte	0x1
	.byte	0xb
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	REGISTER_R0
	.uleb128 0x15
	.4byte	.LASF508
	.byte	0x1
	.byte	0xc
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	REGISTER_R1
	.uleb128 0x15
	.4byte	.LASF509
	.byte	0x1
	.byte	0xd
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	REGISTER_R2
	.uleb128 0x15
	.4byte	.LASF510
	.byte	0x1
	.byte	0xe
	.4byte	0x13f
	.uleb128 0x5
	.byte	0x3
	.4byte	REGISTER_R3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x18
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
	.file 5 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF360
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
	.file 6 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF396
	.file 7 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x4
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 9 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF406
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF407
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF419
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF422
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF423
	.byte	0x4
	.byte	0x4
	.file 15 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xf
	.byte	0x4
	.file 16 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 17 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.cc6c77955922ed8e0569eb6fefadb4dd,comdat
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
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_base_types.h.2.f3c0267f175f5cbacca6b71710665a02,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF372
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.17fb4bbab233edcbaca9a4c22556f36d,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF395
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_stack.h.2.19e5f67d3b2f1e569581f0c055512986,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF399
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_heap.h.2.89074aae455d2462b5952479e3530dd1,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF405
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.7cfaa082f19f6144d85c64ce1f04b914,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF418
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.92.310ae0de7be5874c80e3c1d4bf919b37,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF421
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_scheduler.h.2.125feba674fa85672711aed1ca8ea199,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF429
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF410:
	.ascii	"MinTimeSlice_s (1.0/SchedulerFrequency)\000"
.LASF325:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF351:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF342:
	.ascii	"__thumb2__ 1\000"
.LASF320:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF368:
	.ascii	"CPP_VERSION_2003 2\000"
.LASF177:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF255:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF453:
	.ascii	"Func_TerminateTask\000"
.LASF512:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_task_common.c\000"
.LASF101:
	.ascii	"__UINT8_C(c) c\000"
.LASF86:
	.ascii	"__INT32_MAX__ 2147483647L\000"
.LASF438:
	.ascii	"os_bug_null_pointer\000"
.LASF267:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF283:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF502:
	.ascii	"OS_TASK_SAVE_SYSTEM_STACK\000"
.LASF130:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF139:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF423:
	.ascii	"_LED_H_ \000"
.LASF98:
	.ascii	"__INT_LEAST64_MAX__ 9223372036854775807LL\000"
.LASF386:
	.ascii	"cMCU_X86 3\000"
.LASF336:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF395:
	.ascii	"HaltMcu() ;\000"
.LASF217:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF144:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF193:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF393:
	.ascii	"Privilige_level_enter_kernel_mode() ;\000"
.LASF331:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF475:
	.ascii	"FREE\000"
.LASF419:
	.ascii	"_os_init_task_system_h_ \000"
.LASF495:
	.ascii	"unsigned int\000"
.LASF497:
	.ascii	"OS_TASK_SAVETASK_ENVIRONMENT\000"
.LASF376:
	.ascii	"FALSE False\000"
.LASF398:
	.ascii	"OS_STACK_SIZE 0x100\000"
.LASF103:
	.ascii	"__UINT16_C(c) c\000"
.LASF16:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF35:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF258:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF19:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF471:
	.ascii	"task_s\000"
.LASF2:
	.ascii	"__GNUC__ 4\000"
.LASF24:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF224:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF182:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF327:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF300:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF137:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF53:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF388:
	.ascii	"NR_OF_CORES 1\000"
.LASF9:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF30:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF307:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF39:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF170:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF152:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF14:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF257:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF46:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF374:
	.ascii	"False 0\000"
.LASF399:
	.ascii	"OS_STACK_SIZE_END 0x01u\000"
.LASF81:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF491:
	.ascii	"pStackPointerStart\000"
.LASF26:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF100:
	.ascii	"__UINT_LEAST8_MAX__ 255\000"
.LASF371:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF40:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF207:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF339:
	.ascii	"__ARM_ARCH 7\000"
.LASF389:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF50:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF185:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF222:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF482:
	.ascii	"max_allowed_wait_time\000"
.LASF65:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF248:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF264:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF253:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF472:
	.ascii	"active\000"
.LASF344:
	.ascii	"__ARMEL__ 1\000"
.LASF112:
	.ascii	"__UINT_FAST8_MAX__ 4294967295U\000"
.LASF299:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF91:
	.ascii	"__UINT64_MAX__ 18446744073709551615ULL\000"
.LASF57:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF461:
	.ascii	"Task_suspended\000"
.LASF93:
	.ascii	"__INT8_C(c) c\000"
.LASF504:
	.ascii	"OS_Task_DeleteTaskEnvironment\000"
.LASF77:
	.ascii	"__SIZE_MAX__ 4294967295U\000"
.LASF451:
	.ascii	"Func_StartTask\000"
.LASF263:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF445:
	.ascii	"os_sw_bugs_function_e\000"
.LASF380:
	.ascii	"Local static\000"
.LASF63:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF385:
	.ascii	"cMCU_POWERPC 2\000"
.LASF420:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
.LASF308:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF289:
	.ascii	"__SA_IBIT__ 16\000"
.LASF219:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF337:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF124:
	.ascii	"__FLT_DIG__ 6\000"
.LASF146:
	.ascii	"__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\000"
.LASF309:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF290:
	.ascii	"__DA_FBIT__ 31\000"
.LASF458:
	.ascii	"Func_os_exception\000"
.LASF357:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF168:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF235:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF488:
	.ascii	"task_group\000"
.LASF414:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF254:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF204:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF189:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF353:
	.ascii	"__ARM_EABI__ 1\000"
.LASF401:
	.ascii	"HEAP_SIZE 10000\000"
.LASF450:
	.ascii	"Func_DeleteTaskEnvironment\000"
.LASF329:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF215:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF48:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF110:
	.ascii	"__INT_FAST32_MAX__ 2147483647\000"
.LASF212:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF256:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF133:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF223:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF150:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF243:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF210:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF54:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF373:
	.ascii	"_os_common_h_ \000"
.LASF59:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF439:
	.ascii	"os_bug_task_max_wait_time_reached\000"
.LASF226:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF396:
	.ascii	"_OS_RAM_H_ \000"
.LASF145:
	.ascii	"__DBL_MIN__ ((double)2.2250738585072014e-308L)\000"
.LASF176:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF198:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF485:
	.ascii	"task_number\000"
.LASF317:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF382:
	.ascii	"Global_inline __inline__\000"
.LASF245:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF237:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF324:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF161:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF231:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF23:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF326:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF71:
	.ascii	"__LONG_LONG_MAX__ 9223372036854775807LL\000"
.LASF188:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF297:
	.ascii	"__USA_IBIT__ 16\000"
.LASF454:
	.ascii	"Func_TaskScheduler\000"
.LASF179:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF354:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF330:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF477:
	.ascii	"NrOfInsActivated\000"
.LASF105:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF167:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF381:
	.ascii	"Local_inline static __inline__\000"
.LASF483:
	.ascii	"current_prio\000"
.LASF443:
	.ascii	"os_bug_exception_AbortData\000"
.LASF345:
	.ascii	"__THUMBEL__ 1\000"
.LASF291:
	.ascii	"__DA_IBIT__ 32\000"
.LASF22:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF247:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF94:
	.ascii	"__INT_LEAST16_MAX__ 32767\000"
.LASF194:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF455:
	.ascii	"Func_InitTask\000"
.LASF447:
	.ascii	"Func_SaveTaskEnvironment\000"
.LASF66:
	.ascii	"__GXX_ABI_VERSION 1002\000"
.LASF113:
	.ascii	"__UINT_FAST16_MAX__ 4294967295U\000"
.LASF412:
	.ascii	"Task_min_time (1e0)\000"
.LASF426:
	.ascii	"Task_1_ptr 1\000"
.LASF230:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF411:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF55:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF487:
	.ascii	"task_state\000"
.LASF459:
	.ascii	"task_state_e\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 9\000"
.LASF76:
	.ascii	"__PTRDIFF_MAX__ 2147483647\000"
.LASF312:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF279:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF333:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF494:
	.ascii	"task_kernel_mode\000"
.LASF492:
	.ascii	"StackSize\000"
.LASF41:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF128:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF503:
	.ascii	"OS_Task_InitTaskEnvironment\000"
.LASF464:
	.ascii	"task_state_t\000"
.LASF260:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF233:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF305:
	.ascii	"__NO_INLINE__ 1\000"
.LASF180:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF500:
	.ascii	"OS_TASK_RESTORE_SYSTEM_STACK\000"
.LASF192:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF213:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF468:
	.ascii	"fair_exe_time\000"
.LASF394:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF281:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF5:
	.ascii	"__VERSION__ \"4.9.3 20150303 (release) [ARM/embedde"
	.ascii	"d-4_9-branch revision 221220]\"\000"
.LASF418:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
.LASF384:
	.ascii	"cMCU_SIMULATION 1\000"
.LASF242:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF121:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF140:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF232:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF90:
	.ascii	"__UINT32_MAX__ 4294967295UL\000"
.LASF134:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF350:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF489:
	.ascii	"pStackPointer\000"
.LASF196:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF507:
	.ascii	"REGISTER_R0\000"
.LASF120:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF509:
	.ascii	"REGISTER_R2\000"
.LASF510:
	.ascii	"REGISTER_R3\000"
.LASF58:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF377:
	.ascii	"TRUE True\000"
.LASF236:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF173:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF252:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF216:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF319:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF383:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF72:
	.ascii	"__WCHAR_MAX__ 4294967295U\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF404:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF465:
	.ascii	"func_p_t\000"
.LASF96:
	.ascii	"__INT_LEAST32_MAX__ 2147483647L\000"
.LASF169:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF206:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF501:
	.ascii	"system_stack_ptr\000"
.LASF47:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF106:
	.ascii	"__UINT_LEAST64_MAX__ 18446744073709551615ULL\000"
.LASF138:
	.ascii	"__DBL_DIG__ 15\000"
.LASF313:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF246:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF285:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF205:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF446:
	.ascii	"Func_NoFunction\000"
.LASF318:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF240:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF403:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF428:
	.ascii	"Task_3_ptr 3\000"
.LASF227:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF484:
	.ascii	"default_prio\000"
.LASF343:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF284:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF85:
	.ascii	"__INT16_MAX__ 32767\000"
.LASF97:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF348:
	.ascii	"__ARM_FP 12\000"
.LASF311:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF158:
	.ascii	"__LDBL_MAX__ 1.7976931348623157e+308L\000"
.LASF49:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF229:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF338:
	.ascii	"__arm__ 1\000"
.LASF402:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8\000"
.LASF151:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF480:
	.ascii	"TimeToPrioInc\000"
.LASF275:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF294:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF68:
	.ascii	"__SHRT_MAX__ 32767\000"
.LASF379:
	.ascii	"Rejected 0\000"
.LASF104:
	.ascii	"__UINT_LEAST32_MAX__ 4294967295UL\000"
.LASF356:
	.ascii	"__ELF__ 1\000"
.LASF375:
	.ascii	"True 1\000"
.LASF95:
	.ascii	"__INT16_C(c) c\000"
.LASF322:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF201:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF171:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF442:
	.ascii	"os_bug_exception_AbortPrefetch\000"
.LASF135:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF486:
	.ascii	"state_request\000"
.LASF407:
	.ascii	"_os_task_common_h_ \000"
.LASF70:
	.ascii	"__LONG_MAX__ 2147483647L\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF241:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF392:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF141:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF474:
	.ascii	"IdleTask\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF441:
	.ascii	"os_bug_exception_UndefInstruction\000"
.LASF32:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF116:
	.ascii	"__INTPTR_MAX__ 2147483647\000"
.LASF211:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF31:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF430:
	.ascii	"unsigned_char_t\000"
.LASF18:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF335:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 3\000"
.LASF355:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF199:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF75:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF251:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF203:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF473:
	.ascii	"task_queued\000"
.LASF197:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF159:
	.ascii	"__LDBL_MIN__ 2.2250738585072014e-308L\000"
.LASF292:
	.ascii	"__TA_FBIT__ 63\000"
.LASF163:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF119:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF429:
	.ascii	"OS_SaveTaskPtr(task_ptr,Task_n_ptr) \000"
.LASF153:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF221:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF466:
	.ascii	"func_p_state_change_t\000"
.LASF131:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF470:
	.ascii	"task_group_s\000"
.LASF27:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF239:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF202:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF165:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF369:
	.ascii	"CPP_VERSION_2007 3\000"
.LASF83:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF220:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF424:
	.ascii	"_os_task_scheduler_h_ \000"
.LASF372:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF499:
	.ascii	"task\000"
.LASF156:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF186:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF36:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF187:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF408:
	.ascii	"_os_task_config_h_ \000"
.LASF436:
	.ascii	"os_bug_no_bug\000"
.LASF352:
	.ascii	"__ARM_PCS 1\000"
.LASF269:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF406:
	.ascii	"_lld_global_h_ \000"
.LASF362:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF490:
	.ascii	"pStackPointerByMalloc\000"
.LASF52:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF272:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF234:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF332:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF452:
	.ascii	"Func_PreemptTask\000"
.LASF323:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF88:
	.ascii	"__UINT8_MAX__ 255\000"
.LASF390:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
.LASF249:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF427:
	.ascii	"Task_2_ptr 2\000"
.LASF462:
	.ascii	"Task_ready\000"
.LASF271:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF361:
	.ascii	"_BASE_TYPES_H_ \000"
.LASF129:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF422:
	.ascii	"_lld_core_h_ \000"
.LASF184:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF74:
	.ascii	"__WINT_MAX__ 4294967295U\000"
.LASF276:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF67:
	.ascii	"__SCHAR_MAX__ 127\000"
.LASF415:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF114:
	.ascii	"__UINT_FAST32_MAX__ 4294967295U\000"
.LASF244:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF174:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF278:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF493:
	.ascii	"pStackPointerEnd\000"
.LASF496:
	.ascii	"task_t\000"
.LASF456:
	.ascii	"Func_ActivateTask\000"
.LASF60:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF359:
	.ascii	"STM32F407VG 1\000"
.LASF296:
	.ascii	"__USA_FBIT__ 16\000"
.LASF178:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF270:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF366:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF208:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF304:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF181:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF341:
	.ascii	"__thumb__ 1\000"
.LASF164:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF38:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF303:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF92:
	.ascii	"__INT_LEAST8_MAX__ 127\000"
.LASF274:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF195:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF115:
	.ascii	"__UINT_FAST64_MAX__ 18446744073709551615ULL\000"
.LASF349:
	.ascii	"__ARM_NEON_FP 4\000"
.LASF288:
	.ascii	"__SA_FBIT__ 15\000"
.LASF262:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF87:
	.ascii	"__INT64_MAX__ 9223372036854775807LL\000"
.LASF191:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF282:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF268:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF508:
	.ascii	"REGISTER_R1\000"
.LASF334:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF460:
	.ascii	"Task_unspecified\000"
.LASF15:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF277:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF42:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF99:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF132:
	.ascii	"__FLT_EPSILON__ 1.1920928955078125e-7F\000"
.LASF102:
	.ascii	"__UINT_LEAST16_MAX__ 65535\000"
.LASF387:
	.ascii	"cMCU_CORTEX_M4 4\000"
.LASF44:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF154:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF360:
	.ascii	"_os_firstinc_h_ \000"
.LASF28:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF347:
	.ascii	"__VFP_FP__ 1\000"
.LASF214:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF286:
	.ascii	"__HA_FBIT__ 7\000"
.LASF123:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF358:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF228:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF82:
	.ascii	"__SIG_ATOMIC_MAX__ 2147483647\000"
.LASF321:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF107:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF250:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF190:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF505:
	.ascii	"sizetype\000"
.LASF416:
	.ascii	"TASK_STACK_SIZE 200\000"
.LASF280:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF287:
	.ascii	"__HA_IBIT__ 8\000"
.LASF435:
	.ascii	"long unsigned int\000"
.LASF117:
	.ascii	"__UINTPTR_MAX__ 4294967295U\000"
.LASF314:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF89:
	.ascii	"__UINT16_MAX__ 65535\000"
.LASF21:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF20:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF80:
	.ascii	"__UINTMAX_MAX__ 18446744073709551615ULL\000"
.LASF200:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF1:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF78:
	.ascii	"__INTMAX_MAX__ 9223372036854775807LL\000"
.LASF378:
	.ascii	"Accepted 1\000"
.LASF370:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF64:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF346:
	.ascii	"__SOFTFP__ 1\000"
.LASF111:
	.ascii	"__INT_FAST64_MAX__ 9223372036854775807LL\000"
.LASF444:
	.ascii	"os_sw_bugs_e\000"
.LASF513:
	.ascii	"OS_Task_CreateTaskEnvironment\000"
.LASF405:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF425:
	.ascii	"Task_0_ptr 0\000"
.LASF12:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF310:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF127:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF440:
	.ascii	"os_bug_Task_unspecified\000"
.LASF109:
	.ascii	"__INT_FAST16_MAX__ 2147483647\000"
.LASF61:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF417:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF432:
	.ascii	"unsigned char\000"
.LASF166:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF34:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF367:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF476:
	.ascii	"NrOfInsAllowed\000"
.LASF481:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF160:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF62:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF400:
	.ascii	"_os_heap_h_ \000"
.LASF25:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF448:
	.ascii	"Func_RestoreTaskEnvironment\000"
.LASF421:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF463:
	.ascii	"Task_running\000"
.LASF273:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF122:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF315:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF364:
	.ascii	"INTEGER_ILP64 3\000"
.LASF108:
	.ascii	"__INT_FAST8_MAX__ 2147483647\000"
.LASF29:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF365:
	.ascii	"INTEGER_SILP64 4\000"
.LASF498:
	.ascii	"OS_TASK_RESTORETASK_ENVIRONMENT\000"
.LASF261:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF409:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF467:
	.ascii	"exe_time\000"
.LASF316:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF43:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF126:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF73:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF149:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF437:
	.ascii	"os_bug_taskstate_request_denied\000"
.LASF328:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF56:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF479:
	.ascii	"wait_time\000"
.LASF136:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF13:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF33:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF79:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF340:
	.ascii	"__APCS_32__ 1\000"
.LASF238:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF147:
	.ascii	"__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324"
	.ascii	"L)\000"
.LASF45:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF142:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF433:
	.ascii	"short unsigned int\000"
.LASF363:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF469:
	.ascii	"task_group_t\000"
.LASF17:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF84:
	.ascii	"__INT8_MAX__ 127\000"
.LASF51:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF295:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF506:
	.ascii	"TASK_PTR\000"
.LASF434:
	.ascii	"unsigned_int32_t\000"
.LASF155:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF125:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF391:
	.ascii	"EnableInterrupts() LLF_INT_ENABLE()\000"
.LASF183:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF302:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF157:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF431:
	.ascii	"uint8\000"
.LASF457:
	.ascii	"Func_TaskStateRequest\000"
.LASF306:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF148:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF413:
	.ascii	"NUMBER_OF_TASKS 5\000"
.LASF301:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF266:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF209:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF298:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF259:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF511:
	.ascii	"GNU C 4.9.3 20150303 (release) [ARM/embedded-4_9-br"
	.ascii	"anch revision 221220] -mcpu=cortex-m4 -mthumb -g3 -"
	.ascii	"O0 -std=c90\000"
.LASF293:
	.ascii	"__TA_IBIT__ 64\000"
.LASF175:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF478:
	.ascii	"WaitActUntil\000"
.LASF69:
	.ascii	"__INT_MAX__ 2147483647\000"
.LASF37:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF218:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF225:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF162:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF449:
	.ascii	"Func_CreateTaskEnvironment\000"
.LASF397:
	.ascii	"_os_stack_h_ \000"
.LASF265:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF172:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF118:
	.ascii	"__GCC_IEC_559 0\000"
.LASF143:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors) 4.9.3 20150303 (release) [ARM/embedded-4_9-branch revision 221220]"
