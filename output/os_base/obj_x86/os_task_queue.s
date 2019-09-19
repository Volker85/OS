	.file	"os_task_queue.c"
	.text
Ltext0:
	.globl	_SET_RUNNING_TASK
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
_SET_RUNNING_TASK:
LFB0:
	.file 1 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_queue.c"
	.loc 1 34 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 35 35
	movl	12(%ebp), %eax
	movl	%eax, _RUNNING_SCHEDULING_QUEUE_ENTRY
	.loc 1 36 6
	cmpl	$0, 8(%ebp)
	je	L3
	.loc 1 38 69
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	.loc 1 38 63
	andl	$1, %eax
	movb	%al, %dl
	movb	_RUNNING_TASK, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 39 69
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	.loc 1 39 63
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movb	_RUNNING_TASK, %al
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 40 69
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	andl	$1, %eax
	.loc 1 40 63
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movb	_RUNNING_TASK, %al
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 41 69
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	.loc 1 41 63
	leal	0(,%eax,8), %edx
	movl	_RUNNING_TASK, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _RUNNING_TASK
	.loc 1 42 69
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	.loc 1 42 63
	movb	%al, _RUNNING_TASK+4
	.loc 1 43 69
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	.loc 1 43 63
	movb	%al, _RUNNING_TASK+5
	.loc 1 44 52
	movl	8(%ebp), %eax
	addl	$6, %eax
	.loc 1 44 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+6, (%esp)
	call	_ASSIGN
	.loc 1 45 47
	movl	8(%ebp), %eax
	addl	$22, %eax
	.loc 1 45 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+22, (%esp)
	call	_ASSIGN
	.loc 1 46 54
	movl	8(%ebp), %eax
	addl	$38, %eax
	.loc 1 46 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+38, (%esp)
	call	_ASSIGN
	.loc 1 47 66
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	.loc 1 47 60
	movl	%eax, _RUNNING_TASK+56
	.loc 1 48 59
	movl	8(%ebp), %eax
	addl	$60, %eax
	.loc 1 48 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+60, (%esp)
	call	_ASSIGN
	.loc 1 49 46
	movl	8(%ebp), %eax
	addl	$76, %eax
	.loc 1 49 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+76, (%esp)
	call	_ASSIGN
	.loc 1 50 48
	movl	8(%ebp), %eax
	addl	$92, %eax
	.loc 1 50 7
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+92, (%esp)
	call	_ASSIGN
	.loc 1 51 66
	movl	8(%ebp), %eax
	movb	108(%eax), %al
	.loc 1 51 60
	movb	%al, _RUNNING_TASK+108
	.loc 1 52 66
	movl	8(%ebp), %eax
	movb	109(%eax), %al
	.loc 1 52 60
	movb	%al, _RUNNING_TASK+109
	.loc 1 53 66
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	.loc 1 53 60
	movl	%eax, _RUNNING_TASK+116
	.loc 1 54 66
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 54 60
	movl	%eax, _RUNNING_TASK+120
	.loc 1 55 66
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	.loc 1 55 60
	movl	%eax, _RUNNING_TASK+124
	.loc 1 56 66
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	.loc 1 56 60
	movl	%eax, _RUNNING_TASK+128
	.loc 1 58 66
	movl	8(%ebp), %eax
	movl	132(%eax), %eax
	.loc 1 58 60
	movl	%eax, _RUNNING_TASK+132
	.loc 1 59 66
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	.loc 1 59 60
	movl	%eax, _RUNNING_TASK+136
	.loc 1 60 66
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	.loc 1 60 60
	movl	%eax, _RUNNING_TASK+140
	.loc 1 61 66
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	.loc 1 61 60
	movl	%eax, _RUNNING_TASK+144
	.loc 1 78 68
	movl	8(%ebp), %eax
	movl	148(%eax), %eax
	.loc 1 78 62
	movl	%eax, _RUNNING_TASK+148
	.loc 1 79 70
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	.loc 1 79 64
	movl	%eax, _RUNNING_TASK+152
	.loc 1 80 69
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	.loc 1 80 63
	movl	%eax, _RUNNING_TASK+156
	.loc 1 81 67
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	.loc 1 81 61
	movl	%eax, _RUNNING_TASK+160
	.loc 1 82 69
	movl	8(%ebp), %eax
	movl	164(%eax), %eax
	.loc 1 82 63
	movl	%eax, _RUNNING_TASK+164
L3:
	.loc 1 84 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_INIT_TASK_QUEUE
	.def	_OS_INIT_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_OS_INIT_TASK_QUEUE:
LFB1:
	.loc 1 88 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 89 31
	movb	_bTASK_QUEUE_INITIALIZED, %al
	.loc 1 89 6
	testb	%al, %al
	jne	L8
LBB2:
	.loc 1 91 23
	movb	$0, -9(%ebp)
	.loc 1 92 12
	jmp	L6
L7:
	.loc 1 94 31
	movzbl	-9(%ebp), %eax
	.loc 1 94 44
	movl	$0, _TASK_SCHEDULING_QUEUE(,%eax,4)
	.loc 1 95 55
	movzbl	-9(%ebp), %edx
	.loc 1 95 10
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movl	%eax, (%esp)
	call	_OS_TASK_INIT_TASK_ENVIRONMENT
	.loc 1 96 20
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L6:
	.loc 1 92 12
	cmpb	$9, -9(%ebp)
	jbe	L7
	.loc 1 98 31
	movb	$1, _bTASK_QUEUE_INITIALIZED
L8:
LBE2:
	.loc 1 100 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_ADD_TO_TASK_QUEUE
	.def	_ADD_TO_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_ADD_TO_TASK_QUEUE:
LFB2:
	.loc 1 102 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 103 20
	movb	$0, -9(%ebp)
	.loc 1 104 12
	movl	$0, -16(%ebp)
	.loc 1 106 9
	jmp	L10
L12:
	.loc 1 110 17
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L10:
	.loc 1 106 9
	cmpb	$9, -9(%ebp)
	ja	L11
	.loc 1 107 43
	movzbl	-9(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	.loc 1 107 11
	cmpb	$1, %al
	je	L12
L11:
	.loc 1 113 6
	cmpb	$9, -9(%ebp)
	ja	L13
	.loc 1 113 75 discriminator 1
	movzbl	-9(%ebp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	.loc 1 113 42 discriminator 1
	testb	%al, %al
	jne	L13
	.loc 1 115 36
	movzbl	-9(%ebp), %edx
	.loc 1 115 76
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	movb	%al, %bl
	.loc 1 115 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	andl	$1, %ebx
	movb	%bl, %cl
	movb	(%eax), %dl
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 116 36
	movzbl	-9(%ebp), %edx
	.loc 1 116 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %dl
	orl	$2, %edx
	movb	%dl, (%eax)
	.loc 1 117 36
	movzbl	-9(%ebp), %edx
	.loc 1 117 77
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	movb	%al, %cl
	andl	$1, %ecx
	.loc 1 117 71
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	andl	$1, %ecx
	movb	%cl, %dl
	leal	0(,%edx,4), %ecx
	movb	(%eax), %dl
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 118 36
	movzbl	-9(%ebp), %edx
	.loc 1 118 76
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %ebx
	.loc 1 118 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	leal	0(,%ebx,8), %ecx
	movl	(%eax), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movl	%edx, (%eax)
	.loc 1 119 36
	movzbl	-9(%ebp), %edx
	.loc 1 119 79
	movl	8(%ebp), %eax
	movb	4(%eax), %cl
	.loc 1 119 73
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+4, %eax
	movb	%cl, (%eax)
	.loc 1 120 36
	movzbl	-9(%ebp), %edx
	.loc 1 120 79
	movl	8(%ebp), %eax
	movb	5(%eax), %cl
	.loc 1 120 73
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+5, %eax
	movb	%cl, (%eax)
	.loc 1 121 62
	movl	8(%ebp), %eax
	leal	6(%eax), %ecx
	.loc 1 121 44
	movzbl	-9(%ebp), %edx
	.loc 1 121 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$6, %eax
	.loc 1 121 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 122 57
	movl	8(%ebp), %eax
	leal	22(%eax), %ecx
	.loc 1 122 44
	movzbl	-9(%ebp), %edx
	.loc 1 122 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$16, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$6, %eax
	.loc 1 122 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 123 64
	movl	8(%ebp), %eax
	leal	38(%eax), %ecx
	.loc 1 123 44
	movzbl	-9(%ebp), %edx
	.loc 1 123 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$32, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$6, %eax
	.loc 1 123 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 124 36
	movzbl	-9(%ebp), %edx
	.loc 1 124 76
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	.loc 1 124 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+56, %eax
	movl	%ecx, (%eax)
	.loc 1 125 69
	movl	8(%ebp), %eax
	leal	60(%eax), %ecx
	.loc 1 125 44
	movzbl	-9(%ebp), %edx
	.loc 1 125 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$48, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$12, %eax
	.loc 1 125 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 126 56
	movl	8(%ebp), %eax
	leal	76(%eax), %ecx
	.loc 1 126 44
	movzbl	-9(%ebp), %edx
	.loc 1 126 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$64, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$12, %eax
	.loc 1 126 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 127 58
	movl	8(%ebp), %eax
	leal	92(%eax), %ecx
	.loc 1 127 44
	movzbl	-9(%ebp), %edx
	.loc 1 127 14
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$80, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	addl	$12, %eax
	.loc 1 127 7
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN
	.loc 1 128 36
	movzbl	-9(%ebp), %edx
	.loc 1 128 76
	movl	8(%ebp), %eax
	movb	108(%eax), %cl
	.loc 1 128 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+108, %eax
	movb	%cl, (%eax)
	.loc 1 129 36
	movzbl	-9(%ebp), %edx
	.loc 1 129 76
	movl	8(%ebp), %eax
	movb	109(%eax), %cl
	.loc 1 129 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+109, %eax
	movb	%cl, (%eax)
	.loc 1 130 36
	movzbl	-9(%ebp), %edx
	.loc 1 130 76
	movl	8(%ebp), %eax
	movl	116(%eax), %ecx
	.loc 1 130 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+116, %eax
	movl	%ecx, (%eax)
	.loc 1 131 36
	movzbl	-9(%ebp), %edx
	.loc 1 131 76
	movl	8(%ebp), %eax
	movl	120(%eax), %ecx
	.loc 1 131 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+120, %eax
	movl	%ecx, (%eax)
	.loc 1 132 36
	movzbl	-9(%ebp), %edx
	.loc 1 132 76
	movl	8(%ebp), %eax
	movl	124(%eax), %ecx
	.loc 1 132 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+124, %eax
	movl	%ecx, (%eax)
	.loc 1 133 36
	movzbl	-9(%ebp), %edx
	.loc 1 133 76
	movl	8(%ebp), %eax
	movl	128(%eax), %ecx
	.loc 1 133 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+128, %eax
	movl	%ecx, (%eax)
	.loc 1 135 36
	movzbl	-9(%ebp), %edx
	.loc 1 135 76
	movl	8(%ebp), %eax
	movl	132(%eax), %ecx
	.loc 1 135 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+132, %eax
	movl	%ecx, (%eax)
	.loc 1 136 36
	movzbl	-9(%ebp), %edx
	.loc 1 136 76
	movl	8(%ebp), %eax
	movl	136(%eax), %ecx
	.loc 1 136 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+136, %eax
	movl	%ecx, (%eax)
	.loc 1 137 36
	movzbl	-9(%ebp), %edx
	.loc 1 137 76
	movl	8(%ebp), %eax
	movl	140(%eax), %ecx
	.loc 1 137 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+140, %eax
	movl	%ecx, (%eax)
	.loc 1 138 36
	movzbl	-9(%ebp), %edx
	.loc 1 138 76
	movl	8(%ebp), %eax
	movl	144(%eax), %ecx
	.loc 1 138 70
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+144, %eax
	movl	%ecx, (%eax)
	.loc 1 154 36
	movzbl	-9(%ebp), %edx
	.loc 1 154 78
	movl	8(%ebp), %eax
	movl	148(%eax), %ecx
	.loc 1 154 72
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+148, %eax
	movl	%ecx, (%eax)
	.loc 1 155 36
	movzbl	-9(%ebp), %edx
	.loc 1 155 80
	movl	8(%ebp), %eax
	movl	152(%eax), %ecx
	.loc 1 155 74
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+152, %eax
	movl	%ecx, (%eax)
	.loc 1 156 36
	movzbl	-9(%ebp), %edx
	.loc 1 156 79
	movl	8(%ebp), %eax
	movl	156(%eax), %ecx
	.loc 1 156 73
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+156, %eax
	movl	%ecx, (%eax)
	.loc 1 157 36
	movzbl	-9(%ebp), %edx
	.loc 1 157 77
	movl	8(%ebp), %eax
	movl	160(%eax), %ecx
	.loc 1 157 71
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+160, %eax
	movl	%ecx, (%eax)
	.loc 1 158 36
	movzbl	-9(%ebp), %edx
	.loc 1 158 79
	movl	8(%ebp), %eax
	movl	164(%eax), %ecx
	.loc 1 158 73
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+164, %eax
	movl	%ecx, (%eax)
	.loc 1 159 33
	movzbl	-9(%ebp), %edx
	.loc 1 159 16
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	addl	%ecx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movl	%eax, -16(%ebp)
L13:
	.loc 1 161 11
	movl	-16(%ebp), %eax
	.loc 1 162 1
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_DELETE_FROM_TASK_QUEUE
	.def	_DELETE_FROM_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_DELETE_FROM_TASK_QUEUE:
LFB3:
	.loc 1 164 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 165 48
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 166 48
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-3, %edx
	movb	%dl, (%eax)
	.loc 1 167 49
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-5, %edx
	movb	%dl, (%eax)
	.loc 1 168 48
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	andl	$7, %edx
	movl	%edx, (%eax)
	.loc 1 169 51
	movl	8(%ebp), %eax
	movb	$0, 4(%eax)
	.loc 1 170 51
	movl	8(%ebp), %eax
	movb	$0, 5(%eax)
	.loc 1 171 16
	movl	8(%ebp), %eax
	addl	$6, %eax
	.loc 1 171 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 172 16
	movl	8(%ebp), %eax
	addl	$22, %eax
	.loc 1 172 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 173 16
	movl	8(%ebp), %eax
	addl	$38, %eax
	.loc 1 173 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 174 48
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 175 16
	movl	8(%ebp), %eax
	addl	$60, %eax
	.loc 1 175 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 176 16
	movl	8(%ebp), %eax
	addl	$76, %eax
	.loc 1 176 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 177 16
	movl	8(%ebp), %eax
	addl	$92, %eax
	.loc 1 177 4
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 178 48
	movl	8(%ebp), %eax
	movb	$0, 108(%eax)
	.loc 1 179 48
	movl	8(%ebp), %eax
	movb	$0, 109(%eax)
	.loc 1 180 48
	movl	8(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 181 48
	movl	8(%ebp), %eax
	movl	$_OS_TASK_STATE_REQUEST, 120(%eax)
	.loc 1 182 48
	movl	8(%ebp), %eax
	movl	$0, 124(%eax)
	.loc 1 183 48
	movl	8(%ebp), %eax
	movl	$0, 128(%eax)
	.loc 1 185 48
	movl	8(%ebp), %eax
	movl	$0, 132(%eax)
	.loc 1 186 48
	movl	8(%ebp), %eax
	movl	$0, 136(%eax)
	.loc 1 187 48
	movl	8(%ebp), %eax
	movl	$0, 140(%eax)
	.loc 1 188 48
	movl	8(%ebp), %eax
	movl	$0, 144(%eax)
	.loc 1 206 50
	movl	8(%ebp), %eax
	movl	$0, 148(%eax)
	.loc 1 207 52
	movl	8(%ebp), %eax
	movl	$0, 152(%eax)
	.loc 1 208 51
	movl	8(%ebp), %eax
	movl	$0, 156(%eax)
	.loc 1 209 49
	movl	8(%ebp), %eax
	movl	$0, 160(%eax)
	.loc 1 210 51
	movl	8(%ebp), %eax
	movl	$0, 164(%eax)
	.loc 1 211 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_GET_FROM_TASK_QUEUE
	.def	_GET_FROM_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_GET_FROM_TASK_QUEUE:
LFB4:
	.loc 1 213 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 214 12
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 215 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_GET_FROM_SCHEDULING_QUEUE
	.def	_GET_FROM_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
_GET_FROM_SCHEDULING_QUEUE:
LFB5:
	.loc 1 217 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	.loc 1 218 49
	movzbl	-4(%ebp), %eax
	.loc 1 218 12
	sall	$2, %eax
	addl	$_TASK_SCHEDULING_QUEUE, %eax
	.loc 1 219 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_DELETE_FROM_SCHEDULING_QUEUE
	.def	_DELETE_FROM_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
_DELETE_FROM_SCHEDULING_QUEUE:
LFB6:
	.loc 1 222 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 223 30
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 224 1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_ADD_TO_SCHEDULING_QUEUE
	.def	_ADD_TO_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
_ADD_TO_SCHEDULING_QUEUE:
LFB7:
	.loc 1 226 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 234 20
	movb	$0, -1(%ebp)
	.loc 1 235 20
	movb	$0, -2(%ebp)
	.loc 1 237 9
	jmp	L22
L25:
	.loc 1 240 31
	movzbl	-2(%ebp), %eax
	movl	_TASK_SCHEDULING_QUEUE(,%eax,4), %eax
	.loc 1 240 9
	testl	%eax, %eax
	jne	L23
	.loc 1 242 31
	movzbl	-2(%ebp), %eax
	.loc 1 242 39
	movl	8(%ebp), %edx
	movl	%edx, _TASK_SCHEDULING_QUEUE(,%eax,4)
	.loc 1 243 33
	movb	$1, -1(%ebp)
L23:
	.loc 1 245 12
	movb	-2(%ebp), %al
	incl	%eax
	movb	%al, -2(%ebp)
L22:
	.loc 1 237 9
	cmpb	$9, -2(%ebp)
	ja	L27
	.loc 1 238 12
	cmpb	$0, -1(%ebp)
	je	L25
	.loc 1 247 4
	nop
L27:
	nop
	.loc 1 248 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_GET_IDLE_TASK
	.def	_GET_IDLE_TASK;	.scl	2;	.type	32;	.endef
_GET_IDLE_TASK:
LFB8:
	.loc 1 279 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 280 12
	movl	$_TASK_IDLE_QUEUE, %eax
	.loc 1 281 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_ADD_TO_IDLE_TASK_QUEUE
	.def	_ADD_TO_IDLE_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_ADD_TO_IDLE_TASK_QUEUE:
LFB9:
	.loc 1 283 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 285 41
	movb	_TASK_IDLE_QUEUE, %al
	andl	$4, %eax
	.loc 1 285 6
	testb	%al, %al
	jne	L32
	.loc 1 287 77
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	.loc 1 287 69
	andl	$1, %eax
	movb	%al, %dl
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 288 77
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	.loc 1 288 69
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 289 78
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	andl	$1, %eax
	.loc 1 289 70
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 290 77
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	.loc 1 290 69
	leal	0(,%eax,8), %edx
	movl	_TASK_IDLE_QUEUE, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _TASK_IDLE_QUEUE
	.loc 1 291 80
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	.loc 1 291 72
	movb	%al, _TASK_IDLE_QUEUE+4
	.loc 1 292 80
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	.loc 1 292 72
	movb	%al, _TASK_IDLE_QUEUE+5
	.loc 1 293 55
	movl	8(%ebp), %eax
	addl	$6, %eax
	.loc 1 293 7
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+6, (%esp)
	call	_ASSIGN
	.loc 1 294 50
	movl	8(%ebp), %eax
	addl	$22, %eax
	.loc 1 294 7
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+22, (%esp)
	call	_ASSIGN
	.loc 1 295 57
	movl	8(%ebp), %eax
	addl	$38, %eax
	.loc 1 295 7
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+38, (%esp)
	call	_ASSIGN
	.loc 1 296 77
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	.loc 1 296 68
	movl	%eax, _TASK_IDLE_QUEUE+56
	.loc 1 297 62
	movl	8(%ebp), %eax
	addl	$60, %eax
	.loc 1 297 7
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+60, (%esp)
	call	_ASSIGN
	.loc 1 298 49
	movl	8(%ebp), %eax
	addl	$76, %eax
	.loc 1 298 7
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+76, (%esp)
	call	_ASSIGN
	.loc 1 299 77
	movl	8(%ebp), %eax
	movb	108(%eax), %al
	.loc 1 299 69
	movb	%al, _TASK_IDLE_QUEUE+108
	.loc 1 300 77
	movl	8(%ebp), %eax
	movb	109(%eax), %al
	.loc 1 300 69
	movb	%al, _TASK_IDLE_QUEUE+109
	.loc 1 301 77
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	.loc 1 301 69
	movl	%eax, _TASK_IDLE_QUEUE+116
	.loc 1 302 77
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 302 69
	movl	%eax, _TASK_IDLE_QUEUE+120
	.loc 1 303 69
	movl	$2, _TASK_IDLE_QUEUE+124
	.loc 1 304 77
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	.loc 1 304 69
	movl	%eax, _TASK_IDLE_QUEUE+128
	.loc 1 306 77
	movl	8(%ebp), %eax
	movl	132(%eax), %eax
	.loc 1 306 69
	movl	%eax, _TASK_IDLE_QUEUE+132
	.loc 1 307 77
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	.loc 1 307 69
	movl	%eax, _TASK_IDLE_QUEUE+136
	.loc 1 308 77
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	.loc 1 308 69
	movl	%eax, _TASK_IDLE_QUEUE+140
	.loc 1 309 77
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	.loc 1 309 69
	movl	%eax, _TASK_IDLE_QUEUE+144
	.loc 1 327 79
	movl	8(%ebp), %eax
	movl	148(%eax), %eax
	.loc 1 327 71
	movl	%eax, _TASK_IDLE_QUEUE+148
	.loc 1 328 81
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	.loc 1 328 73
	movl	%eax, _TASK_IDLE_QUEUE+152
	.loc 1 329 80
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	.loc 1 329 72
	movl	%eax, _TASK_IDLE_QUEUE+156
	.loc 1 330 78
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	.loc 1 330 70
	movl	%eax, _TASK_IDLE_QUEUE+160
	.loc 1 331 80
	movl	8(%ebp), %eax
	movl	164(%eax), %eax
	.loc 1 331 72
	movl	%eax, _TASK_IDLE_QUEUE+164
L32:
	.loc 1 333 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_GET_RUNNING_TASK
	.def	_GET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
_GET_RUNNING_TASK:
LFB10:
	.loc 1 335 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 336 12
	movl	$_RUNNING_TASK, %eax
	.loc 1 337 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	.def	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR;	.scl	2;	.type	32;	.endef
_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR:
LFB11:
	.loc 1 339 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 340 11
	movl	_RUNNING_SCHEDULING_QUEUE_ENTRY, %eax
	.loc 1 341 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.globl	_OS_INIT_TASK
	.def	_OS_INIT_TASK;	.scl	2;	.type	32;	.endef
_OS_INIT_TASK:
LFB12:
	.loc 1 354 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	44(%ebp), %eax
	movb	%cl, -12(%ebp)
	movb	%dl, -16(%ebp)
	movb	%al, -20(%ebp)
	.loc 1 356 6
	cmpl	$0, 8(%ebp)
	je	L38
	.loc 1 358 30
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 359 30
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 116(%eax)
	.loc 1 360 33
	movl	8(%ebp), %eax
	movb	-12(%ebp), %dl
	movb	%dl, 4(%eax)
	.loc 1 361 30
	movl	8(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 128(%eax)
	.loc 1 362 33
	movl	8(%ebp), %eax
	movb	$0, 5(%eax)
	.loc 1 363 19
	movl	8(%ebp), %eax
	addl	$6, %eax
	.loc 1 363 7
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 364 30
	movl	8(%ebp), %eax
	movl	36(%ebp), %edx
	movl	%edx, 168(%eax)
	.loc 1 365 30
	movl	8(%ebp), %eax
	movb	-20(%ebp), %dl
	movb	%dl, 109(%eax)
	.loc 1 367 44
	movl	8(%ebp), %eax
	movl	$1, 56(%eax)
	.loc 1 368 21
	movl	8(%ebp), %eax
	addl	$60, %eax
	.loc 1 368 7
	movl	$100000, 4(%esp)
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 370 28
	movb	-16(%ebp), %al
	andl	$1, %eax
	movb	%al, %dl
	movl	8(%ebp), %eax
	andl	$1, %edx
	leal	0(,%edx,4), %ecx
	movb	(%eax), %dl
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 371 27
	movl	8(%ebp), %eax
	movl	$_OS_TASK_STATE_REQUEST, 120(%eax)
	.loc 1 372 7
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_STATE_REQUEST
	.loc 1 373 7
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_CREATE_TASK
	.loc 1 376 39
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 152(%eax)
	.loc 1 377 38
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 156(%eax)
	.loc 1 378 82
	movl	32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	28(%ebp), %eax
	addl	%eax, %edx
	.loc 1 378 38
	movl	8(%ebp), %eax
	movl	%edx, 164(%eax)
	.loc 1 379 36
	movl	8(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%edx, 160(%eax)
	.loc 1 381 54
	movl	8(%ebp), %eax
	movl	164(%eax), %edx
	.loc 1 381 48
	movl	8(%ebp), %eax
	movl	%edx, 148(%eax)
	.loc 1 387 1
	jmp	L40
L38:
	.loc 1 385 7
	movl	$10, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L40:
	.loc 1 387 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
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
	.long	0x169b
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 8.2.0 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_queue.c\0"
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
	.long	0xb6
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
	.long	0xb6
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x2
	.ascii "unsigned_int32_t\0"
	.byte	0x2
	.byte	0x1b
	.byte	0x18
	.long	0x120
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
	.long	0x120
	.uleb128 0x4
	.long	0x141
	.uleb128 0x5
	.ascii "os_sw_bugs_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.long	0x32f
	.uleb128 0x6
	.ascii "E_OS_BUG_NO_BUG\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_OS_BUG_TASKSTATE_REQUEST_DENIED\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_OS_BUG_NULL_POINTER\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_OS_BUG_TASK_MAX_WAIT_TIME_REACHED\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "E_OS_BUG_TASK_UNSPECIFIED\0"
	.byte	0x4
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_UNDEFINSTRUCTION\0"
	.byte	0x5
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_ABORTPREFETCH\0"
	.byte	0x6
	.uleb128 0x6
	.ascii "E_OS_BUG_EXCEPTION_ABORTDATA\0"
	.byte	0x7
	.uleb128 0x6
	.ascii "E_OS_BUG_RESET_EXIT_OR_SHUTDOWN_FAILED\0"
	.byte	0x8
	.uleb128 0x6
	.ascii "E_OS_BUG_CRITICAL_STACK_USAGE\0"
	.byte	0x9
	.uleb128 0x6
	.ascii "E_OS_BUG_SVC_NUMBER_MISSING\0"
	.byte	0xa
	.uleb128 0x6
	.ascii "E_OS_BUG_MAX_WAIT_TIME_REACHED\0"
	.byte	0xb
	.uleb128 0x6
	.ascii "E_OS_BUG_DIVISION_BY_ZERO\0"
	.byte	0xc
	.uleb128 0x6
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
	.long	0x155
	.uleb128 0x4
	.long	0x33f
	.uleb128 0x5
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x3
	.byte	0x43
	.byte	0x6
	.long	0x577
	.uleb128 0x6
	.ascii "E_FUNC_NOFUNCTION\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_FUNC_SAVETASKENVIRONMENT\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_FUNC_RESTORETASKENVIRONMENT\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_FUNC_CREATETASKENVIRONMENT\0"
	.byte	0x3
	.uleb128 0x6
	.ascii "E_FUNC_DELETETASKENVIRONMENT\0"
	.byte	0x4
	.uleb128 0x6
	.ascii "E_FUNC_INITTASKENVIRONMENT\0"
	.byte	0x5
	.uleb128 0x6
	.ascii "E_FUNC_STARTTASK\0"
	.byte	0x6
	.uleb128 0x6
	.ascii "E_FUNC_PREEMPTTASK\0"
	.byte	0x7
	.uleb128 0x6
	.ascii "E_FUNC_TERMINATETASK\0"
	.byte	0x8
	.uleb128 0x6
	.ascii "E_FUNC_TASKSCHEDULER\0"
	.byte	0x9
	.uleb128 0x6
	.ascii "E_FUNC_INITTASK\0"
	.byte	0xa
	.uleb128 0x6
	.ascii "E_FUNC_ACTIVATETASK\0"
	.byte	0xb
	.uleb128 0x6
	.ascii "E_FUNC_TASKSTATEREQUEST\0"
	.byte	0xc
	.uleb128 0x6
	.ascii "E_FUNC_PREEMPT_TASK\0"
	.byte	0xd
	.uleb128 0x6
	.ascii "E_FUNC_OS_EXCEPTION\0"
	.byte	0xe
	.uleb128 0x6
	.ascii "E_FUNC_CREATETASK\0"
	.byte	0xf
	.uleb128 0x6
	.ascii "E_FUNC_SHUTDOWN\0"
	.byte	0x10
	.uleb128 0x6
	.ascii "E_FUNC_STACKCHECK\0"
	.byte	0x11
	.uleb128 0x6
	.ascii "E_FUNC_ISRHANDLER\0"
	.byte	0x12
	.uleb128 0x6
	.ascii "E_FUNC_STATE_HANDLER\0"
	.byte	0x13
	.uleb128 0x6
	.ascii "E_FUNC_INTDIV\0"
	.byte	0x14
	.uleb128 0x6
	.ascii "E_FUNC_SHIFT_LEFT\0"
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.ascii "big_int_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x63
	.byte	0x10
	.long	0x59b
	.uleb128 0x8
	.ascii "number\0"
	.byte	0x3
	.byte	0x6c
	.byte	0xa
	.long	0x59b
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xd6
	.long	0x5ab
	.uleb128 0xa
	.long	0x32f
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.long	0x577
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.long	0x5ab
	.uleb128 0x5
	.ascii "coreid_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.long	0x60d
	.uleb128 0x6
	.ascii "E_CORE0\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_CORE1\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_CORE2\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_CORE3\0"
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.ascii "coreid_t\0"
	.byte	0x4
	.byte	0xb
	.byte	0x18
	.long	0x5cd
	.uleb128 0x5
	.ascii "privilige_mode_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x6bc
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_UNPRIVILIGED_THREAD_MODE\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_THREAD_MODE\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_PRIVILIGEMODE_PRIVILIGED_HANDLER_MODE\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x4
	.byte	0x16
	.byte	0x20
	.long	0x61e
	.uleb128 0x5
	.ascii "task_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x739
	.uleb128 0x6
	.ascii "E_TASK_UNSPECIFIED\0"
	.byte	0
	.uleb128 0x6
	.ascii "E_TASK_SUSPENDED\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "E_TASK_READY\0"
	.byte	0x2
	.uleb128 0x6
	.ascii "E_TASK_RUNNING\0"
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x5
	.byte	0xe
	.byte	0x1b
	.long	0x6d5
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.long	0x75f
	.uleb128 0xb
	.byte	0x4
	.long	0x765
	.uleb128 0xc
	.long	0x770
	.uleb128 0xd
	.long	0x770
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.long	0x790
	.uleb128 0xb
	.byte	0x4
	.long	0x796
	.uleb128 0xf
	.long	0x9e
	.long	0x7aa
	.uleb128 0xd
	.long	0x770
	.uleb128 0xd
	.long	0x739
	.byte	0
	.uleb128 0x7
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.long	0x7e5
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.long	0x5bb
	.byte	0
	.uleb128 0x8
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.long	0x5bb
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.long	0x7aa
	.uleb128 0x7
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.long	0xa8c
	.uleb128 0x11
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.long	0x32f
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.long	0x32f
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.secrel32	LASF1
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.long	0x32f
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.ascii "free\0"
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.long	0x32f
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "nr_of_ins_allowed\0"
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.long	0x9e
	.byte	0x4
	.uleb128 0x8
	.ascii "nr_of_ins_activated\0"
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.long	0x9e
	.byte	0x5
	.uleb128 0x8
	.ascii "wait_act_until\0"
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.long	0x5bb
	.byte	0x6
	.uleb128 0x8
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.long	0x5bb
	.byte	0x16
	.uleb128 0x8
	.ascii "time_to_prio_inc\0"
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.long	0x5bb
	.byte	0x26
	.uleb128 0x8
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.long	0x141
	.byte	0x38
	.uleb128 0x8
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.long	0x5bb
	.byte	0x3c
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.long	0x5bb
	.byte	0x4c
	.uleb128 0x8
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.long	0x5bb
	.byte	0x5c
	.uleb128 0x8
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.long	0x9e
	.byte	0x6c
	.uleb128 0x10
	.secrel32	LASF2
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.long	0x9e
	.byte	0x6d
	.uleb128 0x8
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.long	0x107
	.byte	0x70
	.uleb128 0x8
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.long	0x74e
	.byte	0x74
	.uleb128 0x8
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.long	0x772
	.byte	0x78
	.uleb128 0x8
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.long	0x739
	.byte	0x7c
	.uleb128 0x8
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.long	0xa8c
	.byte	0x80
	.uleb128 0x8
	.ascii "eax\0"
	.byte	0x5
	.byte	0x36
	.byte	0x15
	.long	0x107
	.byte	0x84
	.uleb128 0x8
	.ascii "ebx\0"
	.byte	0x5
	.byte	0x37
	.byte	0x15
	.long	0x107
	.byte	0x88
	.uleb128 0x8
	.ascii "ecx\0"
	.byte	0x5
	.byte	0x38
	.byte	0x15
	.long	0x107
	.byte	0x8c
	.uleb128 0x8
	.ascii "edx\0"
	.byte	0x5
	.byte	0x39
	.byte	0x15
	.long	0x107
	.byte	0x90
	.uleb128 0x8
	.ascii "p_stack_pointer\0"
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.long	0xa92
	.byte	0x94
	.uleb128 0x8
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.long	0xa92
	.byte	0x98
	.uleb128 0x8
	.ascii "p_stack_pointer_start\0"
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.long	0xa92
	.byte	0x9c
	.uleb128 0x8
	.ascii "stack_size\0"
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.long	0x107
	.byte	0xa0
	.uleb128 0x8
	.ascii "p_stack_pointer_end\0"
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.long	0xa92
	.byte	0xa4
	.uleb128 0x10
	.secrel32	LASF3
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.long	0x6bc
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7e5
	.uleb128 0xb
	.byte	0x4
	.long	0x9e
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.long	0x7fa
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.long	0xabc
	.uleb128 0xb
	.byte	0x4
	.long	0xa98
	.uleb128 0x9
	.long	0xabc
	.long	0xad2
	.uleb128 0xa
	.long	0x32f
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_PTR\0"
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.long	0xac2
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.long	0x5bb
	.uleb128 0x5
	.ascii "os_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x32f
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.long	0xb4d
	.uleb128 0x6
	.ascii "OS_STATE_INIT\0"
	.byte	0
	.uleb128 0x6
	.ascii "OS_STATE_RUNNING\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_STATE_SHUTDOWN\0"
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.ascii "os_state_t\0"
	.byte	0x6
	.byte	0xa
	.byte	0x19
	.long	0xafc
	.uleb128 0x4
	.long	0xb4d
	.uleb128 0x9
	.long	0x9e
	.long	0xb76
	.uleb128 0x14
	.long	0x32f
	.word	0x270f
	.byte	0
	.uleb128 0x13
	.ascii "HEAP\0"
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.long	0xb65
	.uleb128 0x9
	.long	0x354
	.long	0xb93
	.uleb128 0xa
	.long	0x32f
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.long	0xb83
	.uleb128 0x13
	.ascii "OS_SW_BUG\0"
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.long	0xb93
	.uleb128 0x13
	.ascii "OS_STATE\0"
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.long	0xb60
	.uleb128 0x13
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "DBG_CURR_VAL\0"
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "TASK1_CALL_NR\0"
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "TASK2_CALL_NR\0"
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "TASK3_CALL_NR\0"
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "TASK4_CALL_NR\0"
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.long	0x150
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_ADDR\0"
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.long	0xdd5
	.uleb128 0xb
	.byte	0x4
	.long	0x150
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_POS\0"
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "OS_MAIN_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK0_STACK_ADDR\0"
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.long	0xdd5
	.uleb128 0x13
	.ascii "TASK0_STACK_POS\0"
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK0_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK1_STACK_ADDR\0"
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.long	0xdd5
	.uleb128 0x13
	.ascii "TASK1_STACK_POS\0"
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK1_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK2_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.long	0xdd5
	.uleb128 0x13
	.ascii "TASK2_STACK_POS\0"
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK2_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK3_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.long	0xdd5
	.uleb128 0x13
	.ascii "TASK3_STACK_POS\0"
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK3_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK4_STACK_ADDR\0"
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.long	0xdd5
	.uleb128 0x13
	.ascii "TASK4_STACK_POS\0"
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.long	0x150
	.uleb128 0x13
	.ascii "TASK4_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.long	0x150
	.uleb128 0x9
	.long	0x9e
	.long	0xfc9
	.uleb128 0x14
	.long	0x32f
	.word	0x7cf
	.byte	0
	.uleb128 0x13
	.ascii "TASK0_STACK\0"
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.long	0xfb8
	.uleb128 0x13
	.ascii "TASK1_STACK\0"
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.long	0xfb8
	.uleb128 0x13
	.ascii "TASK2_STACK\0"
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.long	0xfb8
	.uleb128 0x13
	.ascii "TASK3_STACK\0"
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.long	0xfb8
	.uleb128 0x13
	.ascii "TASK4_STACK\0"
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.long	0xfb8
	.uleb128 0x13
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.long	0xae3
	.uleb128 0x9
	.long	0xaa7
	.long	0x1057
	.uleb128 0xa
	.long	0x32f
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.long	0x1047
	.uleb128 0x13
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.long	0x109c
	.uleb128 0xb
	.byte	0x4
	.long	0xaa7
	.uleb128 0x9
	.long	0xa98
	.long	0x10b2
	.uleb128 0xa
	.long	0x32f
	.byte	0x9
	.byte	0
	.uleb128 0x13
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.long	0x10a2
	.uleb128 0x9
	.long	0xa98
	.long	0x10d9
	.uleb128 0xa
	.long	0x32f
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "RUNNING_TASK\0"
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.long	0x10c9
	.uleb128 0x13
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.long	0x10c9
	.uleb128 0x13
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.long	0x9e
	.uleb128 0x13
	.ascii "TASK_0_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.long	0xa98
	.uleb128 0x13
	.ascii "TASK_1_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.long	0xa98
	.uleb128 0x13
	.ascii "TASK_2_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.long	0xa98
	.uleb128 0x13
	.ascii "TASK_3_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.long	0xa98
	.uleb128 0x13
	.ascii "TASK_GROUP_1\0"
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.long	0x7e5
	.uleb128 0x13
	.ascii "TASK_GROUP_2\0"
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.long	0x7e5
	.uleb128 0x13
	.ascii "TASK_GROUP_3\0"
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.long	0x7e5
	.uleb128 0x13
	.ascii "TASK_GROUP_4\0"
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.long	0x7e5
	.uleb128 0x13
	.ascii "TASK_GROUP_5\0"
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.long	0x7e5
	.uleb128 0x13
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.long	0xabc
	.uleb128 0x13
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.long	0x739
	.uleb128 0x13
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.long	0x739
	.uleb128 0x13
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.long	0xb60
	.uleb128 0x13
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.long	0x5bb
	.uleb128 0x9
	.long	0x9e
	.long	0x129c
	.uleb128 0x14
	.long	0x32f
	.word	0x3ff
	.byte	0
	.uleb128 0x13
	.ascii "OS_MAIN_STACK\0"
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.long	0x128b
	.uleb128 0x15
	.ascii "OS_INIT_TASK\0"
	.byte	0x1
	.word	0x156
	.byte	0x6
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a1
	.uleb128 0x16
	.secrel32	LASF4
	.byte	0x1
	.word	0x157
	.byte	0x15
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "TaskFunction\0"
	.byte	0x1
	.word	0x158
	.byte	0x15
	.long	0x74e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.ascii "AllowedInstances\0"
	.byte	0x1
	.word	0x159
	.byte	0x15
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.secrel32	LASF1
	.byte	0x1
	.word	0x15a
	.byte	0x15
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii "p_task_group\0"
	.byte	0x1
	.word	0x15b
	.byte	0x15
	.long	0xa8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.ascii "pStackAddr\0"
	.byte	0x1
	.word	0x15c
	.byte	0x15
	.long	0xa92
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x17
	.ascii "uStackSize\0"
	.byte	0x1
	.word	0x15d
	.byte	0x15
	.long	0x107
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x1
	.word	0x15e
	.byte	0x15
	.long	0x6bc
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x17
	.ascii "core\0"
	.byte	0x1
	.word	0x15f
	.byte	0x15
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.secrel32	LASF2
	.byte	0x1
	.word	0x160
	.byte	0x15
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.ascii "GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR\0"
	.byte	0x1
	.word	0x152
	.byte	0xf
	.long	0x13dd
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x4
	.long	0xabc
	.uleb128 0x18
	.ascii "GET_RUNNING_TASK\0"
	.byte	0x1
	.word	0x14e
	.byte	0x9
	.long	0xabc
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.ascii "ADD_TO_IDLE_TASK_QUEUE\0"
	.byte	0x1
	.word	0x11a
	.byte	0x6
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1442
	.uleb128 0x16
	.secrel32	LASF4
	.byte	0x1
	.word	0x11a
	.byte	0x25
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.ascii "GET_IDLE_TASK\0"
	.byte	0x1
	.word	0x116
	.byte	0x9
	.long	0xabc
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.ascii "ADD_TO_SCHEDULING_QUEUE\0"
	.byte	0x1
	.byte	0xe1
	.byte	0x6
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x14c8
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.byte	0xe1
	.byte	0x26
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.ascii "Add_successful\0"
	.byte	0x1
	.byte	0xea
	.byte	0x14
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1b
	.ascii "index\0"
	.byte	0x1
	.byte	0xeb
	.byte	0x14
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x19
	.ascii "DELETE_FROM_SCHEDULING_QUEUE\0"
	.byte	0x1
	.byte	0xdd
	.byte	0x6
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1507
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1
	.byte	0xdd
	.byte	0x31
	.long	0x109c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.ascii "GET_FROM_SCHEDULING_QUEUE\0"
	.byte	0x1
	.byte	0xd8
	.byte	0xf
	.long	0x109c
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1547
	.uleb128 0x1a
	.secrel32	LASF6
	.byte	0x1
	.byte	0xd8
	.byte	0x39
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1c
	.ascii "GET_FROM_TASK_QUEUE\0"
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.long	0xabc
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1581
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1
	.byte	0xd4
	.byte	0x2b
	.long	0x109c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.ascii "DELETE_FROM_TASK_QUEUE\0"
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ba
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.byte	0xa3
	.byte	0x25
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.ascii "ADD_TO_TASK_QUEUE\0"
	.byte	0x1
	.byte	0x65
	.byte	0x9
	.long	0xabc
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1615
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.byte	0x65
	.byte	0x23
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.secrel32	LASF6
	.byte	0x1
	.byte	0x67
	.byte	0x14
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.ascii "ret_task\0"
	.byte	0x1
	.byte	0x68
	.byte	0xc
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.ascii "OS_INIT_TASK_QUEUE\0"
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1654
	.uleb128 0x20
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x1f
	.secrel32	LASF6
	.byte	0x1
	.byte	0x5b
	.byte	0x17
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x21
	.ascii "SET_RUNNING_TASK\0"
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.byte	0x21
	.byte	0x1f
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.ascii "scheduling_task\0"
	.byte	0x1
	.byte	0x21
	.byte	0x33
	.long	0x109c
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.file 24 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_QUEUE_H_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "FIRST_TASK (0u)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "LAST_TASK (MAX_RUN_QUEUE_SIZE-1u)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "FOR_ALL_TASKS_IN_QUEUE(var) for((var) = FIRST_TASK; (var) <= LAST_TASK; (var)++)\0"
	.byte	0x4
	.file 25 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_TASK_SCHEDULER_H_ \0"
	.byte	0x1
	.uleb128 0x7
	.ascii "TASK_0_PTR 0u\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "TASK_1_PTR 1u\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "TASK_2_PTR 2u\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "TASK_3_PTR 3u\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF1:
	.ascii "idle_task\0"
LASF5:
	.ascii "scheduling_queue_element\0"
LASF3:
	.ascii "privilige_mode\0"
LASF4:
	.ascii "task\0"
LASF0:
	.ascii "exe_time\0"
LASF6:
	.ascii "element_nr\0"
LASF2:
	.ascii "default_prio\0"
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_ASSIGN;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_INIT_TASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_ASSIGN_NULL;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_STATE_REQUEST;	.scl	2;	.type	32;	.endef
	.def	_ASSIGN_UINT32;	.scl	2;	.type	32;	.endef
	.def	_OS_CREATE_TASK;	.scl	2;	.type	32;	.endef
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
