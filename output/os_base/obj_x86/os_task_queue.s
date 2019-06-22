	.file	"os_task_queue.c"
	.text
Ltext0:
	.globl	_SET_RUNNING_TASK
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
_SET_RUNNING_TASK:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.c"
	.loc 1 34 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 35 0
	movl	12(%ebp), %eax
	movl	%eax, _RUNNING_SCHEDULING_QUEUE_ENTRY
	.loc 1 36 0
	cmpl	$0, 8(%ebp)
	je	L1
	.loc 1 38 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	andl	$1, %eax
	movb	%al, %dl
	movb	_RUNNING_TASK, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 39 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movb	_RUNNING_TASK, %al
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 40 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movb	_RUNNING_TASK, %al
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 41 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	_RUNNING_TASK, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _RUNNING_TASK
	.loc 1 42 0
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	movb	%al, _RUNNING_TASK+4
	.loc 1 43 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	movb	%al, _RUNNING_TASK+5
	.loc 1 44 0
	movl	8(%ebp), %eax
	addl	$6, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+6, (%esp)
	call	_Assign
	.loc 1 45 0
	movl	8(%ebp), %eax
	addl	$22, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+22, (%esp)
	call	_Assign
	.loc 1 46 0
	movl	8(%ebp), %eax
	addl	$38, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+38, (%esp)
	call	_Assign
	.loc 1 47 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, _RUNNING_TASK+56
	.loc 1 48 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+60, (%esp)
	call	_Assign
	.loc 1 49 0
	movl	8(%ebp), %eax
	addl	$76, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+76, (%esp)
	call	_Assign
	.loc 1 50 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, 4(%esp)
	movl	$_RUNNING_TASK+92, (%esp)
	call	_Assign
	.loc 1 51 0
	movl	8(%ebp), %eax
	movb	108(%eax), %al
	movb	%al, _RUNNING_TASK+108
	.loc 1 52 0
	movl	8(%ebp), %eax
	movb	109(%eax), %al
	movb	%al, _RUNNING_TASK+109
	.loc 1 53 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, _RUNNING_TASK+116
	.loc 1 54 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, _RUNNING_TASK+120
	.loc 1 55 0
	movl	8(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, _RUNNING_TASK+124
	.loc 1 56 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, _RUNNING_TASK+128
	.loc 1 58 0
	movl	8(%ebp), %eax
	movl	132(%eax), %eax
	movl	%eax, _RUNNING_TASK+132
	.loc 1 59 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	%eax, _RUNNING_TASK+136
	.loc 1 60 0
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, _RUNNING_TASK+140
	.loc 1 61 0
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	%eax, _RUNNING_TASK+144
	.loc 1 78 0
	movl	8(%ebp), %eax
	movl	148(%eax), %eax
	movl	%eax, _RUNNING_TASK+148
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, _RUNNING_TASK+152
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, _RUNNING_TASK+156
	.loc 1 81 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, _RUNNING_TASK+160
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	164(%eax), %eax
	movl	%eax, _RUNNING_TASK+164
L1:
	.loc 1 84 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_InitTaskQueue
	.def	_OS_InitTaskQueue;	.scl	2;	.type	32;	.endef
_OS_InitTaskQueue:
LFB1:
	.loc 1 88 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 89 0
	movb	_bTASK_QUEUE_INITIALIZED, %al
	testb	%al, %al
	jne	L3
LBB2:
	.loc 1 91 0
	movb	$0, -9(%ebp)
	.loc 1 92 0
	jmp	L5
L6:
	.loc 1 94 0
	movzbl	-9(%ebp), %eax
	movl	$0, _TASK_SCHEDULING_QUEUE(,%eax,4)
	.loc 1 95 0
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
	movl	%eax, (%esp)
	call	_OS_Task_InitTaskEnvironment
	.loc 1 96 0
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L5:
	.loc 1 92 0
	cmpb	$9, -9(%ebp)
	jbe	L6
	.loc 1 98 0
	movb	$1, _bTASK_QUEUE_INITIALIZED
L3:
LBE2:
	.loc 1 100 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_AddToTaskQueue
	.def	_AddToTaskQueue;	.scl	2;	.type	32;	.endef
_AddToTaskQueue:
LFB2:
	.loc 1 102 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	.loc 1 103 0
	movb	$0, -9(%ebp)
	.loc 1 104 0
	movl	$0, -16(%ebp)
	.loc 1 106 0
	jmp	L8
L10:
	.loc 1 110 0
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L8:
	.loc 1 106 0
	cmpb	$9, -9(%ebp)
	ja	L9
	.loc 1 107 0
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
	cmpb	$1, %al
	je	L10
L9:
	.loc 1 113 0
	cmpb	$9, -9(%ebp)
	ja	L11
	.loc 1 113 0 is_stmt 0 discriminator 1
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
	testb	%al, %al
	jne	L11
	.loc 1 115 0 is_stmt 1
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	movb	%al, %bl
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
	.loc 1 116 0
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
	movb	(%eax), %dl
	orl	$2, %edx
	movb	%dl, (%eax)
	.loc 1 117 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	movb	%al, %cl
	andl	$1, %ecx
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
	.loc 1 118 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %ebx
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
	.loc 1 119 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	4(%eax), %cl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	%cl, 4(%eax)
	.loc 1 120 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	5(%eax), %cl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	%cl, 5(%eax)
	.loc 1 121 0
	movl	8(%ebp), %eax
	leal	6(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 122 0
	movl	8(%ebp), %eax
	leal	22(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 123 0
	movl	8(%ebp), %eax
	leal	38(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 124 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	56(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+48, %eax
	movl	%ecx, 8(%eax)
	.loc 1 125 0
	movl	8(%ebp), %eax
	leal	60(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 126 0
	movl	8(%ebp), %eax
	leal	76(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 127 0
	movl	8(%ebp), %eax
	leal	92(%eax), %ecx
	movzbl	-9(%ebp), %edx
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
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_Assign
	.loc 1 128 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	108(%eax), %cl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+96, %eax
	movb	%cl, 12(%eax)
	.loc 1 129 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movb	109(%eax), %cl
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+96, %eax
	movb	%cl, 13(%eax)
	.loc 1 130 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	116(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+112, %eax
	movl	%ecx, 4(%eax)
	.loc 1 131 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	120(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+112, %eax
	movl	%ecx, 8(%eax)
	.loc 1 132 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	124(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+112, %eax
	movl	%ecx, 12(%eax)
	.loc 1 133 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	128(%eax), %ecx
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
	.loc 1 135 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	132(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+128, %eax
	movl	%ecx, 4(%eax)
	.loc 1 136 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	136(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+128, %eax
	movl	%ecx, 8(%eax)
	.loc 1 137 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	140(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+128, %eax
	movl	%ecx, 12(%eax)
	.loc 1 138 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	144(%eax), %ecx
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
	.loc 1 154 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	148(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+144, %eax
	movl	%ecx, 4(%eax)
	.loc 1 155 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	152(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+144, %eax
	movl	%ecx, 8(%eax)
	.loc 1 156 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	156(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+144, %eax
	movl	%ecx, 12(%eax)
	.loc 1 157 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	160(%eax), %ecx
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
	.loc 1 158 0
	movzbl	-9(%ebp), %edx
	movl	8(%ebp), %eax
	movl	164(%eax), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ebx
	addl	%ebx, %eax
	addl	%edx, %eax
	addl	$_TASK_RUN_QUEUE+160, %eax
	movl	%ecx, 4(%eax)
	.loc 1 159 0
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
	movl	%eax, -16(%ebp)
L11:
	.loc 1 161 0
	movl	-16(%ebp), %eax
	.loc 1 162 0
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_DeleteFromTaskQueue
	.def	_DeleteFromTaskQueue;	.scl	2;	.type	32;	.endef
_DeleteFromTaskQueue:
LFB3:
	.loc 1 164 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 165 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 166 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-3, %edx
	movb	%dl, (%eax)
	.loc 1 167 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-5, %edx
	movb	%dl, (%eax)
	.loc 1 168 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	andl	$7, %edx
	movl	%edx, (%eax)
	.loc 1 169 0
	movl	8(%ebp), %eax
	movb	$0, 4(%eax)
	.loc 1 170 0
	movl	8(%ebp), %eax
	movb	$0, 5(%eax)
	.loc 1 171 0
	movl	8(%ebp), %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 172 0
	movl	8(%ebp), %eax
	addl	$22, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 173 0
	movl	8(%ebp), %eax
	addl	$38, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 175 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 176 0
	movl	8(%ebp), %eax
	addl	$76, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 177 0
	movl	8(%ebp), %eax
	addl	$92, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 178 0
	movl	8(%ebp), %eax
	movb	$0, 108(%eax)
	.loc 1 179 0
	movl	8(%ebp), %eax
	movb	$0, 109(%eax)
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	$0, 116(%eax)
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	$_task_state_request, 120(%eax)
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	$0, 124(%eax)
	.loc 1 183 0
	movl	8(%ebp), %eax
	movl	$0, 128(%eax)
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	$0, 132(%eax)
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	$0, 136(%eax)
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	$0, 140(%eax)
	.loc 1 188 0
	movl	8(%ebp), %eax
	movl	$0, 144(%eax)
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	$0, 148(%eax)
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	$0, 152(%eax)
	.loc 1 208 0
	movl	8(%ebp), %eax
	movl	$0, 156(%eax)
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	$0, 160(%eax)
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	$0, 164(%eax)
	.loc 1 211 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_GetFromTaskQueue
	.def	_GetFromTaskQueue;	.scl	2;	.type	32;	.endef
_GetFromTaskQueue:
LFB4:
	.loc 1 213 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 214 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 215 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_GetFromSchedulingQueue
	.def	_GetFromSchedulingQueue;	.scl	2;	.type	32;	.endef
_GetFromSchedulingQueue:
LFB5:
	.loc 1 217 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	.loc 1 218 0
	movzbl	-4(%ebp), %eax
	sall	$2, %eax
	addl	$_TASK_SCHEDULING_QUEUE, %eax
	.loc 1 219 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_DeleteFromSchedulingQueue
	.def	_DeleteFromSchedulingQueue;	.scl	2;	.type	32;	.endef
_DeleteFromSchedulingQueue:
LFB6:
	.loc 1 222 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 223 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 224 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_AddToSchedulingQueue
	.def	_AddToSchedulingQueue;	.scl	2;	.type	32;	.endef
_AddToSchedulingQueue:
LFB7:
	.loc 1 226 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 234 0
	movb	$0, -1(%ebp)
	.loc 1 235 0
	movb	$0, -2(%ebp)
	.loc 1 237 0
	jmp	L20
L23:
	.loc 1 240 0
	movzbl	-2(%ebp), %eax
	movl	_TASK_SCHEDULING_QUEUE(,%eax,4), %eax
	testl	%eax, %eax
	jne	L21
	.loc 1 242 0
	movzbl	-2(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, _TASK_SCHEDULING_QUEUE(,%eax,4)
	.loc 1 243 0
	movb	$1, -1(%ebp)
L21:
	.loc 1 245 0
	movb	-2(%ebp), %al
	incl	%eax
	movb	%al, -2(%ebp)
L20:
	.loc 1 237 0
	cmpb	$9, -2(%ebp)
	ja	L22
	.loc 1 238 0
	cmpb	$0, -1(%ebp)
	je	L23
L22:
	.loc 1 247 0
	nop
	.loc 1 248 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_GetIdleTask
	.def	_GetIdleTask;	.scl	2;	.type	32;	.endef
_GetIdleTask:
LFB8:
	.loc 1 279 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 280 0
	movl	$_TASK_IDLE_QUEUE, %eax
	.loc 1 281 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_AddToIdleTaskQueue
	.def	_AddToIdleTaskQueue;	.scl	2;	.type	32;	.endef
_AddToIdleTaskQueue:
LFB9:
	.loc 1 283 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 285 0
	movb	_TASK_IDLE_QUEUE, %al
	andl	$4, %eax
	testb	%al, %al
	jne	L27
	.loc 1 287 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	andl	$1, %eax
	movb	%al, %dl
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 288 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	andl	$1, %eax
	leal	(%eax,%eax), %edx
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-3, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 289 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	andl	$1, %eax
	andl	$1, %eax
	leal	0(,%eax,4), %edx
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-5, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 290 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	_TASK_IDLE_QUEUE, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _TASK_IDLE_QUEUE
	.loc 1 291 0
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+4
	.loc 1 292 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+5
	.loc 1 293 0
	movl	8(%ebp), %eax
	addl	$6, %eax
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+6, (%esp)
	call	_Assign
	.loc 1 294 0
	movl	8(%ebp), %eax
	addl	$22, %eax
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+22, (%esp)
	call	_Assign
	.loc 1 295 0
	movl	8(%ebp), %eax
	addl	$38, %eax
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+38, (%esp)
	call	_Assign
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+56
	.loc 1 297 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+60, (%esp)
	call	_Assign
	.loc 1 298 0
	movl	8(%ebp), %eax
	addl	$76, %eax
	movl	%eax, 4(%esp)
	movl	$_TASK_IDLE_QUEUE+76, (%esp)
	call	_Assign
	.loc 1 299 0
	movl	8(%ebp), %eax
	movb	108(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+108
	.loc 1 300 0
	movl	8(%ebp), %eax
	movb	109(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+109
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+116
	.loc 1 302 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+120
	.loc 1 303 0
	movl	$2, _TASK_IDLE_QUEUE+124
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	128(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+128
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	132(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+132
	.loc 1 307 0
	movl	8(%ebp), %eax
	movl	136(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+136
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	140(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+140
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	144(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+144
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	148(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+148
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	152(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+152
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	156(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+156
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	160(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+160
	.loc 1 331 0
	movl	8(%ebp), %eax
	movl	164(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+164
L27:
	.loc 1 333 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_GetRunningTask
	.def	_GetRunningTask;	.scl	2;	.type	32;	.endef
_GetRunningTask:
LFB10:
	.loc 1 335 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 336 0
	movl	$_RUNNING_TASK, %eax
	.loc 1 337 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_GetRunningSchedulingQueueElementPtr
	.def	_GetRunningSchedulingQueueElementPtr;	.scl	2;	.type	32;	.endef
_GetRunningSchedulingQueueElementPtr:
LFB11:
	.loc 1 339 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 340 0
	movl	_RUNNING_SCHEDULING_QUEUE_ENTRY, %eax
	.loc 1 341 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.globl	_OS_InitTask
	.def	_OS_InitTask;	.scl	2;	.type	32;	.endef
_OS_InitTask:
LFB12:
	.loc 1 354 0
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
	.loc 1 356 0
	cmpl	$0, 8(%ebp)
	je	L34
	.loc 1 358 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 359 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 116(%eax)
	.loc 1 360 0
	movl	8(%ebp), %eax
	movb	-12(%ebp), %dl
	movb	%dl, 4(%eax)
	.loc 1 361 0
	movl	8(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 128(%eax)
	.loc 1 362 0
	movl	8(%ebp), %eax
	movb	$0, 5(%eax)
	.loc 1 363 0
	movl	8(%ebp), %eax
	addl	$6, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 364 0
	movl	8(%ebp), %eax
	movl	36(%ebp), %edx
	movl	%edx, 168(%eax)
	.loc 1 365 0
	movl	8(%ebp), %eax
	movb	-20(%ebp), %dl
	movb	%dl, 109(%eax)
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	$1, 56(%eax)
	.loc 1 368 0
	movl	8(%ebp), %eax
	addl	$60, %eax
	movl	$100000, 4(%esp)
	movl	%eax, (%esp)
	call	_AssignUint32
	.loc 1 370 0
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
	.loc 1 371 0
	movl	8(%ebp), %eax
	movl	$_task_state_request, 120(%eax)
	.loc 1 372 0
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_task_state_request
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_CreateTask
	.loc 1 374 0
	cmpl	$2000, 32(%ebp)
	jbe	L35
	.loc 1 376 0
	movl	$2000, 32(%ebp)
L35:
	.loc 1 380 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 152(%eax)
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 156(%eax)
	.loc 1 382 0
	movl	32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	28(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 164(%eax)
	.loc 1 383 0
	movl	8(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%edx, 160(%eax)
	.loc 1 385 0
	movl	8(%ebp), %eax
	movl	164(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 148(%eax)
	jmp	L33
L34:
	.loc 1 389 0
	movl	$10, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L33:
	.loc 1 391 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xda0
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_queue.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x2
	.byte	0x1d
	.long	0xa8
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
	.byte	0x21
	.long	0xa8
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
	.byte	0x27
	.long	0x110
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
	.uleb128 0x4
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x3a
	.long	0x427
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
	.uleb128 0x6
	.ascii "BigInt_s\0"
	.byte	0x10
	.byte	0x3
	.byte	0x59
	.long	0x448
	.uleb128 0x7
	.ascii "Number\0"
	.byte	0x3
	.byte	0x62
	.long	0x448
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xc8
	.long	0x458
	.uleb128 0x9
	.long	0x458
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.ascii "BigInt\0"
	.byte	0x3
	.byte	0x63
	.long	0x427
	.uleb128 0x4
	.ascii "CoreID_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.long	0x4a4
	.uleb128 0x5
	.ascii "Core0\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "Core1\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "Core2\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "Core3\0"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.ascii "CoreID_t\0"
	.byte	0x4
	.byte	0xb
	.long	0x472
	.uleb128 0x4
	.ascii "privilige_mode_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.long	0x549
	.uleb128 0x5
	.ascii "ePriviligeMode_unpriviliged_thread_mode\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "ePriviligeMode_priviliged_thread_mode\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "ePriviligeMode_priviliged_handler_mode\0"
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.ascii "privilige_mode_t\0"
	.byte	0x4
	.byte	0x16
	.long	0x4b4
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.long	0x5b7
	.uleb128 0x5
	.ascii "Task_unspecified\0"
	.sleb128 0
	.uleb128 0x5
	.ascii "Task_suspended\0"
	.sleb128 1
	.uleb128 0x5
	.ascii "Task_ready\0"
	.sleb128 2
	.uleb128 0x5
	.ascii "Task_running\0"
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.ascii "task_state_t\0"
	.byte	0x5
	.byte	0xe
	.long	0x561
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.long	0x5db
	.uleb128 0xa
	.byte	0x4
	.long	0x5e1
	.uleb128 0xb
	.long	0x5ec
	.uleb128 0xc
	.long	0x5ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.long	0x60b
	.uleb128 0xa
	.byte	0x4
	.long	0x611
	.uleb128 0xe
	.long	0x91
	.long	0x625
	.uleb128 0xc
	.long	0x5ec
	.uleb128 0xc
	.long	0x5b7
	.byte	0
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x5
	.byte	0x16
	.long	0x464
	.uleb128 0x6
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.long	0x66e
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.long	0x625
	.byte	0
	.uleb128 0x7
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.long	0x625
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.long	0x636
	.uleb128 0x6
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.long	0x8dd
	.uleb128 0x10
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.long	0x8dd
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.long	0x8dd
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x5
	.byte	0x23
	.long	0x8dd
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.ascii "FREE\0"
	.byte	0x5
	.byte	0x24
	.long	0x8dd
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x7
	.ascii "NrOfInsAllowed\0"
	.byte	0x5
	.byte	0x25
	.long	0x91
	.byte	0x4
	.uleb128 0x7
	.ascii "NrOfInsActivated\0"
	.byte	0x5
	.byte	0x26
	.long	0x91
	.byte	0x5
	.uleb128 0x7
	.ascii "WaitActUntil\0"
	.byte	0x5
	.byte	0x27
	.long	0x625
	.byte	0x6
	.uleb128 0x7
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.long	0x625
	.byte	0x16
	.uleb128 0x7
	.ascii "TimeToPrioInc\0"
	.byte	0x5
	.byte	0x29
	.long	0x625
	.byte	0x26
	.uleb128 0x7
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.long	0x131
	.byte	0x38
	.uleb128 0x7
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.long	0x625
	.byte	0x3c
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.long	0x625
	.byte	0x4c
	.uleb128 0x7
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.long	0x625
	.byte	0x5c
	.uleb128 0x7
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.long	0x91
	.byte	0x6c
	.uleb128 0xf
	.secrel32	LASF2
	.byte	0x5
	.byte	0x2f
	.long	0x91
	.byte	0x6d
	.uleb128 0x7
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.long	0xf8
	.byte	0x70
	.uleb128 0x7
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.long	0x5cb
	.byte	0x74
	.uleb128 0x7
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.long	0x5ee
	.byte	0x78
	.uleb128 0x7
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.long	0x5b7
	.byte	0x7c
	.uleb128 0x7
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.long	0x8ed
	.byte	0x80
	.uleb128 0x7
	.ascii "EAX\0"
	.byte	0x5
	.byte	0x36
	.long	0xf8
	.byte	0x84
	.uleb128 0x7
	.ascii "EBX\0"
	.byte	0x5
	.byte	0x37
	.long	0xf8
	.byte	0x88
	.uleb128 0x7
	.ascii "ECX\0"
	.byte	0x5
	.byte	0x38
	.long	0xf8
	.byte	0x8c
	.uleb128 0x7
	.ascii "EDX\0"
	.byte	0x5
	.byte	0x39
	.long	0xf8
	.byte	0x90
	.uleb128 0x7
	.ascii "pStackPointer\0"
	.byte	0x5
	.byte	0x49
	.long	0x8f3
	.byte	0x94
	.uleb128 0x7
	.ascii "pStackPointerByMalloc\0"
	.byte	0x5
	.byte	0x4a
	.long	0x8f3
	.byte	0x98
	.uleb128 0x7
	.ascii "pStackPointerStart\0"
	.byte	0x5
	.byte	0x4b
	.long	0x8f3
	.byte	0x9c
	.uleb128 0x7
	.ascii "StackSize\0"
	.byte	0x5
	.byte	0x4c
	.long	0xf8
	.byte	0xa0
	.uleb128 0x7
	.ascii "pStackPointerEnd\0"
	.byte	0x5
	.byte	0x4d
	.long	0x8f3
	.byte	0xa4
	.uleb128 0xf
	.secrel32	LASF3
	.byte	0x5
	.byte	0x4e
	.long	0x549
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xa
	.byte	0x4
	.long	0x66e
	.uleb128 0xa
	.byte	0x4
	.long	0x91
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.long	0x682
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.long	0x91b
	.uleb128 0xa
	.byte	0x4
	.long	0x8f9
	.uleb128 0x12
	.ascii "SET_RUNNING_TASK\0"
	.byte	0x1
	.byte	0x21
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x96c
	.uleb128 0x13
	.secrel32	LASF4
	.byte	0x1
	.byte	0x21
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "scheduling_task\0"
	.byte	0x1
	.byte	0x21
	.long	0x96c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x907
	.uleb128 0x12
	.ascii "OS_InitTaskQueue\0"
	.byte	0x1
	.byte	0x57
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ad
	.uleb128 0x15
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x16
	.secrel32	LASF5
	.byte	0x1
	.byte	0x5b
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x17
	.ascii "AddToTaskQueue\0"
	.byte	0x1
	.byte	0x65
	.long	0x91b
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xa01
	.uleb128 0x13
	.secrel32	LASF4
	.byte	0x1
	.byte	0x65
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.secrel32	LASF5
	.byte	0x1
	.byte	0x67
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.ascii "ret_task\0"
	.byte	0x1
	.byte	0x68
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.ascii "DeleteFromTaskQueue\0"
	.byte	0x1
	.byte	0xa3
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xa35
	.uleb128 0x13
	.secrel32	LASF4
	.byte	0x1
	.byte	0xa3
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.ascii "GetFromTaskQueue\0"
	.byte	0x1
	.byte	0xd4
	.long	0x91b
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6a
	.uleb128 0x13
	.secrel32	LASF6
	.byte	0x1
	.byte	0xd4
	.long	0x96c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.ascii "GetFromSchedulingQueue\0"
	.byte	0x1
	.byte	0xd8
	.long	0x96c
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa5
	.uleb128 0x13
	.secrel32	LASF5
	.byte	0x1
	.byte	0xd8
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.ascii "DeleteFromSchedulingQueue\0"
	.byte	0x1
	.byte	0xdd
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xadf
	.uleb128 0x13
	.secrel32	LASF6
	.byte	0x1
	.byte	0xdd
	.long	0x96c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.ascii "AddToSchedulingQueue\0"
	.byte	0x1
	.byte	0xe1
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb3d
	.uleb128 0x13
	.secrel32	LASF4
	.byte	0x1
	.byte	0xe1
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "Add_successful\0"
	.byte	0x1
	.byte	0xea
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x18
	.ascii "index\0"
	.byte	0x1
	.byte	0xeb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x1b
	.ascii "GetIdleTask\0"
	.byte	0x1
	.word	0x116
	.long	0x91b
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.ascii "AddToIdleTaskQueue\0"
	.byte	0x1
	.word	0x11a
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xb90
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.word	0x11a
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.ascii "GetRunningTask\0"
	.byte	0x1
	.word	0x14e
	.long	0x91b
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.ascii "GetRunningSchedulingQueueElementPtr\0"
	.byte	0x1
	.word	0x152
	.long	0xbe7
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.byte	0x4
	.long	0x91b
	.uleb128 0x1c
	.ascii "OS_InitTask\0"
	.byte	0x1
	.word	0x156
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.word	0x157
	.long	0x91b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.ascii "TaskFunction\0"
	.byte	0x1
	.word	0x158
	.long	0x5cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.ascii "AllowedInstances\0"
	.byte	0x1
	.word	0x159
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1d
	.secrel32	LASF1
	.byte	0x1
	.word	0x15a
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.ascii "p_task_group\0"
	.byte	0x1
	.word	0x15b
	.long	0x8ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.ascii "pStackAddr\0"
	.byte	0x1
	.word	0x15c
	.long	0x8f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.ascii "uStackSize\0"
	.byte	0x1
	.word	0x15d
	.long	0xf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1
	.word	0x15e
	.long	0x549
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1e
	.ascii "core\0"
	.byte	0x1
	.word	0x15f
	.long	0x4a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1d
	.secrel32	LASF2
	.byte	0x1
	.word	0x160
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x8
	.long	0x907
	.long	0xce0
	.uleb128 0x9
	.long	0x458
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x6
	.byte	0x27
	.long	0xcd0
	.uleb128 0x1f
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x6
	.byte	0x28
	.long	0x96c
	.uleb128 0x8
	.long	0x8f9
	.long	0xd33
	.uleb128 0x9
	.long	0x458
	.byte	0x9
	.byte	0
	.uleb128 0x1f
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x6
	.byte	0x29
	.long	0xd23
	.uleb128 0x8
	.long	0x8f9
	.long	0xd59
	.uleb128 0x9
	.long	0x458
	.byte	0
	.byte	0
	.uleb128 0x1f
	.ascii "RUNNING_TASK\0"
	.byte	0x6
	.byte	0x2a
	.long	0xd49
	.uleb128 0x1f
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x6
	.byte	0x2b
	.long	0xd49
	.uleb128 0x1f
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x6
	.byte	0x2c
	.long	0x91
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x1
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x7
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
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
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
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_ram_h_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_common_h_ \0"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x9
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
	.uleb128 0x61
	.ascii "os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x62
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
	.uleb128 0x6
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
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_queue_h_ \0"
	.byte	0x1
	.uleb128 0x6
	.ascii "First_task (0)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "Last_task (MAX_RUN_QUEUE_SIZE-1)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "For_all_tasks_in_queue(var) for((var) = First_task; (var) <= Last_task; (var)++)\0"
	.byte	0x4
	.file 26 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_scheduler_h_ \0"
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
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF6:
	.ascii "scheduling_queue_element\0"
LASF3:
	.ascii "privilige_mode\0"
LASF1:
	.ascii "IdleTask\0"
LASF4:
	.ascii "task\0"
LASF0:
	.ascii "exe_time\0"
LASF5:
	.ascii "element_nr\0"
LASF2:
	.ascii "default_prio\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	_Assign;	.scl	2;	.type	32;	.endef
	.def	_OS_Task_InitTaskEnvironment;	.scl	2;	.type	32;	.endef
	.def	_AssignNull;	.scl	2;	.type	32;	.endef
	.def	_task_state_request;	.scl	2;	.type	32;	.endef
	.def	_AssignUint32;	.scl	2;	.type	32;	.endef
	.def	_OS_CreateTask;	.scl	2;	.type	32;	.endef
	.def	_OS_SetSwBug;	.scl	2;	.type	32;	.endef
