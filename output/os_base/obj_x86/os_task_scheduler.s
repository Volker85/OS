	.file	"os_task_scheduler.c"
	.text
Ltext0:
.lcomm _TASK_STACK,1000,32
.lcomm _LAST_CURRENT_TIME,4,4
	.globl	_OS_ACTIVATE_DISPATCHER
	.def	_OS_ACTIVATE_DISPATCHER;	.scl	2;	.type	32;	.endef
_OS_ACTIVATE_DISPATCHER:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.c"
	.loc 1 27 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 50 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_SLEEPTASK
	.def	_OS_SLEEPTASK;	.scl	2;	.type	32;	.endef
_OS_SLEEPTASK:
LFB1:
	.loc 1 54 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 55 0
	call	_Get_current_time
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	.loc 1 56 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_task_state_request
	.def	_task_state_request;	.scl	2;	.type	32;	.endef
_task_state_request:
LFB2:
	.loc 1 59 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 60 0
	movb	$0, -9(%ebp)
	.loc 1 62 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 64 0
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	je	L5
	cmpl	$1, %eax
	jb	L6
	cmpl	$2, %eax
	je	L7
	cmpl	$3, %eax
	je	L8
	.loc 1 156 0
	jmp	L12
L6:
	.loc 1 68 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	decl	%eax
	cmpl	$2, %eax
	ja	L9
	.loc 1 74 0
	movb	$0, -9(%ebp)
	.loc 1 75 0
	jmp	L11
L9:
	.loc 1 79 0
	movl	-16(%ebp), %eax
	movl	$0, 52(%eax)
	.loc 1 80 0
	movb	$1, -9(%ebp)
	.loc 1 81 0
	nop
L11:
	.loc 1 84 0
	jmp	L12
L5:
	.loc 1 88 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	testl	%eax, %eax
	je	L14
	cmpl	$3, %eax
	je	L15
	.loc 1 106 0
	jmp	L16
L14:
	.loc 1 93 0
	movl	-16(%ebp), %eax
	movl	$1, 52(%eax)
	.loc 1 94 0
	movb	$1, -9(%ebp)
	.loc 1 95 0
	jmp	L16
L15:
	.loc 1 99 0
	movl	-16(%ebp), %eax
	movl	$1, 52(%eax)
	.loc 1 100 0
	movb	$1, -9(%ebp)
	.loc 1 101 0
	nop
L16:
	.loc 1 109 0 discriminator 1
	jmp	L12
L8:
	.loc 1 113 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$2, %eax
	je	L18
	.loc 1 124 0
	jmp	L19
L18:
	.loc 1 117 0
	movl	-16(%ebp), %eax
	movl	$3, 52(%eax)
	.loc 1 118 0
	movb	$1, -9(%ebp)
	.loc 1 119 0
	nop
L19:
	.loc 1 127 0 discriminator 2
	jmp	L12
L7:
	.loc 1 132 0
	movl	-16(%ebp), %eax
	movl	52(%eax), %eax
	cmpl	$1, %eax
	je	L21
	cmpl	$3, %eax
	je	L22
	.loc 1 149 0
	jmp	L23
L21:
	.loc 1 136 0
	movl	-16(%ebp), %eax
	movl	$2, 52(%eax)
	.loc 1 137 0
	movb	$1, -9(%ebp)
	.loc 1 138 0
	jmp	L23
L22:
	.loc 1 142 0
	movl	-16(%ebp), %eax
	movl	$2, 52(%eax)
	.loc 1 143 0
	movb	$1, -9(%ebp)
	.loc 1 144 0
	nop
L23:
	.loc 1 152 0 discriminator 3
	nop
L12:
	.loc 1 159 0
	cmpb	$0, -9(%ebp)
	jne	L24
	.loc 1 161 0
	movl	$11, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
L24:
	.loc 1 163 0
	movb	-9(%ebp), %al
	.loc 1 164 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_OS_ActivateTask
	.def	_OS_ActivateTask;	.scl	2;	.type	32;	.endef
_OS_ActivateTask:
LFB3:
	.loc 1 166 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 175 0
	cmpl	$0, 8(%ebp)
	je	L26
	.loc 1 177 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L28
	.loc 1 177 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L29
L28:
	.loc 1 181 0 is_stmt 1
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L30
	.loc 1 183 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	testb	%al, %al
	je	L31
	.loc 1 184 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	testb	%al, %al
	je	L33
	.loc 1 184 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movb	4(%eax), %dl
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	cmpb	%al, %dl
	jbe	L33
L31:
	.loc 1 188 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToTaskQueue
	movl	%eax, 8(%ebp)
	.loc 1 190 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToLinkList
	.loc 1 191 0
	call	_UpdateLinkList
	.loc 1 192 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 5(%eax)
	.loc 1 181 0
	jmp	L26
L30:
	.loc 1 201 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToIdleTaskQueue
	.loc 1 181 0
	jmp	L26
L33:
	.loc 1 181 0 is_stmt 0 discriminator 1
	jmp	L26
L29:
	.loc 1 207 0 is_stmt 1
	movl	$10, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
L26:
	.loc 1 210 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.def	_OS_STARTTASK;	.scl	3;	.type	32;	.endef
_OS_STARTTASK:
LFB4:
	.loc 1 212 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 220 0
	cmpl	$0, 8(%ebp)
	je	L34
	.loc 1 220 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$2, %eax
	testb	%al, %al
	jne	L36
	.loc 1 220 0 discriminator 2
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	je	L34
L36:
	.loc 1 222 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L37
	.loc 1 224 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$3, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L38
	.loc 1 227 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	orl	$1, %edx
	movb	%dl, (%eax)
	.loc 1 228 0
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	.loc 1 229 0
	movl	8(%ebp), %eax
	movb	37(%eax), %dl
	movl	8(%ebp), %eax
	movb	%dl, 36(%eax)
	.loc 1 230 0
	call	_GET_CORE_ID
	sall	$8, %eax
	addl	$_OS_STACK, %eax
	movl	%eax, (%esp)
	call	_OS_TASK_SAVE_SYSTEM_STACK
	.loc 1 231 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_RESTORETASK_ENVIRONMENT
	.loc 1 232 0
	call	_Get_current_time
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 32(%eax)
	.loc 1 236 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_SET_RUNNING_TASK
	.loc 1 238 0
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	testl	%eax, %eax
	jne	L39
	.loc 1 240 0
	call	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE
L39:
	.loc 1 244 0
	movl	8(%ebp), %eax
	movl	44(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L34
L38:
	.loc 1 248 0
	movl	$5, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	jmp	L34
L37:
	.loc 1 254 0
	movl	$5, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L34:
	.loc 1 263 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_OS_TERMINATE_TASK
	.def	_OS_TERMINATE_TASK;	.scl	2;	.type	32;	.endef
_OS_TERMINATE_TASK:
LFB5:
	.loc 1 265 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 273 0
	cmpl	$0, 8(%ebp)
	je	L42
	.loc 1 275 0
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	L43
	.loc 1 277 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L44
	.loc 1 277 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movl	48(%eax), %eax
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L45
L44:
	.loc 1 280 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_SAVETASK_ENVIRONMENT
	.loc 1 281 0
	call	_GET_CORE_ID
	sall	$8, %eax
	addl	$_OS_STACK, %eax
	movl	%eax, (%esp)
	call	_OS_TASK_RESTORE_SYSTEM_STACK
	.loc 1 283 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 285 0
	movl	8(%ebp), %eax
	movb	37(%eax), %dl
	movl	8(%ebp), %eax
	movb	%dl, 36(%eax)
	jmp	L41
L45:
	.loc 1 290 0
	movl	$7, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	jmp	L41
L43:
	.loc 1 295 0
	movl	$7, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
	jmp	L41
L42:
	.loc 1 301 0
	movl	$7, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L41:
	.loc 1 303 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_OS_TASK_DISPATCHER
	.def	_OS_TASK_DISPATCHER;	.scl	2;	.type	32;	.endef
_OS_TASK_DISPATCHER:
LFB6:
	.loc 1 305 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 316 0
	movl	$0, -12(%ebp)
	.loc 1 318 0
	call	_GetRunningTask
	movl	%eax, -12(%ebp)
	.loc 1 321 0
	cmpl	$0, -12(%ebp)
	je	L50
	.loc 1 323 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TERMINATE_TASK
L50:
	.loc 1 328 0
	call	_OS_TaskScheduler
	movl	%eax, -12(%ebp)
	.loc 1 330 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_STARTTASK
	.loc 1 331 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.def	_TASK_0;	.scl	3;	.type	32;	.endef
_TASK_0:
LFB7:
	.loc 1 333 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 336 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.def	_TASK_1;	.scl	3;	.type	32;	.endef
_TASK_1:
LFB8:
	.loc 1 338 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 344 0
	movl	$100000000, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_SLEEPTASK
	.loc 1 347 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.def	_TASK_2;	.scl	3;	.type	32;	.endef
_TASK_2:
LFB9:
	.loc 1 349 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 357 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.def	_TASK_3;	.scl	3;	.type	32;	.endef
_TASK_3:
LFB10:
	.loc 1 359 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 367 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_OS_INIT_TASKS
	.def	_OS_INIT_TASKS;	.scl	2;	.type	32;	.endef
_OS_INIT_TASKS:
LFB11:
	.loc 1 369 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 376 0
	movl	$0, -12(%ebp)
	.loc 1 377 0
	call	_Get_current_time
	movl	%eax, _LAST_CURRENT_TIME
	.loc 1 388 0
	call	_OS_INIT_TASK_QUEUE
	.loc 1 391 0
	movl	$_task_0.1366, -12(%ebp)
	.loc 1 392 0
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK, 20(%esp)
	movl	$_TASK_GROUP_1.1370, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 406 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_SET_RUNNING_TASK
	.loc 1 409 0
	movl	$_task_1.1367, -12(%ebp)
	.loc 1 410 0
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+200, 20(%esp)
	movl	$_TASK_GROUP_1.1370, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 424 0
	movl	$_task_2.1368, -12(%ebp)
	.loc 1 425 0
	movl	$2, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+400, 20(%esp)
	movl	$_TASK_GROUP_2.1371, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 439 0
	movl	$_task_3.1369, -12(%ebp)
	.loc 1 440 0
	movl	$3, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+600, 20(%esp)
	movl	$_TASK_GROUP_3.1372, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 452 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	_OS_TaskScheduler;	.scl	3;	.type	32;	.endef
_OS_TaskScheduler:
LFB12:
	.loc 1 456 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	.loc 1 459 0
	movl	$0, -12(%ebp)
	.loc 1 463 0
	call	_Get_current_time
	movl	%eax, %edx
	movl	_LAST_CURRENT_TIME, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%ebp)
	.loc 1 464 0
	call	_Get_current_time
	movl	%eax, _LAST_CURRENT_TIME
	.loc 1 479 0
	movb	$0, -13(%ebp)
	jmp	L57
L65:
	.loc 1 481 0
	movzbl	-13(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromLinkList
	movl	%eax, _link_list_member.1382
	.loc 1 483 0
	movl	_link_list_member.1382, %eax
	movl	%eax, (%esp)
	call	_GetFromTaskQueue
	movl	%eax, _task.1379
	.loc 1 485 0
	movl	_task.1379, %eax
	testl	%eax, %eax
	je	L58
	.loc 1 485 0 is_stmt 0 discriminator 1
	movl	_task.1379, %eax
	movb	(%eax), %al
	andl	$2, %eax
	testb	%al, %al
	je	L58
	.loc 1 487 0 is_stmt 1
	movl	_task.1379, %eax
	movl	12(%eax), %edx
	movl	_task.1379, %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jb	L59
	.loc 1 489 0
	movl	_task.1379, %eax
	movl	_task.1379, %edx
	movb	36(%edx), %cl
	movl	_task.1379, %edx
	movl	20(%edx), %edx
	addl	%ecx, %edx
	movb	%dl, 36(%eax)
L59:
	.loc 1 492 0
	movl	_task.1379, %eax
	movl	8(%eax), %ebx
	call	_Get_current_time
	cmpl	%eax, %ebx
	jbe	L60
	.loc 1 494 0
	movl	_task.1379, %eax
	movb	$0, 36(%eax)
L60:
	.loc 1 496 0
	movl	_task.1379, %eax
	movl	12(%eax), %edx
	movl	_task.1379, %eax
	movl	24(%eax), %eax
	cmpl	%eax, %edx
	jbe	L61
	.loc 1 499 0
	movl	$8, 4(%esp)
	movl	$3, (%esp)
	call	_OS_SET_SW_BUG
L61:
	.loc 1 502 0
	movl	_task.1379, %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	L62
	.loc 1 505 0
	movl	_task.1379, %eax
	movl	56(%eax), %eax
	movl	(%eax), %edx
	movl	_task.1379, %eax
	movl	56(%eax), %eax
	movl	4(%eax), %eax
	cmpl	%eax, %edx
	jbe	L58
	.loc 1 507 0
	movl	_task.1379, %eax
	movl	28(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
	fildq	-32(%ebp)
	fld1
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	je	L73
	jmp	L58
L73:
	.loc 1 509 0
	movl	_task.1379, %eax
	movb	$0, 36(%eax)
	jmp	L58
L62:
	.loc 1 516 0
	movl	$8, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L58:
	.loc 1 479 0 discriminator 2
	movb	-13(%ebp), %al
	incl	%eax
	movb	%al, -13(%ebp)
L57:
	.loc 1 479 0 is_stmt 0 discriminator 1
	cmpb	$4, -13(%ebp)
	jbe	L65
	.loc 1 526 0 is_stmt 1
	movb	$0, -13(%ebp)
	jmp	L66
L69:
	.loc 1 528 0
	movzbl	-13(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromLinkList
	movl	%eax, _link_list_member.1382
	.loc 1 529 0
	movl	_link_list_member.1382, %eax
	movl	%eax, (%esp)
	call	_GetFromTaskQueue
	movl	%eax, _task.1379
	.loc 1 530 0
	movl	_task.1379, %eax
	testl	%eax, %eax
	je	L67
	.loc 1 533 0
	movl	_task.1379, %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L68
	.loc 1 535 0
	movl	_task.1379, %eax
	movl	_task.1379, %edx
	movl	12(%edx), %ecx
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	movl	%edx, 12(%eax)
L68:
	.loc 1 538 0
	movl	_task.1379, %eax
	movb	36(%eax), %dl
	movb	_Winner_prio.1380, %al
	cmpb	%al, %dl
	jbe	L67
	.loc 1 540 0
	movl	_task.1379, %eax
	movb	36(%eax), %al
	movb	%al, _Winner_prio.1380
	.loc 1 541 0
	movl	_task.1379, %eax
	movl	%eax, -12(%ebp)
L67:
	.loc 1 526 0 discriminator 2
	movb	-13(%ebp), %al
	incl	%eax
	movb	%al, -13(%ebp)
L66:
	.loc 1 526 0 is_stmt 0 discriminator 1
	cmpb	$4, -13(%ebp)
	jbe	L69
	.loc 1 553 0 is_stmt 1
	cmpl	$0, -12(%ebp)
	je	L70
	.loc 1 555 0
	movl	-12(%ebp), %eax
	movb	$0, 36(%eax)
	jmp	L71
L70:
	.loc 1 559 0
	call	_GetIdleTask
	movl	%eax, -12(%ebp)
L71:
	.loc 1 561 0
	movl	-12(%ebp), %eax
	.loc 1 562 0
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_ISR_TASK_DISPATCH_C0
	.def	_ISR_TASK_DISPATCH_C0;	.scl	2;	.type	32;	.endef
_ISR_TASK_DISPATCH_C0:
LFB13:
	.loc 1 565 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 569 0
	call	_OS_TASK_DISPATCHER
	.loc 1 571 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
.lcomm _TASK_GROUP_1.1370,8,4
.lcomm _TASK_GROUP_2.1371,8,4
.lcomm _TASK_GROUP_3.1372,8,4
.lcomm _TASK_GROUP_4.1373,8,4
.lcomm _TASK_GROUP_5.1374,8,4
.lcomm _task_0.1366,100,32
.lcomm _task_1.1367,100,32
.lcomm _task_2.1368,100,32
.lcomm _task_3.1369,100,32
.lcomm _link_list_member.1382,4,4
.lcomm _task.1379,4,4
.lcomm _Winner_prio.1380,1,1
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.h"
	.file 7 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.h"
	.file 8 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xcc1
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.9.3 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "E:\\NeuOrga\\Programmieren\\c_cpp\\github_os\\input\\src\\os_base\\os_task_scheduler.c\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.secrel32	Ldebug_macro0
	.uleb128 0x2
	.ascii "unsigned_char_t\0"
	.byte	0x2
	.byte	0x1d
	.long	0xac
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
	.long	0xeb
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.long	0x1fe
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
	.byte	0x36
	.long	0x340
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
	.ascii "CoreID_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.long	0x372
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
	.uleb128 0x4
	.ascii "privilige_mode_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.long	0x407
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
	.long	0x372
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.long	0x475
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
	.long	0x41f
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.long	0x499
	.uleb128 0x6
	.byte	0x4
	.long	0x49f
	.uleb128 0x7
	.long	0x4aa
	.uleb128 0x8
	.long	0x4aa
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.long	0x4c9
	.uleb128 0x6
	.byte	0x4
	.long	0x4cf
	.uleb128 0xa
	.long	0x95
	.long	0x4e3
	.uleb128 0x8
	.long	0x4aa
	.uleb128 0x8
	.long	0x475
	.byte	0
	.uleb128 0xb
	.ascii "task_group_s\0"
	.byte	0x8
	.byte	0x5
	.byte	0x16
	.long	0x51b
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x5
	.byte	0x18
	.long	0xd3
	.byte	0
	.uleb128 0xd
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x19
	.long	0xd3
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1b
	.long	0x4e3
	.uleb128 0xb
	.ascii "task_s\0"
	.byte	0x64
	.byte	0x5
	.byte	0x1d
	.long	0x7a3
	.uleb128 0xe
	.ascii "active\0"
	.byte	0x5
	.byte	0x1f
	.long	0x7a3
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xe
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x20
	.long	0x7a3
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xe
	.ascii "IdleTask\0"
	.byte	0x5
	.byte	0x21
	.long	0x7a3
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xe
	.ascii "FREE\0"
	.byte	0x5
	.byte	0x22
	.long	0x7a3
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0xd
	.ascii "NrOfInsAllowed\0"
	.byte	0x5
	.byte	0x23
	.long	0x95
	.byte	0x4
	.uleb128 0xd
	.ascii "NrOfInsActivated\0"
	.byte	0x5
	.byte	0x24
	.long	0x95
	.byte	0x5
	.uleb128 0xd
	.ascii "WaitActUntil\0"
	.byte	0x5
	.byte	0x25
	.long	0xd3
	.byte	0x8
	.uleb128 0xd
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x26
	.long	0xd3
	.byte	0xc
	.uleb128 0xd
	.ascii "TimeToPrioInc\0"
	.byte	0x5
	.byte	0x27
	.long	0xd3
	.byte	0x10
	.uleb128 0xd
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x28
	.long	0xd3
	.byte	0x14
	.uleb128 0xd
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x29
	.long	0xd3
	.byte	0x18
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2a
	.long	0xd3
	.byte	0x1c
	.uleb128 0xd
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2b
	.long	0xd3
	.byte	0x20
	.uleb128 0xd
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2c
	.long	0x95
	.byte	0x24
	.uleb128 0xd
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2d
	.long	0x95
	.byte	0x25
	.uleb128 0xd
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x2e
	.long	0xd3
	.byte	0x28
	.uleb128 0xd
	.ascii "fp\0"
	.byte	0x5
	.byte	0x2f
	.long	0x489
	.byte	0x2c
	.uleb128 0xd
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x30
	.long	0x4ac
	.byte	0x30
	.uleb128 0xd
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x31
	.long	0x475
	.byte	0x34
	.uleb128 0xd
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x32
	.long	0x7b3
	.byte	0x38
	.uleb128 0xd
	.ascii "EAX\0"
	.byte	0x5
	.byte	0x34
	.long	0xd3
	.byte	0x3c
	.uleb128 0xd
	.ascii "EBX\0"
	.byte	0x5
	.byte	0x35
	.long	0xd3
	.byte	0x40
	.uleb128 0xd
	.ascii "ECX\0"
	.byte	0x5
	.byte	0x36
	.long	0xd3
	.byte	0x44
	.uleb128 0xd
	.ascii "EDX\0"
	.byte	0x5
	.byte	0x37
	.long	0xd3
	.byte	0x48
	.uleb128 0xd
	.ascii "pStackPointer\0"
	.byte	0x5
	.byte	0x47
	.long	0x7b9
	.byte	0x4c
	.uleb128 0xd
	.ascii "pStackPointerByMalloc\0"
	.byte	0x5
	.byte	0x48
	.long	0x7b9
	.byte	0x50
	.uleb128 0xd
	.ascii "pStackPointerStart\0"
	.byte	0x5
	.byte	0x49
	.long	0x7b9
	.byte	0x54
	.uleb128 0xd
	.ascii "StackSize\0"
	.byte	0x5
	.byte	0x4a
	.long	0xd3
	.byte	0x58
	.uleb128 0xd
	.ascii "pStackPointerEnd\0"
	.byte	0x5
	.byte	0x4b
	.long	0x7b9
	.byte	0x5c
	.uleb128 0xd
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4c
	.long	0x407
	.byte	0x60
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x51b
	.uleb128 0x6
	.byte	0x4
	.long	0x95
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x4e
	.long	0x52f
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5b
	.long	0x7a3
	.uleb128 0x2
	.ascii "task_time_t\0"
	.byte	0x6
	.byte	0xf
	.long	0x7a3
	.uleb128 0x2
	.ascii "link_list_t\0"
	.byte	0x7
	.byte	0xb
	.long	0x4aa
	.uleb128 0xf
	.ascii "OS_ACTIVATE_DISPATCHER\0"
	.byte	0x1
	.byte	0x1a
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.ascii "OS_SLEEPTASK\0"
	.byte	0x1
	.byte	0x35
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x86f
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0x35
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "millisec\0"
	.byte	0x1
	.byte	0x35
	.long	0x7e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7bf
	.uleb128 0x13
	.ascii "task_state_request\0"
	.byte	0x1
	.byte	0x3a
	.long	0x95
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f1
	.uleb128 0x12
	.ascii "temp_task\0"
	.byte	0x1
	.byte	0x3a
	.long	0x4aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.ascii "requested_state\0"
	.byte	0x1
	.byte	0x3a
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.ascii "RequestState\0"
	.byte	0x1
	.byte	0x3c
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.secrel32	LASF1
	.byte	0x1
	.byte	0x3e
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.ascii "OS_ActivateTask\0"
	.byte	0x1
	.byte	0xa5
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x921
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0xa5
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.ascii "OS_STARTTASK\0"
	.byte	0x1
	.byte	0xd3
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x94e
	.uleb128 0x11
	.secrel32	LASF1
	.byte	0x1
	.byte	0xd3
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.ascii "OS_TERMINATE_TASK\0"
	.byte	0x1
	.word	0x108
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x982
	.uleb128 0x18
	.secrel32	LASF1
	.byte	0x1
	.word	0x108
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.ascii "OS_TASK_DISPATCHER\0"
	.byte	0x1
	.word	0x130
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b7
	.uleb128 0x19
	.secrel32	LASF1
	.byte	0x1
	.word	0x13c
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.ascii "TASK_0\0"
	.byte	0x1
	.word	0x14c
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e0
	.uleb128 0x18
	.secrel32	LASF2
	.byte	0x1
	.word	0x14c
	.long	0x4aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.ascii "TASK_1\0"
	.byte	0x1
	.word	0x151
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xa09
	.uleb128 0x18
	.secrel32	LASF2
	.byte	0x1
	.word	0x151
	.long	0x4aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.ascii "TASK_2\0"
	.byte	0x1
	.word	0x15c
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa32
	.uleb128 0x18
	.secrel32	LASF2
	.byte	0x1
	.word	0x15c
	.long	0x4aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.ascii "TASK_3\0"
	.byte	0x1
	.word	0x166
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5b
	.uleb128 0x18
	.secrel32	LASF2
	.byte	0x1
	.word	0x166
	.long	0x4aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.ascii "OS_INIT_TASKS\0"
	.byte	0x1
	.word	0x170
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb66
	.uleb128 0x1c
	.ascii "task_0\0"
	.byte	0x1
	.word	0x172
	.long	0x7bf
	.uleb128 0x5
	.byte	0x3
	.long	_task_0.1366
	.uleb128 0x1c
	.ascii "task_1\0"
	.byte	0x1
	.word	0x172
	.long	0x7bf
	.uleb128 0x5
	.byte	0x3
	.long	_task_1.1367
	.uleb128 0x1c
	.ascii "task_2\0"
	.byte	0x1
	.word	0x172
	.long	0x7bf
	.uleb128 0x5
	.byte	0x3
	.long	_task_2.1368
	.uleb128 0x1c
	.ascii "task_3\0"
	.byte	0x1
	.word	0x172
	.long	0x7bf
	.uleb128 0x5
	.byte	0x3
	.long	_task_3.1369
	.uleb128 0x1c
	.ascii "TASK_GROUP_1\0"
	.byte	0x1
	.word	0x173
	.long	0x51b
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_GROUP_1.1370
	.uleb128 0x1c
	.ascii "TASK_GROUP_2\0"
	.byte	0x1
	.word	0x174
	.long	0x51b
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_GROUP_2.1371
	.uleb128 0x1c
	.ascii "TASK_GROUP_3\0"
	.byte	0x1
	.word	0x175
	.long	0x51b
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_GROUP_3.1372
	.uleb128 0x1c
	.ascii "TASK_GROUP_4\0"
	.byte	0x1
	.word	0x176
	.long	0x51b
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_GROUP_4.1373
	.uleb128 0x1c
	.ascii "TASK_GROUP_5\0"
	.byte	0x1
	.word	0x177
	.long	0x51b
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_GROUP_5.1374
	.uleb128 0x19
	.secrel32	LASF2
	.byte	0x1
	.word	0x178
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.ascii "OS_TaskScheduler\0"
	.byte	0x1
	.word	0x1c7
	.long	0x86f
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1c
	.uleb128 0x19
	.secrel32	LASF1
	.byte	0x1
	.word	0x1c9
	.long	0x86f
	.uleb128 0x5
	.byte	0x3
	.long	_task.1379
	.uleb128 0x1c
	.ascii "Winner_prio\0"
	.byte	0x1
	.word	0x1ca
	.long	0x95
	.uleb128 0x5
	.byte	0x3
	.long	_Winner_prio.1380
	.uleb128 0x1c
	.ascii "Winner_task\0"
	.byte	0x1
	.word	0x1cb
	.long	0x86f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1c
	.ascii "link_list_member\0"
	.byte	0x1
	.word	0x1cc
	.long	0xc1c
	.uleb128 0x5
	.byte	0x3
	.long	_link_list_member.1382
	.uleb128 0x1c
	.ascii "element_nr\0"
	.byte	0x1
	.word	0x1cd
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1c
	.ascii "delta_time\0"
	.byte	0x1
	.word	0x1cf
	.long	0x7cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7f8
	.uleb128 0x1e
	.ascii "ISR_TASK_DISPATCH_C0\0"
	.byte	0x1
	.word	0x234
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	0x95
	.long	0xc5b
	.uleb128 0x20
	.long	0xc5b
	.byte	0x4
	.uleb128 0x20
	.long	0xc5b
	.byte	0xc7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x14
	.ascii "TASK_STACK\0"
	.byte	0x1
	.byte	0x16
	.long	0xc45
	.uleb128 0x5
	.byte	0x3
	.long	_TASK_STACK
	.uleb128 0x14
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x1
	.byte	0x17
	.long	0x7cd
	.uleb128 0x5
	.byte	0x3
	.long	_LAST_CURRENT_TIME
	.uleb128 0x1f
	.long	0x95
	.long	0xcb4
	.uleb128 0x20
	.long	0xc5b
	.byte	0
	.uleb128 0x20
	.long	0xc5b
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.ascii "OS_STACK\0"
	.byte	0x8
	.byte	0xd
	.long	0xc9e
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
	.uleb128 0x2116
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x34
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.file 9 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
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
	.ascii "cMCU_X86 3\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "cMCU_CORTEX_M4 4\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "NR_OF_CORES 1\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "MCU_CLOCK_IN_HZ ((uint32)168000000u)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "DisableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "EnableInterrupts() \0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "Privilige_level_save_current() \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "Privilige_level_enter_kernel_mode() \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "Privilige_level_restore_saved() \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "HaltMcu() \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_RAM_H_ \0"
	.file 10 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xa
	.byte	0x4
	.file 11 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xb
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
	.file 12 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_heap.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xc
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
	.file 13 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_main.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xd
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
	.byte	0x4
	.file 14 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_global.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_global_h_ \0"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_core_h_ \0"
	.file 15 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_firstinc.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.file 16 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_interrupt.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
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
	.file 17 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_mmu.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_mmu_h_ \0"
	.byte	0x4
	.file 18 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_timer.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_timer_h_ \0"
	.byte	0x4
	.file 19 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_power.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x2
	.ascii "_lld_power_h_ \0"
	.byte	0x4
	.file 20 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_ram.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x14
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
	.uleb128 0xf
	.byte	0x4
	.file 21 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_config.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x15
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
	.file 22 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_init_task_system.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x2
	.ascii "_os_init_task_system_h_ \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5d
	.ascii "os_SaveTaskPtr(task_ptr,task_name) (TASK_PTR[(task_name)] = (task_ptr))\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "os_GetTaskPtr(task_name) ((task_t*) TASK_PTR[(task_name)])\0"
	.byte	0x4
	.byte	0x4
	.file 23 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_user_code/led.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x2
	.ascii "_LED_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 24 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x4
	.file 25 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_common.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
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
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x7
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
	.file 26 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1
	.uleb128 0x23
	.ascii "SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "SYSTICK_STAT_REG_ENABLE ((uint32)0x00000001)\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "LOOPTIME_IN_USEC ((uint32)10000u)\0"
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF1:
	.ascii "task\0"
LASF2:
	.ascii "task_ptr\0"
LASF0:
	.ascii "exe_time\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	_Get_current_time;	.scl	2;	.type	32;	.endef
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
	.def	_AddToTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_AddToLinkList;	.scl	2;	.type	32;	.endef
	.def	_UpdateLinkList;	.scl	2;	.type	32;	.endef
	.def	_AddToIdleTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_GET_CORE_ID;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_SAVE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORETASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
	.def	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_SAVETASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_GetRunningTask;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_TASK;	.scl	2;	.type	32;	.endef
	.def	_GetFromLinkList;	.scl	2;	.type	32;	.endef
	.def	_GetFromTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_GetIdleTask;	.scl	2;	.type	32;	.endef
