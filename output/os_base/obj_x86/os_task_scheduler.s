	.file	"os_task_scheduler.c"
	.text
Ltext0:
	.globl	_OS_ACTIVATE_DISPATCHER
	.def	_OS_ACTIVATE_DISPATCHER;	.scl	2;	.type	32;	.endef
_OS_ACTIVATE_DISPATCHER:
LFB0:
	.file 1 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_scheduler.c"
	.loc 1 24 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 40 1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.globl	_OS_SLEEP_TASK
	.def	_OS_SLEEP_TASK;	.scl	2;	.type	32;	.endef
_OS_SLEEP_TASK:
LFB1:
	.loc 1 44 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 46 4
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GET_CURRENT_TIME
	.loc 1 48 12
	movl	8(%ebp), %eax
	leal	6(%eax), %edx
	.loc 1 48 4
	leal	12(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_INT_ADD
	.loc 1 49 4
	movl	28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_os_preempt_task
	.loc 1 50 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1:
	.globl	_OS_TASK_STATE_REQUEST
	.def	_OS_TASK_STATE_REQUEST;	.scl	2;	.type	32;	.endef
_OS_TASK_STATE_REQUEST:
LFB2:
	.loc 1 53 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 54 20
	movb	$0, -9(%ebp)
	.loc 1 56 12
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	cmpl	$1, 12(%ebp)
	je	L4
	cmpl	$0, 12(%ebp)
	je	L5
	cmpl	$2, 12(%ebp)
	je	L6
	cmpl	$3, 12(%ebp)
	je	L7
	.loc 1 157 7
	jmp	L11
L5:
	.loc 1 62 18
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	decl	%eax
	cmpl	$2, %eax
	ja	L9
	.loc 1 68 23
	movb	$0, -9(%ebp)
	.loc 1 69 10
	jmp	L10
L9:
	.loc 1 73 27
	movl	-16(%ebp), %eax
	movl	$0, 124(%eax)
	.loc 1 74 23
	movb	$1, -9(%ebp)
	.loc 1 75 10
	nop
L10:
	.loc 1 78 7
	jmp	L11
L4:
	.loc 1 82 18
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	testl	%eax, %eax
	je	L12
	cmpl	$3, %eax
	je	L13
	jmp	L25
L12:
	.loc 1 87 27
	movl	-16(%ebp), %eax
	movl	$1, 124(%eax)
	.loc 1 88 23
	movb	$1, -9(%ebp)
	.loc 1 89 10
	jmp	L15
L13:
	.loc 1 93 27
	movl	-16(%ebp), %eax
	movl	$1, 124(%eax)
	.loc 1 94 23
	movb	$1, -9(%ebp)
	.loc 1 95 10
	jmp	L15
L25:
	.loc 1 100 10
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 101 10
	nop
L15:
	.loc 1 104 7
	jmp	L11
L7:
	.loc 1 108 18
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	$2, %eax
	jne	L26
	.loc 1 112 27
	movl	-16(%ebp), %eax
	movl	$3, 124(%eax)
	.loc 1 113 25
	movb	$1, -9(%ebp)
	.loc 1 114 10
	jmp	L17
L26:
	.loc 1 119 10
	nop
L17:
	.loc 1 122 7
	jmp	L11
L6:
	.loc 1 127 18
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	cmpl	$1, %eax
	je	L18
	testl	%eax, %eax
	je	L19
	cmpl	$3, %eax
	je	L20
	.loc 1 150 10
	jmp	L22
L18:
	.loc 1 131 27
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 132 25
	movb	$1, -9(%ebp)
	.loc 1 133 10
	jmp	L22
L20:
	.loc 1 137 27
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 138 25
	movb	$1, -9(%ebp)
	.loc 1 139 10
	jmp	L22
L19:
	.loc 1 143 27
	movl	-16(%ebp), %eax
	movl	$2, 124(%eax)
	.loc 1 144 23
	movb	$1, -9(%ebp)
	.loc 1 145 10
	nop
L22:
	.loc 1 153 7
	nop
L11:
	.loc 1 160 6
	cmpb	$0, -9(%ebp)
	jne	L23
	.loc 1 162 43
	movl	-16(%ebp), %eax
	movl	%eax, _TASK_TRANSITION_REJECTED_TASK_ADDR
	.loc 1 163 43
	movl	12(%ebp), %eax
	movl	%eax, _TASK_TRANSITION_REJECTED_STATE
	.loc 1 164 49
	movl	-16(%ebp), %eax
	movl	124(%eax), %eax
	.loc 1 164 43
	movl	%eax, _TASK_TRANSITION_CURRENT_STATE
	.loc 1 165 7
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
L23:
	.loc 1 167 11
	movb	-9(%ebp), %al
	.loc 1 168 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2:
	.globl	_OS_CREATE_TASK
	.def	_OS_CREATE_TASK;	.scl	2;	.type	32;	.endef
_OS_CREATE_TASK:
LFB3:
	.loc 1 171 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 173 6
	cmpl	$0, 8(%ebp)
	je	L28
	.loc 1 175 14
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 175 9
	testl	%eax, %eax
	je	L29
	.loc 1 177 17
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 177 13
	movl	$1, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL0:
	.loc 1 177 12
	cmpb	$1, %al
	je	L33
	.loc 1 183 13
	movl	$15, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 195 1
	jmp	L33
L29:
	.loc 1 188 10
	movl	$15, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 195 1
	jmp	L33
L28:
	.loc 1 193 7
	movl	$15, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L33:
	.loc 1 195 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.def	_os_preempt_task;	.scl	3;	.type	32;	.endef
_os_preempt_task:
LFB4:
	.loc 1 197 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 206 6
	cmpl	$0, 8(%ebp)
	je	L35
	.loc 1 206 20 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L35
	.loc 1 208 14
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 208 9
	testl	%eax, %eax
	je	L36
	.loc 1 210 17
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 210 13
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL1:
	.loc 1 210 12
	cmpb	$1, %al
	jne	L37
	.loc 1 213 13
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_SAVE_TASK_ENVIRONMENT
	.loc 1 214 13
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_RESTORE_SYSTEM_STACK
	.loc 1 216 26
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 218 38
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	.loc 1 218 32
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 208 9
	jmp	L40
L37:
	.loc 1 223 13
	movl	$13, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 208 9
	jmp	L40
L36:
	.loc 1 228 10
	movl	$13, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 208 9
	jmp	L40
L35:
	.loc 1 233 7
	movl	$13, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L40:
	.loc 1 235 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE4:
	.globl	_OS_ACTIVATE_TASK
	.def	_OS_ACTIVATE_TASK;	.scl	2;	.type	32;	.endef
_OS_ACTIVATE_TASK:
LFB5:
	.loc 1 238 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 247 6
	cmpl	$0, 8(%ebp)
	je	L51
	.loc 1 249 14
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 249 10
	movl	$2, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL2:
	.loc 1 249 9
	cmpb	$1, %al
	jne	L43
	.loc 1 253 29
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	.loc 1 253 12
	testb	%al, %al
	jne	L44
	.loc 1 255 31
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	.loc 1 255 15
	testb	%al, %al
	je	L45
	.loc 1 256 38
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$1, %eax
	.loc 1 256 19
	testb	%al, %al
	je	L46
	.loc 1 256 55 discriminator 1
	movl	8(%ebp), %eax
	movb	4(%eax), %dl
	.loc 1 256 81 discriminator 1
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	.loc 1 256 47 discriminator 1
	cmpb	%al, %dl
	jbe	L46
L45:
	.loc 1 260 23
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_TASK_QUEUE
	movl	%eax, 8(%ebp)
	.loc 1 261 16
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_SCHEDULING_QUEUE
	.loc 1 262 18
	cmpl	$0, 8(%ebp)
	je	L47
	.loc 1 264 23
	movl	8(%ebp), %eax
	movb	5(%eax), %al
	.loc 1 264 44
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 5(%eax)
	.loc 1 262 18
	jmp	L42
L47:
	.loc 1 268 19
	movl	$11, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 262 18
	jmp	L42
L46:
	.loc 1 274 16
	movl	$11, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 288 1
	jmp	L51
L44:
	.loc 1 279 13
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_IDLE_TASK_QUEUE
	.loc 1 288 1
	jmp	L51
L43:
	.loc 1 285 10
	movl	$11, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 288 1
	jmp	L51
L42:
L51:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE5:
	.globl	_OS_START_TASK
	.def	_OS_START_TASK;	.scl	2;	.type	32;	.endef
_OS_START_TASK:
LFB6:
	.loc 1 290 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 300 6
	cmpl	$0, 8(%ebp)
	je	L59
	.loc 1 300 23 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L59
	.loc 1 300 74 discriminator 2
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$2, %eax
	.loc 1 300 51 discriminator 2
	testb	%al, %al
	jne	L54
	.loc 1 300 102 discriminator 3
	movl	8(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	.loc 1 300 83 discriminator 3
	testb	%al, %al
	je	L59
L54:
	.loc 1 302 14
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 302 9
	testl	%eax, %eax
	je	L55
	.loc 1 304 17
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 304 13
	movl	$3, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL3:
	.loc 1 304 12
	cmpb	$1, %al
	jne	L56
	.loc 1 307 26
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	orl	$1, %edx
	movb	%dl, (%eax)
	.loc 1 308 25
	movl	8(%ebp), %eax
	addl	$22, %eax
	.loc 1 308 13
	movl	%eax, (%esp)
	call	_ASSIGN_NULL
	.loc 1 309 38
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	.loc 1 309 32
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 310 13
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_SAVE_SYSTEM_STACK
	.loc 1 311 13
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_RESTORETASK_ENVIRONMENT
	.loc 1 312 13
	leal	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GET_CURRENT_TIME
	.loc 1 313 20
	movl	8(%ebp), %eax
	leal	92(%eax), %edx
	.loc 1 313 13
	leal	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_ASSIGN
	.loc 1 317 13
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_SET_RUNNING_TASK
	.loc 1 319 20
	movl	8(%ebp), %eax
	movl	168(%eax), %eax
	.loc 1 319 15
	testl	%eax, %eax
	jne	L57
	.loc 1 321 16
	call	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE
L57:
	.loc 1 325 17
	movl	8(%ebp), %eax
	movl	116(%eax), %eax
	.loc 1 325 13
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL4:
	.loc 1 343 1
	jmp	L59
L56:
	.loc 1 329 13
	movl	$6, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 343 1
	jmp	L59
L55:
	.loc 1 334 10
	movl	$6, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L59:
	.loc 1 343 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_OS_TERMINATE_TASK
	.def	_OS_TERMINATE_TASK;	.scl	2;	.type	32;	.endef
_OS_TERMINATE_TASK:
LFB7:
	.loc 1 345 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 353 6
	cmpl	$0, 8(%ebp)
	je	L61
	.loc 1 353 20 discriminator 1
	cmpl	$0, 12(%ebp)
	je	L61
	.loc 1 355 14
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 355 9
	testl	%eax, %eax
	je	L62
	.loc 1 357 17
	movl	8(%ebp), %eax
	movl	120(%eax), %eax
	.loc 1 357 13
	movl	$1, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	call	*%eax
LVL5:
	.loc 1 357 12
	cmpb	$1, %al
	jne	L63
	.loc 1 360 13
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TASK_SAVE_TASK_ENVIRONMENT
	.loc 1 361 13
	movl	$_OS_MAIN_STACK, (%esp)
	call	_OS_TASK_RESTORE_SYSTEM_STACK
	.loc 1 362 13
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_DELETE_FROM_TASK_QUEUE
	.loc 1 363 13
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_DELETE_FROM_SCHEDULING_QUEUE
	.loc 1 365 26
	movl	8(%ebp), %eax
	movb	(%eax), %dl
	andl	$-2, %edx
	movb	%dl, (%eax)
	.loc 1 367 38
	movl	8(%ebp), %eax
	movb	109(%eax), %dl
	.loc 1 367 32
	movl	8(%ebp), %eax
	movb	%dl, 108(%eax)
	.loc 1 355 9
	jmp	L66
L63:
	.loc 1 372 13
	movl	$8, 4(%esp)
	movl	$1, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 355 9
	jmp	L66
L62:
	.loc 1 377 10
	movl	$8, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
	.loc 1 355 9
	jmp	L66
L61:
	.loc 1 382 7
	movl	$8, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L66:
	.loc 1 384 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_OS_TASK_DISPATCHER
	.def	_OS_TASK_DISPATCHER;	.scl	2;	.type	32;	.endef
_OS_TASK_DISPATCHER:
LFB8:
	.loc 1 386 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 398 12
	movl	$0, -12(%ebp)
	.loc 1 400 19
	call	_GET_RUNNING_TASK
	movl	%eax, -12(%ebp)
	.loc 1 401 26
	call	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	movl	%eax, -16(%ebp)
	.loc 1 403 6
	cmpl	$0, -12(%ebp)
	je	L68
	.loc 1 403 20 discriminator 1
	cmpl	$0, -16(%ebp)
	je	L68
	.loc 1 405 7
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TERMINATE_TASK
L68:
	.loc 1 408 26
	call	_os_task_scheduler
	movl	%eax, -16(%ebp)
	.loc 1 409 6
	cmpl	$0, -16(%ebp)
	je	L69
	.loc 1 411 14
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_FROM_TASK_QUEUE
	movl	%eax, -12(%ebp)
L69:
	.loc 1 413 6
	cmpl	$0, -12(%ebp)
	je	L71
	.loc 1 413 20 discriminator 1
	cmpl	$0, -16(%ebp)
	je	L71
	.loc 1 415 7
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_START_TASK
L71:
	.loc 1 417 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.def	_task_0;	.scl	3;	.type	32;	.endef
_task_0:
LFB9:
	.loc 1 419 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 422 1
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.def	_task_1;	.scl	3;	.type	32;	.endef
_task_1:
LFB10:
	.loc 1 424 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 425 18
	movl	$0, -12(%ebp)
	.loc 1 428 26
	call	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	movl	%eax, -12(%ebp)
	.loc 1 430 17
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 434 4
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TERMINATE_TASK
	.loc 1 435 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.def	_task_2;	.scl	3;	.type	32;	.endef
_task_2:
LFB11:
	.loc 1 437 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 438 18
	movl	$0, -12(%ebp)
	.loc 1 441 26
	call	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	movl	%eax, -12(%ebp)
	.loc 1 443 17
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 447 4
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TERMINATE_TASK
	.loc 1 448 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.def	_task_3;	.scl	3;	.type	32;	.endef
_task_3:
LFB12:
	.loc 1 450 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 451 18
	movl	$0, -12(%ebp)
	.loc 1 454 26
	call	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR
	movl	%eax, -12(%ebp)
	.loc 1 456 17
	movl	_TASK1_CALL_NR, %eax
	incl	%eax
	movl	%eax, _TASK1_CALL_NR
	.loc 1 460 4
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_TERMINATE_TASK
	.loc 1 461 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_OS_INIT_TASKS
	.def	_OS_INIT_TASKS;	.scl	2;	.type	32;	.endef
_OS_INIT_TASKS:
LFB13:
	.loc 1 463 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	.loc 1 464 12
	movl	$0, -12(%ebp)
	.loc 1 465 4
	movl	$_LAST_CURRENT_TIME, (%esp)
	call	_OS_GET_CURRENT_TIME
	.loc 1 476 4
	call	_OS_INIT_TASK_QUEUE
	.loc 1 479 13
	movl	$_TASK_0_VAR, -12(%ebp)
	.loc 1 480 4
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK0_STACK+1999, 20(%esp)
	movl	$_TASK_GROUP_1, 16(%esp)
	movl	$1, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_task_0, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 491 4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_SCHEDULING_QUEUE
	.loc 1 492 4
	movl	-12(%ebp), %eax
	movl	%eax, _TASK_PTR
	.loc 1 495 13
	movl	$_TASK_1_VAR, -12(%ebp)
	.loc 1 496 4
	movl	$1, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK1_STACK+1999, 20(%esp)
	movl	$_TASK_GROUP_1, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_task_1, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 507 4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_SCHEDULING_QUEUE
	.loc 1 508 4
	movl	-12(%ebp), %eax
	movl	%eax, _TASK_PTR+4
	.loc 1 511 13
	movl	$_TASK_2_VAR, -12(%ebp)
	.loc 1 512 4
	movl	$2, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK2_STACK+1999, 20(%esp)
	movl	$_TASK_GROUP_2, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_task_2, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 523 4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_SCHEDULING_QUEUE
	.loc 1 524 4
	movl	-12(%ebp), %eax
	movl	%eax, _TASK_PTR+8
	.loc 1 527 13
	movl	$_TASK_3_VAR, -12(%ebp)
	.loc 1 528 4
	movl	$3, 36(%esp)
	movl	$0, 32(%esp)
	movl	$0, 28(%esp)
	movl	$200, 24(%esp)
	movl	$_TASK3_STACK+1999, 20(%esp)
	movl	$_TASK_GROUP_3, 16(%esp)
	movl	$0, 12(%esp)
	movl	$1, 8(%esp)
	movl	$_task_3, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_INIT_TASK
	.loc 1 539 4
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ADD_TO_SCHEDULING_QUEUE
	.loc 1 540 4
	movl	-12(%ebp), %eax
	movl	%eax, _TASK_PTR+12
	.loc 1 541 1
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.def	_os_task_scheduler;	.scl	3;	.type	32;	.endef
_os_task_scheduler:
LFB14:
	.loc 1 545 1
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$104, %esp
	.loc 1 550 20
	movb	$0, -10(%ebp)
	.loc 1 551 20
	movl	$0, -20(%ebp)
	.loc 1 552 20
	movl	$0, -24(%ebp)
	.loc 1 553 20
	movl	$0, -16(%ebp)
	.loc 1 558 4
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_OS_GET_CURRENT_TIME
	.loc 1 560 4
	movl	$_LAST_CURRENT_TIME, 8(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_INT_SUB
	.loc 1 562 4
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$_LAST_CURRENT_TIME, (%esp)
	call	_ASSIGN
	.loc 1 578 4
	movb	$0, -9(%ebp)
	jmp	L78
L86:
	.loc 1 580 33
	movzbl	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_FROM_SCHEDULING_QUEUE
	movl	%eax, -28(%ebp)
	.loc 1 582 26
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_FROM_TASK_QUEUE
	movl	%eax, -20(%ebp)
	.loc 1 584 9
	cmpl	$0, -20(%ebp)
	je	L79
	.loc 1 584 45 discriminator 1
	movl	-20(%ebp), %eax
	movb	(%eax), %al
	andl	$2, %eax
	.loc 1 584 24 discriminator 1
	testb	%al, %al
	je	L79
	.loc 1 586 51
	movl	-20(%ebp), %eax
	leal	38(%eax), %edx
	.loc 1 586 33
	movl	-20(%ebp), %eax
	addl	$22, %eax
	.loc 1 586 13
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IS_GREATER_OR_EQUAL
	.loc 1 586 12
	testb	%al, %al
	je	L80
	.loc 1 588 38
	movl	-20(%ebp), %eax
	movb	108(%eax), %dl
	.loc 1 588 59
	movl	-20(%ebp), %eax
	movl	56(%eax), %eax
	.loc 1 588 53
	addl	%eax, %edx
	.loc 1 588 32
	movl	-20(%ebp), %eax
	movb	%dl, 108(%eax)
L80:
	.loc 1 591 24
	movl	-20(%ebp), %eax
	leal	6(%eax), %edx
	.loc 1 591 13
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_IS_GREATER
	.loc 1 591 12
	testb	%al, %al
	je	L81
	.loc 1 593 32
	movl	-20(%ebp), %eax
	movb	$0, 108(%eax)
L81:
	.loc 1 595 41
	movl	-20(%ebp), %eax
	leal	60(%eax), %edx
	.loc 1 595 24
	movl	-20(%ebp), %eax
	addl	$22, %eax
	.loc 1 595 13
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IS_GREATER
	.loc 1 595 12
	testb	%al, %al
	je	L82
	.loc 1 598 13
	movl	$9, 4(%esp)
	movl	$11, (%esp)
	call	_OS_SET_SW_BUG
L82:
	.loc 1 601 17
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	.loc 1 601 12
	testl	%eax, %eax
	je	L83
	.loc 1 604 61
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	.loc 1 604 56
	leal	16(%eax), %edx
	.loc 1 604 32
	movl	-20(%ebp), %eax
	movl	128(%eax), %eax
	.loc 1 604 16
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_IS_GREATER
	.loc 1 604 15
	testb	%al, %al
	je	L79
LBB2:
	.loc 1 607 16
	movl	$1, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASSIGN_UINT32
	.loc 1 608 39
	movl	-20(%ebp), %eax
	leal	76(%eax), %edx
	.loc 1 608 19
	leal	-76(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_IS_GREATER_OR_EQUAL
	.loc 1 608 18
	testb	%al, %al
	je	L79
	.loc 1 610 38
	movl	-20(%ebp), %eax
	movb	$0, 108(%eax)
	jmp	L79
L83:
LBE2:
	.loc 1 616 13
	movl	$9, 4(%esp)
	movl	$2, (%esp)
	call	_OS_SET_SW_BUG
L79:
	.loc 1 578 4 discriminator 2
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L78:
	.loc 1 578 4 is_stmt 0 discriminator 1
	cmpb	$9, -9(%ebp)
	jbe	L86
	.loc 1 626 4 is_stmt 1
	movb	$0, -9(%ebp)
	jmp	L87
L90:
	.loc 1 628 33
	movzbl	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_FROM_SCHEDULING_QUEUE
	movl	%eax, -28(%ebp)
	.loc 1 629 26
	movl	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_GET_FROM_TASK_QUEUE
	movl	%eax, -20(%ebp)
	.loc 1 630 9
	cmpl	$0, -20(%ebp)
	je	L88
	.loc 1 633 29
	movl	-20(%ebp), %eax
	movb	(%eax), %al
	andl	$4, %eax
	.loc 1 633 12
	testb	%al, %al
	jne	L89
	.loc 1 635 39
	movl	-20(%ebp), %eax
	leal	22(%eax), %ecx
	.loc 1 635 21
	movl	-20(%ebp), %eax
	leal	22(%eax), %edx
	.loc 1 635 13
	leal	-44(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_INT_ADD
L89:
	.loc 1 638 17
	movl	-20(%ebp), %eax
	movb	108(%eax), %al
	.loc 1 638 12
	cmpb	%al, -10(%ebp)
	jnb	L88
	.loc 1 640 25
	movl	-20(%ebp), %eax
	movb	108(%eax), %al
	movb	%al, -10(%ebp)
	.loc 1 641 25
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 642 44
	movl	-28(%ebp), %eax
	movl	%eax, -16(%ebp)
L88:
	.loc 1 626 4 discriminator 2
	movb	-9(%ebp), %al
	incl	%eax
	movb	%al, -9(%ebp)
L87:
	.loc 1 626 4 is_stmt 0 discriminator 1
	cmpb	$9, -9(%ebp)
	jbe	L90
	.loc 1 653 11 is_stmt 1
	movl	-16(%ebp), %eax
	.loc 1 654 1
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
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
	.long	0x1773
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 8.2.0 -march=i386 -g3 -O0 -std=c90\0"
	.byte	0x1
	.ascii "C:\\Users\\president\\Desktop\\sbx\\input\\src\\os_base\\os_task_scheduler.c\0"
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
	.long	0xba
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
	.long	0xba
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
	.long	0x124
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
	.long	0x124
	.uleb128 0x4
	.long	0x145
	.uleb128 0x5
	.ascii "os_sw_bugs_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x3
	.byte	0x2e
	.byte	0x6
	.long	0x333
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
	.long	0x159
	.uleb128 0x4
	.long	0x343
	.uleb128 0x5
	.ascii "os_sw_bugs_function_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x3
	.byte	0x43
	.byte	0x6
	.long	0x57b
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
	.long	0x59f
	.uleb128 0x8
	.ascii "number\0"
	.byte	0x3
	.byte	0x6c
	.byte	0xa
	.long	0x59f
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xda
	.long	0x5af
	.uleb128 0xa
	.long	0x333
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.ascii "big_int\0"
	.byte	0x3
	.byte	0x6d
	.byte	0x3
	.long	0x57b
	.uleb128 0x2
	.ascii "timebig_t\0"
	.byte	0x3
	.byte	0x6f
	.byte	0x11
	.long	0x5af
	.uleb128 0x5
	.ascii "coreid_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.long	0x611
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
	.uleb128 0x5
	.ascii "privilige_mode_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x6af
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
	.long	0x611
	.uleb128 0x5
	.ascii "task_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x72c
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
	.long	0x6c8
	.uleb128 0x2
	.ascii "func_p_t\0"
	.byte	0x5
	.byte	0x13
	.byte	0x1b
	.long	0x752
	.uleb128 0xb
	.byte	0x4
	.long	0x758
	.uleb128 0xc
	.long	0x763
	.uleb128 0xd
	.long	0x763
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x2
	.ascii "func_p_state_change_t\0"
	.byte	0x5
	.byte	0x15
	.byte	0x1b
	.long	0x783
	.uleb128 0xb
	.byte	0x4
	.long	0x789
	.uleb128 0xf
	.long	0xa2
	.long	0x79d
	.uleb128 0xd
	.long	0x763
	.uleb128 0xd
	.long	0x72c
	.byte	0
	.uleb128 0x7
	.ascii "task_group_s\0"
	.byte	0x20
	.byte	0x5
	.byte	0x18
	.byte	0x8
	.long	0x7d8
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.long	0x5bf
	.byte	0
	.uleb128 0x8
	.ascii "fair_exe_time\0"
	.byte	0x5
	.byte	0x1b
	.byte	0xe
	.long	0x5bf
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.ascii "task_group_t\0"
	.byte	0x5
	.byte	0x1d
	.byte	0x1d
	.long	0x79d
	.uleb128 0x7
	.ascii "task_s\0"
	.byte	0xac
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.long	0xa99
	.uleb128 0x11
	.ascii "active\0"
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.long	0x333
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.ascii "task_queued\0"
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.long	0x333
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x11
	.ascii "idle_task\0"
	.byte	0x5
	.byte	0x23
	.byte	0xd
	.long	0x333
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x11
	.ascii "free\0"
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.long	0x333
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x8
	.ascii "nr_of_ins_allowed\0"
	.byte	0x5
	.byte	0x25
	.byte	0x14
	.long	0xa2
	.byte	0x4
	.uleb128 0x8
	.ascii "nr_of_ins_activated\0"
	.byte	0x5
	.byte	0x26
	.byte	0x14
	.long	0xa2
	.byte	0x5
	.uleb128 0x8
	.ascii "wait_act_until\0"
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.long	0x5bf
	.byte	0x6
	.uleb128 0x8
	.ascii "wait_time\0"
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.long	0x5bf
	.byte	0x16
	.uleb128 0x8
	.ascii "time_to_prio_inc\0"
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.long	0x5bf
	.byte	0x26
	.uleb128 0x8
	.ascii "overwaittime_per_prio_inc_step\0"
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.long	0x145
	.byte	0x38
	.uleb128 0x8
	.ascii "max_allowed_wait_time\0"
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.long	0x5bf
	.byte	0x3c
	.uleb128 0x10
	.secrel32	LASF0
	.byte	0x5
	.byte	0x2c
	.byte	0xe
	.long	0x5bf
	.byte	0x4c
	.uleb128 0x8
	.ascii "start_time\0"
	.byte	0x5
	.byte	0x2d
	.byte	0xe
	.long	0x5bf
	.byte	0x5c
	.uleb128 0x8
	.ascii "current_prio\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x14
	.long	0xa2
	.byte	0x6c
	.uleb128 0x8
	.ascii "default_prio\0"
	.byte	0x5
	.byte	0x2f
	.byte	0x14
	.long	0xa2
	.byte	0x6d
	.uleb128 0x8
	.ascii "task_number\0"
	.byte	0x5
	.byte	0x30
	.byte	0x15
	.long	0x10b
	.byte	0x70
	.uleb128 0x8
	.ascii "fp\0"
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.long	0x741
	.byte	0x74
	.uleb128 0x8
	.ascii "state_request\0"
	.byte	0x5
	.byte	0x32
	.byte	0x1a
	.long	0x765
	.byte	0x78
	.uleb128 0x8
	.ascii "task_state\0"
	.byte	0x5
	.byte	0x33
	.byte	0x11
	.long	0x72c
	.byte	0x7c
	.uleb128 0x8
	.ascii "task_group\0"
	.byte	0x5
	.byte	0x34
	.byte	0x12
	.long	0xa99
	.byte	0x80
	.uleb128 0x8
	.ascii "eax\0"
	.byte	0x5
	.byte	0x36
	.byte	0x15
	.long	0x10b
	.byte	0x84
	.uleb128 0x8
	.ascii "ebx\0"
	.byte	0x5
	.byte	0x37
	.byte	0x15
	.long	0x10b
	.byte	0x88
	.uleb128 0x8
	.ascii "ecx\0"
	.byte	0x5
	.byte	0x38
	.byte	0x15
	.long	0x10b
	.byte	0x8c
	.uleb128 0x8
	.ascii "edx\0"
	.byte	0x5
	.byte	0x39
	.byte	0x15
	.long	0x10b
	.byte	0x90
	.uleb128 0x8
	.ascii "p_stack_pointer\0"
	.byte	0x5
	.byte	0x49
	.byte	0x15
	.long	0xa9f
	.byte	0x94
	.uleb128 0x8
	.ascii "p_stack_pointer_by_malloc\0"
	.byte	0x5
	.byte	0x4a
	.byte	0x15
	.long	0xa9f
	.byte	0x98
	.uleb128 0x8
	.ascii "p_stack_pointer_start\0"
	.byte	0x5
	.byte	0x4b
	.byte	0x15
	.long	0xa9f
	.byte	0x9c
	.uleb128 0x8
	.ascii "stack_size\0"
	.byte	0x5
	.byte	0x4c
	.byte	0x16
	.long	0x10b
	.byte	0xa0
	.uleb128 0x8
	.ascii "p_stack_pointer_end\0"
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.long	0xa9f
	.byte	0xa4
	.uleb128 0x8
	.ascii "privilige_mode\0"
	.byte	0x5
	.byte	0x4e
	.byte	0x15
	.long	0x6af
	.byte	0xa8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7d8
	.uleb128 0xb
	.byte	0x4
	.long	0xa2
	.uleb128 0x2
	.ascii "task_t\0"
	.byte	0x5
	.byte	0x50
	.byte	0x17
	.long	0x7ed
	.uleb128 0x2
	.ascii "scheduling_t\0"
	.byte	0x5
	.byte	0x51
	.byte	0x11
	.long	0xac9
	.uleb128 0xb
	.byte	0x4
	.long	0xaa5
	.uleb128 0x9
	.long	0xac9
	.long	0xadf
	.uleb128 0xa
	.long	0x333
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_PTR\0"
	.byte	0x5
	.byte	0x5b
	.byte	0x10
	.long	0xacf
	.uleb128 0x2
	.ascii "scheduler_time_t\0"
	.byte	0x5
	.byte	0x5d
	.byte	0x13
	.long	0x5bf
	.uleb128 0x5
	.ascii "os_state_e\0"
	.byte	0x7
	.byte	0x4
	.long	0x333
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.long	0xb5a
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
	.long	0xb09
	.uleb128 0x4
	.long	0xb5a
	.uleb128 0x9
	.long	0xa2
	.long	0xb83
	.uleb128 0x13
	.long	0x333
	.word	0x270f
	.byte	0
	.uleb128 0x12
	.ascii "HEAP\0"
	.byte	0x7
	.byte	0xb
	.byte	0x18
	.long	0xb72
	.uleb128 0x9
	.long	0x358
	.long	0xba0
	.uleb128 0xa
	.long	0x333
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.long	0xb90
	.uleb128 0x12
	.ascii "OS_SW_BUG\0"
	.byte	0x7
	.byte	0xe
	.byte	0x1e
	.long	0xba0
	.uleb128 0x12
	.ascii "OS_STATE\0"
	.byte	0x7
	.byte	0xf
	.byte	0x1c
	.long	0xb6d
	.uleb128 0x12
	.ascii "VAR_HARDFAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x10
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_MEM_MANAG_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x11
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_USAGE_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x12
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x13
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_MEM_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x14
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_ADDR_REG\0"
	.byte	0x7
	.byte	0x15
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_AUX_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x16
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "VAR_BUS_FAULT_STATUS_REG\0"
	.byte	0x7
	.byte	0x17
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "LINK_REGISTER_HANDLER\0"
	.byte	0x7
	.byte	0x18
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "BACKUP_SYSTICK_CURRENT_VAL_REG\0"
	.byte	0x7
	.byte	0x19
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "DBG_RLD_VALUE\0"
	.byte	0x7
	.byte	0x1a
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "DBG_CURR_VAL\0"
	.byte	0x7
	.byte	0x1b
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "DBG_CTRL_VALUE\0"
	.byte	0x7
	.byte	0x1c
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "DBG_CALIB_VALUE\0"
	.byte	0x7
	.byte	0x1d
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "TASK1_CALL_NR\0"
	.byte	0x7
	.byte	0x1e
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "TASK2_CALL_NR\0"
	.byte	0x7
	.byte	0x1f
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "TASK3_CALL_NR\0"
	.byte	0x7
	.byte	0x20
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "TASK4_CALL_NR\0"
	.byte	0x7
	.byte	0x21
	.byte	0x18
	.long	0x154
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_ADDR\0"
	.byte	0x7
	.byte	0x23
	.byte	0x19
	.long	0xde2
	.uleb128 0xb
	.byte	0x4
	.long	0x154
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_POS\0"
	.byte	0x7
	.byte	0x24
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "OS_MAIN_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x25
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK0_STACK_ADDR\0"
	.byte	0x7
	.byte	0x26
	.byte	0x19
	.long	0xde2
	.uleb128 0x12
	.ascii "TASK0_STACK_POS\0"
	.byte	0x7
	.byte	0x27
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK0_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x28
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK1_STACK_ADDR\0"
	.byte	0x7
	.byte	0x29
	.byte	0x19
	.long	0xde2
	.uleb128 0x12
	.ascii "TASK1_STACK_POS\0"
	.byte	0x7
	.byte	0x2a
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK1_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2b
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK2_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2c
	.byte	0x19
	.long	0xde2
	.uleb128 0x12
	.ascii "TASK2_STACK_POS\0"
	.byte	0x7
	.byte	0x2d
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK2_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x2e
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK3_STACK_ADDR\0"
	.byte	0x7
	.byte	0x2f
	.byte	0x19
	.long	0xde2
	.uleb128 0x12
	.ascii "TASK3_STACK_POS\0"
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK3_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x31
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK4_STACK_ADDR\0"
	.byte	0x7
	.byte	0x32
	.byte	0x19
	.long	0xde2
	.uleb128 0x12
	.ascii "TASK4_STACK_POS\0"
	.byte	0x7
	.byte	0x33
	.byte	0x19
	.long	0x154
	.uleb128 0x12
	.ascii "TASK4_STACK_USAGE_PERCENT\0"
	.byte	0x7
	.byte	0x34
	.byte	0x19
	.long	0x154
	.uleb128 0x9
	.long	0xa2
	.long	0xfd6
	.uleb128 0x13
	.long	0x333
	.word	0x7cf
	.byte	0
	.uleb128 0x12
	.ascii "TASK0_STACK\0"
	.byte	0x7
	.byte	0x35
	.byte	0x1a
	.long	0xfc5
	.uleb128 0x12
	.ascii "TASK1_STACK\0"
	.byte	0x7
	.byte	0x36
	.byte	0x1a
	.long	0xfc5
	.uleb128 0x12
	.ascii "TASK2_STACK\0"
	.byte	0x7
	.byte	0x37
	.byte	0x1a
	.long	0xfc5
	.uleb128 0x12
	.ascii "TASK3_STACK\0"
	.byte	0x7
	.byte	0x38
	.byte	0x1a
	.long	0xfc5
	.uleb128 0x12
	.ascii "TASK4_STACK\0"
	.byte	0x7
	.byte	0x39
	.byte	0x1a
	.long	0xfc5
	.uleb128 0x12
	.ascii "LAST_CURRENT_TIME\0"
	.byte	0x7
	.byte	0x3a
	.byte	0x1a
	.long	0xaf0
	.uleb128 0x9
	.long	0xab4
	.long	0x1064
	.uleb128 0xa
	.long	0x333
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_SCHEDULING_QUEUE\0"
	.byte	0x7
	.byte	0x3b
	.byte	0x1a
	.long	0x1054
	.uleb128 0x12
	.ascii "RUNNING_SCHEDULING_QUEUE_ENTRY\0"
	.byte	0x7
	.byte	0x3c
	.byte	0x1a
	.long	0x10a9
	.uleb128 0xb
	.byte	0x4
	.long	0xab4
	.uleb128 0x9
	.long	0xaa5
	.long	0x10bf
	.uleb128 0xa
	.long	0x333
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.ascii "TASK_RUN_QUEUE\0"
	.byte	0x7
	.byte	0x3d
	.byte	0x1a
	.long	0x10af
	.uleb128 0x9
	.long	0xaa5
	.long	0x10e6
	.uleb128 0xa
	.long	0x333
	.byte	0
	.byte	0
	.uleb128 0x12
	.ascii "RUNNING_TASK\0"
	.byte	0x7
	.byte	0x3e
	.byte	0x1a
	.long	0x10d6
	.uleb128 0x12
	.ascii "TASK_IDLE_QUEUE\0"
	.byte	0x7
	.byte	0x3f
	.byte	0x1a
	.long	0x10d6
	.uleb128 0x12
	.ascii "bTASK_QUEUE_INITIALIZED\0"
	.byte	0x7
	.byte	0x40
	.byte	0x1a
	.long	0xa2
	.uleb128 0x12
	.ascii "TASK_0_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0xf
	.long	0xaa5
	.uleb128 0x12
	.ascii "TASK_1_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x1b
	.long	0xaa5
	.uleb128 0x12
	.ascii "TASK_2_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x27
	.long	0xaa5
	.uleb128 0x12
	.ascii "TASK_3_VAR\0"
	.byte	0x7
	.byte	0x41
	.byte	0x33
	.long	0xaa5
	.uleb128 0x12
	.ascii "TASK_GROUP_1\0"
	.byte	0x7
	.byte	0x42
	.byte	0x15
	.long	0x7d8
	.uleb128 0x12
	.ascii "TASK_GROUP_2\0"
	.byte	0x7
	.byte	0x42
	.byte	0x23
	.long	0x7d8
	.uleb128 0x12
	.ascii "TASK_GROUP_3\0"
	.byte	0x7
	.byte	0x42
	.byte	0x31
	.long	0x7d8
	.uleb128 0x12
	.ascii "TASK_GROUP_4\0"
	.byte	0x7
	.byte	0x42
	.byte	0x3f
	.long	0x7d8
	.uleb128 0x12
	.ascii "TASK_GROUP_5\0"
	.byte	0x7
	.byte	0x42
	.byte	0x4d
	.long	0x7d8
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_TASK_ADDR\0"
	.byte	0x7
	.byte	0x43
	.byte	0x1a
	.long	0xac9
	.uleb128 0x12
	.ascii "TASK_TRANSITION_REJECTED_STATE\0"
	.byte	0x7
	.byte	0x44
	.byte	0x1a
	.long	0x72c
	.uleb128 0x12
	.ascii "TASK_TRANSITION_CURRENT_STATE\0"
	.byte	0x7
	.byte	0x45
	.byte	0x1a
	.long	0x72c
	.uleb128 0x12
	.ascii "SYSTEM_STATE_ACCEPTED\0"
	.byte	0x7
	.byte	0x46
	.byte	0x1c
	.long	0xb6d
	.uleb128 0x12
	.ascii "LOCAL_SYSTEM_TIME\0"
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.long	0x5bf
	.uleb128 0x9
	.long	0xa2
	.long	0x12a9
	.uleb128 0x13
	.long	0x333
	.word	0x3ff
	.byte	0
	.uleb128 0x12
	.ascii "OS_MAIN_STACK\0"
	.byte	0x8
	.byte	0xc
	.byte	0x18
	.long	0x1298
	.uleb128 0x14
	.ascii "os_task_scheduler\0"
	.byte	0x1
	.word	0x220
	.byte	0x15
	.long	0x13d5
	.long	LFB14
	.long	LFE14-LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x13d5
	.uleb128 0x15
	.ascii "scheduling_queue_member\0"
	.byte	0x1
	.word	0x223
	.byte	0x15
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.ascii "element_nr\0"
	.byte	0x1
	.word	0x224
	.byte	0x14
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.ascii "Winner_prio\0"
	.byte	0x1
	.word	0x226
	.byte	0x14
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x16
	.secrel32	LASF1
	.byte	0x1
	.word	0x227
	.byte	0x14
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.ascii "Winner_task\0"
	.byte	0x1
	.word	0x228
	.byte	0x14
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.ascii "Winner_scheduling_queue_member\0"
	.byte	0x1
	.word	0x229
	.byte	0x14
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.ascii "delta_time\0"
	.byte	0x1
	.word	0x22a
	.byte	0x14
	.long	0x5bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.ascii "time\0"
	.byte	0x1
	.word	0x22c
	.byte	0xe
	.long	0x5bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	LBB2
	.long	LBE2-LBB2
	.uleb128 0x15
	.ascii "tTime\0"
	.byte	0x1
	.word	0x25e
	.byte	0x1a
	.long	0x5bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xac9
	.uleb128 0x18
	.ascii "OS_INIT_TASKS\0"
	.byte	0x1
	.word	0x1ce
	.byte	0x6
	.long	LFB13
	.long	LFE13-LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x140d
	.uleb128 0x16
	.secrel32	LASF2
	.byte	0x1
	.word	0x1d0
	.byte	0xc
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.ascii "task_3\0"
	.byte	0x1
	.word	0x1c1
	.byte	0xc
	.long	LFB12
	.long	LFE12-LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1448
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x1c1
	.byte	0x19
	.long	0x763
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x1
	.word	0x1c3
	.byte	0x12
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.ascii "task_2\0"
	.byte	0x1
	.word	0x1b4
	.byte	0xc
	.long	LFB11
	.long	LFE11-LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1483
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x1b4
	.byte	0x19
	.long	0x763
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x1
	.word	0x1b6
	.byte	0x12
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.ascii "task_1\0"
	.byte	0x1
	.word	0x1a7
	.byte	0xc
	.long	LFB10
	.long	LFE10-LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x14be
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x1a7
	.byte	0x19
	.long	0x763
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x1
	.word	0x1a9
	.byte	0x12
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1b
	.ascii "task_0\0"
	.byte	0x1
	.word	0x1a2
	.byte	0xc
	.long	LFB9
	.long	LFE9-LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e9
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1
	.word	0x1a2
	.byte	0x19
	.long	0x763
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.ascii "OS_TASK_DISPATCHER\0"
	.byte	0x1
	.word	0x181
	.byte	0x6
	.long	LFB8
	.long	LFE8-LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1530
	.uleb128 0x16
	.secrel32	LASF3
	.byte	0x1
	.word	0x18d
	.byte	0x12
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.secrel32	LASF1
	.byte	0x1
	.word	0x18e
	.byte	0xc
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x18
	.ascii "OS_TERMINATE_TASK\0"
	.byte	0x1
	.word	0x158
	.byte	0x6
	.long	LFB7
	.long	LFE7-LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1576
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x158
	.byte	0x20
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x158
	.byte	0x34
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x18
	.ascii "OS_START_TASK\0"
	.byte	0x1
	.word	0x121
	.byte	0x6
	.long	LFB6
	.long	LFE6-LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c9
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1
	.word	0x121
	.byte	0x1c
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1
	.word	0x121
	.byte	0x30
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.ascii "time\0"
	.byte	0x1
	.word	0x12a
	.byte	0xe
	.long	0x5bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1c
	.ascii "OS_ACTIVATE_TASK\0"
	.byte	0x1
	.byte	0xed
	.byte	0x6
	.long	LFB5
	.long	LFE5-LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x15fc
	.uleb128 0x1d
	.secrel32	LASF1
	.byte	0x1
	.byte	0xed
	.byte	0x1f
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.ascii "os_preempt_task\0"
	.byte	0x1
	.byte	0xc4
	.byte	0x6
	.long	LFB4
	.long	LFE4-LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x163d
	.uleb128 0x1d
	.secrel32	LASF1
	.byte	0x1
	.byte	0xc4
	.byte	0x1e
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.secrel32	LASF4
	.byte	0x1
	.byte	0xc4
	.byte	0x32
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x1c
	.ascii "OS_CREATE_TASK\0"
	.byte	0x1
	.byte	0xaa
	.byte	0x6
	.long	LFB3
	.long	LFE3-LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x166e
	.uleb128 0x1d
	.secrel32	LASF1
	.byte	0x1
	.byte	0xaa
	.byte	0x1d
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.ascii "OS_TASK_STATE_REQUEST\0"
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.long	0xa2
	.long	LFB2
	.long	LFE2-LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x16f2
	.uleb128 0x20
	.ascii "temp_task\0"
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.long	0x763
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "requested_state\0"
	.byte	0x1
	.byte	0x34
	.byte	0x45
	.long	0x72c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.ascii "RequestState\0"
	.byte	0x1
	.byte	0x36
	.byte	0x14
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x22
	.secrel32	LASF1
	.byte	0x1
	.byte	0x38
	.byte	0xc
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.ascii "OS_SLEEP_TASK\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.long	LFB1
	.long	LFE1-LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1751
	.uleb128 0x1d
	.secrel32	LASF1
	.byte	0x1
	.byte	0x2b
	.byte	0x1c
	.long	0xac9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "usec\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x2c
	.long	0x5bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.secrel32	LASF3
	.byte	0x1
	.byte	0x2b
	.byte	0x40
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x21
	.ascii "time\0"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.long	0x5bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.ascii "OS_ACTIVATE_DISPATCHER\0"
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.long	LFB0
	.long	LFE0-LFB0
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.file 24 "C:/Users/president/Desktop/sbx/input/src/os_base/os_common.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
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
	.file 26 "C:/Users/president/Desktop/sbx/input/src/os_base/os_task_queue.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1a
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
	.file 27 "C:/Users/president/Desktop/sbx/input/src/os_base/os_exception.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x2
	.ascii "_OS_EXCEPTION_H_ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "HARDFAULT_STATUS_REG ((volatile uint32*)0xE000ED2Cu)\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "MEM_MANAG_FAULT_STATUS_REG ((volatile uint8*)0xE000ED28u)\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "BUS_FAULT_STATUS_REG ((volatile uint8*)0xE000ED29u)\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "USAGE_FAULT_STATUS_REG ((volatile uint16*)0xE000ED2Au)\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "MEM_FAULT_ADDR_REG ((volatile uint32*)0xE000ED34u)\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "BUS_FAULT_ADDR_REG ((volatile uint32*)0xE000ED38u)\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "AUX_FAULT_STATUS_REG ((volatile uint32*)0xE000ED3Cu)\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "SYSTICK_CTRL_STAT_REG ((uint32*)0xE000E010u)\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "SYSTICK_RLD_VAL_REG ((uint32*)0xE000E014u)\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "SYSTICK_CURRENT_VAL_REG ((uint32*)0xE000E018u)\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "SYSTICK_CALIB_VAL_REG ((uint32*)0xE000E01Cu)\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "SYSTICK_STAT_REG_CLKSRC_AHB ((uint32 )0x00000004u)\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "SYSTICK_STAT_REG_CLKSRC_AHB_8 ((uint32 )0x00000000u)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "SYSTICK_STAT_REG_TICKINT ((uint32 )0x00000002u)\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "SYSTICK_STAT_REG_ENABLE ((uint32 )0x00000001u)\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "SYS_HANDLER_CTRL_STATE_REG ((uint32*)0xE000ED24u)\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "SYS_HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA ((uint32 )0x00040000u)\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "SYS_HANDLER_CTRL_STATE_BIT_MASK_BUSFAULTENA ((uint32 )0x00020000u)\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "SYS_HANDLER_CTRL_STATE_BIT_MASK_MEMFAULTENA ((uint32 )0x00010000u)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "SYS_HANDLER_CTRL_STATE_ENA_ALL_EXCEP (*SYS_HANDLER_CTRL_STATE_REG = *SYS_HANDLER_CTRL_STATE_REG | SYS_HANDLER_CTRL_STATE_BIT_MASK_USGFAULTENA | SYS_HANDLER_CTRL_STATE_BIT_MASK_BUSFAULTENA | SYS_HANDLER_CTRL_STATE_BIT_MASK_MEMFAULTENA)\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF2:
	.ascii "task_ptr\0"
LASF0:
	.ascii "exe_time\0"
LASF4:
	.ascii "scheduling_task\0"
LASF1:
	.ascii "task\0"
LASF3:
	.ascii "scheduling_task_ptr\0"
	.ident	"GCC: (MinGW.org GCC-8.2.0-3) 8.2.0"
	.def	_OS_GET_CURRENT_TIME;	.scl	2;	.type	32;	.endef
	.def	_INT_ADD;	.scl	2;	.type	32;	.endef
	.def	_OS_SET_SW_BUG;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_SAVE_TASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_ADD_TO_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_ADD_TO_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_ADD_TO_IDLE_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_ASSIGN_NULL;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_SAVE_SYSTEM_STACK;	.scl	2;	.type	32;	.endef
	.def	_OS_TASK_RESTORETASK_ENVIRONMENT;	.scl	2;	.type	32;	.endef
	.def	_ASSIGN;	.scl	2;	.type	32;	.endef
	.def	_SET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
	.def	_LLF_CHANGE_TO_UNPRIVILIGED_THREAD_MODE;	.scl	2;	.type	32;	.endef
	.def	_DELETE_FROM_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_DELETE_FROM_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_GET_RUNNING_TASK;	.scl	2;	.type	32;	.endef
	.def	_GET_RUNNING_SCHEDULING_QUEUE_ELEMENT_PTR;	.scl	2;	.type	32;	.endef
	.def	_GET_FROM_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_TASK_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_OS_INIT_TASK;	.scl	2;	.type	32;	.endef
	.def	_INT_SUB;	.scl	2;	.type	32;	.endef
	.def	_GET_FROM_SCHEDULING_QUEUE;	.scl	2;	.type	32;	.endef
	.def	_IS_GREATER_OR_EQUAL;	.scl	2;	.type	32;	.endef
	.def	_IS_GREATER;	.scl	2;	.type	32;	.endef
	.def	_ASSIGN_UINT32;	.scl	2;	.type	32;	.endef
