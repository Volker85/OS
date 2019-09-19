	.file	"os_common.c"
	.text
Ltext0:
	.globl	_OS_SET_SW_BUG
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
_OS_SET_SW_BUG:
LFB0:
	.file 1 "C:/Users/president/Desktop/sbx/input/src/os_base/os_common.c"
	.loc 1 5 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6 28
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, _OS_SW_BUG(,%eax,4)
	.loc 1 7 1
	nop
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
	.loc 1 12 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 14 4
	call	_OS_UpdateCurrentTime
	.loc 1 16 4
	movl	$_LOCAL_SYSTEM_TIME, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 18 1
	nop
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
	.loc 1 20 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 25 4
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_READ_AND_RESET_CURRENT_TIME
	.loc 1 28 4
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$_LOCAL_SYSTEM_TIME, 4(%esp)
	movl	$_LOCAL_SYSTEM_TIME, (%esp)
	call	_INT_ADD
	.loc 1 29 1
	nop
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
	.loc 1 32 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 54 4
	movl	$5, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 56 1
	nop
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
	.loc 1 59 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$120, %esp
	.loc 1 75 11
	movl	$0, -12(%ebp)
	.loc 1 79 12
	movl	$0, -16(%ebp)
	.loc 1 84 4
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 85 4
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 86 4
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 87 4
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 90 7
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_EQUAL
	.loc 1 90 6
	testb	%al, %al
	je	L8
	.loc 1 93 7
	movl	$20, 4(%esp)
	movl	$12, (%esp)
	call	_OS_SET_SW_BUG
	jmp	L5
L10:
	.loc 1 109 10
	movl	$4, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_SHIFT_LEFT
	.loc 1 110 34
	incl	-12(%ebp)
L9:
	.loc 1 107 13
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-72(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_LESS_OR_EQUAL
	.loc 1 107 12
	testb	%al, %al
	jne	L10
	.loc 1 115 17
	movl	$0, -16(%ebp)
	.loc 1 116 12
	jmp	L11
L12:
	.loc 1 118 10
	leal	-72(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_INT_SUB
	.loc 1 119 19
	incl	-16(%ebp)
L11:
	.loc 1 116 13
	leal	-72(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_LESS_OR_EQUAL
	.loc 1 116 12
	testb	%al, %al
	jne	L12
	.loc 1 122 26
	movl	-12(%ebp), %eax
	movl	$1, %edx
	movb	%al, %cl
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 123 24
	movl	-16(%ebp), %eax
	imull	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 125 7
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 128 7
	leal	-88(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-104(%ebp), %eax
	movl	%eax, (%esp)
	call	_INT_ADD
L8:
	.loc 1 96 10
	leal	-56(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_GREATER_OR_EQUAL
	.loc 1 96 9
	testb	%al, %al
	jne	L9
	.loc 1 132 4
	leal	-104(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
L5:
	.loc 1 133 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_INT_MUL
	.def	_INT_MUL;	.scl	2;	.type	32;	.endef
_INT_MUL:
LFB5:
	.loc 1 136 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 150 4
	leal	-50(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 151 4
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 168 13
	movl	$15, -12(%ebp)
	.loc 1 168 4
	jmp	L15
L18:
	.loc 1 170 16
	movl	$15, -16(%ebp)
	.loc 1 170 7
	jmp	L16
L17:
	.loc 1 172 52 discriminator 3
	movl	-12(%ebp), %edx
	.loc 1 172 51 discriminator 3
	movl	12(%ebp), %eax
	addl	%edx, %eax
	.loc 1 172 34 discriminator 3
	movb	(%eax), %al
	movzbl	%al, %edx
	.loc 1 172 97 discriminator 3
	movl	-16(%ebp), %ecx
	.loc 1 172 96 discriminator 3
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	.loc 1 172 79 discriminator 3
	movb	(%eax), %al
	movzbl	%al, %eax
	.loc 1 172 22 discriminator 3
	imulw	%dx, %ax
	movw	%ax, -18(%ebp)
	.loc 1 174 10 discriminator 3
	movzwl	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-50(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 176 44 discriminator 3
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	.loc 1 176 10 discriminator 3
	movl	%eax, 4(%esp)
	leal	-50(%ebp), %eax
	movl	%eax, (%esp)
	call	_SHIFT_LEFT
	.loc 1 178 10 discriminator 3
	leal	-50(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-34(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-34(%ebp), %eax
	movl	%eax, (%esp)
	call	_INT_ADD
	.loc 1 170 49 discriminator 3
	decl	-16(%ebp)
L16:
	.loc 1 170 7 discriminator 1
	cmpl	$0, -16(%ebp)
	jns	L17
	.loc 1 168 46 discriminator 2
	decl	-12(%ebp)
L15:
	.loc 1 168 4 discriminator 1
	cmpl	$0, -12(%ebp)
	jns	L18
	.loc 1 181 4
	leal	-34(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 182 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_INT_ADD
	.def	_INT_ADD;	.scl	2;	.type	32;	.endef
_INT_ADD:
LFB6:
	.loc 1 185 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 187 11
	movw	$0, -4(%ebp)
	.loc 1 189 12
	movb	$15, -1(%ebp)
	.loc 1 189 4
	jmp	L20
L21:
LBB2:
	.loc 1 191 53 discriminator 3
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	.loc 1 191 90 discriminator 3
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	.loc 1 191 59 discriminator 3
	addl	%eax, %edx
	.loc 1 191 14 discriminator 3
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movw	%ax, -6(%ebp)
	.loc 1 192 20 discriminator 3
	movsbl	-1(%ebp), %edx
	.loc 1 192 26 discriminator 3
	movw	-6(%ebp), %ax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movb	%cl, (%eax,%edx)
	.loc 1 193 13 discriminator 3
	movw	-6(%ebp), %ax
	movb	$0, %al
	movw	%ax, -4(%ebp)
LBE2:
	.loc 1 189 43 discriminator 3
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L20:
	.loc 1 189 4 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L21
	.loc 1 195 1
	nop
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
	.loc 1 197 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 199 11
	movw	$0, -6(%ebp)
	.loc 1 201 12
	movb	$15, -1(%ebp)
	.loc 1 201 4
	jmp	L23
L26:
LBB3:
	.loc 1 203 14
	movw	$0, -4(%ebp)
	.loc 1 204 25
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %ecx
	.loc 1 204 54
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	.loc 1 204 60
	movzwl	-6(%ebp), %eax
	addl	%edx, %eax
	.loc 1 204 9
	cmpl	%eax, %ecx
	jl	L24
	.loc 1 206 44
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	.loc 1 206 78
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	.loc 1 206 50
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 206 19
	subw	-6(%ebp), %ax
	movw	%ax, -4(%ebp)
	jmp	L25
L24:
	.loc 1 208 31
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %eax
	.loc 1 208 36
	leal	256(%eax), %ecx
	.loc 1 208 68
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	.loc 1 208 74
	movzwl	-6(%ebp), %eax
	addl	%edx, %eax
	.loc 1 208 14
	cmpl	%eax, %ecx
	jb	L25
	.loc 1 210 51
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	.loc 1 210 85
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %ecx
	movb	(%ecx,%eax), %al
	movzbl	%al, %eax
	.loc 1 210 57
	subl	%eax, %edx
	movl	%edx, %eax
	.loc 1 210 91
	subw	-6(%ebp), %ax
	.loc 1 210 19
	addl	$256, %eax
	movw	%ax, -4(%ebp)
L25:
	.loc 1 216 24 discriminator 2
	movsbl	-1(%ebp), %edx
	.loc 1 216 30 discriminator 2
	movl	-4(%ebp), %eax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movb	%cl, (%eax,%edx)
LBE3:
	.loc 1 201 43 discriminator 2
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L23:
	.loc 1 201 4 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L26
	.loc 1 218 1
	nop
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
	.loc 1 220 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 222 14
	movb	$0, -2(%ebp)
	.loc 1 223 12
	movb	$0, -1(%ebp)
	.loc 1 223 4
	jmp	L28
L32:
	.loc 1 225 26
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	.loc 1 225 50
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 225 9
	cmpb	%al, %cl
	jnb	L29
	.loc 1 227 18
	movb	$1, -2(%ebp)
	.loc 1 228 10
	jmp	L30
L29:
	.loc 1 230 32
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	.loc 1 230 56
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 230 15
	cmpb	%al, %cl
	jbe	L31
	.loc 1 232 18
	movb	$0, -2(%ebp)
	.loc 1 233 10
	jmp	L30
L31:
	.loc 1 223 40 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L28:
	.loc 1 223 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L32
L30:
	.loc 1 240 11
	movb	-2(%ebp), %al
	.loc 1 241 1
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
	.loc 1 243 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 244 11
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_LESS
	.loc 1 244 38
	testb	%al, %al
	jne	L35
	.loc 1 244 41 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_EQUAL
	.loc 1 244 38 discriminator 2
	testb	%al, %al
	je	L36
L35:
	.loc 1 244 38 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	L37
L36:
	.loc 1 244 38 discriminator 4
	movl	$0, %eax
L37:
	.loc 1 245 1 is_stmt 1 discriminator 6
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
	.loc 1 247 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 249 14
	movb	$1, -2(%ebp)
	.loc 1 250 12
	movb	$0, -1(%ebp)
	.loc 1 250 4
	jmp	L40
L43:
	.loc 1 252 26
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	.loc 1 252 51
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 252 9
	cmpb	%al, %cl
	je	L41
	.loc 1 254 19
	movb	$0, -2(%ebp)
	.loc 1 255 10
	jmp	L42
L41:
	.loc 1 250 41 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L40:
	.loc 1 250 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L43
L42:
	.loc 1 262 11
	movb	-2(%ebp), %al
	.loc 1 263 1
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
	.loc 1 265 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 267 14
	movb	$0, -2(%ebp)
	.loc 1 268 12
	movb	$0, -1(%ebp)
	.loc 1 268 4
	jmp	L46
L50:
	.loc 1 270 26
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	.loc 1 270 50
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 270 9
	cmpb	%al, %cl
	jnb	L47
	.loc 1 272 21
	movb	$0, -2(%ebp)
	.loc 1 273 10
	jmp	L48
L47:
	.loc 1 275 32
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	.loc 1 275 56
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 275 15
	cmpb	%al, %cl
	jbe	L49
	.loc 1 277 21
	movb	$1, -2(%ebp)
	.loc 1 278 10
	jmp	L48
L49:
	.loc 1 268 41 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L46:
	.loc 1 268 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L50
L48:
	.loc 1 285 11
	movb	-2(%ebp), %al
	.loc 1 286 1
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
	.loc 1 288 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 289 11
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_GREATER
	.loc 1 289 41
	testb	%al, %al
	jne	L53
	.loc 1 289 44 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IS_EQUAL
	.loc 1 289 41 discriminator 2
	testb	%al, %al
	je	L54
L53:
	.loc 1 289 41 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	L55
L54:
	.loc 1 289 41 discriminator 4
	movl	$0, %eax
L55:
	.loc 1 290 1 is_stmt 1 discriminator 6
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
	.loc 1 292 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 294 13
	movb	$0, -1(%ebp)
	.loc 1 294 4
	jmp	L58
L59:
	.loc 1 296 54 discriminator 3
	movzbl	-1(%ebp), %edx
	.loc 1 296 26 discriminator 3
	movzbl	-1(%ebp), %eax
	.loc 1 296 54 discriminator 3
	movl	12(%ebp), %ecx
	movb	(%ecx,%edx), %cl
	.loc 1 296 32 discriminator 3
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	.loc 1 294 42 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L58:
	.loc 1 294 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L59
	.loc 1 298 1
	nop
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
	.loc 1 300 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 302 13
	movb	$0, -1(%ebp)
	.loc 1 302 4
	jmp	L61
L62:
	.loc 1 304 26 discriminator 3
	movzbl	-1(%ebp), %eax
	.loc 1 304 32 discriminator 3
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
	.loc 1 302 42 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L61:
	.loc 1 302 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L62
	.loc 1 306 1
	nop
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
	.loc 1 309 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 312 13
	movb	$0, -1(%ebp)
	.loc 1 312 4
	jmp	L64
L65:
	.loc 1 314 26 discriminator 3
	movzbl	-1(%ebp), %eax
	.loc 1 314 32 discriminator 3
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
	.loc 1 312 42 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L64:
	.loc 1 312 4 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L65
	.loc 1 317 13
	movb	$15, -1(%ebp)
	.loc 1 317 34
	movb	$0, -2(%ebp)
	.loc 1 317 4
	jmp	L66
L67:
	.loc 1 319 47 discriminator 3
	movzbl	-2(%ebp), %eax
	movl	12(%ebp), %edx
	movb	%al, %cl
	shrl	%cl, %edx
	.loc 1 319 26 discriminator 3
	movzbl	-1(%ebp), %eax
	.loc 1 319 32 discriminator 3
	movb	%dl, %cl
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	.loc 1 317 81 discriminator 3
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
	.loc 1 317 86 discriminator 3
	movb	-2(%ebp), %al
	incl	%eax
	movb	%al, -2(%ebp)
L66:
	.loc 1 317 4 discriminator 1
	cmpb	$11, -1(%ebp)
	ja	L67
	.loc 1 321 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_SHIFT_LEFT
	.def	_SHIFT_LEFT;	.scl	2;	.type	32;	.endef
_SHIFT_LEFT:
LFB16:
	.loc 1 323 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$60, %esp
	.loc 1 328 4
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 329 4
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 332 6
	cmpl	$24, 12(%ebp)
	jbe	L69
	.loc 1 334 7
	movl	$21, 4(%esp)
	movl	$13, (%esp)
	call	_OS_SET_SW_BUG
	jmp	L68
L69:
	.loc 1 337 13
	movl	$15, -4(%ebp)
	.loc 1 337 4
	jmp	L71
L72:
	.loc 1 339 7 discriminator 3
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 340 39 discriminator 3
	movl	-4(%ebp), %eax
	.loc 1 340 38 discriminator 3
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %al
	.loc 1 340 16 discriminator 3
	movzbl	%al, %edx
	.loc 1 340 13 discriminator 3
	movl	12(%ebp), %eax
	movb	%al, %cl
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -8(%ebp)
	.loc 1 341 24 discriminator 3
	movl	-4(%ebp), %eax
	.loc 1 341 42 discriminator 3
	movl	-8(%ebp), %edx
	movb	%dl, -24(%ebp,%eax)
	.loc 1 342 51 discriminator 3
	movl	-8(%ebp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.loc 1 342 24 discriminator 3
	movl	-4(%ebp), %eax
	.loc 1 342 35 discriminator 3
	incl	%eax
	.loc 1 342 42 discriminator 3
	movb	%dl, -24(%ebp,%eax)
	.loc 1 343 51 discriminator 3
	movl	-8(%ebp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	.loc 1 343 24 discriminator 3
	movl	-4(%ebp), %eax
	.loc 1 343 35 discriminator 3
	addl	$2, %eax
	.loc 1 343 42 discriminator 3
	movb	%dl, -24(%ebp,%eax)
	.loc 1 344 51 discriminator 3
	movl	-8(%ebp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	.loc 1 344 24 discriminator 3
	movl	-4(%ebp), %eax
	.loc 1 344 35 discriminator 3
	addl	$3, %eax
	.loc 1 344 42 discriminator 3
	movb	%dl, -24(%ebp,%eax)
	.loc 1 345 7 discriminator 3
	leal	-24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_INT_ADD
	.loc 1 337 45 discriminator 3
	decl	-4(%ebp)
L71:
	.loc 1 337 4 discriminator 1
	cmpl	$0, -4(%ebp)
	jns	L72
	.loc 1 347 4
	leal	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN
L68:
	.loc 1 348 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_get_uint32_of_4_uint8
	.def	_get_uint32_of_4_uint8;	.scl	2;	.type	32;	.endef
_get_uint32_of_4_uint8:
LFB17:
	.loc 1 351 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 352 11
	movl	$0, -4(%ebp)
	.loc 1 354 25
	movl	8(%ebp), %eax
	movb	(%eax), %al
	.loc 1 354 16
	movzbl	%al, %eax
	.loc 1 354 30
	sall	$24, %eax
	.loc 1 354 12
	addl	%eax, -4(%ebp)
	.loc 1 355 7
	incl	8(%ebp)
	.loc 1 356 25
	movl	8(%ebp), %eax
	movb	(%eax), %al
	.loc 1 356 16
	movzbl	%al, %eax
	.loc 1 356 30
	sall	$16, %eax
	.loc 1 356 12
	addl	%eax, -4(%ebp)
	.loc 1 357 7
	incl	8(%ebp)
	.loc 1 358 25
	movl	8(%ebp), %eax
	movb	(%eax), %al
	.loc 1 358 16
	movzbl	%al, %eax
	.loc 1 358 30
	sall	$8, %eax
	.loc 1 358 12
	addl	%eax, -4(%ebp)
	.loc 1 359 7
	incl	8(%ebp)
	.loc 1 360 25
	movl	8(%ebp), %eax
	movb	(%eax), %al
	.loc 1 360 30
	movzbl	%al, %eax
	.loc 1 360 12
	addl	%eax, -4(%ebp)
	.loc 1 362 11
	movl	-4(%ebp), %eax
	.loc 1 363 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_set_4_uint8_to_uint32
	.def	_set_4_uint8_to_uint32;	.scl	2;	.type	32;	.endef
_set_4_uint8_to_uint32:
LFB18:
	.loc 1 365 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 366 18
	movl	12(%ebp), %eax
	shrl	$24, %eax
	.loc 1 366 9
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 367 7
	incl	8(%ebp)
	.loc 1 368 18
	movl	12(%ebp), %eax
	shrl	$16, %eax
	.loc 1 368 9
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 369 7
	incl	8(%ebp)
	.loc 1 370 18
	movl	12(%ebp), %eax
	shrl	$8, %eax
	.loc 1 370 9
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 371 7
	incl	8(%ebp)
	.loc 1 372 9
	movl	12(%ebp), %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	.loc 1 373 1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
Letext0:
	.file 2 "c:/users/president/desktop/sbx/input/src/os_base/os_base_types.h"
	.file 3 "c:/users/president/desktop/sbx/input/src/os_base/os_common.h"
	.file 4 "c:/users/president/desktop/sbx/input/src/os_sim/lld_core.h"
	.file 5 "c:/users/president/desktop/sbx/input/src/os_base/os_task_common.h"
	.file 6 "C:/Users/president/Desktop/sbx/input/src/os_base/os_main.h"
	.file 7 "c:/users/president/desktop/sbx/input/src/os_base/os_ram.h"
	.file 8 "c:/users/president/desktop/sbx/input/src/os_base/os_ram_stack.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x1af6
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 8.2.0 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_common.c\0"
	.ascii "C:\\Program\\MinGW\\bin\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x2
	.byte	0x11
	.byte	0x18
	.long	0xb2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.ascii "uint8\0"
	.byte	0x2
	.byte	0x15
	.byte	0x18
	.long	0xb2
	.uleb128 0x2
	.ascii "sint8\0"
	.byte	0x2
	.byte	0x16
	.byte	0x18
	.long	0xc3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.ascii "uint16\0"
	.byte	0x2
	.byte	0x19
	.byte	0x18
	.long	0xee
	.uleb128 0x2
	.ascii "unsigned_int32_t\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.long	0x139
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.ascii "uint32\0"
	.byte	0x2
	.byte	0x1d
	.byte	0x18
	.long	0x139
	.uleb128 0x4
	.long	0x15a
	.uleb128 0x5
	.long	0x15a
	.uleb128 0x2
	.ascii "sint32\0"
	.byte	0x2
	.byte	0x1e
	.byte	0x18
	.long	0x14e
	.uleb128 0x6
	.ascii "os_sw_bugs_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x35c
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.long	0x35c
	.uleb128 0x7
	.ascii "E_OS_BUG_NO_BUG\0"
	.byte	0
	.uleb128 0x7
	.ascii "E_OS_BUG_TASKSTATE_REQUEST_DENIED\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "E_OS_BUG_NULL_POINTER\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\0"
	.byte	0x3
	.uleb128 0x7
	.ascii "E_OS_BUG_TASK_UNSPECIFIED\0"
	.byte	0x4
	.uleb128 0x7
	.ascii "E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\0"
	.byte	0x5
	.uleb128 0x7
	.ascii "E_OS_BUG_EXCEPTION_ABORTPREFETCH\0"
	.byte	0x6
	.uleb128 0x7
	.ascii "E_OS_BUG_EXCEPTION_ABORTDATA\0"
	.byte	0x7
	.uleb128 0x7
	.ascii "E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\0"
	.byte	0x8
	.uleb128 0x7
	.ascii "E_OS_BUG_CRITICAL_STACK_USAGE\0"
	.byte	0x9
	.uleb128 0x7
	.ascii "E_OS_BUG_SVC_NUMBER_MISSING\0"
	.byte	0xa
	.uleb128 0x7
	.ascii "E_OS_BUG_MAX_WAIT_TIME_REACHED\0"
	.byte	0xb
	.uleb128 0x7
	.ascii "E_OS_BUG_DIVISION_BY_ZERO\0"
	.byte	0xc
	.uleb128 0x7
	.ascii "E_OS_BUG_BIT_SHIFT_OUT_OF_RANGE\0"
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.ascii "os_sw_bugs_t\0"
	.byte	0x3
	.byte	0x3f
	.byte	0x1b
	.long	0x182
	.uleb128 0x4
	.long	0x36c
	.uleb128 0x2
	.ascii "boolean_t\0"
	.byte	0x3
	.byte	0x40
	.byte	0xf
	.long	0xd2
	.uleb128 0x6
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x35c
	.byte	0x3
	.byte	0x43
	.byte	0x6
	.long	0x5b6
	.uleb128 0x7
	.ascii "E_FUNC_NOFUNCTION\0"
	.byte	0
	.uleb128 0x7
	.ascii "E_FUNC_SAVETASKENVIRONMENT\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "E_FUNC_RESTORETASKENVIRONMENT\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "E_FUNC_CREATETASKENVIRONMENT\0"
	.byte	0x3
	.uleb128 0x7
	.ascii "E_FUNC_DELETETASKENVIRONMENT\0"
	.byte	0x4
	.uleb128 0x7
	.ascii "E_FUNC_INITTASKENVIRONMENT\0"
	.byte	0x5
	.uleb128 0x7
	.ascii "E_FUNC_STARTTASK\0"
	.byte	0x6
	.uleb128 0x7
	.ascii "E_FUNC_PREEMPTTASK\0"
	.byte	0x7
	.uleb128 0x7
	.ascii "E_FUNC_TERMINATETASK\0"
	.byte	0x8
	.uleb128 0x7
	.ascii "E_FUNC_TASKSCHEDULER\0"
	.byte	0x9
	.uleb128 0x7
	.ascii "E_FUNC_INITTASK\0"
	.byte	0xa
	.uleb128 0x7
	.ascii "E_FUNC_ACTIVATETASK\0"
	.byte	0xb
	.uleb128 0x7
	.ascii "E_FUNC_TASKSTATEREQUEST\0"
	.byte	0xc
	.uleb128 0x7
	.ascii "E_FUNC_PREEMPT_TASK\0"
	.byte	0xd
	.uleb128 0x7
	.ascii "E_FUNC_OS_EXCEPTION\0"
	.byte	0xe
	.uleb128 0x7
	.ascii "E_FUNC_CREATETASK\0"
	.byte	0xf
	.uleb128 0x7
	.ascii "E_FUNC_SHUTDOWN\0"
	.byte	0x10
	.uleb128 0x7
	.ascii "E_FUNC_STACKCHECK\0"
	.byte	0x11
	.uleb128 0x7
	.ascii "E_FUNC_ISRHANDLER\0"
	.byte	0x12
	.uleb128 0x7
	.ascii "E_FUNC_STATE_HANDLER\0"
	.byte	0x13
	.uleb128 0x7
	.ascii "E_FUNC_INTDIV\0"
	.byte	0x14
	.uleb128 0x7
	.ascii "E_FUNC_SHIFT_LEFT\0"
	.byte	0x15
	.byte	0
	.uleb128 0x2
	.ascii "os_sw_bugs_function_t\0"
	.byte	0x3
	.byte	0x5c
	.byte	0x24
	.long	0x398
	.uleb128 0x8
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x63
	.byte	0x10
	.long	0x5f8
	.uleb128 0x9
	.ascii "number\0"
	.byte	0x3
	.byte	0x6c
	.byte	0xa
	.long	0x5f8
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0xd2
	.long	0x608
	.uleb128 0xb
	.long	0x35c
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.long	0x5d4
	.uleb128 0x5
	.long	0x608
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.long	0x608
	.uleb128 0x6
	.ascii "privilige_mode_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x35c
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x6cd
	.uleb128 0x7
	.ascii "E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\0"
	.byte	0
	.uleb128 0x7
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x4
	.byte	0x16
	.byte	0x20
	.long	0x62f
	.uleb128 0x6
	.ascii "task_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x35c
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x74a
	.uleb128 0x7
	.ascii "E_TASK_UNSPECIFIED\0"
	.byte	0
	.uleb128 0x7
	.ascii "E_TASK_SUSPENDED\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "E_TASK_READY\0"
	.byte	0x2
	.uleb128 0x7
	.ascii "E_TASK_RUNNING\0"
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.long	0x6e6
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.long	0x770
	.uleb128 0xc
	.byte	0x4
	.long	0x776
	.uleb128 0xd
	.long	0x781
	.uleb128 0xe
	.long	0x781
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.long	0x7a1
	.uleb128 0xc
	.byte	0x4
	.long	0x7a7
	.uleb128 0x10
	.long	0x9a
	.long	0x7bb
	.uleb128 0xe
	.long	0x781
	.uleb128 0xe
	.long	0x74a
	.byte	0
	.uleb128 0x8
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.long	0x7f6
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.long	0x61d
	.byte	0
	.uleb128 0x9
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.long	0x61d
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.long	0x7bb
	.uleb128 0x8
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.long	0xab7
	.uleb128 0x12
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.long	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.long	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.ascii "idle_task\0"
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.long	0x35c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.ascii "free\0"
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.long	0x35c
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x9
	.ascii "nr_of_ins_allowed\0"
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.long	0x9a
	.byte	0x4
	.uleb128 0x9
	.ascii "nr_of_ins_activated\0"
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.long	0x9a
	.byte	0x5
	.uleb128 0x9
	.ascii "wait_act_until\0"
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.long	0x61d
	.byte	0x6
	.uleb128 0x9
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.long	0x61d
	.byte	0x16
	.uleb128 0x9
	.ascii "time_to_prio_inc\0"
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.long	0x61d
	.byte	0x26
	.uleb128 0x9
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.long	0x15a
	.byte	0x38
	.uleb128 0x9
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.long	0x61d
	.byte	0x3c
	.uleb128 0x11
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.long	0x61d
	.byte	0x4c
	.uleb128 0x9
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.long	0x61d
	.byte	0x5c
	.uleb128 0x9
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.long	0x9a
	.byte	0x6c
	.uleb128 0x9
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.long	0x9a
	.byte	0x6d
	.uleb128 0x9
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.long	0x120
	.byte	0x70
	.uleb128 0x9
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.long	0x75f
	.byte	0x74
	.uleb128 0x9
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.long	0x783
	.byte	0x78
	.uleb128 0x9
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.long	0x74a
	.byte	0x7c
	.uleb128 0x9
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.long	0xab7
	.byte	0x80
	.uleb128 0x9
	.ascii "eax\0"
	.byte	0x5
	.byte	0x36
	.byte	0x15
	.long	0x120
	.byte	0x84
	.uleb128 0x9
	.ascii "ebx\0"
	.byte	0x5
	.byte	0x37
	.byte	0x15
	.long	0x120
	.byte	0x88
	.uleb128 0x9
	.ascii "ecx\0"
	.byte	0x5
	.byte	0x38
	.byte	0x15
	.long	0x120
	.byte	0x8c
	.uleb128 0x9
	.ascii "edx\0"
	.byte	0x5
	.byte	0x39
	.byte	0x15
	.long	0x120
	.byte	0x90
	.uleb128 0x9
	.ascii "p_stack_pointer\0"
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.long	0xabd
	.byte	0x94
	.uleb128 0x9
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.long	0xabd
	.byte	0x98
	.uleb128 0x9
	.ascii "p_stack_pointer_start\0"
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.long	0xabd
	.byte	0x9c
	.uleb128 0x9
	.ascii "stack_size\0"
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.long	0x120
	.byte	0xa0
	.uleb128 0x9
	.ascii "p_stack_pointer_end\0"
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.long	0xabd
	.byte	0xa4
	.uleb128 0x9
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.long	0x6cd
	.byte	0xa8
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x7f6
	.uleb128 0xc
	.byte	0x4
	.long	0x9a
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.long	0x80b
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.long	0xae7
	.uleb128 0xc
	.byte	0x4
	.long	0xac3
	.uleb128 0xa
	.long	0xae7
	.long	0xafd
	.uleb128 0xb
	.long	0x35c
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_PTR\0"
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.long	0xaed
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.long	0x61d
	.uleb128 0x6
	.ascii "os_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x35c
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.long	0xb78
	.uleb128 0x7
	.ascii "OS_STATE_INIT\0"
	.byte	0
	.uleb128 0x7
	.ascii "OS_STATE_RUNNING\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "OS_STATE_SHUTDOWN\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "os_state_t\0"
	.byte	0x6
	.byte	0xa
	.byte	0x19
	.long	0xb27
	.uleb128 0x4
	.long	0xb78
	.uleb128 0xa
	.long	0x9a
	.long	0xba1
	.uleb128 0x14
	.long	0x35c
	.word	0x270f
	.byte	0
	.uleb128 0x13
	.ascii "HEAP\0"
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.long	0xb90
	.uleb128 0xa
	.long	0x381
	.long	0xbbe
	.uleb128 0xb
	.long	0x35c
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.long	0xbae
	.uleb128 0x13
	.ascii "OS_SW_BUG\0"
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.long	0xbbe
	.uleb128 0x13
	.ascii "OS_STATE\0"
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.long	0xb8b
	.uleb128 0x13
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "DBG_CURR_VAL\0"
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "TASK1_CALL_NR\0"
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "TASK2_CALL_NR\0"
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "TASK3_CALL_NR\0"
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "TASK4_CALL_NR\0"
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.long	0x169
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_ADDR\0"
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.long	0xe00
	.uleb128 0xc
	.byte	0x4
	.long	0x169
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_POS\0"
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK0_STACK_ADDR\0"
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.long	0xe00
	.uleb128 0x13
	.ascii "TASK0_STACK_POS\0"
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK0_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK1_STACK_ADDR\0"
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.long	0xe00
	.uleb128 0x13
	.ascii "TASK1_STACK_POS\0"
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK1_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK2_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.long	0xe00
	.uleb128 0x13
	.ascii "TASK2_STACK_POS\0"
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK2_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK3_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.long	0xe00
	.uleb128 0x13
	.ascii "TASK3_STACK_POS\0"
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK3_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK4_STACK_ADDR\0"
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.long	0xe00
	.uleb128 0x13
	.ascii "TASK4_STACK_POS\0"
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.long	0x169
	.uleb128 0x13
	.ascii "TASK4_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.long	0x169
	.uleb128 0xa
	.long	0x9a
	.long	0xff4
	.uleb128 0x14
	.long	0x35c
	.word	0x7cf
	.byte	0
	.uleb128 0x13
	.ascii "TASK0_STACK\0"
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.long	0xfe3
	.uleb128 0x13
	.ascii "TASK1_STACK\0"
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.long	0xfe3
	.uleb128 0x13
	.ascii "TASK2_STACK\0"
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.long	0xfe3
	.uleb128 0x13
	.ascii "TASK3_STACK\0"
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.long	0xfe3
	.uleb128 0x13
	.ascii "TASK4_STACK\0"
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.long	0xfe3
	.uleb128 0x13
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.long	0xb0e
	.uleb128 0xa
	.long	0xad2
	.long	0x1082
	.uleb128 0xb
	.long	0x35c
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.long	0x1072
	.uleb128 0x13
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.long	0x10c7
	.uleb128 0xc
	.byte	0x4
	.long	0xad2
	.uleb128 0xa
	.long	0xac3
	.long	0x10dd
	.uleb128 0xb
	.long	0x35c
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.long	0x10cd
	.uleb128 0xa
	.long	0xac3
	.long	0x1104
	.uleb128 0xb
	.long	0x35c
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "RUNNING_TASK\0"
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.long	0x10f4
	.uleb128 0x13
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.long	0x10f4
	.uleb128 0x13
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.long	0x9a
	.uleb128 0x13
	.ascii "TASK_0_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.long	0xac3
	.uleb128 0x13
	.ascii "TASK_1_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.long	0xac3
	.uleb128 0x13
	.ascii "TASK_2_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.long	0xac3
	.uleb128 0x13
	.ascii "TASK_3_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.long	0xac3
	.uleb128 0x13
	.ascii "TASK_GROUP_1\0"
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.long	0x7f6
	.uleb128 0x13
	.ascii "TASK_GROUP_2\0"
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.long	0x7f6
	.uleb128 0x13
	.ascii "TASK_GROUP_3\0"
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.long	0x7f6
	.uleb128 0x13
	.ascii "TASK_GROUP_4\0"
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.long	0x7f6
	.uleb128 0x13
	.ascii "TASK_GROUP_5\0"
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.long	0x7f6
	.uleb128 0x13
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.long	0xae7
	.uleb128 0x13
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.long	0x74a
	.uleb128 0x13
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.long	0x74a
	.uleb128 0x13
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.long	0xb8b
	.uleb128 0x13
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.long	0x61d
	.uleb128 0xa
	.long	0x9a
	.long	0x12c7
	.uleb128 0x14
	.long	0x35c
	.word	0x3ff
	.byte	0
	.uleb128 0x13
	.ascii "OS_MAIN_STACK\0"
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.long	0x12b6
	.uleb128 0x15
	.ascii "set_4_uint8_to_uint32\0"
	.byte	0x1
	.word	0x16c
	.byte	0x6
	.long	LFB18
	.long	LFE18-LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1329
	.uleb128 0x16
	.ascii "ptr\0"
	.byte	0x1
	.word	0x16c
	.byte	0x23
	.long	0x1329
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "value\0"
	.byte	0x1
	.word	0x16c
	.byte	0x2f
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0xd2
	.uleb128 0x17
	.ascii "get_uint32_of_4_uint8\0"
	.byte	0x1
	.word	0x15e
	.byte	0x8
	.long	0x15a
	.long	LFB17
	.long	LFE17-LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1381
	.uleb128 0x16
	.ascii "ptr\0"
	.byte	0x1
	.word	0x15e
	.byte	0x25
	.long	0x1329
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "ret_val\0"
	.byte	0x1
	.word	0x160
	.byte	0xb
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x19
	.ascii "SHIFT_LEFT\0"
	.byte	0x1
	.word	0x142
	.byte	0x6
	.long	LFB16
	.long	LFE16-LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x141c
	.uleb128 0x16
	.ascii "number\0"
	.byte	0x1
	.word	0x142
	.byte	0x1a
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.ascii "amount_bits_shift\0"
	.byte	0x1
	.word	0x142
	.byte	0x29
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "tmpBigInt\0"
	.byte	0x1
	.word	0x144
	.byte	0xc
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.ascii "result\0"
	.byte	0x1
	.word	0x144
	.byte	0x17
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.ascii "tmp32\0"
	.byte	0x1
	.word	0x145
	.byte	0xc
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x18
	.ascii "pos\0"
	.byte	0x1
	.word	0x146
	.byte	0xc
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x608
	.uleb128 0x15
	.ascii "ASSIGN_UINT32\0"
	.byte	0x1
	.word	0x134
	.byte	0x6
	.long	LFB15
	.long	LFE15-LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1482
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x134
	.byte	0x1d
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x134
	.byte	0x37
	.long	0x16e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "pos\0"
	.byte	0x1
	.word	0x136
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x1
	.word	0x137
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x15
	.ascii "ASSIGN_NULL\0"
	.byte	0x1
	.word	0x12b
	.byte	0x6
	.long	LFB14
	.long	LFE14-LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c2
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x12b
	.byte	0x1b
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "pos\0"
	.byte	0x1
	.word	0x12d
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x15
	.ascii "ASSIGN\0"
	.byte	0x1
	.word	0x123
	.byte	0x6
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x150d
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x123
	.byte	0x16
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x123
	.byte	0x32
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "pos\0"
	.byte	0x1
	.word	0x125
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x618
	.uleb128 0x1b
	.ascii "IS_GREATER_OR_EQUAL\0"
	.byte	0x1
	.word	0x11f
	.byte	0xb
	.long	0x386
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x155f
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1
	.word	0x11f
	.byte	0x2e
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x11f
	.byte	0x47
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x17
	.ascii "IS_GREATER\0"
	.byte	0x1
	.word	0x108
	.byte	0xb
	.long	0x386
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c9
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1
	.word	0x108
	.byte	0x25
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x108
	.byte	0x3e
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.ascii "pos\0"
	.byte	0x1
	.word	0x10a
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.ascii "is_greater\0"
	.byte	0x1
	.word	0x10b
	.byte	0xe
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x1c
	.ascii "IS_EQUAL\0"
	.byte	0x1
	.byte	0xf6
	.byte	0xb
	.long	0x386
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x162a
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1
	.byte	0xf6
	.byte	0x23
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.byte	0xf6
	.byte	0x3c
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.ascii "pos\0"
	.byte	0x1
	.byte	0xf8
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.ascii "is_equal\0"
	.byte	0x1
	.byte	0xf9
	.byte	0xe
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x1f
	.ascii "IS_LESS_OR_EQUAL\0"
	.byte	0x1
	.byte	0xf2
	.byte	0xb
	.long	0x386
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1670
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1
	.byte	0xf2
	.byte	0x2b
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.byte	0xf2
	.byte	0x44
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1c
	.ascii "IS_LESS\0"
	.byte	0x1
	.byte	0xdb
	.byte	0xb
	.long	0x386
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x16cf
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1
	.byte	0xdb
	.byte	0x22
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.byte	0xdb
	.byte	0x3b
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.ascii "pos\0"
	.byte	0x1
	.byte	0xdd
	.byte	0xa
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.ascii "is_less\0"
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.long	0x386
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x20
	.ascii "INT_SUB\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x6
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1766
	.uleb128 0x21
	.ascii "Differenz\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x17
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.ascii "Minuend\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x31
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.ascii "Subtrahend\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x49
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.ascii "pos\0"
	.byte	0x1
	.byte	0xc6
	.byte	0xa
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.ascii "carry\0"
	.byte	0x1
	.byte	0xc7
	.byte	0xb
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x22
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0x1e
	.ascii "tmp_diff\0"
	.byte	0x1
	.byte	0xcb
	.byte	0xe
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x20
	.ascii "INT_ADD\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1802
	.uleb128 0x21
	.ascii "Summe\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x17
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.ascii "ErsterSummand\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x2d
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.ascii "ZweiterSummand\0"
	.byte	0x1
	.byte	0xb8
	.byte	0x4b
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.ascii "pos\0"
	.byte	0x1
	.byte	0xba
	.byte	0xa
	.long	0xe0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.ascii "carry\0"
	.byte	0x1
	.byte	0xbb
	.byte	0xb
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x22
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x1e
	.ascii "tmp_sum\0"
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii "INT_MUL\0"
	.byte	0x1
	.byte	0x87
	.byte	0x6
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x18bb
	.uleb128 0x21
	.ascii "Produkt\0"
	.byte	0x1
	.byte	0x87
	.byte	0x17
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.ascii "Faktor1\0"
	.byte	0x1
	.byte	0x87
	.byte	0x2f
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.ascii "Faktor2\0"
	.byte	0x1
	.byte	0x87
	.byte	0x47
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.ascii "result\0"
	.byte	0x1
	.byte	0x92
	.byte	0xc
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x1e
	.ascii "local_tmp_bigInt\0"
	.byte	0x1
	.byte	0x92
	.byte	0x14
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x1e
	.ascii "pos1\0"
	.byte	0x1
	.byte	0x93
	.byte	0xb
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.ascii "pos2\0"
	.byte	0x1
	.byte	0x93
	.byte	0x11
	.long	0x173
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii "local_tmp16\0"
	.byte	0x1
	.byte	0x94
	.byte	0xb
	.long	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.uleb128 0x23
	.ascii "INT_DIV\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f4
	.uleb128 0x21
	.ascii "Quotient\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x17
	.long	0x141c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.ascii "Dividend\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x30
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.ascii "Divisor\0"
	.byte	0x1
	.byte	0x3a
	.byte	0x49
	.long	0x150d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.ascii "nibble_shift_left_amount\0"
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.ascii "local_zero\0"
	.byte	0x1
	.byte	0x4c
	.byte	0xc
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.ascii "tmp_Dividend\0"
	.byte	0x1
	.byte	0x4d
	.byte	0xc
	.long	0x608
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.ascii "tmp_Divisor\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x1a
	.long	0x608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1e
	.ascii "rest\0"
	.byte	0x1
	.byte	0x4e
	.byte	0xc
	.long	0x608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1e
	.ascii "local_cnt\0"
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii "one_shifted_nibble\0"
	.byte	0x1
	.byte	0x50
	.byte	0xb
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.ascii "u32_teilergebnis\0"
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.long	0x15a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.ascii "teilergebnis\0"
	.byte	0x1
	.byte	0x52
	.byte	0xc
	.long	0x608
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x23
	.ascii "OS_READ_AND_RESET_CURRENT_TIME\0"
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a39
	.uleb128 0x21
	.ascii "timebig\0"
	.byte	0x1
	.byte	0x1f
	.byte	0x30
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x61d
	.uleb128 0x23
	.ascii "OS_UpdateCurrentTime\0"
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a7b
	.uleb128 0x1e
	.ascii "tmp_time\0"
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.long	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "OS_GET_CURRENT_TIME\0"
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab2
	.uleb128 0x21
	.ascii "time\0"
	.byte	0x1
	.byte	0xb
	.byte	0x25
	.long	0x1a39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.ascii "OS_SET_SW_BUG\0"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.ascii "bug_nr\0"
	.byte	0x1
	.byte	0x4
	.byte	0x21
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.ascii "task_func_nr\0"
	.byte	0x1
	.byte	0x4
	.byte	0x3f
	.long	0x5b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x16
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
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x34
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
	.uleb128 0x8
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.ascii "__GNUC__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"8.2.0\"\0"
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
	.ascii "__GXX_ABI_VERSION 1013\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## LL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## ULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffU\0"
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
	.ascii "__FLT_EVAL_METHOD_TS_18661_3__ 2\0"
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
	.ascii "__FLT_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750796873653722224568e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F\0"
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
	.ascii "__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)\0"
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
	.ascii "__LDBL_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L\0"
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
	.ascii "__FLT32_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MANT_DIG__ 113\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DIG__ 33\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DECIMAL_DIG__ 36\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_QUIET_NAN__ 1\0"
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
	.ascii "__SIZEOF_FLOAT80__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__tune_i386__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
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
	.file 9 "C:/Users/president/Desktop/sbx/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_FIRSTINC_H_ \0"
	.file 10 "c:/users/president/desktop/sbx/input/src/os_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
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
	.ascii "OS_MAIN_STACK_SIZE 0x400u\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "OS_PROCESS_STACK_TASK1_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "OS_PROCESS_STACK_TASK2_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "OS_PROCESS_STACK_TASK3_SIZE 0x200u\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "OS_PROCESS_STACK_TASK4_SIZE 0x200u\0"
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
	.ascii "False FALSE\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "True TRUE\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "ACCEPTED 1u\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "REJECTED 0u\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "LOCAL static\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "LOCAL_INLINE static __inline__\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "GLOBAL_INLINE __inline__\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "REFERENCE_UNUSED_PARAMETER(x) ((x) = (x))\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "NULL ((void*)0)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "MCU_X86 3\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "MCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "DWT_CTRL ((volatile uint32*)0xE0001000u)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "DWT_CYCCNT ((volatile uint32*)0xE0001004u)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "DWT_LAR ((volatile uint32*)0xE0001FB0u)\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SCB_DEMCR ((volatile uint32*)0xE000EDFCu)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "DISABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "ENABLE_INTERRUPTS() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "PRIVILIGE_LEVEL_SAVE_CURRENT() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "PRIVILIGE_LEVEL_ENTER_KERNEL_MODE() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "PRIVILIGE_LEVEL_RESTORE_SAVED() \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "HALT_MCU() \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "AMOUNT_SW_BUG_FUNCTIONS 22\0"
	.byte	0x4
	.file 11 "c:/users/president/desktop/sbx/input/src/os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_GLOBAL_H_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_CORE_H_ \0"
	.file 12 "c:/users/president/desktop/sbx/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 13 "c:/users/president/desktop/sbx/input/src/os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xd
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
	.file 14 "c:/users/president/desktop/sbx/input/src/os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_MMU_H_ \0"
	.byte	0x4
	.file 15 "c:/users/president/desktop/sbx/input/src/os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_TIMER_H_ \0"
	.byte	0x4
	.file 16 "c:/users/president/desktop/sbx/input/src/os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_POWER_H_ \0"
	.byte	0x4
	.file 17 "c:/users/president/desktop/sbx/input/src/os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_LLD_RAM_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_COMMON_H_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
	.byte	0x4
	.file 18 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
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
	.ascii "TASK0_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "TASK1_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "TASK2_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TASK3_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "TASK4_STACK_SIZE 2000u\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "MS_PER_SEC 1000u\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "USE_STATIC_CREATED_TASKS TRUE\0"
	.byte	0x4
	.file 19 "C:/Users/president/Desktop/sbx/input/src/os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
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
	.file 20 "c:/users/president/desktop/sbx/input/src/os_user_code/led.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 21 "C:/Users/president/Desktop/sbx/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_STACK_H_ \0"
	.byte	0x4
	.file 22 "C:/Users/president/Desktop/sbx/input/src/os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_HEAP_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_MAIN_H_ \0"
	.byte	0x4
	.file 23 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_STACK_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF3:
	.ascii "Operand1\0"
LASF4:
	.ascii "Operand2\0"
LASF0:
	.ascii "exe_time\0"
LASF2:
	.ascii "rightOperand\0"
LASF1:
	.ascii "leftOperand\0"
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
