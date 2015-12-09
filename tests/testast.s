

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 144
	.globl	_main
_main:                                                      ## @main
LBB1_0:                                                     ## %entry
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	%rsi, %rbx
	movl	%edi, %r14d
	call	___t_init
	call	_object_create
	movq	%rax, %r15
	call	_closure_object_place
	movq	%rax, %r12
	leaq	___closure(%rip), %rsi
	movq	%r12, %rdi
	call	_closure_set_fptrC
	movq	%r12, (%rsp)
	movq	___sym_main@GOTPCREL(%rip), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r12, %rdx
	call	_object_set_slot
	movq	___lobbymap@GOTPCREL(%rip), %rax
	movq	%r15, (%rax)
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	call	___t_start
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret


	.align	4, 144
___closure:                                                 ## @__closure
LBB2_0:                                                     ## %entry
	subq	$24, %rsp
	call	_null_object
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
LBB2_1:                                                     ## %ret
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$24, %rsp
	ret
	.subsections_via_symbols
	.section	__DATA,__datacoal_nt,coalesced
	.globl ___lobbymap
	.weak_definition ___lobbymap
	.align	3
___lobbymap:                                                ## @__lobbymap
	.space	8
	.globl ___sym_main
	.weak_definition ___sym_main
	.align	2
___sym_main:                                                ## @__sym_main
	.space	4

