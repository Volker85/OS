	.file	"os_task_queue.c"
	.text
Ltext0:
.lcomm _pTASK_RUN_QUEUE,20,4
.lcomm _TASK_RUN_QUEUE,480,32
.lcomm _RUNNING_TASK,96,32
.lcomm _TASK_IDLE_QUEUE,96,32
.lcomm _bTASK_QUEUE_INITIALIZED,1,1
	.globl	_SET_RUNNING_TASK
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
_SET_RUNNING_TASK:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.c"
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 39 0
	cmpl	$0, 8(%ebp)
	je	L1
	.loc 1 41 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	andl	$1, %eax
	movb	%al, %dl
	movb	_RUNNING_TASK, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _RUNNING_TASK
	.loc 1 42 0
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
	.loc 1 43 0
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
	.loc 1 44 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	_RUNNING_TASK, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _RUNNING_TASK
	.loc 1 45 0
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	movb	%al, _RUNNING_TASK+4
	.loc 1 46 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	movb	%al, _RUNNING_TASK+5
	.loc 1 47 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, _RUNNING_TASK+8
	.loc 1 48 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, _RUNNING_TASK+12
	.loc 1 49 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, _RUNNING_TASK+16
	.loc 1 50 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, _RUNNING_TASK+20
	.loc 1 51 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, _RUNNING_TASK+24
	.loc 1 52 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, _RUNNING_TASK+28
	.loc 1 53 0
	movl	8(%ebp), %eax
	movb	32(%eax), %al
	movb	%al, _RUNNING_TASK+32
	.loc 1 54 0
	movl	8(%ebp), %eax
	movb	33(%eax), %al
	movb	%al, _RUNNING_TASK+33
	.loc 1 55 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, _RUNNING_TASK+40
	.loc 1 56 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, _RUNNING_TASK+44
	.loc 1 57 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	%eax, _RUNNING_TASK+48
	.loc 1 58 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, _RUNNING_TASK+52
	.loc 1 60 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, _RUNNING_TASK+56
	.loc 1 61 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, _RUNNING_TASK+60
	.loc 1 62 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, _RUNNING_TASK+64
	.loc 1 63 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, _RUNNING_TASK+68
	.loc 1 80 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, _RUNNING_TASK+72
	.loc 1 81 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, _RUNNING_TASK+76
	.loc 1 82 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, _RUNNING_TASK+80
	.loc 1 83 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, _RUNNING_TASK+84
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, _RUNNING_TASK+88
L1:
	.loc 1 86 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_INIT_TASK_QUEUE
	.def	_OS_INIT_TASK_QUEUE;	.scl	2;	.type	32;	.endef
_OS_INIT_TASK_QUEUE:
LFB1:
	.loc 1 90 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 91 0
	movb	_bTASK_QUEUE_INITIALIZED, %al
	testb	%al, %al
	jne	L3
LBB2:
	.loc 1 93 0
	movb	$0, -9(%ebp)
	.loc 1 94 0
	jmp	L5
L6:
	.loc 1 98 0
	movzbl	-9(%ebp), %eax
	movl	$0, _pTASK_RUN_QUEUE(,%eax,4)
	.loc 1 99 0
	movzbl	-9(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movl	%eax, (%esp)
	call	_OS_Task_InitTaskEnvironment
	.loc 1 100 0
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L5:
	.loc 1 94 0
	cmpb	$4, -9(%ebp)
	jbe	L6
	.loc 1 102 0
	movb	$1, _bTASK_QUEUE_INITIALIZED
L3:
LBE2:
	.loc 1 104 0
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
	.loc 1 106 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 107 0
	movb	$0, -1(%ebp)
	.loc 1 108 0
	jmp	L8
L10:
	.loc 1 112 0
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L8:
	.loc 1 108 0
	cmpb	$4, -1(%ebp)
	ja	L9
	.loc 1 109 0
	movzbl	-1(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	cmpb	$1, %al
	je	L10
L9:
	.loc 1 115 0
	cmpb	$4, -1(%ebp)
	ja	L11
	.loc 1 115 0 is_stmt 0 discriminator 1
	movzbl	-1(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %al
	shrb	%al
	andl	$1, %eax
	testb	%al, %al
	jne	L11
	.loc 1 117 0 is_stmt 1
	movzbl	-1(%ebp), %edx
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	movb	%al, %cl
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	andl	$1, %ecx
	movb	(%eax), %dl
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 118 0
	movzbl	-1(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	(%eax), %dl
	orl	$2, %edx
	movb	%dl, (%eax)
	.loc 1 119 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movb	(%eax), %al
	shrb	$2, %al
	movb	%al, %dl
	andl	$1, %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	andl	$1, %edx
	leal	0(,%edx,4), %ecx
	movb	(%eax), %dl
	andl	$-5, %edx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 120 0
	movzbl	-1(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	sall	$3, %ecx
	movl	(%eax), %edx
	andl	$7, %edx
	orl	%ecx, %edx
	movl	%edx, (%eax)
	.loc 1 121 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movb	4(%eax), %dl
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	%dl, 4(%eax)
	.loc 1 122 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movb	5(%eax), %dl
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movb	%dl, 5(%eax)
	.loc 1 123 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movl	%edx, 8(%eax)
	.loc 1 124 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	movl	%edx, 12(%eax)
	.loc 1 125 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	16(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+16, %eax
	movl	%edx, (%eax)
	.loc 1 126 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	20(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+16, %eax
	movl	%edx, 4(%eax)
	.loc 1 127 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+16, %eax
	movl	%edx, 8(%eax)
	.loc 1 128 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+16, %eax
	movl	%edx, 12(%eax)
	.loc 1 129 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movb	32(%eax), %dl
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+32, %eax
	movb	%dl, (%eax)
	.loc 1 130 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movb	33(%eax), %dl
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+32, %eax
	movb	%dl, 1(%eax)
	.loc 1 131 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	40(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+32, %eax
	movl	%edx, 8(%eax)
	.loc 1 132 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	44(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+32, %eax
	movl	%edx, 12(%eax)
	.loc 1 133 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	48(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+48, %eax
	movl	%edx, (%eax)
	.loc 1 134 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	52(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+48, %eax
	movl	%edx, 4(%eax)
	.loc 1 136 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	56(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+48, %eax
	movl	%edx, 8(%eax)
	.loc 1 137 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	60(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+48, %eax
	movl	%edx, 12(%eax)
	.loc 1 138 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	64(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+64, %eax
	movl	%edx, (%eax)
	.loc 1 139 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	68(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+64, %eax
	movl	%edx, 4(%eax)
	.loc 1 155 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	72(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+64, %eax
	movl	%edx, 8(%eax)
	.loc 1 156 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+64, %eax
	movl	%edx, 12(%eax)
	.loc 1 157 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+80, %eax
	movl	%edx, (%eax)
	.loc 1 158 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+80, %eax
	movl	%edx, 4(%eax)
	.loc 1 159 0
	movzbl	-1(%ebp), %ecx
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE+80, %eax
	movl	%edx, 8(%eax)
L11:
	.loc 1 161 0
	movzbl	-1(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$5, %eax
	addl	$_TASK_RUN_QUEUE, %eax
	.loc 1 162 0
	leave
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
	movl	$0, 8(%eax)
	.loc 1 172 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 173 0
	movl	8(%ebp), %eax
	movl	$0, 16(%eax)
	.loc 1 174 0
	movl	8(%ebp), %eax
	movl	$0, 20(%eax)
	.loc 1 175 0
	movl	8(%ebp), %eax
	movl	$0, 24(%eax)
	.loc 1 176 0
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	.loc 1 177 0
	movl	8(%ebp), %eax
	movb	$0, 32(%eax)
	.loc 1 178 0
	movl	8(%ebp), %eax
	movb	$0, 33(%eax)
	.loc 1 179 0
	movl	8(%ebp), %eax
	movl	$0, 40(%eax)
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	$0, 44(%eax)
	.loc 1 181 0
	movl	8(%ebp), %eax
	movl	$0, 48(%eax)
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 184 0
	movl	8(%ebp), %eax
	movl	$0, 56(%eax)
	.loc 1 185 0
	movl	8(%ebp), %eax
	movl	$0, 60(%eax)
	.loc 1 186 0
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	.loc 1 187 0
	movl	8(%ebp), %eax
	movl	$0, 68(%eax)
	.loc 1 205 0
	movl	8(%ebp), %eax
	movl	$0, 72(%eax)
	.loc 1 206 0
	movl	8(%ebp), %eax
	movl	$0, 76(%eax)
	.loc 1 207 0
	movl	8(%ebp), %eax
	movl	$0, 80(%eax)
	.loc 1 208 0
	movl	8(%ebp), %eax
	movl	$0, 84(%eax)
	.loc 1 209 0
	movl	8(%ebp), %eax
	movl	$0, 88(%eax)
	.loc 1 210 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.globl	_GetFromTaskQueue
	.def	_GetFromTaskQueue;	.scl	2;	.type	32;	.endef
_GetFromTaskQueue:
LFB4:
	.loc 1 212 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 213 0
	movl	8(%ebp), %eax
	.loc 1 214 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_GetFromLinkList
	.def	_GetFromLinkList;	.scl	2;	.type	32;	.endef
_GetFromLinkList:
LFB5:
	.loc 1 216 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	.loc 1 217 0
	movzbl	-4(%ebp), %eax
	movl	_pTASK_RUN_QUEUE(,%eax,4), %eax
	.loc 1 218 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_DeleteFromLinkList
	.def	_DeleteFromLinkList;	.scl	2;	.type	32;	.endef
_DeleteFromLinkList:
LFB6:
	.loc 1 221 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	.loc 1 222 0
	movzbl	-4(%ebp), %eax
	movl	$0, _pTASK_RUN_QUEUE(,%eax,4)
	.loc 1 223 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_AddToLinkList
	.def	_AddToLinkList;	.scl	2;	.type	32;	.endef
_AddToLinkList:
LFB7:
	.loc 1 225 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 233 0
	movb	$0, -1(%ebp)
	.loc 1 234 0
	movb	$0, -2(%ebp)
	.loc 1 235 0
	movl	$0, -8(%ebp)
	.loc 1 237 0
	jmp	L20
L23:
	.loc 1 240 0
	movzbl	-2(%ebp), %eax
	movl	_pTASK_RUN_QUEUE(,%eax,4), %eax
	testl	%eax, %eax
	jne	L21
	.loc 1 242 0
	movzbl	-2(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, _pTASK_RUN_QUEUE(,%eax,4)
	.loc 1 243 0
	movb	$1, -1(%ebp)
	.loc 1 244 0
	movzbl	-2(%ebp), %eax
	sall	$2, %eax
	addl	$_pTASK_RUN_QUEUE, %eax
	movl	%eax, -8(%ebp)
L21:
	.loc 1 246 0
	movb	-2(%ebp), %al
	incl	%eax
	movb	%al, -2(%ebp)
L20:
	.loc 1 237 0
	cmpb	$4, -2(%ebp)
	ja	L22
	.loc 1 238 0
	cmpb	$0, -1(%ebp)
	je	L23
L22:
	.loc 1 248 0
	movl	-8(%ebp), %eax
	.loc 1 249 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_UpdateLinkList
	.def	_UpdateLinkList;	.scl	2;	.type	32;	.endef
_UpdateLinkList:
LFB8:
	.loc 1 251 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 253 0
	movb	$0, -1(%ebp)
	movb	$0, -2(%ebp)
	.loc 1 255 0
	jmp	L26
L31:
	.loc 1 257 0
	movzbl	-1(%ebp), %eax
	movl	_pTASK_RUN_QUEUE(,%eax,4), %eax
	testl	%eax, %eax
	jne	L27
	.loc 1 261 0
	movb	-1(%ebp), %al
	movb	%al, -2(%ebp)
	.loc 1 262 0
	jmp	L28
L30:
	.loc 1 264 0
	movb	-2(%ebp), %al
	incl	%eax
	movb	%al, -2(%ebp)
L28:
	.loc 1 262 0
	cmpb	$4, -2(%ebp)
	ja	L29
	.loc 1 262 0 is_stmt 0 discriminator 1
	movzbl	-2(%ebp), %eax
	movl	_pTASK_RUN_QUEUE(,%eax,4), %eax
	testl	%eax, %eax
	je	L30
L29:
	.loc 1 266 0 is_stmt 1
	cmpb	$4, -2(%ebp)
	ja	L27
	.loc 1 266 0 is_stmt 0 discriminator 1
	movzbl	-2(%ebp), %eax
	movl	_pTASK_RUN_QUEUE(,%eax,4), %eax
	testl	%eax, %eax
	je	L27
	.loc 1 268 0 is_stmt 1
	movzbl	-1(%ebp), %eax
	movzbl	-2(%ebp), %edx
	movl	_pTASK_RUN_QUEUE(,%edx,4), %edx
	movl	%edx, _pTASK_RUN_QUEUE(,%eax,4)
	.loc 1 269 0
	movzbl	-2(%ebp), %eax
	movl	$0, _pTASK_RUN_QUEUE(,%eax,4)
L27:
	.loc 1 272 0
	movb	-1(%ebp), %al
	incl	%eax
	movb	%al, -1(%ebp)
L26:
	.loc 1 255 0
	cmpb	$4, -1(%ebp)
	jbe	L31
	.loc 1 274 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_GetIdleTask
	.def	_GetIdleTask;	.scl	2;	.type	32;	.endef
_GetIdleTask:
LFB9:
	.loc 1 278 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 279 0
	movl	$_TASK_IDLE_QUEUE, %eax
	.loc 1 280 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.globl	_AddToIdleTaskQueue
	.def	_AddToIdleTaskQueue;	.scl	2;	.type	32;	.endef
_AddToIdleTaskQueue:
LFB10:
	.loc 1 282 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 284 0
	movb	_TASK_IDLE_QUEUE, %al
	andl	$4, %eax
	testb	%al, %al
	jne	L34
	.loc 1 286 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	andl	$1, %eax
	movb	%al, %dl
	movb	_TASK_IDLE_QUEUE, %al
	andl	$-2, %eax
	orl	%edx, %eax
	movb	%al, _TASK_IDLE_QUEUE
	.loc 1 287 0
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
	.loc 1 288 0
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
	.loc 1 289 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	leal	0(,%eax,8), %edx
	movl	_TASK_IDLE_QUEUE, %eax
	andl	$7, %eax
	orl	%edx, %eax
	movl	%eax, _TASK_IDLE_QUEUE
	.loc 1 290 0
	movl	8(%ebp), %eax
	movb	4(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+4
	.loc 1 291 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+5
	.loc 1 292 0
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+8
	.loc 1 293 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+12
	.loc 1 294 0
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+16
	.loc 1 295 0
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+20
	.loc 1 296 0
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+24
	.loc 1 297 0
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+28
	.loc 1 298 0
	movl	8(%ebp), %eax
	movb	32(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+32
	.loc 1 299 0
	movl	8(%ebp), %eax
	movb	33(%eax), %al
	movb	%al, _TASK_IDLE_QUEUE+33
	.loc 1 300 0
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+40
	.loc 1 301 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+44
	.loc 1 302 0
	movl	$2, _TASK_IDLE_QUEUE+48
	.loc 1 303 0
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+52
	.loc 1 305 0
	movl	8(%ebp), %eax
	movl	56(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+56
	.loc 1 306 0
	movl	8(%ebp), %eax
	movl	60(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+60
	.loc 1 307 0
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+64
	.loc 1 308 0
	movl	8(%ebp), %eax
	movl	68(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+68
	.loc 1 326 0
	movl	8(%ebp), %eax
	movl	72(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+72
	.loc 1 327 0
	movl	8(%ebp), %eax
	movl	76(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+76
	.loc 1 328 0
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+80
	.loc 1 329 0
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+84
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, _TASK_IDLE_QUEUE+88
L34:
	.loc 1 332 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_GetRunningTask
	.def	_GetRunningTask;	.scl	2;	.type	32;	.endef
_GetRunningTask:
LFB11:
	.loc 1 334 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 335 0
	movl	$_RUNNING_TASK, %eax
	.loc 1 336 0
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
	.loc 1 348 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	36(%ebp), %eax
	movb	%cl, -12(%ebp)
	movb	%dl, -16(%ebp)
	movb	%al, -20(%ebp)
	.loc 1 349 0
	cmpl	$0, 8(%ebp)
	je	L39
	.loc 1 351 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 352 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 40(%eax)
	.loc 1 353 0
	movl	8(%ebp), %eax
	movb	-12(%ebp), %dl
	movb	%dl, 4(%eax)
	.loc 1 354 0
	movl	8(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 52(%eax)
	.loc 1 355 0
	movl	8(%ebp), %eax
	movb	$0, 5(%eax)
	.loc 1 356 0
	movl	8(%ebp), %eax
	movl	$0, 8(%eax)
	.loc 1 357 0
	movl	8(%ebp), %eax
	movb	-20(%ebp), %dl
	movb	%dl, 92(%eax)
	.loc 1 359 0
	movl	8(%ebp), %eax
	movl	$1, 20(%eax)
	.loc 1 360 0
	movl	8(%ebp), %eax
	movl	$100000, 24(%eax)
	.loc 1 362 0
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
	.loc 1 363 0
	movl	8(%ebp), %eax
	movl	$_task_state_request, 44(%eax)
	.loc 1 366 0
	cmpb	$0, -16(%ebp)
	je	L40
	.loc 1 368 0
	movl	8(%ebp), %eax
	movl	$3, 48(%eax)
	jmp	L41
L40:
	.loc 1 372 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	$0, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	.loc 1 373 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	$1, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
L41:
	.loc 1 375 0
	cmpl	$200, 32(%ebp)
	jbe	L42
	.loc 1 377 0
	movl	$200, 32(%ebp)
L42:
	.loc 1 381 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 76(%eax)
	.loc 1 382 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %edx
	movl	%edx, 80(%eax)
	.loc 1 383 0
	movl	32(%ebp), %eax
	leal	-1(%eax), %edx
	movl	28(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	.loc 1 384 0
	movl	8(%ebp), %eax
	movl	32(%ebp), %edx
	movl	%edx, 84(%eax)
	.loc 1 386 0
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 72(%eax)
	jmp	L38
L39:
	.loc 1 390 0
	movl	$9, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L38:
	.loc 1 392 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xb2c
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
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.ascii "unsigned_int32_t\0"
	.byte	0x2
	.byte	0x22
	.long	0xe7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x33
	.long	0x1fa
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
	.byte	0
	.uleb128 0x4
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x3f
	.long	0x33c
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
	.ascii "Func_StartTask\0"
	.sleb128 5
	.uleb128 0x5
	.ascii "Func_PreemptTask\0"
	.sleb128 6
	.uleb128 0x5
	.ascii "Func_TerminateTask\0"
	.sleb128 7
	.uleb128 0x5
	.ascii "Func_TaskScheduler\0"
	.sleb128 8
	.uleb128 0x5
	.ascii "Func_InitTask\0"
	.sleb128 9
	.uleb128 0x5
	.ascii "Func_ActivateTask\0"
	.sleb128 10
	.uleb128 0x5
	.ascii "Func_TaskStateRequest\0"
	.sleb128 11
	.uleb128 0x5
	.ascii "Func_os_exception\0"
	.sleb128 12
	.byte	0
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	0x392
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
	.byte	0x4
	.byte	0xe
	.long	0x33c
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x4
	.byte	0x13
	.long	0x3b6
	.uleb128 0x6
	.byte	0x4
	.long	0x3bc
	.uleb128 0x7
	.long	0x3c7
	.uleb128 0x8
	.long	0x3c7
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x4
	.byte	0x15
	.long	0x3e6
	.uleb128 0x6
	.byte	0x4
	.long	0x3ec
	.uleb128 0xa
	.long	0x91
	.long	0x400
	.uleb128 0x8
	.long	0x3c7
	.uleb128 0x8
	.long	0x392
	.byte	0
	.uleb128 0xb
	.ascii "task_group_s\0"
	.byte	0x8
	.byte	0x4
	.byte	0x16
	.long	0x438
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x4
	.byte	0x18
	.long	0xcf
	.byte	0
	.uleb128 0xd
	.ascii "fair_exe_time\0"
	.byte	0x4
	.byte	0x19
	.long	0xcf
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x4
	.byte	0x1b
	.long	0x400
	.uleb128 0xb
	.ascii "task_s\0"
	.byte	0x60
	.byte	0x4
	.byte	0x1d
	.long	0x6aa
	.uleb128 0xe
	.ascii "active\0"
	.byte	0x4
	.byte	0x1f
	.long	0x6aa
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.ascii "task_queued\0"
	.byte	0x4
	.byte	0x20
	.long	0x6aa
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.secrel32	LASF1
	.byte	0x4
	.byte	0x21
	.long	0x6aa
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.ascii "FREE\0"
	.byte	0x4
	.byte	0x22
	.long	0x6aa
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "NrOfInsAllowed\0"
	.byte	0x4
	.byte	0x23
	.long	0x91
	.byte	0x4
	.uleb128 0xd
	.ascii "NrOfInsActivated\0"
	.byte	0x4
	.byte	0x24
	.long	0x91
	.byte	0x5
	.uleb128 0xd
	.ascii "WaitActUntil\0"
	.byte	0x4
	.byte	0x25
	.long	0xcf
	.byte	0x8
	.uleb128 0xd
	.ascii "wait_time\0"
	.byte	0x4
	.byte	0x26
	.long	0xcf
	.byte	0xc
	.uleb128 0xd
	.ascii "TimeToPrioInc\0"
	.byte	0x4
	.byte	0x27
	.long	0xcf
	.byte	0x10
	.uleb128 0xd
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x4
	.byte	0x28
	.long	0xcf
	.byte	0x14
	.uleb128 0xd
	.ascii "max_allowed_wait_time\0"
	.byte	0x4
	.byte	0x29
	.long	0xcf
	.byte	0x18
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x4
	.byte	0x2a
	.long	0xcf
	.byte	0x1c
	.uleb128 0xd
	.ascii "current_prio\0"
	.byte	0x4
	.byte	0x2b
	.long	0x91
	.byte	0x20
	.uleb128 0xd
	.ascii "default_prio\0"
	.byte	0x4
	.byte	0x2c
	.long	0x91
	.byte	0x21
	.uleb128 0xd
	.ascii "task_number\0"
	.byte	0x4
	.byte	0x2d
	.long	0xcf
	.byte	0x24
	.uleb128 0xd
	.ascii "fp\0"
	.byte	0x4
	.byte	0x2e
	.long	0x3a6
	.byte	0x28
	.uleb128 0xd
	.ascii "state_request\0"
	.byte	0x4
	.byte	0x2f
	.long	0x3c9
	.byte	0x2c
	.uleb128 0xd
	.ascii "task_state\0"
	.byte	0x4
	.byte	0x30
	.long	0x392
	.byte	0x30
	.uleb128 0xd
	.ascii "task_group\0"
	.byte	0x4
	.byte	0x31
	.long	0x6ba
	.byte	0x34
	.uleb128 0xd
	.ascii "EAX\0"
	.byte	0x4
	.byte	0x33
	.long	0xcf
	.byte	0x38
	.uleb128 0xd
	.ascii "EBX\0"
	.byte	0x4
	.byte	0x34
	.long	0xcf
	.byte	0x3c
	.uleb128 0xd
	.ascii "ECX\0"
	.byte	0x4
	.byte	0x35
	.long	0xcf
	.byte	0x40
	.uleb128 0xd
	.ascii "EDX\0"
	.byte	0x4
	.byte	0x36
	.long	0xcf
	.byte	0x44
	.uleb128 0xd
	.ascii "pStackPointer\0"
	.byte	0x4
	.byte	0x46
	.long	0x6c0
	.byte	0x48
	.uleb128 0xd
	.ascii "pStackPointerByMalloc\0"
	.byte	0x4
	.byte	0x47
	.long	0x6c0
	.byte	0x4c
	.uleb128 0xd
	.ascii "pStackPointerStart\0"
	.byte	0x4
	.byte	0x48
	.long	0x6c0
	.byte	0x50
	.uleb128 0xd
	.ascii "StackSize\0"
	.byte	0x4
	.byte	0x49
	.long	0xcf
	.byte	0x54
	.uleb128 0xd
	.ascii "pStackPointerEnd\0"
	.byte	0x4
	.byte	0x4a
	.long	0x6c0
	.byte	0x58
	.uleb128 0xd
	.ascii "task_kernel_mode\0"
	.byte	0x4
	.byte	0x4b
	.long	0x91
	.byte	0x5c
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x438
	.uleb128 0x6
	.byte	0x4
	.long	0x91
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x4
	.byte	0x4d
	.long	0x44c
	.uleb128 0x2
	.ascii "link_list_t\0"
	.byte	0x5
	.byte	0xb
	.long	0x3c7
	.uleb128 0x10
	.ascii "SET_RUNNING_TASK\0"
	.byte	0x1
	.byte	0x25
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x718
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0x25
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6c6
	.uleb128 0x12
	.ascii "OS_INIT_TASK_QUEUE\0"
	.byte	0x1
	.byte	0x59
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x75b
	.uleb128 0x13
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x14
	.secrel32	LASF3
	.byte	0x1
	.byte	0x5d
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.uleb128 0x15
	.ascii "AddToTaskQueue\0"
	.byte	0x1
	.byte	0x69
	.long	0x3c7
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x79c
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0x69
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.secrel32	LASF3
	.byte	0x1
	.byte	0x6b
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.ascii "DeleteFromTaskQueue\0"
	.byte	0x1
	.byte	0xa3
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d0
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0xa3
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.ascii "GetFromTaskQueue\0"
	.byte	0x1
	.byte	0xd3
	.long	0x718
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x806
	.uleb128 0x16
	.ascii "link\0"
	.byte	0x1
	.byte	0xd3
	.long	0x806
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6d4
	.uleb128 0x15
	.ascii "GetFromLinkList\0"
	.byte	0x1
	.byte	0xd7
	.long	0x806
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x840
	.uleb128 0x11
	.secrel32	LASF3
	.byte	0x1
	.byte	0xd7
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.ascii "DeleteFromLinkList\0"
	.byte	0x1
	.byte	0xdc
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x873
	.uleb128 0x11
	.secrel32	LASF3
	.byte	0x1
	.byte	0xdc
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.ascii "AddToLinkList\0"
	.byte	0x1
	.byte	0xe0
	.long	0x3c7
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e0
	.uleb128 0x11
	.secrel32	LASF2
	.byte	0x1
	.byte	0xe0
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "Add_successful\0"
	.byte	0x1
	.byte	0xe9
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii "index\0"
	.byte	0x1
	.byte	0xea
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x17
	.ascii "ret_val\0"
	.byte	0x1
	.byte	0xeb
	.long	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x10
	.ascii "UpdateLinkList\0"
	.byte	0x1
	.byte	0xfa
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x91e
	.uleb128 0x17
	.ascii "dest\0"
	.byte	0x1
	.byte	0xfd
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii "src\0"
	.byte	0x1
	.byte	0xfd
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x18
	.ascii "GetIdleTask\0"
	.byte	0x1
	.word	0x115
	.long	0x718
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.ascii "AddToIdleTaskQueue\0"
	.byte	0x1
	.word	0x119
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x971
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x119
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.ascii "GetRunningTask\0"
	.byte	0x1
	.word	0x14d
	.long	0x718
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.ascii "OS_INIT_TASK\0"
	.byte	0x1
	.word	0x152
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5e
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x153
	.long	0x718
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.ascii "TaskFunction\0"
	.byte	0x1
	.word	0x154
	.long	0x3a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.ascii "AllowedInstances\0"
	.byte	0x1
	.word	0x155
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x156
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.ascii "p_task_group\0"
	.byte	0x1
	.word	0x157
	.long	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.ascii "pStackAddr\0"
	.byte	0x1
	.word	0x158
	.long	0x6c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1c
	.ascii "uStackSize\0"
	.byte	0x1
	.word	0x159
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1c
	.ascii "KernelMode\0"
	.byte	0x1
	.word	0x15a
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x1d
	.long	0x718
	.long	0xa6e
	.uleb128 0x1e
	.long	0xa6e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x17
	.ascii "pTASK_RUN_QUEUE\0"
	.byte	0x1
	.byte	0x6
	.long	0xa5e
	.uleb128 0x5
	.byte	0x3
	.long	_pTASK_RUN_QUEUE
	.uleb128 0x1d
	.long	0x6c6
	.long	0xaa7
	.uleb128 0x1e
	.long	0xa6e
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x1
	.byte	0x7
	.long	0xa97
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_RUN_QUEUE
	.uleb128 0x1d
	.long	0x6c6
	.long	0xad3
	.uleb128 0x1e
	.long	0xa6e
	.byte	0
	.byte	0
	.uleb128 0x17
	.ascii "RUNNING_TASK\0"
	.byte	0x1
	.byte	0x8
	.long	0xac3
	.uleb128 0x5
	.byte	0x3
	.long	_RUNNING_TASK
	.uleb128 0x17
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x1
	.byte	0x9
	.long	0xac3
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_IDLE_QUEUE
	.uleb128 0x17
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x1
	.byte	0xa
	.long	0x91
	.uleb128 0x5
	.byte	0x3
	.long	_bTASK_QUEUE_INITIALIZED
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x6
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
	.uleb128 0x12
	.ascii "cMCU_SIMULATION 1\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "cMCU_POWERPC 2\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "cMCU_X86 3\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "cMCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "NR_OF_CORES 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "DisableInterrupts() \0"
	.byte	0x1
	.uleb128 0x26
	.ascii "EnableInterrupts() \0"
	.byte	0x1
	.uleb128 0x27
	.ascii "Privilige_level_save_current() \0"
	.byte	0x1
	.uleb128 0x28
	.ascii "Privilige_level_enter_kernel_mode() \0"
	.byte	0x1
	.uleb128 0x29
	.ascii "Privilige_level_restore_saved() \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "HaltMcu() \0"
	.byte	0x4
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x4
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_stack_h_ \0"
	.byte	0x1
	.uleb128 0x4
	.ascii "OS_STACK_SIZE 0x100\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "OS_STACK_SIZE_END 0x01u\0"
	.byte	0x4
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xa
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
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xe
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
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_ram_h_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_task_common_h_ \0"
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x13
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
	.ascii "NUMBER_OF_TASKS 5\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "MAX_RUN_QUEUE_SIZE (NUMBER_OF_TASKS)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "MAX_RUN_PQUEUE_SIZE MAX_RUN_QUEUE_SIZE\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "TASK_STACK_SIZE 200\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "MS_PER_SEC (1000)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "USE_STATIC_CREATED_TASKS True\0"
	.byte	0x4
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_init_task_system_h_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5c
	.ascii "os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x5
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
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x17
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
LASF3:
	.ascii "element_nr\0"
LASF0:
	.ascii "exe_time\0"
LASF1:
	.ascii "IdleTask\0"
LASF2:
	.ascii "task\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	_OS_Task_InitTaskEnvironment;	.scl	2;	.type	32;	.endef
	.def	_task_state_request;	.scl	2;	.type	32;	.endef
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
