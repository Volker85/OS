	.file	"lld_global_test.c"
	.text
Ltext0:
	.def	_fprintf;	.scl	3;	.type	32;	.endef
_fprintf:
LFB0:
	.file 1 "d:/programm/mingw/include/stdio.h"
	.loc 1 242 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 244 0
	leal	16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 245 0
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	___mingw_vfprintf
	movl	%eax, %ebx
	.loc 1 247 0
	movl	%ebx, %eax
	.loc 1 248 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
.lcomm ___sput,76,32
	.def	_count_vowels;	.scl	3;	.type	32;	.endef
_count_vowels:
LFB10:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/lld_global_test.c"
	.loc 2 14 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 2 15 0
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	.loc 2 16 0
	movl	$0, -8(%ebp)
	.loc 2 18 0
	jmp	L4
L7:
	.loc 2 20 0
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	cmpb	$97, %al
	je	L5
	.loc 2 20 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	cmpb	$101, %al
	je	L5
	.loc 2 20 0 discriminator 2
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	cmpb	$105, %al
	je	L5
	.loc 2 21 0 is_stmt 1 discriminator 3
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	.loc 2 20 0 discriminator 3
	cmpb	$111, %al
	je	L5
	.loc 2 21 0
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	cmpb	$117, %al
	jne	L6
L5:
	.loc 2 23 0
	incl	-8(%ebp)
L6:
	.loc 2 26 0
	incl	-4(%ebp)
L4:
	.loc 2 18 0
	movl	-4(%ebp), %eax
	movb	(%eax), %al
	testb	%al, %al
	jne	L7
	.loc 2 29 0
	movl	-8(%ebp), %eax
	.loc 2 30 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
LC0:
	.ascii "sput_start_testing() omitted\12\0"
LC1:
	.ascii "sput_enter_suite() omitted\12\0"
LC2:
	.ascii "sput_run_test() omitted\12\0"
LC3:
	.ascii "book == 2v\0"
LC4:
	.ascii "count_vowels(\"book\") == 2\0"
LC5:
	.ascii "fail-unless\0"
LC6:
	.ascii "book\0"
	.align 4
LC7:
	.ascii "[%lu:%lu]  %s:#%lu  \"%s\"  FAIL\12!    Type:      %s\12!    Condition: %s\12!    Line:      %lu\12\0"
	.align 4
LC8:
	.ascii "[%lu:%lu]  %s:#%lu  \"%s\"  pass\12\0"
LC9:
	.ascii "hand == 1v\0"
LC10:
	.ascii "count_vowels(\"hand\") == 1\0"
LC11:
	.ascii "hand\0"
LC12:
	.ascii "test == 1v\0"
LC13:
	.ascii "count_vowels(\"test\") == 1\0"
LC14:
	.ascii "test\0"
LC15:
	.ascii "Peter == 2v\0"
LC16:
	.ascii "count_vowels(\"Peter\") == 2\0"
LC17:
	.ascii "Peter\0"
LC18:
	.ascii "Apu == 2v\0"
LC19:
	.ascii "count_vowels(\"Apu\") == 2\0"
LC20:
	.ascii "Apu\0"
	.text
	.def	_test_vowels_present;	.scl	3;	.type	32;	.endef
_test_vowels_present:
LFB11:
	.loc 2 34 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 35 0
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L10
	.loc 2 35 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L10:
	.loc 2 35 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L11
	.loc 2 35 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L11:
	.loc 2 35 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L12
	.loc 2 35 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L12:
	.loc 2 35 0 discriminator 6
	movl	$LC3, ___sput+52
	movl	$35, ___sput+64
	movl	$LC4, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC6, (%esp)
	call	_count_vowels
	cmpl	$2, %eax
	je	L13
	.loc 2 35 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L14
	.loc 2 35 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L14:
	.loc 2 35 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L15
	.loc 2 35 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L15:
	.loc 2 35 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %ecx
	movl	%ecx, -32(%ebp)
	movl	___sput+48, %esi
	movl	%esi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L16
L13:
	.loc 2 35 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L17
	.loc 2 35 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L17:
	.loc 2 35 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L18
	.loc 2 35 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L18:
	.loc 2 35 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L16:
	.loc 2 36 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L19
	.loc 2 36 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L19:
	.loc 2 36 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L20
	.loc 2 36 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L20:
	.loc 2 36 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L21
	.loc 2 36 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L21:
	.loc 2 36 0 discriminator 6
	movl	$LC9, ___sput+52
	movl	$36, ___sput+64
	movl	$LC10, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC11, (%esp)
	call	_count_vowels
	cmpl	$1, %eax
	je	L22
	.loc 2 36 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L23
	.loc 2 36 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L23:
	.loc 2 36 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L24
	.loc 2 36 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L24:
	.loc 2 36 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %edi
	movl	%edi, -32(%ebp)
	movl	___sput+48, %ecx
	movl	%ecx, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %ebx
	movl	%ebx, 28(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-36(%ebp), %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L25
L22:
	.loc 2 36 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L26
	.loc 2 36 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L26:
	.loc 2 36 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L27
	.loc 2 36 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L27:
	.loc 2 36 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L25:
	.loc 2 37 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L28
	.loc 2 37 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L28:
	.loc 2 37 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L29
	.loc 2 37 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L29:
	.loc 2 37 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L30
	.loc 2 37 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L30:
	.loc 2 37 0 discriminator 6
	movl	$LC12, ___sput+52
	movl	$37, ___sput+64
	movl	$LC13, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC14, (%esp)
	call	_count_vowels
	cmpl	$1, %eax
	je	L31
	.loc 2 37 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L32
	.loc 2 37 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L32:
	.loc 2 37 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L33
	.loc 2 37 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L33:
	.loc 2 37 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %esi
	movl	%esi, -32(%ebp)
	movl	___sput+48, %edi
	movl	%edi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L34
L31:
	.loc 2 37 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L35
	.loc 2 37 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L35:
	.loc 2 37 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L36
	.loc 2 37 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L36:
	.loc 2 37 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L34:
	.loc 2 38 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L37
	.loc 2 38 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L37:
	.loc 2 38 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L38
	.loc 2 38 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L38:
	.loc 2 38 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L39
	.loc 2 38 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L39:
	.loc 2 38 0 discriminator 6
	movl	$LC15, ___sput+52
	movl	$38, ___sput+64
	movl	$LC16, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC17, (%esp)
	call	_count_vowels
	cmpl	$2, %eax
	je	L40
	.loc 2 38 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L41
	.loc 2 38 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L41:
	.loc 2 38 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L42
	.loc 2 38 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L42:
	.loc 2 38 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %ecx
	movl	%ecx, -32(%ebp)
	movl	___sput+48, %esi
	movl	%esi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %ebx
	movl	%ebx, 28(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-36(%ebp), %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L43
L40:
	.loc 2 38 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L44
	.loc 2 38 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L44:
	.loc 2 38 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L45
	.loc 2 38 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L45:
	.loc 2 38 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L43:
	.loc 2 39 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L46
	.loc 2 39 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L46:
	.loc 2 39 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L47
	.loc 2 39 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L47:
	.loc 2 39 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L48
	.loc 2 39 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L48:
	.loc 2 39 0 discriminator 6
	movl	$LC18, ___sput+52
	movl	$39, ___sput+64
	movl	$LC19, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC20, (%esp)
	call	_count_vowels
	cmpl	$2, %eax
	je	L49
	.loc 2 39 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L50
	.loc 2 39 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L50:
	.loc 2 39 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L51
	.loc 2 39 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L51:
	.loc 2 39 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %edi
	movl	%edi, -32(%ebp)
	movl	___sput+48, %ecx
	movl	%ecx, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L9
L49:
	.loc 2 39 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L53
	.loc 2 39 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L53:
	.loc 2 39 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L54
	.loc 2 39 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L54:
	.loc 2 39 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L9:
	.loc 2 40 0 is_stmt 1
	addl	$76, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.section .rdata,"dr"
LC21:
	.ascii "GCC == 0v\0"
LC22:
	.ascii "count_vowels(\"GCC\") == 0\0"
LC23:
	.ascii "GCC\0"
LC24:
	.ascii "BBC == 0v\0"
LC25:
	.ascii "count_vowels(\"BBC\") == 0\0"
LC26:
	.ascii "BBC\0"
LC27:
	.ascii "CNN == 0v\0"
LC28:
	.ascii "count_vowels(\"CNN\") == 0\0"
LC29:
	.ascii "CNN\0"
LC30:
	.ascii "GPS == 0v\0"
LC31:
	.ascii "count_vowels(\"GPS\") == 0\0"
LC32:
	.ascii "GPS\0"
LC33:
	.ascii "Ltd == 0v\0"
LC34:
	.ascii "count_vowels(\"Ltd\") == 0\0"
LC35:
	.ascii "Ltd\0"
	.text
	.def	_test_no_vowels_present;	.scl	3;	.type	32;	.endef
_test_no_vowels_present:
LFB12:
	.loc 2 44 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 45 0
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L56
	.loc 2 45 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L56:
	.loc 2 45 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L57
	.loc 2 45 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L57:
	.loc 2 45 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L58
	.loc 2 45 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L58:
	.loc 2 45 0 discriminator 6
	movl	$LC21, ___sput+52
	movl	$45, ___sput+64
	movl	$LC22, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC23, (%esp)
	call	_count_vowels
	testl	%eax, %eax
	je	L59
	.loc 2 45 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L60
	.loc 2 45 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L60:
	.loc 2 45 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L61
	.loc 2 45 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L61:
	.loc 2 45 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %ecx
	movl	%ecx, -32(%ebp)
	movl	___sput+48, %esi
	movl	%esi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L62
L59:
	.loc 2 45 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L63
	.loc 2 45 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L63:
	.loc 2 45 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L64
	.loc 2 45 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L64:
	.loc 2 45 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L62:
	.loc 2 46 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L65
	.loc 2 46 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L65:
	.loc 2 46 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L66
	.loc 2 46 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L66:
	.loc 2 46 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L67
	.loc 2 46 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L67:
	.loc 2 46 0 discriminator 6
	movl	$LC24, ___sput+52
	movl	$46, ___sput+64
	movl	$LC25, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC26, (%esp)
	call	_count_vowels
	testl	%eax, %eax
	je	L68
	.loc 2 46 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L69
	.loc 2 46 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L69:
	.loc 2 46 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L70
	.loc 2 46 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L70:
	.loc 2 46 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %edi
	movl	%edi, -32(%ebp)
	movl	___sput+48, %ecx
	movl	%ecx, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %ebx
	movl	%ebx, 28(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-36(%ebp), %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L71
L68:
	.loc 2 46 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L72
	.loc 2 46 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L72:
	.loc 2 46 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L73
	.loc 2 46 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L73:
	.loc 2 46 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L71:
	.loc 2 47 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L74
	.loc 2 47 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L74:
	.loc 2 47 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L75
	.loc 2 47 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L75:
	.loc 2 47 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L76
	.loc 2 47 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L76:
	.loc 2 47 0 discriminator 6
	movl	$LC27, ___sput+52
	movl	$47, ___sput+64
	movl	$LC28, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC29, (%esp)
	call	_count_vowels
	testl	%eax, %eax
	je	L77
	.loc 2 47 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L78
	.loc 2 47 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L78:
	.loc 2 47 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L79
	.loc 2 47 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L79:
	.loc 2 47 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %esi
	movl	%esi, -32(%ebp)
	movl	___sput+48, %edi
	movl	%edi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L80
L77:
	.loc 2 47 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L81
	.loc 2 47 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L81:
	.loc 2 47 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L82
	.loc 2 47 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L82:
	.loc 2 47 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L80:
	.loc 2 48 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L83
	.loc 2 48 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L83:
	.loc 2 48 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L84
	.loc 2 48 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L84:
	.loc 2 48 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L85
	.loc 2 48 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L85:
	.loc 2 48 0 discriminator 6
	movl	$LC30, ___sput+52
	movl	$48, ___sput+64
	movl	$LC31, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC32, (%esp)
	call	_count_vowels
	testl	%eax, %eax
	je	L86
	.loc 2 48 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L87
	.loc 2 48 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L87:
	.loc 2 48 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L88
	.loc 2 48 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L88:
	.loc 2 48 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %ecx
	movl	%ecx, -32(%ebp)
	movl	___sput+48, %esi
	movl	%esi, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %ebx
	movl	%ebx, 28(%esp)
	movl	-32(%ebp), %edx
	movl	%edx, 24(%esp)
	movl	-36(%ebp), %ebx
	movl	%ebx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L89
L86:
	.loc 2 48 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L90
	.loc 2 48 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L90:
	.loc 2 48 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L91
	.loc 2 48 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L91:
	.loc 2 48 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L89:
	.loc 2 49 0 is_stmt 1
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L92
	.loc 2 49 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L92:
	.loc 2 49 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L93
	.loc 2 49 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L93:
	.loc 2 49 0 discriminator 4
	movl	___sput+44, %eax
	testl	%eax, %eax
	jne	L94
	.loc 2 49 0 discriminator 5
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$24, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC2, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L94:
	.loc 2 49 0 discriminator 6
	movl	$LC33, ___sput+52
	movl	$49, ___sput+64
	movl	$LC34, ___sput+56
	movl	$LC5, ___sput+60
	movl	___sput+48, %eax
	incl	%eax
	movl	%eax, ___sput+48
	movl	___sput+32, %eax
	incl	%eax
	movl	%eax, ___sput+32
	movl	$LC35, (%esp)
	call	_count_vowels
	testl	%eax, %eax
	je	L95
	.loc 2 49 0 discriminator 7
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L96
	.loc 2 49 0 discriminator 9
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L96:
	.loc 2 49 0 discriminator 10
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L97
	.loc 2 49 0 discriminator 11
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L97:
	.loc 2 49 0 discriminator 12
	movl	___sput+40, %eax
	incl	%eax
	movl	%eax, ___sput+40
	movl	___sput+64, %edx
	movl	___sput+56, %ebx
	movl	___sput+60, %eax
	movl	%eax, -28(%ebp)
	movl	___sput+52, %edi
	movl	%edi, -32(%ebp)
	movl	___sput+48, %ecx
	movl	%ecx, -36(%ebp)
	movl	___sput+44, %edi
	movl	___sput+32, %esi
	movl	___sput+28, %ecx
	movl	___sput, %eax
	movl	%edx, 36(%esp)
	movl	%ebx, 32(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, 28(%esp)
	movl	-32(%ebp), %ebx
	movl	%ebx, 24(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 20(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	jmp	L55
L95:
	.loc 2 49 0 discriminator 8
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L99
	.loc 2 49 0 discriminator 13
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L99:
	.loc 2 49 0 discriminator 14
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L100
	.loc 2 49 0 discriminator 15
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L100:
	.loc 2 49 0 discriminator 16
	movl	___sput+36, %eax
	incl	%eax
	movl	%eax, ___sput+36
	movl	___sput+52, %edi
	movl	___sput+48, %esi
	movl	___sput+44, %ebx
	movl	___sput+32, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%edi, 24(%esp)
	movl	%esi, 20(%esp)
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC8, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
L55:
	.loc 2 50 0 is_stmt 1
	addl	$76, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC38:
	.ascii "\12--> %lu check(s), %lu ok, %lu failed (%.2f%%)\12\0"
	.align 4
LC39:
	.ascii "count_vowels(): Vowels Present\0"
	.align 4
LC40:
	.ascii "\12== Entering suite #%lu, \"%s\" ==\12\12\0"
LC41:
	.ascii "test_vowels_present\0"
	.align 4
LC42:
	.ascii "count_vowels(): No Vowels Present\0"
LC43:
	.ascii "test_no_vowels_present\0"
LC44:
	.ascii "SUCCESS\0"
LC45:
	.ascii "FAILURE\0"
	.align 4
LC46:
	.ascii "\12==> %lu check(s) in %lu suite(s) finished after %.2f second(s),\12    %lu succeeded, %lu failed (%.2f%%)\12\12[%s]\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.loc 2 54 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$112, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 54 0
	call	___main
	.loc 2 55 0
	movl	$76, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput, (%esp)
	call	_memset
	movl	__imp___iob, %eax
	addl	$32, %eax
	movl	%eax, ___sput
	movl	$0, (%esp)
	call	_time
	movl	%eax, ___sput+68
	movb	$6, ___sput+4
	.loc 2 57 0
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L102
	.loc 2 57 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L102:
	.loc 2 57 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	je	L103
LBB2:
	.loc 2 57 0 discriminator 3
	movl	LC36, %eax
	movl	%eax, 108(%esp)
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L104
	.loc 2 57 0 discriminator 5
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L104:
	.loc 2 57 0 discriminator 6
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L105
	.loc 2 57 0 discriminator 7
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L105:
	.loc 2 57 0 discriminator 8
	movl	___sput+32, %eax
	testl	%eax, %eax
	je	L106
	.loc 2 57 0 discriminator 9
	movl	___sput+40, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fldt	LC37
	fmulp	%st, %st(1)
	movl	___sput+32, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fdivrp	%st, %st(1)
	fstps	84(%esp)
	movl	84(%esp), %eax
	jmp	L107
L106:
	.loc 2 57 0 discriminator 10
	movl	LC36, %eax
L107:
	.loc 2 57 0 discriminator 12
	movl	%eax, 108(%esp)
	flds	108(%esp)
	fstpl	72(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	___sput+40, %edi
	movl	___sput+36, %esi
	movl	___sput+32, %ebx
	movl	___sput, %ecx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
	movl	___sput+8, %edx
	movl	___sput+32, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+8
	movl	___sput+16, %edx
	movl	___sput+36, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+16
	movl	___sput+20, %edx
	movl	___sput+40, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+20
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput+24, (%esp)
	call	_memset
L103:
LBE2:
	.loc 2 57 0 discriminator 13
	movl	$LC39, ___sput+24
	movl	___sput+12, %eax
	incl	%eax
	movl	%eax, ___sput+12
	movl	___sput+12, %eax
	movl	%eax, ___sput+28
	movl	___sput+24, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC40, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	.loc 2 58 0 is_stmt 1 discriminator 13
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L108
	.loc 2 58 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L108:
	.loc 2 58 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L109
	.loc 2 58 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L109:
	.loc 2 58 0 discriminator 4
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput+44, (%esp)
	call	_memset
	movl	$LC41, ___sput+44
	call	_test_vowels_present
	.loc 2 60 0 is_stmt 1 discriminator 4
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L110
	.loc 2 60 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L110:
	.loc 2 60 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	je	L111
LBB3:
	.loc 2 60 0 discriminator 3
	movl	LC36, %eax
	movl	%eax, 104(%esp)
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L112
	.loc 2 60 0 discriminator 5
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L112:
	.loc 2 60 0 discriminator 6
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L113
	.loc 2 60 0 discriminator 7
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L113:
	.loc 2 60 0 discriminator 8
	movl	___sput+32, %eax
	testl	%eax, %eax
	je	L114
	.loc 2 60 0 discriminator 9
	movl	___sput+40, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fldt	LC37
	fmulp	%st, %st(1)
	movl	___sput+32, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fdivrp	%st, %st(1)
	fstps	84(%esp)
	movl	84(%esp), %eax
	jmp	L115
L114:
	.loc 2 60 0 discriminator 10
	movl	LC36, %eax
L115:
	.loc 2 60 0 discriminator 12
	movl	%eax, 104(%esp)
	flds	104(%esp)
	fstpl	72(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	___sput+40, %edi
	movl	___sput+36, %esi
	movl	___sput+32, %ebx
	movl	___sput, %ecx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
	movl	___sput+8, %edx
	movl	___sput+32, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+8
	movl	___sput+16, %edx
	movl	___sput+36, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+16
	movl	___sput+20, %edx
	movl	___sput+40, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+20
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput+24, (%esp)
	call	_memset
L111:
LBE3:
	.loc 2 60 0 discriminator 13
	movl	$LC42, ___sput+24
	movl	___sput+12, %eax
	incl	%eax
	movl	%eax, ___sput+12
	movl	___sput+12, %eax
	movl	%eax, ___sput+28
	movl	___sput+24, %ecx
	movl	___sput+28, %edx
	movl	___sput, %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	$LC40, 4(%esp)
	movl	%eax, (%esp)
	call	_fprintf
	.loc 2 61 0 is_stmt 1 discriminator 13
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L116
	.loc 2 61 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L116:
	.loc 2 61 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L117
	.loc 2 61 0 discriminator 3
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L117:
	.loc 2 61 0 discriminator 4
	movl	$8, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput+44, (%esp)
	call	_memset
	movl	$LC43, ___sput+44
	call	_test_no_vowels_present
LBB4:
	.loc 2 63 0 is_stmt 1 discriminator 4
	movl	LC36, %eax
	movl	%eax, 100(%esp)
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L118
	.loc 2 63 0 is_stmt 0 discriminator 1
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L118:
	.loc 2 63 0 discriminator 2
	movl	___sput+24, %eax
	testl	%eax, %eax
	je	L119
LBB5:
	.loc 2 63 0 discriminator 3
	movl	LC36, %eax
	movl	%eax, 96(%esp)
	movb	___sput+4, %al
	cmpb	$6, %al
	je	L120
	.loc 2 63 0 discriminator 5
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$29, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC0, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L120:
	.loc 2 63 0 discriminator 6
	movl	___sput+24, %eax
	testl	%eax, %eax
	jne	L121
	.loc 2 63 0 discriminator 7
	movl	___sput, %eax
	movl	%eax, 12(%esp)
	movl	$27, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC1, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L121:
	.loc 2 63 0 discriminator 8
	movl	___sput+32, %eax
	testl	%eax, %eax
	je	L122
	.loc 2 63 0 discriminator 9
	movl	___sput+40, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fldt	LC37
	fmulp	%st, %st(1)
	movl	___sput+32, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fdivrp	%st, %st(1)
	fstps	84(%esp)
	movl	84(%esp), %eax
	jmp	L123
L122:
	.loc 2 63 0 discriminator 10
	movl	LC36, %eax
L123:
	.loc 2 63 0 discriminator 12
	movl	%eax, 96(%esp)
	flds	96(%esp)
	fstpl	72(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	___sput+40, %edi
	movl	___sput+36, %esi
	movl	___sput+32, %ebx
	movl	___sput, %ecx
	movl	%eax, 20(%esp)
	movl	%edx, 24(%esp)
	movl	%edi, 16(%esp)
	movl	%esi, 12(%esp)
	movl	%ebx, 8(%esp)
	movl	$LC38, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
	movl	___sput+8, %edx
	movl	___sput+32, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+8
	movl	___sput+16, %edx
	movl	___sput+36, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+16
	movl	___sput+20, %edx
	movl	___sput+40, %eax
	addl	%edx, %eax
	movl	%eax, ___sput+20
	movl	$20, 8(%esp)
	movl	$0, 4(%esp)
	movl	$___sput+24, (%esp)
	call	_memset
L119:
LBE5:
	.loc 2 63 0 discriminator 13
	movl	___sput+8, %eax
	testl	%eax, %eax
	je	L124
	.loc 2 63 0 discriminator 14
	movl	___sput+20, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fldt	LC37
	fmulp	%st, %st(1)
	movl	___sput+8, %eax
	movl	%eax, 72(%esp)
	movl	$0, 76(%esp)
	fildq	72(%esp)
	fstpl	88(%esp)
	fldl	88(%esp)
	fdivrp	%st, %st(1)
	fstps	84(%esp)
	movl	84(%esp), %eax
	jmp	L125
L124:
	.loc 2 63 0 discriminator 15
	movl	LC36, %eax
L125:
	.loc 2 63 0 discriminator 17
	movl	%eax, 100(%esp)
	movl	$0, (%esp)
	call	_time
	movl	%eax, ___sput+72
	movl	___sput+20, %eax
	testl	%eax, %eax
	jne	L126
	.loc 2 63 0 discriminator 18
	movl	$LC44, 72(%esp)
	jmp	L127
L126:
	.loc 2 63 0 discriminator 19
	movl	$LC45, 72(%esp)
L127:
	.loc 2 63 0 discriminator 21
	flds	100(%esp)
	fstpl	64(%esp)
	movl	64(%esp), %ebx
	movl	68(%esp), %esi
	movl	___sput+20, %eax
	movl	%eax, 64(%esp)
	movl	___sput+16, %edi
	movl	%edi, 80(%esp)
	movl	___sput+68, %edx
	movl	___sput+72, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_difftime
	fstpl	56(%esp)
	fldl	56(%esp)
	movl	___sput+12, %ecx
	movl	%ecx, %eax
	movl	___sput+8, %edi
	movl	___sput, %ecx
	movl	72(%esp), %edx
	movl	%edx, 40(%esp)
	movl	%ebx, 32(%esp)
	movl	%esi, 36(%esp)
	movl	64(%esp), %esi
	movl	%esi, 28(%esp)
	movl	80(%esp), %ebx
	movl	%ebx, 24(%esp)
	fstpl	16(%esp)
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$LC46, 4(%esp)
	movl	%ecx, (%esp)
	call	_fprintf
LBE4:
	.loc 2 65 0 is_stmt 1 discriminator 21
	movl	___sput+20, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	.loc 2 66 0 discriminator 21
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC36:
	.long	0
	.align 16
LC37:
	.long	0
	.long	-939524096
	.long	16389
	.text
Letext0:
	.file 3 "d:/programm/mingw/include/parts/time.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_sim/../os_base/os_sput.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x56b
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_sim\\lld_global_test.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0xd0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x1
	.byte	0x82
	.long	0x15f
	.uleb128 0x5
	.ascii "_ptr\0"
	.byte	0x1
	.byte	0x84
	.long	0x15f
	.byte	0
	.uleb128 0x5
	.ascii "_cnt\0"
	.byte	0x1
	.byte	0x85
	.long	0x165
	.byte	0x4
	.uleb128 0x5
	.ascii "_base\0"
	.byte	0x1
	.byte	0x86
	.long	0x15f
	.byte	0x8
	.uleb128 0x5
	.ascii "_flag\0"
	.byte	0x1
	.byte	0x87
	.long	0x165
	.byte	0xc
	.uleb128 0x5
	.ascii "_file\0"
	.byte	0x1
	.byte	0x88
	.long	0x165
	.byte	0x10
	.uleb128 0x5
	.ascii "_charbuf\0"
	.byte	0x1
	.byte	0x89
	.long	0x165
	.byte	0x14
	.uleb128 0x5
	.ascii "_bufsiz\0"
	.byte	0x1
	.byte	0x8a
	.long	0x165
	.byte	0x18
	.uleb128 0x5
	.ascii "_tmpfname\0"
	.byte	0x1
	.byte	0x8b
	.long	0x15f
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xd0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x7
	.ascii "FILE\0"
	.byte	0x1
	.byte	0x8c
	.long	0xd8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x7
	.ascii "__time32_t\0"
	.byte	0x3
	.byte	0x40
	.long	0x189
	.uleb128 0x7
	.ascii "time_t\0"
	.byte	0x3
	.byte	0x4a
	.long	0x195
	.uleb128 0x4
	.ascii "sput_overall\0"
	.byte	0x10
	.byte	0x4
	.byte	0x4c
	.long	0x200
	.uleb128 0x5
	.ascii "checks\0"
	.byte	0x4
	.byte	0x4e
	.long	0x200
	.byte	0
	.uleb128 0x5
	.ascii "suites\0"
	.byte	0x4
	.byte	0x4f
	.long	0x200
	.byte	0x4
	.uleb128 0x5
	.ascii "ok\0"
	.byte	0x4
	.byte	0x50
	.long	0x200
	.byte	0x8
	.uleb128 0x5
	.ascii "nok\0"
	.byte	0x4
	.byte	0x51
	.long	0x200
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x4
	.ascii "sput_suite\0"
	.byte	0x14
	.byte	0x4
	.byte	0x54
	.long	0x267
	.uleb128 0x5
	.ascii "name\0"
	.byte	0x4
	.byte	0x56
	.long	0x267
	.byte	0
	.uleb128 0x5
	.ascii "nr\0"
	.byte	0x4
	.byte	0x57
	.long	0x200
	.byte	0x4
	.uleb128 0x5
	.ascii "checks\0"
	.byte	0x4
	.byte	0x58
	.long	0x200
	.byte	0x8
	.uleb128 0x5
	.ascii "ok\0"
	.byte	0x4
	.byte	0x59
	.long	0x200
	.byte	0xc
	.uleb128 0x5
	.ascii "nok\0"
	.byte	0x4
	.byte	0x5a
	.long	0x200
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x26d
	.uleb128 0x8
	.long	0xd0
	.uleb128 0x4
	.ascii "sput_test\0"
	.byte	0x8
	.byte	0x4
	.byte	0x5d
	.long	0x29d
	.uleb128 0x5
	.ascii "name\0"
	.byte	0x4
	.byte	0x5f
	.long	0x267
	.byte	0
	.uleb128 0x5
	.ascii "nr\0"
	.byte	0x4
	.byte	0x60
	.long	0x200
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.ascii "sput_check\0"
	.byte	0x10
	.byte	0x4
	.byte	0x63
	.long	0x2e5
	.uleb128 0x5
	.ascii "name\0"
	.byte	0x4
	.byte	0x65
	.long	0x267
	.byte	0
	.uleb128 0x5
	.ascii "cond\0"
	.byte	0x4
	.byte	0x66
	.long	0x267
	.byte	0x4
	.uleb128 0x5
	.ascii "type\0"
	.byte	0x4
	.byte	0x67
	.long	0x267
	.byte	0x8
	.uleb128 0x5
	.ascii "line\0"
	.byte	0x4
	.byte	0x68
	.long	0x200
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.ascii "sput_time\0"
	.byte	0x8
	.byte	0x4
	.byte	0x6b
	.long	0x312
	.uleb128 0x5
	.ascii "start\0"
	.byte	0x4
	.byte	0x6d
	.long	0x1a7
	.byte	0
	.uleb128 0x5
	.ascii "end\0"
	.byte	0x4
	.byte	0x6e
	.long	0x1a7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.ascii "sput\0"
	.byte	0x4c
	.byte	0x4
	.byte	0x47
	.long	0x386
	.uleb128 0x5
	.ascii "out\0"
	.byte	0x4
	.byte	0x49
	.long	0x386
	.byte	0
	.uleb128 0x5
	.ascii "initialized\0"
	.byte	0x4
	.byte	0x4a
	.long	0xd0
	.byte	0x4
	.uleb128 0x5
	.ascii "overall\0"
	.byte	0x4
	.byte	0x52
	.long	0x1b5
	.byte	0x8
	.uleb128 0x5
	.ascii "suite\0"
	.byte	0x4
	.byte	0x5b
	.long	0x215
	.byte	0x18
	.uleb128 0x5
	.ascii "test\0"
	.byte	0x4
	.byte	0x61
	.long	0x272
	.byte	0x2c
	.uleb128 0x5
	.ascii "check\0"
	.byte	0x4
	.byte	0x69
	.long	0x29d
	.byte	0x34
	.uleb128 0x5
	.ascii "time\0"
	.byte	0x4
	.byte	0x6f
	.long	0x2e5
	.byte	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x16c
	.uleb128 0x9
	.ascii "fprintf\0"
	.byte	0x1
	.byte	0xf1
	.long	0x165
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa
	.uleb128 0xa
	.ascii "__stream\0"
	.byte	0x1
	.byte	0xf1
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "__format\0"
	.byte	0x1
	.byte	0xf1
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.uleb128 0xc
	.ascii "__retval\0"
	.byte	0x1
	.byte	0xf3
	.long	0x165
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xc
	.ascii "__local_argv\0"
	.byte	0x1
	.byte	0xf4
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.ascii "count_vowels\0"
	.byte	0x2
	.byte	0xd
	.long	0x165
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x446
	.uleb128 0xa
	.ascii "s\0"
	.byte	0x2
	.byte	0xd
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "cp\0"
	.byte	0x2
	.byte	0xf
	.long	0x267
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xc
	.ascii "count\0"
	.byte	0x2
	.byte	0x10
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.ascii "test_vowels_present\0"
	.byte	0x2
	.byte	0x21
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.ascii "test_no_vowels_present\0"
	.byte	0x2
	.byte	0x2b
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.ascii "main\0"
	.byte	0x2
	.byte	0x35
	.long	0x165
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x534
	.uleb128 0xa
	.ascii "argc\0"
	.byte	0x2
	.byte	0x35
	.long	0x165
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "argv\0"
	.byte	0x2
	.byte	0x35
	.long	0x534
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	LBB2
	.long	LBE2-LBB2
	.long	0x4e0
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x2
	.byte	0x39
	.long	0x53a
	.uleb128 0x3
	.byte	0x74
	.sleb128 108
	.byte	0
	.uleb128 0x10
	.long	LBB3
	.long	LBE3-LBB3
	.long	0x4fd
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x2
	.byte	0x3c
	.long	0x53a
	.uleb128 0x3
	.byte	0x74
	.sleb128 104
	.byte	0
	.uleb128 0x12
	.long	LBB4
	.long	LBE4-LBB4
	.uleb128 0xc
	.ascii "failpft\0"
	.byte	0x2
	.byte	0x3f
	.long	0x53a
	.uleb128 0x3
	.byte	0x74
	.sleb128 100
	.uleb128 0x12
	.long	LBB5
	.long	LBE5-LBB5
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x2
	.byte	0x3f
	.long	0x53a
	.uleb128 0x3
	.byte	0x74
	.sleb128 96
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x15f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0xc
	.ascii "__sput\0"
	.byte	0x4
	.byte	0x70
	.long	0x312
	.uleb128 0x5
	.byte	0x3
	.long	___sput
	.uleb128 0x13
	.long	0x16c
	.long	0x562
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.ascii "_iob\0"
	.byte	0x1
	.byte	0x9b
	.long	0x557
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x10
	.ascii "_STDIO_H_ \0"
	.file 5 "d:/programm/mingw/include/_mingw.h"
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x5
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
	.file 6 "d:/programm/mingw/lib/gcc/mingw32/4.9.3/include/stddef.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x6
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
	.file 7 "d:/programm/mingw/lib/gcc/mingw32/4.9.3/include/stdarg.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x7
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
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x26
	.ascii "HAVE_SPUT_H \0"
	.file 8 "d:/programm/mingw/include/stdlib.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x1
	.uleb128 0xc
	.ascii "_STDLIB_H_ \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "__need_NULL \0"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x6
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
	.uleb128 0x1d
	.ascii "RAND_MAX 0x7FFF\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "MB_CUR_MAX __mb_cur_max\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "errno (*_errno())\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "_doserrno (*__doserrno())\0"
	.byte	0x1
	.uleb128 0x155
	.ascii "_WSTDLIB_DEFINED \0"
	.byte	0x4
	.file 9 "d:/programm/mingw/include/string.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xc
	.ascii "_STRING_H_ \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__need_NULL \0"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x6
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
	.uleb128 0xc0
	.ascii "_WSTRING_DEFINED \0"
	.byte	0x4
	.file 10 "d:/programm/mingw/include/time.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xa
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
	.uleb128 0x6
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
	.byte	0x1
	.uleb128 0x38
	.ascii "SPUT_VERSION_MAJOR 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "SPUT_VERSION_MINOR 4\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "SPUT_VERSION_PATCH 0\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "SPUT_VERSION_STRING \"1.4.0\"\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "SPUT_DEFAULT_SUITE_NAME \"Unlabeled Suite\"\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "SPUT_DEFAULT_CHECK_NAME \"Unlabeled Check\"\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "SPUT_INITIALIZED 0x06\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "_sput_die_unless_initialized() if (__sput.initialized != SPUT_INITIALIZED) { fputs(\"sput_start_testing() omitted\\n\", stderr); exit(EXIT_FAILURE); }\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_sput_die_unless_suite_set() if (! __sput.suite.name) { fputs(\"sput_enter_suite() omitted\\n\", __sput.out); exit(EXIT_FAILURE); }\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "_sput_die_unless_test_set() if (! __sput.test.name) { fputs(\"sput_run_test() omitted\\n\", __sput.out); exit(EXIT_FAILURE); }\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "_sput_check_failed() { _sput_die_unless_initialized(); _sput_die_unless_suite_set(); __sput.suite.nok++; fprintf(__sput.out, \"[%lu:%lu]  %s:#%lu  \\\"%s\\\"  FAIL\\n\" \"!    Type:      %s\\n\" \"!    Condition: %s\\n\" \"!    Line:      %lu\\n\", __sput.suite.nr, __sput.suite.checks, __sput.test.name, __sput.test.nr, __sput.check.name, __sput.check.type, __sput.check.cond, __sput.check.line); }\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "_sput_check_succeeded() { _sput_die_unless_initialized(); _sput_die_unless_suite_set(); __sput.suite.ok++; fprintf(__sput.out, \"[%lu:%lu]  %s:#%lu  \\\"%s\\\"  pass\\n\", __sput.suite.nr, __sput.suite.checks, __sput.test.name, __sput.test.nr, __sput.check.name); }\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "sput_start_testing() do { memset(&__sput, 0, sizeof(__sput)); __sput.out = stdout; __sput.time.start = time(NULL); __sput.initialized = SPUT_INITIALIZED; } while (0)\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "sput_leave_suite() do { float failpls = 0.0f; _sput_die_unless_initialized(); _sput_die_unless_suite_set(); failpls = __sput.suite.checks ? (float) ((__sput.suite.nok * 100.0) / __sput.suite.checks) : 0.0f; fprintf(__sput.out, \"\\n--> %lu check(s), %lu ok, %lu failed (%.2f%%)\\n\", __sput.suite.checks, __sput.suite.ok, __sput.suite.nok, failpls); __sput.overall.checks += __sput.suite.checks; __sput.overall.ok += __sput.suite.ok; __sput.overall.nok += __sput.suite.nok; memset(&__sput.suite, 0, sizeof(__sput.suite)); } while (0)\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "sput_get_return_value() (__sput.overall.nok > 0 ? EXIT_FAILURE : EXIT_SUCCESS)\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "sput_enter_suite(_name) do { _sput_die_unless_initialized(); if (__sput.suite.name) { sput_leave_suite(); } __sput.suite.name = _name != NULL ? _name : SPUT_DEFAULT_SUITE_NAME; __sput.suite.nr = ++__sput.overall.suites; fprintf(__sput.out, \"\\n== Entering suite #%lu, \\\"%s\\\" ==\\n\\n\", __sput.suite.nr, __sput.suite.name); } while (0)\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "sput_finish_testing() do { float failpft = 0.0f; _sput_die_unless_initialized(); if (__sput.suite.name) { sput_leave_suite(); } failpft = __sput.overall.checks ? (float) ((__sput.overall.nok * 100.0) / __sput.overall.checks) : 0.0f; __sput.time.end = time(NULL); fprintf(__sput.out, \"\\n==> %lu check(s) in %lu suite(s) finished after %.2f \" \"second(s),\\n\" \"    %lu succeeded, %lu failed (%.2f%%)\\n\" \"\\n[%s]\\n\", __sput.overall.checks, __sput.overall.suites, difftime(__sput.time.end, __sput.time.start), __sput.overall.ok, __sput.overall.nok, failpft, (sput_get_return_value() == EXIT_SUCCESS) ? \"SUCCESS\" : \"FAILURE\"); } while (0)\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "sput_set_output_stream(_fp) do { __sput.out = _fp != NULL ? _fp : stdout; } while (0)\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "sput_fail_if(_cond,_name) do { _sput_die_unless_initialized(); _sput_die_unless_suite_set(); _sput_die_unless_test_set(); __sput.check.name = _name != NULL ? _name : SPUT_DEFAULT_CHECK_NAME; __sput.check.line = __LINE__; __sput.check.cond = #_cond; __sput.check.type = \"fail-if\"; __sput.test.nr++; __sput.suite.checks++; if ((_cond)) { _sput_check_failed(); } else { _sput_check_succeeded(); } } while (0)\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "sput_fail_unless(_cond,_name) do { _sput_die_unless_initialized(); _sput_die_unless_suite_set(); _sput_die_unless_test_set(); __sput.check.name = _name != NULL ? _name : SPUT_DEFAULT_CHECK_NAME; __sput.check.line = __LINE__; __sput.check.cond = #_cond; __sput.check.type = \"fail-unless\"; __sput.test.nr++; __sput.suite.checks++; if (! (_cond)) { _sput_check_failed(); } else { _sput_check_succeeded(); } } while (0)\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "sput_run_test(_func) do { _sput_die_unless_initialized(); _sput_die_unless_suite_set(); memset(&__sput.test, 0, sizeof(__sput.test)); __sput.test.name = #_func; _func(); } while (0)\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "failpls\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_difftime;	.scl	2;	.type	32;	.endef
