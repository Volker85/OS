	.file	"os_task_scheduler.c"
	.text
Ltext0:
	.globl	_OS_ActivateDispatcher
	.def	_OS_ActivateDispatcher;	.scl	2;	.type	32;	.endef
_OS_ActivateDispatcher:
LFB0:
	.file 1 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_scheduler.c"
	.loc 1 23 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 45 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_SleepTask
	.def	_OS_SleepTask;	.scl	2;	.type	32;	.endef
_OS_SleepTask:
LFB1:
	.loc 1 49 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 51 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GetCurrentTime
	.loc 1 53 0
	movl	8(%ebp), %eax
	leal	6(%eax), %edx
	leal	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_IntAdd
	.loc 1 54 0
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_PreemptTask
	.loc 1 55 0
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
	.loc 1 58 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 59 0
	movb	$0, -9(%ebp)
	.loc 1 61 0
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 63 0
	movl	12(%ebp), %eax
	cmpl	$1, %eax
	je	L5
	cmpl	$1, %eax
	jb	L6
	cmpl	$2, %eax
	je	L7
	cmpl	$3, %eax
	je	L8
	.loc 1 162 0
	jmp	L12
L6:
	.loc 1 67 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	decl	%eax
	cmpl	$2, %eax
	ja	L9
	.loc 1 73 0
	movb	$0, -9(%ebp)
	.loc 1 74 0
	jmp	L11
L9:
	.loc 1 78 0
	movl	-16(%ebp), %eax
	movl	$0, 124(%eax)
	.loc 1 79 0
	movb	$1, -9(%ebp)
	.loc 1 80 0
	nop
L11:
	.loc 1 83 0
	jmp	L12
L5:
	.loc 1 87 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	L14
	cmpl	$3, %eax
	je	L15
	jmp	L27
L14:
	.loc 1 92 0
	movl	-16(%ebp), %eax
	movl	$1, 124(%eax)
	.loc 1 93 0
	movb	$1, -9(%ebp)
	.loc 1 94 0
	jmp	L16
L15:
	.loc 1 98 0
	movl	-16(%ebp), %eax
	movl	$1, 124(%eax)
	.loc 1 99 0
	movb	$1, -9(%ebp)
	.loc 1 100 0
	jmp	L16
L27:
	.loc 1 105 0
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	.loc 1 106 0
	nop
L16:
	.loc 1 109 0
	jmp	L12
L8:
	.loc 1 113 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	$2, %eax
	je	L18
	.loc 1 124 0
	jmp	L19
L18:
	.loc 1 117 0
	movl	-16(%ebp), %eax
	movl	$3, 124(%eax)
	.loc 1 118 0
	movb	$1, -9(%ebp)
	.loc 1 119 0
	nop
L19:
	.loc 1 127 0 discriminator 1
	jmp	L12
L7:
	.loc 1 132 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	$1, %eax
	je	L21
	cmpl	$1, %eax
	jb	L22
	cmpl	$3, %eax
	je	L23
	.loc 1 155 0
	jmp	L24
L21:
	.loc 1 136 0
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 137 0
	movb	$1, -9(%ebp)
	.loc 1 138 0
	jmp	L24
L23:
	.loc 1 142 0
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 143 0
	movb	$1, -9(%ebp)
	.loc 1 144 0
	jmp	L24
L22:
	.loc 1 148 0
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 149 0
	movb	$1, -9(%ebp)
	.loc 1 150 0
	nop
L24:
	.loc 1 158 0 discriminator 2
	nop
L12:
	.loc 1 165 0
	cmpb	$0, -9(%ebp)
	jne	L25
	.loc 1 167 0
	movl	-16(%ebp), %eax
	movl	%eax, _TASK_TRANSITION_REJECTED_TASK_ADDR
	.loc 1 168 0
	movl	12(%ebp), %eax
	movl	%eax, _TASK_TRANSITION_REJECTED_STATE
	.loc 1 169 0
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	movl	%eax, _TASK_TRANSITION_CURRENT_STATE
	.loc 1 170 0
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
L25:
	.loc 1 172 0
	movb	-9(%ebp), %al
	.loc 1 173 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_OS_CreateTask
	.def	_OS_CreateTask;	.scl	2;	.type	32;	.endef
_OS_CreateTask:
LFB3:
	.loc 1 176 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 178 0
	cmpl	$0, 8(%ebp)
	je	L29
	.loc 1 180 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	L30
	.loc 1 182 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	$1, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	je	L28
	.loc 1 188 0
	movl	$15, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	jmp	L28
L30:
	.loc 1 193 0
	movl	$15, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
	jmp	L28
L29:
	.loc 1 198 0
	movl	$15, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L28:
	.loc 1 200 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.def	_OS_PreemptTask;	.scl	3;	.type	32;	.endef
_OS_PreemptTask:
LFB4:
	.loc 1 202 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 211 0
	cmpl	$0, 8(%ebp)
	je	L35
	.loc 1 211 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L35
	.loc 1 213 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	L36
	.loc 1 215 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L37
	.loc 1 218 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TaskSaveTaskEnvironment
	.loc 1 219 0
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_RESTORE_SYSTEM_STACK
	.loc 1 221 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 223 0
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 213 0
	jmp	L34
L37:
	.loc 1 228 0
	movl	$13, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	.loc 1 213 0
	jmp	L34
L36:
	.loc 1 233 0
	movl	$13, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
	.loc 1 213 0
	jmp	L34
L35:
	.loc 1 238 0
	movl	$13, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L34:
	.loc 1 240 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_OS_ActivateTask
	.def	_OS_ActivateTask;	.scl	2;	.type	32;	.endef
_OS_ActivateTask:
LFB5:
	.loc 1 243 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 252 0
	cmpl	$0, 8(%ebp)
	je	L41
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L43
	.loc 1 258 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L44
	.loc 1 260 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	testb	%al, %al
	je	L45
	.loc 1 261 0
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	testb	%al, %al
	je	L46
	.loc 1 261 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	movb	4(%eax), %dl
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	cmpb	%al, %dl
	jbe	L46
L45:
	.loc 1 265 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToTaskQueue
	movl	%eax, 8(%ebp)
	.loc 1 266 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToSchedulingQueue
	.loc 1 267 0
	cmpl	$0, 8(%ebp)
	je	L47
	.loc 1 269 0
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 5(%eax)
	.loc 1 267 0
	jmp	L49
L47:
	.loc 1 273 0
	movl	$11, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
	.loc 1 267 0
	jmp	L49
L46:
	.loc 1 279 0
	movl	$11, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	jmp	L41
L49:
	jmp	L41
L44:
	.loc 1 284 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToIdleTaskQueue
	jmp	L41
L43:
	.loc 1 290 0
	movl	$11, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
L41:
	.loc 1 293 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_OS_StartTask
	.def	_OS_StartTask;	.scl	2;	.type	32;	.endef
_OS_StartTask:
LFB6:
	.loc 1 295 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 305 0
	cmpl	$0, 8(%ebp)
	je	L51
	.loc 1 305 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L51
	.loc 1 305 0 discriminator 2
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$2, %eax
	testb	%al, %al
	jne	L53
	.loc 1 305 0 discriminator 3
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	je	L51
L53:
	.loc 1 307 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	L54
	.loc 1 309 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	$3, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L55
	.loc 1 312 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	orl	$1, %edx
	movb	%dl, (%eax)
	.loc 1 313 0
	movl	8(%ebp), %eax
	addl	$22, %eax
	movl	%eax, (%esp)
	call	_AssignNull
	.loc 1 314 0
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 315 0
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_SAVE_SYSTEM_STACK
	.loc 1 316 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_RESTORETASK_ENVIRONMENT
	.loc 1 317 0
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GetCurrentTime
	.loc 1 318 0
	movl	8(%ebp), %eax
	leal	92(%eax), %edx
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_Assign
	.loc 1 322 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_SET_RUNNING_TASK
	.loc 1 324 0
	movl	8(%ebp), %eax
	movl	168(%eax), %eax
	testl	%eax, %eax
	jne	L56
	.loc 1 326 0
	call	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE
L56:
	.loc 1 330 0
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	jmp	L51
L55:
	.loc 1 334 0
	movl	$6, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	jmp	L51
L54:
	.loc 1 339 0
	movl	$6, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L51:
	.loc 1 348 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_OS_TerminateTask
	.def	_OS_TerminateTask;	.scl	2;	.type	32;	.endef
_OS_TerminateTask:
LFB7:
	.loc 1 350 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 358 0
	cmpl	$0, 8(%ebp)
	je	L59
	.loc 1 358 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L59
	.loc 1 360 0 is_stmt 1
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	testl	%eax, %eax
	je	L60
	.loc 1 362 0
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	movl	$1, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
	cmpb	$1, %al
	jne	L61
	.loc 1 365 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TaskSaveTaskEnvironment
	.loc 1 366 0
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_RESTORE_SYSTEM_STACK
	.loc 1 367 0
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeleteFromTaskQueue
	.loc 1 368 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DeleteFromSchedulingQueue
	.loc 1 370 0
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 372 0
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 360 0
	jmp	L58
L61:
	.loc 1 377 0
	movl	$8, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SetSwBug
	.loc 1 360 0
	jmp	L58
L60:
	.loc 1 382 0
	movl	$8, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
	.loc 1 360 0
	jmp	L58
L59:
	.loc 1 387 0
	movl	$8, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L58:
	.loc 1 389 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_OS_TaskDispatcher
	.def	_OS_TaskDispatcher;	.scl	2;	.type	32;	.endef
_OS_TaskDispatcher:
LFB8:
	.loc 1 391 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 403 0
	movl	$0, -12(%ebp)
	.loc 1 405 0
	call	_GetRunningTask
	movl	%eax, -12(%ebp)
	.loc 1 406 0
	call	_GetRunningSchedulingQueueElementPtr
	movl	%eax, -16(%ebp)
	.loc 1 408 0
	cmpl	$0, -12(%ebp)
	je	L66
	.loc 1 408 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%ebp)
	je	L66
	.loc 1 410 0 is_stmt 1
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TerminateTask
L66:
	.loc 1 413 0
	call	_OS_TaskScheduler
	movl	%eax, -16(%ebp)
	.loc 1 414 0
	cmpl	$0, -16(%ebp)
	je	L67
	.loc 1 416 0
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromTaskQueue
	movl	%eax, -12(%ebp)
L67:
	.loc 1 418 0
	cmpl	$0, -12(%ebp)
	je	L65
	.loc 1 418 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%ebp)
	je	L65
	.loc 1 420 0 is_stmt 1
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_StartTask
L65:
	.loc 1 422 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.def	_TASK_0;	.scl	3;	.type	32;	.endef
_TASK_0:
LFB9:
	.loc 1 424 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 427 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.def	_TASK_1;	.scl	3;	.type	32;	.endef
_TASK_1:
LFB10:
	.loc 1 429 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 430 0
	movl	$0, -12(%ebp)
	.loc 1 433 0
	call	_GetRunningSchedulingQueueElementPtr
	movl	%eax, -12(%ebp)
	.loc 1 435 0
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 439 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TerminateTask
	.loc 1 440 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	_TASK_2;	.scl	3;	.type	32;	.endef
_TASK_2:
LFB11:
	.loc 1 442 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 443 0
	movl	$0, -12(%ebp)
	.loc 1 446 0
	call	_GetRunningSchedulingQueueElementPtr
	movl	%eax, -12(%ebp)
	.loc 1 448 0
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 452 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TerminateTask
	.loc 1 453 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	_TASK_3;	.scl	3;	.type	32;	.endef
_TASK_3:
LFB12:
	.loc 1 455 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 456 0
	movl	$0, -12(%ebp)
	.loc 1 459 0
	call	_GetRunningSchedulingQueueElementPtr
	movl	%eax, -12(%ebp)
	.loc 1 461 0
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 465 0
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TerminateTask
	.loc 1 466 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_OS_InitTasks
	.def	_OS_InitTasks;	.scl	2;	.type	32;	.endef
_OS_InitTasks:
LFB13:
	.loc 1 468 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 469 0
	movl	$0, -12(%ebp)
	.loc 1 470 0
	movl	$_LAST_CURRENT_TIME, (%esp)
	call	_OS_GetCurrentTime
	.loc 1 481 0
	call	_OS_InitTaskQueue
	.loc 1 484 0
	movl	$_TASK_0_VAR, -12(%ebp)
	.loc 1 485 0
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK, 20(%esp)
	movl	$_TASK_GROUP_1, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_InitTask
	.loc 1 496 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToSchedulingQueue
	.loc 1 500 0
	movl	$_TASK_1_VAR, -12(%ebp)
	.loc 1 501 0
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+2000, 20(%esp)
	movl	$_TASK_GROUP_1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_InitTask
	.loc 1 512 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToSchedulingQueue
	.loc 1 516 0
	movl	$_TASK_2_VAR, -12(%ebp)
	.loc 1 517 0
	movl	$2, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+4000, 20(%esp)
	movl	$_TASK_GROUP_2, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_InitTask
	.loc 1 528 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToSchedulingQueue
	.loc 1 532 0
	movl	$_TASK_3_VAR, -12(%ebp)
	.loc 1 533 0
	movl	$3, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK_STACK+6000, 20(%esp)
	movl	$_TASK_GROUP_3, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_TASK_3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_InitTask
	.loc 1 544 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_AddToSchedulingQueue
	.loc 1 546 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.def	_OS_TaskScheduler;	.scl	3;	.type	32;	.endef
_OS_TaskScheduler:
LFB14:
	.loc 1 550 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	.loc 1 555 0
	movb	$0, -10(%ebp)
	.loc 1 556 0
	movl	$0, -20(%ebp)
	.loc 1 557 0
	movl	$0, -24(%ebp)
	.loc 1 558 0
	movl	$0, -16(%ebp)
	.loc 1 563 0
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GetCurrentTime
	.loc 1 565 0
	movl	$_LAST_CURRENT_TIME, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_IntSub
	.loc 1 567 0
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_LAST_CURRENT_TIME, (%esp)
	call	_Assign
	.loc 1 583 0
	movb	$0, -9(%ebp)
	jmp	L75
L83:
	.loc 1 585 0
	movzbl	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromSchedulingQueue
	movl	%eax, -28(%ebp)
	.loc 1 587 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromTaskQueue
	movl	%eax, -20(%ebp)
	.loc 1 589 0
	cmpl	$0, -20(%ebp)
	je	L76
	.loc 1 589 0 is_stmt 0 discriminator 1
	movl	-20(%ebp), %eax
	movb	(%eax), %al
	andl	$2, %eax
	testb	%al, %al
	je	L76
	.loc 1 591 0 is_stmt 1
	movl	-20(%ebp), %eax
	leal	38(%eax), %edx
	movl	-20(%ebp), %eax
	addl	$22, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IsGreaterOrEqual
	testb	%al, %al
	je	L77
	.loc 1 593 0
	movl	-20(%ebp), %eax
	movb	108(%eax), %dl
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movb	%dl, 108(%eax)
L77:
	.loc 1 596 0
	movl	-20(%ebp), %eax
	leal	6(%eax), %edx
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_IsGreater
	testb	%al, %al
	je	L78
	.loc 1 598 0
	movl	-20(%ebp), %eax
	movb	$0, 108(%eax)
L78:
	.loc 1 600 0
	movl	-20(%ebp), %eax
	leal	60(%eax), %edx
	movl	-20(%ebp), %eax
	addl	$22, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IsGreater
	testb	%al, %al
	je	L79
	.loc 1 603 0
	movl	$9, 4(%esp)
	movl	$3, (%esp)
	call	_OS_SetSwBug
L79:
	.loc 1 606 0
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	testl	%eax, %eax
	je	L80
	.loc 1 609 0
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	leal	16(%eax), %edx
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IsGreater
	testb	%al, %al
	je	L76
LBB2:
	.loc 1 612 0
	movl	$1, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_AssignUint32
	.loc 1 613 0
	movl	-20(%ebp), %eax
	leal	76(%eax), %edx
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_IsGreaterOrEqual
	testb	%al, %al
	je	L81
	.loc 1 615 0
	movl	-20(%ebp), %eax
	movb	$0, 108(%eax)
LBE2:
	jmp	L76
L81:
	jmp	L76
L80:
	.loc 1 621 0
	movl	$9, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SetSwBug
L76:
	.loc 1 583 0 discriminator 2
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L75:
	.loc 1 583 0 is_stmt 0 discriminator 1
	cmpb	$9, -9(%ebp)
	jbe	L83
	.loc 1 631 0 is_stmt 1
	movb	$0, -9(%ebp)
	jmp	L84
L87:
	.loc 1 633 0
	movzbl	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromSchedulingQueue
	movl	%eax, -28(%ebp)
	.loc 1 634 0
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_GetFromTaskQueue
	movl	%eax, -20(%ebp)
	.loc 1 635 0
	cmpl	$0, -20(%ebp)
	je	L85
	.loc 1 638 0
	movl	-20(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	testb	%al, %al
	jne	L86
	.loc 1 640 0
	movl	-20(%ebp), %eax
	leal	22(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	22(%eax), %edx
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_IntAdd
L86:
	.loc 1 643 0
	movl	-20(%ebp), %eax
	movb	108(%eax), %al
	cmpb	-10(%ebp), %al
	jbe	L85
	.loc 1 645 0
	movl	-20(%ebp), %eax
	movb	108(%eax), %al
	movb	%al, -10(%ebp)
	.loc 1 646 0
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 647 0
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
L85:
	.loc 1 631 0 discriminator 2
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L84:
	.loc 1 631 0 is_stmt 0 discriminator 1
	cmpb	$9, -9(%ebp)
	jbe	L87
	.loc 1 658 0 is_stmt 1
	movl	-16(%ebp), %eax
	.loc 1 659 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
Letext0:
	.file 2 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_base_types.h"
	.file 3 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_common.h"
	.file 4 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/lld_core.h"
	.file 5 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_sim/../os_base/os_task_common.h"
	.file 6 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/../os_base/os_ram.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0xf63
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
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.ascii "uint8\0"
	.byte	0x2
	.byte	0x21
	.long	0xac
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
	.long	0x114
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
	.long	0x114
	.uleb128 0x4
	.ascii "os_sw_bugs_e\0"
	.byte	0x4
	.byte	0x3
	.byte	0x2b
	.long	0x286
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
	.long	0x42b
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
	.long	0x44c
	.uleb128 0x7
	.ascii "Number\0"
	.byte	0x3
	.byte	0x62
	.long	0x44c
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0xcc
	.long	0x45c
	.uleb128 0x9
	.long	0x45c
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
	.long	0x42b
	.uleb128 0x4
	.ascii "CoreID_e\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.long	0x4a8
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
	.long	0x53d
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
	.long	0x4a8
	.uleb128 0x4
	.ascii "task_state_e\0"
	.byte	0x4
	.byte	0x5
	.byte	0x7
	.long	0x5ab
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
	.long	0x555
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.long	0x5cf
	.uleb128 0xa
	.byte	0x4
	.long	0x5d5
	.uleb128 0xb
	.long	0x5e0
	.uleb128 0xc
	.long	0x5e0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.long	0x5ff
	.uleb128 0xa
	.byte	0x4
	.long	0x605
	.uleb128 0xe
	.long	0x95
	.long	0x619
	.uleb128 0xc
	.long	0x5e0
	.uleb128 0xc
	.long	0x5ab
	.byte	0
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x5
	.byte	0x16
	.long	0x468
	.uleb128 0x6
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.long	0x662
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.long	0x619
	.byte	0
	.uleb128 0x7
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.long	0x619
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.long	0x62a
	.uleb128 0x6
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.long	0x8ea
	.uleb128 0x10
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.long	0x8ea
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.long	0x8ea
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x10
	.ascii "IdleTask\0"
	.byte	0x5
	.byte	0x23
	.long	0x8ea
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x10
	.ascii "FREE\0"
	.byte	0x5
	.byte	0x24
	.long	0x8ea
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x7
	.ascii "NrOfInsAllowed\0"
	.byte	0x5
	.byte	0x25
	.long	0x95
	.byte	0x4
	.uleb128 0x7
	.ascii "NrOfInsActivated\0"
	.byte	0x5
	.byte	0x26
	.long	0x95
	.byte	0x5
	.uleb128 0x7
	.ascii "WaitActUntil\0"
	.byte	0x5
	.byte	0x27
	.long	0x619
	.byte	0x6
	.uleb128 0x7
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.long	0x619
	.byte	0x16
	.uleb128 0x7
	.ascii "TimeToPrioInc\0"
	.byte	0x5
	.byte	0x29
	.long	0x619
	.byte	0x26
	.uleb128 0x7
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.long	0x135
	.byte	0x38
	.uleb128 0x7
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.long	0x619
	.byte	0x3c
	.uleb128 0xf
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.long	0x619
	.byte	0x4c
	.uleb128 0x7
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.long	0x619
	.byte	0x5c
	.uleb128 0x7
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.long	0x95
	.byte	0x6c
	.uleb128 0x7
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2f
	.long	0x95
	.byte	0x6d
	.uleb128 0x7
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.long	0xfc
	.byte	0x70
	.uleb128 0x7
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.long	0x5bf
	.byte	0x74
	.uleb128 0x7
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.long	0x5e2
	.byte	0x78
	.uleb128 0x7
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.long	0x5ab
	.byte	0x7c
	.uleb128 0x7
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.long	0x8fa
	.byte	0x80
	.uleb128 0x7
	.ascii "EAX\0"
	.byte	0x5
	.byte	0x36
	.long	0xfc
	.byte	0x84
	.uleb128 0x7
	.ascii "EBX\0"
	.byte	0x5
	.byte	0x37
	.long	0xfc
	.byte	0x88
	.uleb128 0x7
	.ascii "ECX\0"
	.byte	0x5
	.byte	0x38
	.long	0xfc
	.byte	0x8c
	.uleb128 0x7
	.ascii "EDX\0"
	.byte	0x5
	.byte	0x39
	.long	0xfc
	.byte	0x90
	.uleb128 0x7
	.ascii "pStackPointer\0"
	.byte	0x5
	.byte	0x49
	.long	0x900
	.byte	0x94
	.uleb128 0x7
	.ascii "pStackPointerByMalloc\0"
	.byte	0x5
	.byte	0x4a
	.long	0x900
	.byte	0x98
	.uleb128 0x7
	.ascii "pStackPointerStart\0"
	.byte	0x5
	.byte	0x4b
	.long	0x900
	.byte	0x9c
	.uleb128 0x7
	.ascii "StackSize\0"
	.byte	0x5
	.byte	0x4c
	.long	0xfc
	.byte	0xa0
	.uleb128 0x7
	.ascii "pStackPointerEnd\0"
	.byte	0x5
	.byte	0x4d
	.long	0x900
	.byte	0xa4
	.uleb128 0x7
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4e
	.long	0x53d
	.byte	0xa8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0xa
	.byte	0x4
	.long	0x662
	.uleb128 0xa
	.byte	0x4
	.long	0x95
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.long	0x676
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.long	0x928
	.uleb128 0xa
	.byte	0x4
	.long	0x906
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5f
	.long	0x619
	.uleb128 0x11
	.ascii "OS_ActivateDispatcher\0"
	.byte	0x1
	.byte	0x16
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.ascii "OS_SleepTask\0"
	.byte	0x1
	.byte	0x30
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x9c2
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x1
	.byte	0x30
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "usec\0"
	.byte	0x1
	.byte	0x30
	.long	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.secrel32	LASF2
	.byte	0x1
	.byte	0x30
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x15
	.ascii "time\0"
	.byte	0x1
	.byte	0x32
	.long	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x914
	.uleb128 0x16
	.ascii "task_state_request\0"
	.byte	0x1
	.byte	0x39
	.long	0x95
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xa44
	.uleb128 0x14
	.ascii "temp_task\0"
	.byte	0x1
	.byte	0x39
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.ascii "requested_state\0"
	.byte	0x1
	.byte	0x39
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii "RequestState\0"
	.byte	0x1
	.byte	0x3b
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.secrel32	LASF1
	.byte	0x1
	.byte	0x3d
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.ascii "OS_CreateTask\0"
	.byte	0x1
	.byte	0xaf
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xa72
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x1
	.byte	0xaf
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.ascii "OS_PreemptTask\0"
	.byte	0x1
	.byte	0xc9
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xaaf
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x1
	.byte	0xc9
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.secrel32	LASF3
	.byte	0x1
	.byte	0xc9
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x12
	.ascii "OS_ActivateTask\0"
	.byte	0x1
	.byte	0xf2
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xadf
	.uleb128 0x13
	.secrel32	LASF1
	.byte	0x1
	.byte	0xf2
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.ascii "OS_StartTask\0"
	.byte	0x1
	.word	0x126
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xb2d
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x126
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1
	.word	0x126
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.ascii "time\0"
	.byte	0x1
	.word	0x12f
	.long	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.ascii "OS_TerminateTask\0"
	.byte	0x1
	.word	0x15d
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6f
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x15d
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1
	.word	0x15d
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x19
	.ascii "OS_TaskDispatcher\0"
	.byte	0x1
	.word	0x186
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb2
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x1
	.word	0x192
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x1
	.word	0x193
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.ascii "TASK_0\0"
	.byte	0x1
	.word	0x1a7
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xbdb
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x1a7
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.ascii "TASK_1\0"
	.byte	0x1
	.word	0x1ac
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc13
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x1ac
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x1
	.word	0x1ae
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.ascii "TASK_2\0"
	.byte	0x1
	.word	0x1b9
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4b
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x1b9
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x1
	.word	0x1bb
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.ascii "TASK_3\0"
	.byte	0x1
	.word	0x1c6
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc83
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x1c6
	.long	0x5e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.secrel32	LASF2
	.byte	0x1
	.word	0x1c8
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.ascii "OS_InitTasks\0"
	.byte	0x1
	.word	0x1d3
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb2
	.uleb128 0x1c
	.secrel32	LASF4
	.byte	0x1
	.word	0x1d5
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.ascii "OS_TaskScheduler\0"
	.byte	0x1
	.word	0x225
	.long	0xdbd
	.long	LFB14
	.long	LFE14-LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xdbd
	.uleb128 0x1b
	.ascii "scheduling_queue_member\0"
	.byte	0x1
	.word	0x228
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1b
	.ascii "element_nr\0"
	.byte	0x1
	.word	0x229
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1b
	.ascii "Winner_prio\0"
	.byte	0x1
	.word	0x22b
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1c
	.secrel32	LASF1
	.byte	0x1
	.word	0x22c
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.ascii "Winner_task\0"
	.byte	0x1
	.word	0x22d
	.long	0x928
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.ascii "Winner_scheduling_queue_member\0"
	.byte	0x1
	.word	0x22e
	.long	0x9c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.ascii "delta_time\0"
	.byte	0x1
	.word	0x22f
	.long	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1b
	.ascii "time\0"
	.byte	0x1
	.word	0x231
	.long	0x619
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x20
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x1b
	.ascii "tTime\0"
	.byte	0x1
	.word	0x263
	.long	0x619
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x928
	.uleb128 0x8
	.long	0x95
	.long	0xdd4
	.uleb128 0x21
	.long	0x45c
	.word	0x1ff
	.byte	0
	.uleb128 0x22
	.ascii "OS_MAIN_STACK\0"
	.byte	0x6
	.byte	0xf
	.long	0xdc3
	.uleb128 0x22
	.ascii "TASK1_CALL_NR\0"
	.byte	0x6
	.byte	0x20
	.long	0xdfe
	.uleb128 0x23
	.long	0x135
	.uleb128 0x8
	.long	0x95
	.long	0xe1a
	.uleb128 0x9
	.long	0x45c
	.byte	0x9
	.uleb128 0x21
	.long	0x45c
	.word	0x7cf
	.byte	0
	.uleb128 0x22
	.ascii "TASK_STACK\0"
	.byte	0x6
	.byte	0x28
	.long	0xe03
	.uleb128 0x22
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x6
	.byte	0x29
	.long	0x92e
	.uleb128 0x22
	.ascii "TASK_0_VAR\0"
	.byte	0x6
	.byte	0x30
	.long	0x906
	.uleb128 0x22
	.ascii "TASK_1_VAR\0"
	.byte	0x6
	.byte	0x30
	.long	0x906
	.uleb128 0x22
	.ascii "TASK_2_VAR\0"
	.byte	0x6
	.byte	0x30
	.long	0x906
	.uleb128 0x22
	.ascii "TASK_3_VAR\0"
	.byte	0x6
	.byte	0x30
	.long	0x906
	.uleb128 0x22
	.ascii "TASK_GROUP_1\0"
	.byte	0x6
	.byte	0x31
	.long	0x662
	.uleb128 0x22
	.ascii "TASK_GROUP_2\0"
	.byte	0x6
	.byte	0x31
	.long	0x662
	.uleb128 0x22
	.ascii "TASK_GROUP_3\0"
	.byte	0x6
	.byte	0x31
	.long	0x662
	.uleb128 0x22
	.ascii "TASK_GROUP_4\0"
	.byte	0x6
	.byte	0x31
	.long	0x662
	.uleb128 0x22
	.ascii "TASK_GROUP_5\0"
	.byte	0x6
	.byte	0x31
	.long	0x662
	.uleb128 0x22
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x6
	.byte	0x32
	.long	0x928
	.uleb128 0x22
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x6
	.byte	0x33
	.long	0x5ab
	.uleb128 0x22
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x6
	.byte	0x34
	.long	0x5ab
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.ascii "OS_STACK_SIZE 0x200u\0"
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
	.file 27 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_task_queue.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1b
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
	.file 28 "E:/NeuOrga/Programmieren/c_cpp/github_os/input/src/os_base/os_stack.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x1c
	.byte	0x4
	.byte	0x1
	.uleb128 0x1e
	.ascii "SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "SYSTICK_STAT_REG_TICKINT ((uint32)0x00000002)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "SYSTICK_STAT_REG_ENABLE ((uint32)0x00000001)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "LOOPTIME_IN_USEC ((uint32)10000u)\0"
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF4:
	.ascii "task_ptr\0"
LASF0:
	.ascii "exe_time\0"
LASF3:
	.ascii "scheduling_task\0"
LASF1:
	.ascii "task\0"
LASF2:
	.ascii "scheduling_task_ptr\0"
	.ident	"GCC: (GNU) 4.9.3"
	.def	_OS_GetCurrentTime;	.scl	2;	.type	32;	.endef
	.def	_IntAdd;	.scl	2;	.type	32;	.endef
	.def	_OS_SetSwBug;	.scl	2;	.type	32;	.endef
	.def	_OS_TaskSaveTaskEnvironment;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_AddToTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_AddToSchedulingQueue;	.scl	2;	.type	32;	.endef
	.def	_AddToIdleTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_AssignNull;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_SAVE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORETASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_Assign;	.scl	2;	.type	32;	.endef
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
	.def	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE;	.scl	2;	.type	32;	.endef
	.def	_DeleteFromTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_DeleteFromSchedulingQueue;	.scl	2;	.type	32;	.endef
	.def	_GetRunningTask;	.scl	2;	.type	32;	.endef
	.def	_GetRunningSchedulingQueueElementPtr;	.scl	2;	.type	32;	.endef
	.def	_GetFromTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_OS_InitTaskQueue;	.scl	2;	.type	32;	.endef
	.def	_OS_InitTask;	.scl	2;	.type	32;	.endef
	.def	_IntSub;	.scl	2;	.type	32;	.endef
	.def	_GetFromSchedulingQueue;	.scl	2;	.type	32;	.endef
	.def	_IsGreaterOrEqual;	.scl	2;	.type	32;	.endef
	.def	_IsGreater;	.scl	2;	.type	32;	.endef
	.def	_AssignUint32;	.scl	2;	.type	32;	.endef
