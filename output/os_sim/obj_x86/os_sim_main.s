	.file	"os_sim_main.c"
	.text
Ltext0:
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB1:
	.file 1 "d:/programm/mingw/include/stdio.h"
	.loc 1 252 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 254 0
	leal	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 255 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vprintf
	movl	%eax, %ebx
	.loc 1 257 0
	movl	%ebx, %eax
	.loc 1 258 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Zeit: %d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/os_sim_main.c"
	.loc 2 11 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	.loc 2 11 0
	call	___main
	.loc 2 13 0
	movl	$0, 44(%esp)
	.loc 2 14 0
	movl	$0, (%esp)
	call	_time
	movl	%eax, 40(%esp)
	.loc 2 16 0
	call	_OS_StartOs
	.loc 2 17 0
	jmp	L4
L5:
	.loc 2 20 0
	call	_OS_StateHandler
	.loc 2 21 0
	incl	44(%esp)
L4:
	.loc 2 17 0
	movl	44(%esp), %eax
	movl	$0, %edx
	movl	%eax, 24(%esp)
	movl	%edx, 28(%esp)
	fildq	24(%esp)
	fldt	LC0
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	je	L5
	.loc 2 24 0
	movl	$0, (%esp)
	call	_time
	subl	40(%esp), %eax
	movl	%eax, 40(%esp)
	.loc 2 25 0
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 2 26 0
	call	_getchar
	.loc 2 27 0
	call	_getchar
	.loc 2 29 0
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%eax)
	.loc 2 31 0
	movl	$0, %eax
	.loc 2 32 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 16
LC0:
	.long	0
	.long	-1094967296
	.long	16409
	.text
Letext0:
	.file 3 "d:/programm/mingw/include/parts/time.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x2a7
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_sim\\os_sim_main.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0xf2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x82
	.long	0x181
	.uleb128 0x5
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x84
	.long	0x181
	.byte	0
	.uleb128 0x5
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x85
	.long	0x187
	.byte	0x4
	.uleb128 0x5
	.ascii "_base\0"
	.byte	0x1
	.byte	0x86
	.long	0x181
	.byte	0x8
	.uleb128 0x5
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x87
	.long	0x187
	.byte	0xc
	.uleb128 0x5
	.ascii "_file\0"
	.byte	0x1
	.byte	0x88
	.long	0x187
	.byte	0x10
	.uleb128 0x5
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x89
	.long	0x187
	.byte	0x14
	.uleb128 0x5
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x8a
	.long	0x187
	.byte	0x18
	.uleb128 0x5
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x8b
	.long	0x181
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xf2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x7
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x8c
	.long	0xfa
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x7
	.ascii "__time32_t\0"
	.byte	0x3
	.byte	0x40
	.long	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x7
	.ascii "time_t\0"
	.byte	0x3
	.byte	0x4a
	.long	0x1ab
	.uleb128 0x8
	.ascii "printf\0"
	.byte	0x1
	.byte	0xfb
	.long	0x187
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x231
	.uleb128 0x9
	.ascii "__format\0"
	.byte	0x1
	.byte	0xfb
	.long	0x231
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.uleb128 0xb
	.ascii "__retval\0"
	.byte	0x1
	.byte	0xfd
	.long	0x187
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xb
	.ascii "__local_argv\0"
	.byte	0x1
	.byte	0xfe
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x237
	.uleb128 0xc
	.long	0xf2
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x2
	.byte	0xa
	.long	0x187
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x28d
	.uleb128 0x9
	.ascii "argc\0"
	.byte	0x2
	.byte	0xa
	.long	0x187
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "argv\0"
	.byte	0x2
	.byte	0xa
	.long	0x28d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "i\0"
	.byte	0x2
	.byte	0xd
	.long	0xca
	.uleb128 0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0xb
	.ascii "t\0"
	.byte	0x2
	.byte	0xe
	.long	0x1c9
	.uleb128 0x2
	.byte	0x74
	.sleb128 40
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x181
	.uleb128 0xe
	.long	0x18e
	.long	0x29e
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.ascii "_iob\0"
	.byte	0x1
	.byte	0x9b
	.long	0x293
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_macro,"dr"
Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	Ldebug_line0
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"4.9.3\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1002\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 2147483647L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 127\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 32767\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 9223372036854775807LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 255\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 65535\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 18446744073709551615ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 2147483647\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 4294967295U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ _\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_GNU_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STRICT_ANSI__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__tune_i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_X86_ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MSVCRT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MINGW32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WIN32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINNT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "_INTEGRAL_MAX_BITS 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "CFG_PROCESSOR 3\0"
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_firstinc_h_ \0"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_base_types.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_BASE_TYPES_H_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "INTEGER_LLP64_IL32P64 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "INTEGER_LP64_I32LP64 2\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "INTEGER_ILP64 3\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "INTEGER_SILP64 4\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "CPP_VERSION_NONE 0\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "CPP_VERSION_1998 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "CPP_VERSION_2003 2\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CPP_VERSION_2007 3\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CPP_VERSION_2011 4\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "ISO_CPP_VERSION CPP_VERSION_1998\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "INTEGER_MODEL INTEGER_LLP64_IL32P64\0"
	.byte	0x4
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_common.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_common_h_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "False 0\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "True 1\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "FALSE False\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "TRUE True\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "Accepted 1\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "Rejected 0\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "Local static\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "Local_inline static __inline__\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "Global_inline __inline__\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "ReferenceUnusedParameter(x) ((x) = (x))\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "DynamicMemoryUsed False\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "cMCU_X86 3\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "cMCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "NR_OF_CORES 1\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "MCU_CLOCK_IN_HZ ((uint32)168000000u)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DisableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "EnableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "Privilige_level_save_current() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "Privilige_level_enter_kernel_mode() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "Privilige_level_restore_saved() \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "HaltMcu() \0"
	.byte	0x4
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_core.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_interrupt_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "os_interrupt_swi_1 asm(\"swi 1\")\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "os_interrupt_swi_2 asm(\"swi 2\")\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "os_interrupt_swi_3 asm(\"swi 3\")\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "os_interrupt_swi_4 asm(\"swi 4\")\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "os_interrupt_swi_5 asm(\"swi 5\")\0"
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_ram_h_ \0"
	.byte	0x4
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_common_h_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_config_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "SchedulerFrequency (1.0e3)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MinTimeSlice_s (1.0/SchedulerFrequency)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MinTimeSlice_us ((1.0/SchedulerFrequency)*1e6)\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "Task_min_time (1e0)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "NUMBER_OF_TASKS 10\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TASK_STACK_SIZE 2000\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "MS_PER_SEC (1000)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "USE_STATIC_CREATED_TASKS True\0"
	.byte	0x4
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_init_task_system_h_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5f
	.ascii "os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_ram.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x14
	.byte	0x4
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_stack_h_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "OS_STACK_SIZE 0x5000u\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_STACK_SIZE_END 0x01u\0"
	.byte	0x4
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_heap_h_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "HEAP_SIZE 10000\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MIN_BLOCK_SIZE_HEAP 8\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "HEAP_OFFSET_FOR_SIZE 0\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "HEAP_OFFSET_FOR_USED_SIZE 4\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "HEAP_OFFSET_FOR_CHUNK 8\0"
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_main_h_ \0"
	.byte	0x1
	.uleb128 0x3
	.ascii "os_init 0\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "os_running 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "os_shutdown 2\0"
	.byte	0x4
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x4
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 26 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1a
	.byte	0x4
	.file 27 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_scheduler_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.file 28 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1c
	.byte	0x4
	.byte	0x1
	.uleb128 0x7
	.ascii "Task_0_ptr 0\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "Task_1_ptr 1\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "Task_2_ptr 2\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "Task_3_ptr 3\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "OS_SaveTaskPtr(task_ptr,Task_n_ptr) \0"
	.byte	0x4
	.file 29 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_exception_isr_handler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_exception_isr_handler_h_ \0"
	.byte	0x4
	.file 30 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_start_os.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_startos_h_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x10
	.ascii "_STDIO_H_ \0"
	.file 31 "d:/programm/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x17
	.ascii "__MINGW_H \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__MINGW32_VERSION 3021001L\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__MINGW32_MAJOR_VERSION 3\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__MINGW32_MINOR_VERSION 21\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__MINGW32_PATCHLEVEL 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "__CRT_GLOB_USE_MSVCRT__ 0x0001\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__CRT_GLOB_USE_MINGW__ 0x0002\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__CRT_GLOB_USE_SINGLE_QUOTE__ 0x0010\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__CRT_GLOB_BRACKET_GROUPS__ 0x0020\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "__CRT_GLOB_CASE_SENSITIVE__ 0x0040\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__CRT_GLOB_ESCAPE_CHAR__ (char)(127)\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "__MINGW_ANSI_STDIO__ 0x0000000000000001ULL\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__MINGW_LC_EXTENSIONS__ 0x0000000000000050ULL\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__MINGW_LC_MESSAGES__ 0x0000000000000010ULL\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__MINGW_LC_ENVVARS__ 0x0000000000000040ULL\0"
	.byte	0x2
	.uleb128 0x92
	.ascii "__attribute__\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__MINGW_IMPORT extern __attribute__ ((__dllimport__))\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_CRTIMP \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__DECLSPEC_SUPPORTED \0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__int64 long long\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "__int32 long\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "__int16 short\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__int8 char\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "__small char\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__hyper long long\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__MINGW_GNUC_PREREQ(major,minor) (__GNUC__ > (major) || (__GNUC__ == (major) && __GNUC_MINOR__ >= (minor)))\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "_EXTERN_C extern\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "_BEGIN_C_DECLS \0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "_END_C_DECLS \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__CRT_INLINE extern __inline__\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "_CRTALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "__CRT_ALIAS __CRT_INLINE __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x129
	.ascii "__JMPSTUB__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x12a
	.ascii "__LIBIMPL__(__BUILD_HINT__) \0"
	.byte	0x1
	.uleb128 0x130
	.ascii "__UNUSED_PARAM(x) x __attribute__ ((__unused__))\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "__MINGW_ATTRIB_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "__MINGW_ATTRIB_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "__MINGW_ATTRIB_MALLOC __attribute__ ((__malloc__))\0"
	.byte	0x1
	.uleb128 0x140
	.ascii "__MINGW_ATTRIB_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "__MINGW_ATTRIB_NONNULL(arg) __attribute__ ((__nonnull__ (arg)))\0"
	.byte	0x1
	.uleb128 0x150
	.ascii "__MINGW_ATTRIB_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0x156
	.ascii "__MINGW_NOTHROW __attribute__ ((__nothrow__))\0"
	.byte	0x1
	.uleb128 0x161
	.ascii "__MSVCRT_VERSION__ 0x0600\0"
	.byte	0x1
	.uleb128 0x175
	.ascii "__USE_MINGW_ANSI_STDIO 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x16
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__need_wint_t \0"
	.file 32 "d:/programm/mingw/lib/gcc/mingw32/4.9.3/include/stddef.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x20
	.byte	0x1
	.uleb128 0xb8
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xba
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xea
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x109
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x2
	.uleb128 0x122
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x157
	.ascii "__need_wchar_t\0"
	.byte	0x1
	.uleb128 0x15c
	.ascii "_WINT_T \0"
	.byte	0x2
	.uleb128 0x163
	.ascii "__need_wint_t\0"
	.byte	0x2
	.uleb128 0x18d
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x198
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1b
	.ascii "__need___va_list \0"
	.file 33 "d:/programm/mingw/lib/gcc/mingw32/4.9.3/include/stdarg.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0x2
	.uleb128 0x22
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x21
	.ascii "_IOREAD 1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_IOWRT 2\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_IORW 0x0080\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "STDIN_FILENO 0\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "STDOUT_FILENO 1\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "STDERR_FILENO 2\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "FILENAME_MAX (260)\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "FOPEN_MAX (20)\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "TMP_MAX 32767\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_P_tmpdir \"\\\\\"\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_wP_tmpdir L\"\\\\\"\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "L_tmpnam (16)\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "_IOFBF 0x0000\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "_IOLBF 0x0040\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "_IONBF 0x0004\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "_IOMYBUF 0x0008\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "_IOEOF 0x0010\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "_IOERR 0x0020\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "_IOSTRG 0x0040\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "BUFSIZ 512\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__VALIST __gnuc_va_list\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "_FILE_DEFINED \0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "stdin (&_iob[STDIN_FILENO])\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "stdout (&_iob[STDOUT_FILENO])\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "stderr (&_iob[STDERR_FILENO])\0"
	.byte	0x2
	.uleb128 0xc8
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __mingw_ ##F\0"
	.byte	0x2
	.uleb128 0xd8
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__mingw_stdio_redirect__ static __inline__ __cdecl __MINGW_NOTHROW\0"
	.byte	0x2
	.uleb128 0x130
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "__mingw_stdio_redirect__(F) __cdecl __MINGW_NOTHROW __msvcrt_ ##F\0"
	.byte	0x2
	.uleb128 0x13a
	.ascii "__mingw_stdio_redirect__\0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "feof(__F) ((__F)->_flag & _IOEOF)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "ferror(__F) ((__F)->_flag & _IOERR)\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "_WSTDIO_DEFINED \0"
	.byte	0x4
	.file 34 "d:/programm/mingw/include/time.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x21
	.ascii "_TIME_H \0"
	.byte	0x1
	.uleb128 0x29
	.ascii "CLOCKS_PER_SEC ((clock_t)(1000))\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "CLK_TCK CLOCKS_PER_SEC\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__need_time_t \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__need_struct_timespec \0"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x57
	.ascii "__have_typedef_time_t 1\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__struct_timespec_defined 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x3a
	.ascii "__need_NULL \0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__need_size_t \0"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x20
	.byte	0x2
	.uleb128 0xea
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x157
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x18d
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x192
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x198
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x56
	.ascii "_TM_DEFINED \0"
	.byte	0x1
	.uleb128 0x102
	.ascii "_WTIME_DEFINED \0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
	.ident	"GCC: (GNU) 4.9.3"
	.def	___mingw_vprintf;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_OS_StartOs;	.scl	2;	.type	32;	.endef
	.def	_OS_StateHandler;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
