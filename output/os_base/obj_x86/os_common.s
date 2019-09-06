	.file	"os_common.c"
	.text
Ltext0:
	.globl	_OS_SET_SW_BUG
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
_OS_SET_SW_BUG:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_common.c"
	.loc 1 5 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, _OS_SW_BUG(,%eax,4)
	.loc 1 7 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_GET_CURRENT_TIME
	.def	_OS_GET_CURRENT_TIME;	.scl	2;	.type	32;	.endef
_OS_GET_CURRENT_TIME:
LFB1:
	.loc 1 12 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 14 0
	call	_OS_UpdateCurrentTime
	.loc 1 16 0
	movl	$_LOCAL_SYSTEM_TIME, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 18 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_OS_UpdateCurrentTime
	.def	_OS_UpdateCurrentTime;	.scl	2;	.type	32;	.endef
_OS_UpdateCurrentTime:
LFB2:
	.loc 1 20 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 25 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_READ_AND_RESET_CURRENT_TIME
	.loc 1 28 0
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$_LOCAL_SYSTEM_TIME, 4(%esp)
	movl	$_LOCAL_SYSTEM_TIME, (%esp)
	call	_INT_ADD
	.loc 1 29 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_OS_READ_AND_RESET_CURRENT_TIME
	.def	_OS_READ_AND_RESET_CURRENT_TIME;	.scl	2;	.type	32;	.endef
_OS_READ_AND_RESET_CURRENT_TIME:
LFB3:
	.loc 1 32 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 54 0
	movl	$5, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 56 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_INT_DIV
	.def	_INT_DIV;	.scl	2;	.type	32;	.endef
_INT_DIV:
LFB4:
	.loc 1 59 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 61 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_INT_MUL
	.def	_INT_MUL;	.scl	2;	.type	32;	.endef
_INT_MUL:
LFB5:
	.loc 1 64 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 66 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_INT_ADD
	.def	_INT_ADD;	.scl	2;	.type	32;	.endef
_INT_ADD:
LFB6:
	.loc 1 69 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 71 0
	movw	$0, -4(%ebp)
	.loc 1 73 0
	movb	$15, -1(%ebp)
	jmp	L8
L9:
LBB2:
	.loc 1 75 0 discriminator 3
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movw	%ax, -6(%ebp)
	.loc 1 76 0 discriminator 3
	movsbl	-1(%ebp), %edx
	movw	-6(%ebp), %ax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movb	%cl, (%eax,%edx)
	.loc 1 77 0 discriminator 3
	movw	-6(%ebp), %ax
	movb	$0, %al
	movw	%ax, -4(%ebp)
LBE2:
	.loc 1 73 0 discriminator 3
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L8:
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L9
	.loc 1 79 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_INT_SUB
	.def	_INT_SUB;	.scl	2;	.type	32;	.endef
_INT_SUB:
LFB7:
	.loc 1 81 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 83 0
	movw	$0, -6(%ebp)
	.loc 1 85 0
	movb	$15, -1(%ebp)
	jmp	L11
L14:
LBB3:
	.loc 1 87 0
	movw	$0, -4(%ebp)
	.loc 1 88 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %ecx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movzwl	-6(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jl	L12
	.loc 1 90 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subw	-6(%ebp), %ax
	movw	%ax, -4(%ebp)
	jmp	L13
L12:
	.loc 1 92 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %eax
	leal	256(%eax), %ecx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movzwl	-6(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jb	L13
	.loc 1 94 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subw	-6(%ebp), %ax
	addl	$256, %eax
	movw	%ax, -4(%ebp)
L13:
	.loc 1 100 0 discriminator 2
	movsbl	-1(%ebp), %edx
	movl	-4(%ebp), %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movb	%cl, (%eax,%edx)
LBE3:
	.loc 1 85 0 discriminator 2
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L11:
	.loc 1 85 0 is_stmt 0 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L14
	.loc 1 102 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_IS_LESS
	.def	_IS_LESS;	.scl	2;	.type	32;	.endef
_IS_LESS:
LFB8:
	.loc 1 104 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 106 0
	movb	$0, -2(%ebp)
	.loc 1 107 0
	movb	$0, -1(%ebp)
	jmp	L16
L20:
	.loc 1 109 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jnb	L17
	.loc 1 111 0
	movb	$1, -2(%ebp)
	.loc 1 112 0
	jmp	L18
L17:
	.loc 1 114 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jbe	L19
	.loc 1 116 0
	movb	$0, -2(%ebp)
	.loc 1 117 0
	jmp	L18
L19:
	.loc 1 107 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L16:
	.loc 1 107 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L20
L18:
	.loc 1 124 0 is_stmt 1
	movb	-2(%ebp), %al
	.loc 1 125 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_IS_LESS_OR_EQUAL
	.def	_IS_LESS_OR_EQUAL;	.scl	2;	.type	32;	.endef
_IS_LESS_OR_EQUAL:
LFB9:
	.loc 1 127 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 128 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_LESS
	testb	%al, %al
	jne	L23
	.loc 1 128 0 is_stmt 0 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_EQUAL
	testb	%al, %al
	je	L24
L23:
	.loc 1 128 0 discriminator 3
	movl	$1, %eax
	jmp	L25
L24:
	.loc 1 128 0 discriminator 4
	movl	$0, %eax
L25:
	.loc 1 129 0 is_stmt 1 discriminator 6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_IS_EQUAL
	.def	_IS_EQUAL;	.scl	2;	.type	32;	.endef
_IS_EQUAL:
LFB10:
	.loc 1 131 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 133 0
	movb	$1, -2(%ebp)
	.loc 1 134 0
	movb	$0, -1(%ebp)
	jmp	L28
L31:
	.loc 1 136 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	je	L29
	.loc 1 138 0
	movb	$0, -2(%ebp)
	.loc 1 139 0
	jmp	L30
L29:
	.loc 1 134 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L28:
	.loc 1 134 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L31
L30:
	.loc 1 146 0 is_stmt 1
	movb	-2(%ebp), %al
	.loc 1 147 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_IS_GREATER
	.def	_IS_GREATER;	.scl	2;	.type	32;	.endef
_IS_GREATER:
LFB11:
	.loc 1 149 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 151 0
	movb	$0, -2(%ebp)
	.loc 1 152 0
	movb	$0, -1(%ebp)
	jmp	L34
L38:
	.loc 1 154 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jnb	L35
	.loc 1 156 0
	movb	$0, -2(%ebp)
	.loc 1 157 0
	jmp	L36
L35:
	.loc 1 159 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jbe	L37
	.loc 1 161 0
	movb	$1, -2(%ebp)
	.loc 1 162 0
	jmp	L36
L37:
	.loc 1 152 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L34:
	.loc 1 152 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L38
L36:
	.loc 1 169 0 is_stmt 1
	movb	-2(%ebp), %al
	.loc 1 170 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.globl	_IS_GREATER_OR_EQUAL
	.def	_IS_GREATER_OR_EQUAL;	.scl	2;	.type	32;	.endef
_IS_GREATER_OR_EQUAL:
LFB12:
	.loc 1 172 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 173 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_GREATER
	testb	%al, %al
	jne	L41
	.loc 1 173 0 is_stmt 0 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_EQUAL
	testb	%al, %al
	je	L42
L41:
	.loc 1 173 0 discriminator 3
	movl	$1, %eax
	jmp	L43
L42:
	.loc 1 173 0 discriminator 4
	movl	$0, %eax
L43:
	.loc 1 174 0 is_stmt 1 discriminator 6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_ASSIGN
	.def	_ASSIGN;	.scl	2;	.type	32;	.endef
_ASSIGN:
LFB13:
	.loc 1 176 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 178 0
	movb	$0, -1(%ebp)
	jmp	L46
L47:
	.loc 1 180 0 discriminator 3
	movzbl	-1(%ebp), %eax
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %ecx
	movb	(%ecx,%edx), %cl
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	.loc 1 178 0 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L46:
	.loc 1 178 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L47
	.loc 1 182 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.globl	_ASSIGN_NULL
	.def	_ASSIGN_NULL;	.scl	2;	.type	32;	.endef
_ASSIGN_NULL:
LFB14:
	.loc 1 184 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 186 0
	movb	$0, -1(%ebp)
	jmp	L49
L50:
	.loc 1 188 0 discriminator 3
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
	.loc 1 186 0 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L49:
	.loc 1 186 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L50
	.loc 1 190 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_ASSIGN_UINT32
	.def	_ASSIGN_UINT32;	.scl	2;	.type	32;	.endef
_ASSIGN_UINT32:
LFB15:
	.loc 1 193 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 196 0
	movb	$0, -5(%ebp)
	jmp	L52
L53:
	.loc 1 198 0 discriminator 3
	movzbl	-5(%ebp), %eax
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
	.loc 1 196 0 discriminator 3
	movb	-5(%ebp), %al
	incl	%eax
	movb	%al, -5(%ebp)
L52:
	.loc 1 196 0 is_stmt 0 discriminator 1
	cmpb	$15, -5(%ebp)
	jbe	L53
	.loc 1 200 0 is_stmt 1
	movb	$15, -5(%ebp)
	movb	$0, -6(%ebp)
	jmp	L54
L55:
	.loc 1 202 0 discriminator 3
	movzbl	-5(%ebp), %eax
	movzbl	-6(%ebp), %edx
	movl	12(%ebp), %ebx
	movb	%dl, %cl
	shrl	%cl, %ebx
	movl	%ebx, %edx
	movb	%dl, %cl
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	.loc 1 200 0 discriminator 3
	movb	-5(%ebp), %al
	decl	%eax
	movb	%al, -5(%ebp)
	movb	-6(%ebp), %al
	incl	%eax
	movb	%al, -6(%ebp)
L54:
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpb	$11, -5(%ebp)
	ja	L55
	.loc 1 204 0 is_stmt 1
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_get_uint32_of_4_uint8
	.def	_get_uint32_of_4_uint8;	.scl	2;	.type	32;	.endef
_get_uint32_of_4_uint8:
LFB16:
	.loc 1 207 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 208 0
	movl	$0, -4(%ebp)
	.loc 1 210 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -4(%ebp)
	.loc 1 211 0
	incl	8(%ebp)
	.loc 1 212 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -4(%ebp)
	.loc 1 213 0
	incl	8(%ebp)
	.loc 1 214 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -4(%ebp)
	.loc 1 215 0
	incl	8(%ebp)
	.loc 1 216 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	movzbl	%al, %eax
	addl	%eax, -4(%ebp)
	.loc 1 218 0
	movl	-4(%ebp), %eax
	.loc 1 219 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_set_4_uint8_to_uint32
	.def	_set_4_uint8_to_uint32;	.scl	2;	.type	32;	.endef
_set_4_uint8_to_uint32:
LFB17:
	.loc 1 221 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 222 0
	movl	12(%ebp), %eax
	shrl	$24, %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 223 0
	incl	8(%ebp)
	.loc 1 224 0
	movl	12(%ebp), %eax
	shrl	$16, %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 225 0
	incl	8(%ebp)
	.loc 1 226 0
	movl	12(%ebp), %eax
	shrl	$8, %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 227 0
	incl	8(%ebp)
	.loc 1 228 0
	movl	12(%ebp), %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 229 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xb74
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_common.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "uint8\0"
	.byte	0x2
	.byte	0x15
	.long	0x8d
	.uleb128 0x3
	.ascii "sint8\0"
	.byte	0x2
	.byte	0x16
	.long	0x9e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "uint16\0"
	.byte	0x2
	.byte	0x19
	.long	0xc7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "uint32\0"
	.byte	0x2
	.byte	0x1d
	.long	0xf8
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x28
	.long	0x2bd
	.uleb128 0x5
	.ascii "E_OS_BUG_NO_BUG\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_OS_BUG_TASKSTATE_REQUEST_DENIED\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_OS_BUG_NULL_POINTER\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "E_OS_BUG_TASK_UNSPECIFIED\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_ABORTPREFETCH\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "E_OS_BUG_EXCEPTION_ABORTDATA\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "E_OS_BUG_CRITICAL_STACK_USAGE\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "E_OS_BUG_SVC_NUMBER_MISSING\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "E_OS_BUG_MAX_WAIT_TIME_REACHED\0"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.ascii "os_sw_bugs_t\0"
	.byte	0x3
	.byte	0x37
	.long	0x127
	.uleb128 0x3
	.ascii "boolean_t\0"
	.byte	0x3
	.byte	0x38
	.long	0xad
	.uleb128 0x4
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x39
	.long	0x4d6
	.uleb128 0x5
	.ascii "E_FUNC_NOFUNCTION\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "E_FUNC_SAVETASKENVIRONMENT\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "E_FUNC_RESTORETASKENVIRONMENT\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "E_FUNC_CREATETASKENVIRONMENT\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "E_FUNC_DELETETASKENVIRONMENT\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "E_FUNC_INITTASKENVIRONMENT\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "E_FUNC_STARTTASK\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "E_FUNC_PREEMPTTASK\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "E_FUNC_TERMINATETASK\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "E_FUNC_TASKSCHEDULER\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "E_FUNC_INITTASK\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "E_FUNC_ACTIVATETASK\0"
	.sleb128 11
	.uleb128 0x5
	.ascii "E_FUNC_TASKSTATEREQUEST\0"
	.sleb128 12
	.uleb128 0x5
	.ascii "E_FUNC_PREEMPT_TASK\0"
	.sleb128 13
	.uleb128 0x5
	.ascii "E_FUNC_OS_EXCEPTION\0"
	.sleb128 14
	.uleb128 0x5
	.ascii "E_FUNC_CREATETASK\0"
	.sleb128 15
	.uleb128 0x5
	.ascii "E_FUNC_SHUTDOWN\0"
	.sleb128 16
	.uleb128 0x5
	.ascii "E_FUNC_STACKCHECK\0"
	.sleb128 17
	.uleb128 0x5
	.ascii "E_FUNC_ISRHANDLER\0"
	.sleb128 18
	.uleb128 0x5
	.ascii "E_FUNC_STATE_HANDLER\0"
	.sleb128 19
	.byte	0
	.uleb128 0x3
	.ascii "os_sw_bugs_function_t\0"
	.byte	0x3
	.byte	0x50
	.long	0x2e2
	.uleb128 0x6
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x57
	.long	0x515
	.uleb128 0x7
	.ascii "number\0"
	.byte	0x3
	.byte	0x60
	.long	0x515
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xad
	.long	0x525
	.uleb128 0x9
	.long	0x525
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x3
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x61
	.long	0x4f3
	.uleb128 0x3
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x63
	.long	0x531
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xa
	.ascii "OS_SET_SW_BUG\0"
	.byte	0x1
	.byte	0x4
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a9
	.uleb128 0xb
	.ascii "bug_nr\0"
	.byte	0x1
	.byte	0x4
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "task_func_nr\0"
	.byte	0x1
	.byte	0x4
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.ascii "OS_GET_CURRENT_TIME\0"
	.byte	0x1
	.byte	0xb
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x5de
	.uleb128 0xb
	.ascii "time\0"
	.byte	0x1
	.byte	0xb
	.long	0x5de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x540
	.uleb128 0xc
	.ascii "OS_UpdateCurrentTime\0"
	.byte	0x1
	.byte	0x13
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x61e
	.uleb128 0xe
	.ascii "tmp_time\0"
	.byte	0x1
	.byte	0x18
	.long	0x540
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.ascii "OS_READ_AND_RESET_CURRENT_TIME\0"
	.byte	0x1
	.byte	0x1f
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x661
	.uleb128 0xb
	.ascii "timebig\0"
	.byte	0x1
	.byte	0x1f
	.long	0x5de
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.ascii "INT_DIV\0"
	.byte	0x1
	.byte	0x3a
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b3
	.uleb128 0xb
	.ascii "Quotient\0"
	.byte	0x1
	.byte	0x3a
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Dividend\0"
	.byte	0x1
	.byte	0x3a
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "Divisor\0"
	.byte	0x1
	.byte	0x3a
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x531
	.uleb128 0xa
	.ascii "INT_MUL\0"
	.byte	0x1
	.byte	0x3f
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x709
	.uleb128 0xb
	.ascii "Produkt\0"
	.byte	0x1
	.byte	0x3f
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Faktor1\0"
	.byte	0x1
	.byte	0x3f
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "Faktor2\0"
	.byte	0x1
	.byte	0x3f
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xa
	.ascii "INT_ADD\0"
	.byte	0x1
	.byte	0x44
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x79e
	.uleb128 0xb
	.ascii "Summe\0"
	.byte	0x1
	.byte	0x44
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "ErsterSummand\0"
	.byte	0x1
	.byte	0x44
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "ZweiterSummand\0"
	.byte	0x1
	.byte	0x44
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x46
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "carry\0"
	.byte	0x1
	.byte	0x47
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0xe
	.ascii "tmp_sum\0"
	.byte	0x1
	.byte	0x4b
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "INT_SUB\0"
	.byte	0x1
	.byte	0x50
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x82e
	.uleb128 0xb
	.ascii "Differenz\0"
	.byte	0x1
	.byte	0x50
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Minuend\0"
	.byte	0x1
	.byte	0x50
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "Subtrahend\0"
	.byte	0x1
	.byte	0x50
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x52
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "carry\0"
	.byte	0x1
	.byte	0x53
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0xf
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0xe
	.ascii "tmp_diff\0"
	.byte	0x1
	.byte	0x57
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x10
	.ascii "IS_LESS\0"
	.byte	0x1
	.byte	0x67
	.long	0x2d1
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x888
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x1
	.byte	0x67
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0x67
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x69
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "is_less\0"
	.byte	0x1
	.byte	0x6a
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x12
	.ascii "IS_LESS_OR_EQUAL\0"
	.byte	0x1
	.byte	0x7e
	.long	0x2d1
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x8cb
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x1
	.byte	0x7e
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0x7e
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.ascii "IS_EQUAL\0"
	.byte	0x1
	.byte	0x82
	.long	0x2d1
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x927
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x1
	.byte	0x82
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0x82
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x84
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "is_equal\0"
	.byte	0x1
	.byte	0x85
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.ascii "IS_GREATER\0"
	.byte	0x1
	.byte	0x94
	.long	0x2d1
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x987
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x1
	.byte	0x94
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0x94
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x96
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "is_greater\0"
	.byte	0x1
	.byte	0x97
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x12
	.ascii "IS_GREATER_OR_EQUAL\0"
	.byte	0x1
	.byte	0xab
	.long	0x2d1
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cd
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x1
	.byte	0xab
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0xab
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.ascii "ASSIGN\0"
	.byte	0x1
	.byte	0xaf
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa10
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0xaf
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF3
	.byte	0x1
	.byte	0xaf
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xb1
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.ascii "ASSIGN_NULL\0"
	.byte	0x1
	.byte	0xb7
	.long	LFB14
	.long	LFE14-LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4a
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0xb7
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xb9
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.ascii "ASSIGN_UINT32\0"
	.byte	0x1
	.byte	0xc0
	.long	LFB15
	.long	LFE15-LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa0
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0xc0
	.long	0x6b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.secrel32	LASF3
	.byte	0x1
	.byte	0xc0
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xc2
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0xe
	.ascii "i\0"
	.byte	0x1
	.byte	0xc3
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x10
	.ascii "get_uint32_of_4_uint8\0"
	.byte	0x1
	.byte	0xce
	.long	0x119
	.long	LFB16
	.long	LFE16-LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xaec
	.uleb128 0xb
	.ascii "ptr\0"
	.byte	0x1
	.byte	0xce
	.long	0xaec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "ret_val\0"
	.byte	0x1
	.byte	0xd0
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xad
	.uleb128 0xa
	.ascii "set_4_uint8_to_uint32\0"
	.byte	0x1
	.byte	0xdc
	.long	LFB17
	.long	LFE17-LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xb38
	.uleb128 0xb
	.ascii "ptr\0"
	.byte	0x1
	.byte	0xdc
	.long	0xaec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "value\0"
	.byte	0x1
	.byte	0xdc
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.long	0x2bd
	.long	0xb48
	.uleb128 0x9
	.long	0x525
	.byte	0xe
	.byte	0
	.uleb128 0x13
	.ascii "OS_SW_BUG\0"
	.byte	0x4
	.byte	0xe
	.long	0xb59
	.uleb128 0x14
	.long	0xb38
	.uleb128 0x13
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x4
	.byte	0x35
	.long	0x540
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
	.uleb128 0x4
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_FIRSTINC_H_ \0"
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_CONFIG_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "INTEGER_LLP64_IL32P64 1u\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "INTEGER_LP64_I32LP64 2u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "INTEGER_ILP64 3u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "INTEGER_SILP64 4u\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "INTEGER_MODEL INTEGER_LLP64_IL32P64\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "CPP_VERSION_NONE 0u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "CPP_VERSION_1998 1u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "CPP_VERSION_2003 2u\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "CPP_VERSION_2007 3u\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "CPP_VERSION_2011 4u\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "ISO_CPP_VERSION CPP_VERSION_1998\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "BIG_INT_SIZE 16u\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "NR_OF_CORES 1u\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "MCU_CLOCK_IN_HZ ((uint32)168000000u)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DYNAMIC_MEMORY_USED FALSE\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "LOOPTIME_IN_USEC ((uint32)10000u)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "HEAP_SIZE 10000u\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "MIN_BLOCK_SIZE_HEAP 8u\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "HEAP_OFFSET_FOR_SIZE 0u\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "HEAP_OFFSET_FOR_USED_SIZE 4u\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "HEAP_OFFSET_FOR_CHUNK 8u\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "OS_STACK_SIZE 0x200u\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_BASE_TYPES_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_COMMON_H_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "FALSE 0u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "TRUE 1u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "ACCEPTED 1u\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "REJECTED 0u\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "LOCAL static\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "LOCAL_INLINE static __inline__\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "GLOBAL_INLINE __inline__\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "MCU_X86 3\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "MCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "DWT_CTRL ((volatile uint32*)0xE0001000u)\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "DWT_CYCCNT ((volatile uint32*)0xE0001004u)\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "DWT_LAR ((volatile uint32*)0xE0001FB0u)\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "DISABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "ENABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "PRIVILIGE_LEVEL_SAVE_CURRENT() \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "PRIVILIGE_LEVEL_RESTORE_SAVED() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "HALT_MCU() \0"
	.byte	0x4
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_GLOBAL_H_ \0"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_CORE_H_ \0"
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_INTERRUPT_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "OS_INTERRUPT_SWI_1 asm(\"swi 1\")\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_INTERRUPT_SWI_2 asm(\"swi 2\")\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "OS_INTERRUPT_SWI_3 asm(\"swi 3\")\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "OS_INTERRUPT_SWI_4 asm(\"swi 4\")\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "OS_INTERRUPT_SWI_5 asm(\"swi 5\")\0"
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_MMU_H_ \0"
	.byte	0x4
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_TIMER_H_ \0"
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_POWER_H_ \0"
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_RAM_H_ \0"
	.byte	0x4
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_COMMON_H_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_CONFIG_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "TASK_MIN_TIME (1e0)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "NUMBER_OF_TASKS 10u\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "TASK_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "MS_PER_SEC 1000u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "USE_STATIC_CREATED_TASKS TRUE\0"
	.byte	0x4
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_INIT_TASK_SYSTEM_H_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5f
	.ascii "OS_SAVE_TASK_PTR(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "OS_GET_TASK_PTR(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x4
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STACK_H_ \0"
	.byte	0x4
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_HEAP_H_ \0"
	.byte	0x4
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_MAIN_H_ \0"
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x17
	.byte	0x4
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram_stack.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_STACK_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 26 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF1:
	.ascii "Operand2\0"
LASF2:
	.ascii "leftOperand\0"
LASF3:
	.ascii "rightOperand\0"
LASF0:
	.ascii "Operand1\0"
	.ident	"GCC: (GNU) 4.9.3"
