	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"os_exception_table.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	isr_vec_table
	.data
	.align	2
	.type	isr_vec_table, %object
	.size	isr_vec_table, 1024
isr_vec_table:
	.word	OS_MAIN_STACK+256
	.word	OS_Exception_RESET+1
	.word	OS_Exception_NMI+1
	.word	OS_Exception_HARDFAULT+1
	.word	OS_Exception_MEM_MANAG_FAULT+1
	.word	OS_Exception_BUS_FAULT+1
	.word	OS_Exception_USAGE_FAULT+1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	OS_Exception_SWI+1
	.word	0
	.word	0
	.word	OS_Exception_PendSV+1
	.word	OS_Exception_Systick+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.word	OS_Exception_IRQ+1
	.text
.Letext0:
	.file 1 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_base_types.h"
	.file 2 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.h"
	.file 3 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_ram.h"
	.file 4 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_core.h"
	.file 5 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_common.h"
	.file 6 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_exception_table.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x455
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF573
	.byte	0x1
	.4byte	.LASF574
	.4byte	.LASF575
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF508
	.byte	0x1
	.byte	0x1d
	.4byte	0x2c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF506
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF507
	.uleb128 0x2
	.4byte	.LASF509
	.byte	0x1
	.byte	0x22
	.4byte	0x45
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF510
	.uleb128 0x2
	.4byte	.LASF511
	.byte	0x1
	.byte	0x23
	.4byte	0x45
	.uleb128 0x4
	.4byte	0x4c
	.uleb128 0x2
	.4byte	.LASF512
	.byte	0x2
	.byte	0x4c
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6d
	.uleb128 0x6
	.uleb128 0x7
	.4byte	0x21
	.4byte	0x7f
	.uleb128 0x8
	.4byte	0x7f
	.2byte	0x270f
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF513
	.uleb128 0x9
	.4byte	.LASF514
	.byte	0x3
	.byte	0xa
	.4byte	0x6e
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xa7
	.uleb128 0xa
	.4byte	0x7f
	.byte	0
	.uleb128 0xa
	.4byte	0x7f
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.4byte	.LASF515
	.byte	0x3
	.byte	0xd
	.4byte	0x91
	.uleb128 0x7
	.4byte	0x21
	.4byte	0xc2
	.uleb128 0xa
	.4byte	0x7f
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.4byte	.LASF516
	.byte	0x3
	.byte	0xe
	.4byte	0xb2
	.uleb128 0x9
	.4byte	.LASF517
	.byte	0x3
	.byte	0xf
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF518
	.byte	0x3
	.byte	0x10
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF519
	.byte	0x3
	.byte	0x11
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF520
	.byte	0x3
	.byte	0x12
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF521
	.byte	0x3
	.byte	0x13
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF522
	.byte	0x3
	.byte	0x14
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF523
	.byte	0x3
	.byte	0x15
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF524
	.byte	0x3
	.byte	0x16
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF525
	.byte	0x3
	.byte	0x17
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF526
	.byte	0x3
	.byte	0x18
	.4byte	0x57
	.uleb128 0x9
	.4byte	.LASF527
	.byte	0x3
	.byte	0x19
	.4byte	0x57
	.uleb128 0xb
	.4byte	.LASF532
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x4
	.byte	0x10
	.4byte	0x16a
	.uleb128 0xc
	.4byte	.LASF528
	.byte	0
	.uleb128 0xc
	.4byte	.LASF529
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF530
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF531
	.byte	0x4
	.byte	0x16
	.4byte	0x146
	.uleb128 0xb
	.4byte	.LASF533
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x5
	.byte	0x7
	.4byte	0x19f
	.uleb128 0xc
	.4byte	.LASF534
	.byte	0
	.uleb128 0xc
	.4byte	.LASF535
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF536
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF537
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF538
	.byte	0x5
	.byte	0xe
	.4byte	0x175
	.uleb128 0x2
	.4byte	.LASF539
	.byte	0x5
	.byte	0x13
	.4byte	0x1b5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0xd
	.4byte	0x1c6
	.uleb128 0xe
	.4byte	0x1c6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF540
	.byte	0x5
	.byte	0x15
	.4byte	0x1d3
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d9
	.uleb128 0x10
	.4byte	0x21
	.4byte	0x1ed
	.uleb128 0xe
	.4byte	0x1c6
	.uleb128 0xe
	.4byte	0x19f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF544
	.byte	0x8
	.byte	0x5
	.byte	0x16
	.4byte	0x212
	.uleb128 0x12
	.4byte	.LASF541
	.byte	0x5
	.byte	0x18
	.4byte	0x3a
	.byte	0
	.uleb128 0x12
	.4byte	.LASF542
	.byte	0x5
	.byte	0x19
	.4byte	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF543
	.byte	0x5
	.byte	0x1b
	.4byte	0x1ed
	.uleb128 0x11
	.4byte	.LASF545
	.byte	0x88
	.byte	0x5
	.byte	0x1d
	.4byte	0x3ff
	.uleb128 0x13
	.4byte	.LASF546
	.byte	0x5
	.byte	0x1f
	.4byte	0x7f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x13
	.4byte	.LASF547
	.byte	0x5
	.byte	0x20
	.4byte	0x7f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x13
	.4byte	.LASF548
	.byte	0x5
	.byte	0x21
	.4byte	0x7f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x13
	.4byte	.LASF549
	.byte	0x5
	.byte	0x22
	.4byte	0x7f
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF550
	.byte	0x5
	.byte	0x23
	.4byte	0x21
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF551
	.byte	0x5
	.byte	0x24
	.4byte	0x21
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF552
	.byte	0x5
	.byte	0x25
	.4byte	0x3a
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF553
	.byte	0x5
	.byte	0x26
	.4byte	0x3a
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF554
	.byte	0x5
	.byte	0x27
	.4byte	0x3a
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF555
	.byte	0x5
	.byte	0x28
	.4byte	0x3a
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF556
	.byte	0x5
	.byte	0x29
	.4byte	0x3a
	.byte	0x18
	.uleb128 0x12
	.4byte	.LASF541
	.byte	0x5
	.byte	0x2a
	.4byte	0x3a
	.byte	0x1c
	.uleb128 0x12
	.4byte	.LASF557
	.byte	0x5
	.byte	0x2b
	.4byte	0x3a
	.byte	0x20
	.uleb128 0x12
	.4byte	.LASF558
	.byte	0x5
	.byte	0x2c
	.4byte	0x21
	.byte	0x24
	.uleb128 0x12
	.4byte	.LASF559
	.byte	0x5
	.byte	0x2d
	.4byte	0x21
	.byte	0x25
	.uleb128 0x12
	.4byte	.LASF560
	.byte	0x5
	.byte	0x2e
	.4byte	0x3a
	.byte	0x28
	.uleb128 0x14
	.ascii	"fp\000"
	.byte	0x5
	.byte	0x2f
	.4byte	0x1aa
	.byte	0x2c
	.uleb128 0x12
	.4byte	.LASF561
	.byte	0x5
	.byte	0x30
	.4byte	0x1c8
	.byte	0x30
	.uleb128 0x12
	.4byte	.LASF562
	.byte	0x5
	.byte	0x31
	.4byte	0x19f
	.byte	0x34
	.uleb128 0x12
	.4byte	.LASF563
	.byte	0x5
	.byte	0x32
	.4byte	0x3ff
	.byte	0x38
	.uleb128 0x14
	.ascii	"r0\000"
	.byte	0x5
	.byte	0x39
	.4byte	0x3a
	.byte	0x3c
	.uleb128 0x14
	.ascii	"r1\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x3a
	.byte	0x40
	.uleb128 0x14
	.ascii	"r2\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x3a
	.byte	0x44
	.uleb128 0x14
	.ascii	"r3\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x3a
	.byte	0x48
	.uleb128 0x14
	.ascii	"r4\000"
	.byte	0x5
	.byte	0x3d
	.4byte	0x3a
	.byte	0x4c
	.uleb128 0x14
	.ascii	"r5\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x3a
	.byte	0x50
	.uleb128 0x14
	.ascii	"r6\000"
	.byte	0x5
	.byte	0x3f
	.4byte	0x3a
	.byte	0x54
	.uleb128 0x14
	.ascii	"r7\000"
	.byte	0x5
	.byte	0x40
	.4byte	0x3a
	.byte	0x58
	.uleb128 0x14
	.ascii	"r8\000"
	.byte	0x5
	.byte	0x41
	.4byte	0x3a
	.byte	0x5c
	.uleb128 0x14
	.ascii	"r9\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x3a
	.byte	0x60
	.uleb128 0x14
	.ascii	"r10\000"
	.byte	0x5
	.byte	0x43
	.4byte	0x3a
	.byte	0x64
	.uleb128 0x14
	.ascii	"r11\000"
	.byte	0x5
	.byte	0x44
	.4byte	0x3a
	.byte	0x68
	.uleb128 0x14
	.ascii	"r12\000"
	.byte	0x5
	.byte	0x45
	.4byte	0x3a
	.byte	0x6c
	.uleb128 0x12
	.4byte	.LASF564
	.byte	0x5
	.byte	0x47
	.4byte	0x405
	.byte	0x70
	.uleb128 0x12
	.4byte	.LASF565
	.byte	0x5
	.byte	0x48
	.4byte	0x405
	.byte	0x74
	.uleb128 0x12
	.4byte	.LASF566
	.byte	0x5
	.byte	0x49
	.4byte	0x405
	.byte	0x78
	.uleb128 0x12
	.4byte	.LASF567
	.byte	0x5
	.byte	0x4a
	.4byte	0x3a
	.byte	0x7c
	.uleb128 0x12
	.4byte	.LASF568
	.byte	0x5
	.byte	0x4b
	.4byte	0x405
	.byte	0x80
	.uleb128 0x12
	.4byte	.LASF569
	.byte	0x5
	.byte	0x4c
	.4byte	0x16a
	.byte	0x84
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x212
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21
	.uleb128 0x2
	.4byte	.LASF570
	.byte	0x5
	.byte	0x4e
	.4byte	0x21d
	.uleb128 0x7
	.4byte	0x426
	.4byte	0x426
	.uleb128 0xa
	.4byte	0x7f
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x40b
	.uleb128 0x9
	.4byte	.LASF571
	.byte	0x5
	.byte	0x59
	.4byte	0x416
	.uleb128 0x7
	.4byte	0x5c
	.4byte	0x447
	.uleb128 0xa
	.4byte	0x7f
	.byte	0xff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF572
	.byte	0x6
	.byte	0x1a
	.4byte	0x437
	.uleb128 0x5
	.byte	0x3
	.4byte	isr_vec_table
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.uleb128 0x6
	.file 7 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF438
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF472
	.file 8 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x4
	.file 9 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 10 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.file 11 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x4
	.file 12 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_drivers\\lld_global.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF486
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF487
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF488
	.file 13 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.file 14 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF500
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.file 15 "e:\\neuorga\\programmieren\\c_cpp\\github_os\\input\\src\\os_user_code\\led.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF503
	.byte	0x4
	.byte	0x4
	.file 16 "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_exception_isr_handler.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
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
	.section	.debug_macro,"G",%progbits,wm4.os_common.h.2.c6c04bcf238b83a2cba2b703b96f6544,comdat
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
	.uleb128 0x12
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x23
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
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_stack.h.2.19e5f67d3b2f1e569581f0c055512986,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF475
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_heap.h.2.89074aae455d2462b5952479e3530dd1,comdat
.Ldebug_macro5:
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
	.uleb128 0x9
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF481
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_main.h.2.1f66ae3841c27bd36097fa1d2e1fe6a7,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF485
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_config.h.2.7cfaa082f19f6144d85c64ce1f04b914,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF499
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_task_common.h.93.9db5c540899793a03f331176d195d033,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF502
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.os_exception_isr_handler.h.2.19ab7c9017e871de2a8a91d100f54831,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF505
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF573:
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
.LASF450:
	.ascii	"INTEGER_MODEL INTEGER_LLP64_IL32P64\000"
.LASF319:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF187:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF345:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF116:
	.ascii	"__UINT8_C(c) c\000"
.LASF422:
	.ascii	"__ARM_NEON__\000"
.LASF389:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF331:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF347:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF221:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF160:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF82:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF65:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF462:
	.ascii	"cMCU_X86 3\000"
.LASF403:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF416:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF281:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF449:
	.ascii	"ISO_CPP_VERSION CPP_VERSION_1998\000"
.LASF165:
	.ascii	"__DBL_MAX__ ((double)1.7976931348623157e+308L)\000"
.LASF426:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF257:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF373:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF3:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF505:
	.ascii	"ISR void\000"
.LASF549:
	.ascii	"FREE\000"
.LASF431:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF513:
	.ascii	"unsigned int\000"
.LASF531:
	.ascii	"privilige_mode_t\000"
.LASF394:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF454:
	.ascii	"FALSE False\000"
.LASF474:
	.ascii	"OS_STACK_SIZE 0x100\000"
.LASF519:
	.ascii	"VAR_MEM_MANAG_FAULT_STATUS_REG\000"
.LASF16:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF35:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF19:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF545:
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
.LASF334:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF364:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF158:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF53:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF464:
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
.LASF14:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF194:
	.ascii	"__FLT32_MAX__ 3.4028234663852886e+38F32\000"
.LASF321:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF7:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF532:
	.ascii	"privilige_mode_e\000"
.LASF103:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF467:
	.ascii	"EnableInterrupts() LLF_INT_ENABLE()\000"
.LASF46:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF397:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF475:
	.ascii	"OS_STACK_SIZE_END 0x01u\000"
.LASF90:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF499:
	.ascii	"USE_STATIC_CREATED_TASKS True\000"
.LASF26:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF235:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF190:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF524:
	.ascii	"VAR_AUX_FAULT_STATUS_REG\000"
.LASF271:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF476:
	.ascii	"_os_heap_h_ \000"
.LASF406:
	.ascii	"__ARM_ARCH 7\000"
.LASF465:
	.ascii	"MCU_CLOCK_IN_HZ ((uint32)168000000u)\000"
.LASF106:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF67:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF326:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF249:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF286:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF202:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF6:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF529:
	.ascii	"ePriviligeMode_priviliged_thread_mode\000"
.LASF77:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF556:
	.ascii	"max_allowed_wait_time\000"
.LASF312:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF328:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF317:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF469:
	.ascii	"Privilige_level_enter_kernel_mode() ;\000"
.LASF156:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF546:
	.ascii	"active\000"
.LASF196:
	.ascii	"__FLT32_EPSILON__ 1.1920928955078125e-7F32\000"
.LASF363:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF57:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF535:
	.ascii	"Task_suspended\000"
.LASF104:
	.ascii	"__INT8_C(c) c\000"
.LASF409:
	.ascii	"__thumb2__ 1\000"
.LASF518:
	.ascii	"VAR_HARDFAULT_STATUS_REG\000"
.LASF497:
	.ascii	"TASK_STACK_SIZE 200\000"
.LASF108:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF569:
	.ascii	"privilige_mode\000"
.LASF327:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF458:
	.ascii	"Local static\000"
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
.LASF265:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF419:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF452:
	.ascii	"False 0\000"
.LASF145:
	.ascii	"__FLT_DIG__ 6\000"
.LASF526:
	.ascii	"LINK_REGISTER_HANDLER\000"
.LASF375:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF572:
	.ascii	"isr_vec_table\000"
.LASF484:
	.ascii	"os_running 1\000"
.LASF354:
	.ascii	"__DA_FBIT__ 31\000"
.LASF402:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF516:
	.ascii	"OS_MAIN_STACK\000"
.LASF232:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF289:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF563:
	.ascii	"task_group\000"
.LASF76:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF200:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF117:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF268:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF253:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF428:
	.ascii	"__ARM_EABI__ 1\000"
.LASF115:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF98:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF95:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF279:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF48:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF276:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF320:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF288:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF121:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF143:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF287:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF171:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF307:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF274:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF54:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF213:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF570:
	.ascii	"task_t\000"
.LASF225:
	.ascii	"__FLT32X_DENORM_MIN__ 4.9406564584124654e-324F32x\000"
.LASF502:
	.ascii	"os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_"
	.ascii	"name)])\000"
.LASF290:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF31:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF472:
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
.LASF267:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF309:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF335:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF301:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF388:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF183:
	.ascii	"__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\000"
.LASF295:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF291:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF390:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF387:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF491:
	.ascii	"MinTimeSlice_s (1.0/SchedulerFrequency)\000"
.LASF252:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF361:
	.ascii	"__USA_IBIT__ 16\000"
.LASF243:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF429:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF395:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF298:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF120:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF534:
	.ascii	"Task_unspecified\000"
.LASF523:
	.ascii	"VAR_BUS_FAULT_ADDR_REG\000"
.LASF459:
	.ascii	"Local_inline static __inline__\000"
.LASF558:
	.ascii	"current_prio\000"
.LASF410:
	.ascii	"__THUMBEL__ 1\000"
.LASF141:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF22:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF311:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF124:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF258:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF131:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF23:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF440:
	.ascii	"INTEGER_LLP64_IL32P64 1\000"
.LASF322:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF352:
	.ascii	"__SA_FBIT__ 15\000"
.LASF204:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF493:
	.ascii	"Task_min_time (1e0)\000"
.LASF294:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF492:
	.ascii	"MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\000"
.LASF55:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF193:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF562:
	.ascii	"task_state\000"
.LASF533:
	.ascii	"task_state_e\000"
.LASF83:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF199:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF343:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF242:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF399:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF71:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF567:
	.ascii	"StackSize\000"
.LASF41:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF149:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF538:
	.ascii	"task_state_t\000"
.LASF324:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF297:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF215:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF369:
	.ascii	"__NO_INLINE__ 1\000"
.LASF244:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF495:
	.ascii	"MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\000"
.LASF277:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF542:
	.ascii	"fair_exe_time\000"
.LASF470:
	.ascii	"Privilige_level_restore_saved() ;\000"
.LASF207:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF528:
	.ascii	"ePriviligeMode_unpriviliged_thread_mode\000"
.LASF366:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF189:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF306:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF132:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF59:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF191:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF521:
	.ascii	"VAR_FAULT_STATUS_REG\000"
.LASF296:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF266:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF425:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF564:
	.ascii	"pStackPointer\000"
.LASF260:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF212:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF140:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF226:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF427:
	.ascii	"__ARM_PCS 1\000"
.LASF112:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF455:
	.ascii	"TRUE True\000"
.LASF300:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF237:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF316:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF280:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF461:
	.ascii	"ReferenceUnusedParameter(x) ((x) = (x))\000"
.LASF105:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF360:
	.ascii	"__USA_FBIT__ 16\000"
.LASF99:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF477:
	.ascii	"HEAP_SIZE 10000\000"
.LASF100:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF421:
	.ascii	"__ARM_FEATURE_FMA\000"
.LASF305:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF480:
	.ascii	"HEAP_OFFSET_FOR_USED_SIZE 4\000"
.LASF539:
	.ascii	"func_p_t\000"
.LASF91:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF233:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF270:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF471:
	.ascii	"HaltMcu() LLF_WAIT_FOR_INTERRUPT()\000"
.LASF47:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF214:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF159:
	.ascii	"__DBL_DIG__ 15\000"
.LASF377:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF412:
	.ascii	"__ARMEL__ 1\000"
.LASF146:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF349:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF487:
	.ascii	"_lld_core_h_ \000"
.LASF152:
	.ascii	"__FLT_MIN__ 1.1754943508222875e-38F\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF216:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF304:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF346:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF125:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF559:
	.ascii	"default_prio\000"
.LASF411:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF188:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF348:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF43:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
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
.LASF293:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF405:
	.ascii	"__arm__ 1\000"
.LASF574:
	.ascii	"E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input"
	.ascii	"\\src\\os_base\\os_exception_table.c\000"
.LASF172:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF554:
	.ascii	"TimeToPrioInc\000"
.LASF339:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF358:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF435:
	.ascii	"__USES_INITFINI__ 1\000"
.LASF457:
	.ascii	"Rejected 0\000"
.LASF575:
	.ascii	"D:\\Programm\\GNU Tools ARM Embedded\\7 2018-q2-upd"
	.ascii	"ate\\bin\000"
.LASF434:
	.ascii	"__ELF__ 1\000"
.LASF525:
	.ascii	"VAR_BUS_FAULT_STATUS_REG\000"
.LASF453:
	.ascii	"True 1\000"
.LASF318:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF107:
	.ascii	"__INT16_C(c) c\000"
.LASF386:
	.ascii	"__GCC_HAVE_DWARF2_CFI_ASM 1\000"
.LASF102:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF313:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF127:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF423:
	.ascii	"__ARM_NEON\000"
.LASF8:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF561:
	.ascii	"state_request\000"
.LASF393:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF488:
	.ascii	"_os_task_common_h_ \000"
.LASF432:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF118:
	.ascii	"__UINT16_C(c) c\000"
.LASF515:
	.ascii	"OS_STACK\000"
.LASF468:
	.ascii	"Privilige_level_save_current() ;\000"
.LASF162:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF548:
	.ascii	"IdleTask\000"
.LASF11:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF504:
	.ascii	"_os_exception_isr_handler_h_ \000"
.LASF466:
	.ascii	"DisableInterrupts() LLF_INT_DISABLE()\000"
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
.LASF508:
	.ascii	"unsigned_char_t\000"
.LASF18:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF4:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF511:
	.ascii	"uint32\000"
.LASF478:
	.ascii	"MIN_BLOCK_SIZE_HEAP 8\000"
.LASF433:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF263:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF75:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF315:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF557:
	.ascii	"start_time\000"
.LASF483:
	.ascii	"os_init 0\000"
.LASF547:
	.ascii	"task_queued\000"
.LASF424:
	.ascii	"__ARM_NEON_FP\000"
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
.LASF174:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF285:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF540:
	.ascii	"func_p_state_change_t\000"
.LASF544:
	.ascii	"task_group_s\000"
.LASF27:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF303:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF86:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF229:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF447:
	.ascii	"CPP_VERSION_2007 3\000"
.LASF93:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF284:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF568:
	.ascii	"pStackPointerEnd\000"
.LASF362:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF81:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF250:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF36:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF251:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF489:
	.ascii	"_os_task_config_h_ \000"
.LASF566:
	.ascii	"pStackPointerStart\000"
.LASF398:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF333:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF367:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF486:
	.ascii	"_lld_global_h_ \000"
.LASF154:
	.ascii	"__FLT_DENORM_MIN__ 1.4012984643248171e-45F\000"
.LASF565:
	.ascii	"pStackPointerByMalloc\000"
.LASF52:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF336:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF34:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF342:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF94:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF68:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF418:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF536:
	.ascii	"Task_ready\000"
.LASF51:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF439:
	.ascii	"_BASE_TYPES_H_ \000"
.LASF150:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF448:
	.ascii	"CPP_VERSION_2011 4\000"
.LASF206:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF97:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF84:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF248:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF66:
	.ascii	"__GXX_ABI_VERSION 1011\000"
.LASF340:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF496:
	.ascii	"MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\000"
.LASF530:
	.ascii	"ePriviligeMode_priviliged_handler_mode\000"
.LASF269:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF92:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF238:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF114:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF40:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF218:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF60:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF437:
	.ascii	"STM32F407VG 1\000"
.LASF430:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF223:
	.ascii	"__FLT32X_MIN__ 2.2250738585072014e-308F32x\000"
.LASF138:
	.ascii	"__GCC_IEC_559 0\000"
.LASF444:
	.ascii	"CPP_VERSION_NONE 0\000"
.LASF272:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF368:
	.ascii	"__GNUC_GNU_INLINE__ 1\000"
.LASF245:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF217:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF208:
	.ascii	"__FLT64_MAX__ 1.7976931348623157e+308F64\000"
.LASF119:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF522:
	.ascii	"VAR_MEM_FAULT_ADDR_REG\000"
.LASF310:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF186:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF38:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF74:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF179:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF338:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF259:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF503:
	.ascii	"_LED_H_ \000"
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
.LASF463:
	.ascii	"cMCU_CORTEX_M4 4\000"
.LASF44:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF175:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF438:
	.ascii	"_os_firstinc_h_ \000"
.LASF28:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF308:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF414:
	.ascii	"__VFP_FP__ 1\000"
.LASF278:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF350:
	.ascii	"__HA_FBIT__ 7\000"
.LASF85:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF197:
	.ascii	"__FLT32_DENORM_MIN__ 1.4012984643248171e-45F32\000"
.LASF144:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF436:
	.ascii	"CFG_PROCESSOR 4\000"
.LASF292:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
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
.LASF510:
	.ascii	"long unsigned int\000"
.LASF378:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF20:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF264:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
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
.LASF210:
	.ascii	"__FLT64_EPSILON__ 2.2204460492503131e-16F64\000"
.LASF514:
	.ascii	"HEAP\000"
.LASF481:
	.ascii	"HEAP_OFFSET_FOR_CHUNK 8\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF374:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF527:
	.ascii	"BACKUP_SYSTICK_CURRENT_VAL_REG\000"
.LASF10:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF61:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF498:
	.ascii	"MS_PER_SEC (1000)\000"
.LASF506:
	.ascii	"unsigned char\000"
.LASF230:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF231:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF445:
	.ascii	"CPP_VERSION_1998 1\000"
.LASF550:
	.ascii	"NrOfInsAllowed\000"
.LASF355:
	.ascii	"__DA_IBIT__ 32\000"
.LASF555:
	.ascii	"overwaittime_per_prio_inc_step\000"
.LASF182:
	.ascii	"__LDBL_EPSILON__ 2.2204460492503131e-16L\000"
.LASF62:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF517:
	.ascii	"OS_STATE\000"
.LASF142:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF25:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF256:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF111:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF479:
	.ascii	"HEAP_OFFSET_FOR_SIZE 0\000"
.LASF537:
	.ascii	"Task_running\000"
.LASF337:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF151:
	.ascii	"__FLT_MAX__ 3.4028234663852886e+38F\000"
.LASF195:
	.ascii	"__FLT32_MIN__ 1.1754943508222875e-38F32\000"
.LASF442:
	.ascii	"INTEGER_ILP64 3\000"
.LASF560:
	.ascii	"task_number\000"
.LASF29:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF443:
	.ascii	"INTEGER_SILP64 4\000"
.LASF482:
	.ascii	"_os_main_h_ \000"
.LASF325:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF490:
	.ascii	"SchedulerFrequency (1.0e3)\000"
.LASF485:
	.ascii	"os_shutdown 2\000"
.LASF541:
	.ascii	"exe_time\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF365:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF148:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF203:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF224:
	.ascii	"__FLT32X_EPSILON__ 2.2204460492503131e-16F32x\000"
.LASF73:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF170:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF460:
	.ascii	"Global_inline __inline__\000"
.LASF392:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF56:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF553:
	.ascii	"wait_time\000"
.LASF157:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF13:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF33:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF88:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF420:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF407:
	.ascii	"__APCS_32__ 1\000"
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
.LASF507:
	.ascii	"short unsigned int\000"
.LASF441:
	.ascii	"INTEGER_LP64_I32LP64 2\000"
.LASF376:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF543:
	.ascii	"task_group_t\000"
.LASF17:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF227:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF404:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF571:
	.ascii	"TASK_PTR\000"
.LASF509:
	.ascii	"unsigned_int32_t\000"
.LASF176:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF275:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF501:
	.ascii	"os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_"
	.ascii	"name)] = (task_ptr))\000"
.LASF408:
	.ascii	"__thumb__ 1\000"
.LASF247:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF451:
	.ascii	"_os_common_h_ \000"
.LASF178:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF110:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF500:
	.ascii	"_os_init_task_system_h_ \000"
.LASF370:
	.ascii	"__STRICT_ANSI__ 1\000"
.LASF417:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF512:
	.ascii	"func_ptr_t\000"
.LASF177:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF220:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF137:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF169:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF494:
	.ascii	"NUMBER_OF_TASKS 5\000"
.LASF192:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF330:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF273:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF520:
	.ascii	"VAR_USAGE_FAULT_STATUS_REG\000"
.LASF323:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF109:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF357:
	.ascii	"__TA_IBIT__ 64\000"
.LASF239:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF552:
	.ascii	"WaitActUntil\000"
.LASF89:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF37:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF282:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF161:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF551:
	.ascii	"NrOfInsActivated\000"
.LASF184:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF473:
	.ascii	"_os_stack_h_ \000"
.LASF201:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF236:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF155:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF130:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF164:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2018-q2-update) 7.3.1 20180622 (release) [ARM/embedded-7-branch revision 261907]"
