	.file	"os_common.c"
	.text
Ltext0:
	.globl	_OS_SetSwBug
	.def	_OS_SetSwBug;	.scl	2;	.type	32;	.endef
_OS_SetSwBug:
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
	.globl	_OS_GetCurrentTime
	.def	_OS_GetCurrentTime;	.scl	2;	.type	32;	.endef
_OS_GetCurrentTime:
LFB1:
	.loc 1 16 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 20 0
	movl	$-536866812, %eax
	movl	(%eax), %eax
	.loc 1 21 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_OS_ResetCurrentTime
	.def	_OS_ResetCurrentTime;	.scl	2;	.type	32;	.endef
_OS_ResetCurrentTime:
LFB2:
	.loc 1 24 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 26 0
	movl	$-536862800, %eax
	movl	$-978530731, (%eax)
	.loc 1 29 0
	movl	$-536809988, %eax
	movl	$-536809988, %edx
	movl	(%edx), %edx
	orl	$16777216, %edx
	movl	%edx, (%eax)
	.loc 1 32 0
	movl	$-536866812, %eax
	movl	$0, (%eax)
	.loc 1 35 0
	movl	$-536866816, %eax
	movl	$-536866816, %edx
	movl	(%edx), %edx
	orl	$1, %edx
	movl	%edx, (%eax)
	.loc 1 36 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_IntAdd
	.def	_IntAdd;	.scl	2;	.type	32;	.endef
_IntAdd:
LFB3:
	.loc 1 41 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 43 0
	movw	$0, -4(%ebp)
	.loc 1 45 0
	movb	$15, -1(%ebp)
	jmp	L6
L7:
LBB2:
	.loc 1 47 0 discriminator 3
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
	.loc 1 48 0 discriminator 3
	movsbl	-1(%ebp), %edx
	movw	-6(%ebp), %ax
	movb	%al, %cl
	movl	8(%ebp), %eax
	movb	%cl, (%eax,%edx)
	.loc 1 49 0 discriminator 3
	movw	-6(%ebp), %ax
	movb	$0, %al
	movw	%ax, -4(%ebp)
LBE2:
	.loc 1 45 0 discriminator 3
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L6:
	.loc 1 45 0 is_stmt 0 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L7
	.loc 1 51 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_IntSub
	.def	_IntSub;	.scl	2;	.type	32;	.endef
_IntSub:
LFB4:
	.loc 1 53 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 55 0
	movw	$0, -4(%ebp)
	.loc 1 57 0
	movb	$15, -1(%ebp)
	jmp	L9
L12:
LBB3:
	.loc 1 60 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %ecx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movzwl	-4(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jl	L10
	.loc 1 62 0
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
	subl	-4(%ebp), %eax
	movw	%ax, -6(%ebp)
	jmp	L11
L10:
	.loc 1 64 0
	movsbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %eax
	leal	256(%eax), %ecx
	movsbl	-1(%ebp), %eax
	movl	16(%ebp), %edx
	movb	(%edx,%eax), %al
	movzbl	%al, %edx
	movzwl	-4(%ebp), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jl	L11
	.loc 1 66 0
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
	subl	-4(%ebp), %eax
	addl	$256, %eax
	movw	%ax, -6(%ebp)
L11:
LBE3:
	.loc 1 57 0 discriminator 2
	movb	-1(%ebp), %al
	decl	%eax
	movb	%al, -1(%ebp)
L9:
	.loc 1 57 0 is_stmt 0 discriminator 1
	cmpb	$0, -1(%ebp)
	jns	L12
	.loc 1 73 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_IsLess
	.def	_IsLess;	.scl	2;	.type	32;	.endef
_IsLess:
LFB5:
	.loc 1 124 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 126 0
	movb	$0, -2(%ebp)
	.loc 1 127 0
	movb	$0, -1(%ebp)
	jmp	L14
L18:
	.loc 1 129 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jnb	L15
	.loc 1 131 0
	movb	$1, -2(%ebp)
	.loc 1 132 0
	jmp	L16
L15:
	.loc 1 134 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jbe	L17
	.loc 1 136 0
	movb	$0, -2(%ebp)
	.loc 1 137 0
	jmp	L16
L17:
	.loc 1 127 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L14:
	.loc 1 127 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L18
L16:
	.loc 1 144 0 is_stmt 1
	movl	$_IsEqual, %eax
	.loc 1 145 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_IsLessOrEqual
	.def	_IsLessOrEqual;	.scl	2;	.type	32;	.endef
_IsLessOrEqual:
LFB6:
	.loc 1 147 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 148 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsLess
	testb	%al, %al
	jne	L21
	.loc 1 148 0 is_stmt 0 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsEqual
	testb	%al, %al
	je	L22
L21:
	.loc 1 148 0 discriminator 3
	movl	$1, %eax
	jmp	L23
L22:
	.loc 1 148 0 discriminator 4
	movl	$0, %eax
L23:
	.loc 1 149 0 is_stmt 1 discriminator 6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_IsEqual
	.def	_IsEqual;	.scl	2;	.type	32;	.endef
_IsEqual:
LFB7:
	.loc 1 151 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 153 0
	movb	$1, -2(%ebp)
	.loc 1 154 0
	movb	$0, -1(%ebp)
	jmp	L26
L29:
	.loc 1 156 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	je	L27
	.loc 1 158 0
	movb	$0, -2(%ebp)
	.loc 1 159 0
	jmp	L28
L27:
	.loc 1 154 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L26:
	.loc 1 154 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L29
L28:
	.loc 1 166 0 is_stmt 1
	movb	-2(%ebp), %al
	.loc 1 167 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_IsGreater
	.def	_IsGreater;	.scl	2;	.type	32;	.endef
_IsGreater:
LFB8:
	.loc 1 169 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 171 0
	movb	$0, -2(%ebp)
	.loc 1 172 0
	movb	$0, -1(%ebp)
	jmp	L32
L36:
	.loc 1 174 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jnb	L33
	.loc 1 176 0
	movb	$1, -2(%ebp)
	.loc 1 177 0
	jmp	L34
L33:
	.loc 1 179 0
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	(%edx,%eax), %cl
	movzbl	-1(%ebp), %eax
	movl	12(%ebp), %edx
	movb	(%edx,%eax), %al
	cmpb	%al, %cl
	jbe	L35
	.loc 1 181 0
	movb	$0, -2(%ebp)
	.loc 1 182 0
	jmp	L34
L35:
	.loc 1 172 0 discriminator 2
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L32:
	.loc 1 172 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L36
L34:
	.loc 1 189 0 is_stmt 1
	movl	$_IsEqual, %eax
	.loc 1 190 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_IsGreaterOrEqual
	.def	_IsGreaterOrEqual;	.scl	2;	.type	32;	.endef
_IsGreaterOrEqual:
LFB9:
	.loc 1 192 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 193 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsGreater
	testb	%al, %al
	jne	L39
	.loc 1 193 0 is_stmt 0 discriminator 2
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_IsEqual
	testb	%al, %al
	je	L40
L39:
	.loc 1 193 0 discriminator 3
	movl	$1, %eax
	jmp	L41
L40:
	.loc 1 193 0 discriminator 4
	movl	$0, %eax
L41:
	.loc 1 194 0 is_stmt 1 discriminator 6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_Assign
	.def	_Assign;	.scl	2;	.type	32;	.endef
_Assign:
LFB10:
	.loc 1 196 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 198 0
	movb	$0, -1(%ebp)
	jmp	L44
L45:
	.loc 1 200 0 discriminator 3
	movzbl	-1(%ebp), %eax
	movzbl	-1(%ebp), %edx
	movl	12(%ebp), %ecx
	movb	(%ecx,%edx), %cl
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	.loc 1 198 0 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L44:
	.loc 1 198 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L45
	.loc 1 202 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_AssignNull
	.def	_AssignNull;	.scl	2;	.type	32;	.endef
_AssignNull:
LFB11:
	.loc 1 204 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 206 0
	movb	$0, -1(%ebp)
	jmp	L47
L48:
	.loc 1 208 0 discriminator 3
	movzbl	-1(%ebp), %eax
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
	.loc 1 206 0 discriminator 3
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L47:
	.loc 1 206 0 is_stmt 0 discriminator 1
	cmpb	$15, -1(%ebp)
	jbe	L48
	.loc 1 210 0 is_stmt 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x8a4
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
	.byte	0x21
	.long	0x8d
	.uleb128 0x3
	.ascii "sint8\0"
	.byte	0x2
	.byte	0x22
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
	.byte	0x25
	.long	0xc7
	.uleb128 0x3
	.ascii "unsigned_int32_t\0"
	.byte	0x2
	.byte	0x27
	.long	0x110
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
	.byte	0x29
	.long	0x110
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x2b
	.long	0x282
	.uleb128 0x5
	.ascii "os_bug_no_bug\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "os_bug_taskstate_request_denied\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "os_bug_null_pointer\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "os_bug_task_max_wait_time_reached\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "os_bug_Task_unspecified\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "os_bug_exception_UndefInstruction\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "os_bug_exception_AbortPrefetch\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "os_bug_exception_AbortData\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "os_bug_reset_exit_or_shutdown_failed\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "os_bug_critical_stack_usage\0"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.ascii "os_sw_bugs_t\0"
	.byte	0x3
	.byte	0x38
	.long	0x13f
	.uleb128 0x3
	.ascii "boolean_t\0"
	.byte	0x3
	.byte	0x39
	.long	0xad
	.uleb128 0x4
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x3a
	.long	0x44c
	.uleb128 0x5
	.ascii "Func_NoFunction\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "Func_SaveTaskEnvironment\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "Func_RestoreTaskEnvironment\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "Func_CreateTaskEnvironment\0"
	.sleb128 3
	.uleb128 0x5
	.ascii "Func_DeleteTaskEnvironment\0"
	.sleb128 4
	.uleb128 0x5
	.ascii "Func_InitTaskEnvironment\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "Func_StartTask\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "Func_PreemptTask\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "Func_TerminateTask\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "Func_TaskScheduler\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "Func_InitTask\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "Func_ActivateTask\0"
	.sleb128 11
	.uleb128 0x5
	.ascii "Func_TaskStateRequest\0"
	.sleb128 12
	.uleb128 0x5
	.ascii "Func_Preempt_Task\0"
	.sleb128 13
	.uleb128 0x5
	.ascii "Func_os_exception\0"
	.sleb128 14
	.uleb128 0x5
	.ascii "Func_CreateTask\0"
	.sleb128 15
	.uleb128 0x5
	.ascii "Func_Shutdown\0"
	.sleb128 16
	.uleb128 0x5
	.ascii "Func_StackCheck\0"
	.sleb128 17
	.byte	0
	.uleb128 0x3
	.ascii "os_sw_bugs_function_t\0"
	.byte	0x3
	.byte	0x4f
	.long	0x2a7
	.uleb128 0x6
	.ascii "BigInt_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x59
	.long	0x48a
	.uleb128 0x7
	.ascii "Number\0"
	.byte	0x3
	.byte	0x62
	.long	0x48a
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xad
	.long	0x49a
	.uleb128 0x9
	.long	0x49a
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x3
	.ascii "BigInt\0"
	.byte	0x3
	.byte	0x63
	.long	0x469
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xa
	.ascii "OS_SetSwBug\0"
	.byte	0x1
	.byte	0x4
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x50a
	.uleb128 0xb
	.ascii "bug_nr\0"
	.byte	0x1
	.byte	0x4
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "task_func_nr\0"
	.byte	0x1
	.byte	0x4
	.long	0x44c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.ascii "OS_GetCurrentTime\0"
	.byte	0x1
	.byte	0xf
	.long	0xf8
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.ascii "OS_ResetCurrentTime\0"
	.byte	0x1
	.byte	0x17
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.ascii "IntAdd\0"
	.byte	0x1
	.byte	0x28
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e1
	.uleb128 0xb
	.ascii "Summe\0"
	.byte	0x1
	.byte	0x28
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "ErsterSummand\0"
	.byte	0x1
	.byte	0x28
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "ZweiterSummand\0"
	.byte	0x1
	.byte	0x28
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x2a
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "carry\0"
	.byte	0x1
	.byte	0x2b
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0xe
	.ascii "tmpSum\0"
	.byte	0x1
	.byte	0x2f
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x4a6
	.uleb128 0xa
	.ascii "IntSub\0"
	.byte	0x1
	.byte	0x34
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x675
	.uleb128 0xb
	.ascii "Differenz\0"
	.byte	0x1
	.byte	0x34
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "Minuend\0"
	.byte	0x1
	.byte	0x34
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "Subtrahend\0"
	.byte	0x1
	.byte	0x34
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x36
	.long	0xba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "carry\0"
	.byte	0x1
	.byte	0x37
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xf
	.long	LBB3
	.long	LBE3-LBB3
	.uleb128 0xe
	.ascii "tmpDiff\0"
	.byte	0x1
	.byte	0x3b
	.long	0xea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.byte	0
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0x7b
	.long	0x296
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c7
	.uleb128 0x12
	.secrel32	LASF0
	.byte	0x1
	.byte	0x7b
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x1
	.byte	0x7b
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x7d
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.secrel32	LASF2
	.byte	0x1
	.byte	0x7e
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x14
	.ascii "IsLessOrEqual\0"
	.byte	0x1
	.byte	0x92
	.long	0x296
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x707
	.uleb128 0x12
	.secrel32	LASF0
	.byte	0x1
	.byte	0x92
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x1
	.byte	0x92
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x15
	.ascii "IsEqual\0"
	.byte	0x1
	.byte	0x96
	.long	0x296
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x761
	.uleb128 0x12
	.secrel32	LASF0
	.byte	0x1
	.byte	0x96
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x1
	.byte	0x96
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0x98
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.ascii "IsEqual\0"
	.byte	0x1
	.byte	0x99
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x15
	.ascii "IsGreater\0"
	.byte	0x1
	.byte	0xa8
	.long	0x296
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b9
	.uleb128 0x12
	.secrel32	LASF0
	.byte	0x1
	.byte	0xa8
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x1
	.byte	0xa8
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xaa
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x13
	.secrel32	LASF2
	.byte	0x1
	.byte	0xab
	.long	0x296
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x14
	.ascii "IsGreaterOrEqual\0"
	.byte	0x1
	.byte	0xbf
	.long	0x296
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fc
	.uleb128 0x12
	.secrel32	LASF0
	.byte	0x1
	.byte	0xbf
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x1
	.byte	0xbf
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.ascii "Assign\0"
	.byte	0x1
	.byte	0xc3
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x848
	.uleb128 0x12
	.secrel32	LASF3
	.byte	0x1
	.byte	0xc3
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.ascii "rightOperand\0"
	.byte	0x1
	.byte	0xc3
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xc5
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xa
	.ascii "AssignNull\0"
	.byte	0x1
	.byte	0xcb
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x881
	.uleb128 0x12
	.secrel32	LASF3
	.byte	0x1
	.byte	0xcb
	.long	0x5e1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "pos\0"
	.byte	0x1
	.byte	0xcd
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x8
	.long	0x282
	.long	0x891
	.uleb128 0x9
	.long	0x49a
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.ascii "OS_SW_BUG\0"
	.byte	0x4
	.byte	0x10
	.long	0x8a2
	.uleb128 0x17
	.long	0x881
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.ascii "_os_firstinc_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2
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
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3
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
	.byte	0x1
	.uleb128 0x58
	.ascii "BigIntSize 16\0"
	.byte	0x4
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
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
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_ram_h_ \0"
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_common_h_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xf
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
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
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
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x12
	.byte	0x4
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_stack_h_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "OS_STACK_SIZE 0x5000u\0"
	.byte	0x4
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x14
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
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x15
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
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.uleb128 0x8
	.ascii "DWT_CTRL ((volatile uint32*)0xE0001000)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "DWT_CYCCNT ((volatile uint32*)0xE0001004)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "DWT_LAR ((volatile uint32*)0xE0001FB0)\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "SCB_DEMCR ((volatile uint32*)0xE000EDFC)\0"
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF2:
	.ascii "IsLess\0"
LASF3:
	.ascii "leftOperand\0"
LASF0:
	.ascii "Operand1\0"
LASF1:
	.ascii "Operand2\0"
	.ident	"GCC: (GNU) 4.9.3"
