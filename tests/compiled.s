

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 144
	.globl	_main
_main:                                                      ## @main
Leh_func_begin1:
LBB1_0:                                                     ## %entry
	subq	$56, %rsp
Llabel1:
	movq	%rsi, %rax
	movl	%edi, %ecx
	movq	%rax, 40(%rsp)
	movl	%ecx, 36(%rsp)
	call	___t_init
	call	_object_create
	movq	%rax, 24(%rsp)
	call	_closure_object_place
	movq	%rax, _closuremap(%rip)
	leaq	___closure(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, 16(%rsp)
	call	_closure_set_fptrC
	movq	%rax, %rax
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	___unnamed_1(%rip), %rdx
	movl	$2, %esi
	movq	24(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	call	_object_set_slot
	movq	%rax, %rax
	movl	36(%rsp), %eax
	movl	%eax, %edi
	movq	40(%rsp), %rax
	movq	%rax, %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdx
	call	___t_start
	movl	%eax, %ecx
	movl	%ecx, %eax
	addq	$56, %rsp
	ret
Leh_func_end1:


	.align	4, 144
___closure:                                                 ## @__closure
Leh_func_begin2:
LBB2_0:                                                     ## %entry
	pushq	%rbp
Llabel2:
	movq	%rsp, %rbp
Llabel3:
	subq	$160, %rsp
Llabel4:
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %rcx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	call	_int_object
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	movl	$1000000, %edx
	movl	%ecx, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rax, -48(%rbp)
	.align	4, 144
LBB2_1:                                                     ## %loopcond
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edi
	movq	%rax, -56(%rbp)
	call	_array_object
	movl	-40(%rbp), %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	call	_int_object
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%rax, %rdx
	call	_array_set_elementC
	movq	%rax, %rax
	leaq	___unnamed_2(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	movq	%rax, -72(%rbp)
	movq	%rcx, -80(%rbp)
	je	LBB2_4
LBB2_2:                                                     ## %forward
	movq	-80(%rbp), %rax
LBB2_3:                                                     ## %forward
	movq	%rax, %rcx
	movq	%rcx, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	LBB2_12
LBB2_4:                                                     ## %cont
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB2_1
                                                            ## Inner Loop
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rdi
	call	_bool_get_value
	movl	%eax, %ecx
	testl	%ecx, %ecx
	je	LBB2_9
LBB2_5:                                                     ## %loop
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB2_1
                                                            ## Inner Loop
	call	_closure_object_place
	movq	%rax, _closuremap1(%rip)
	leaq	___closure2(%rip), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -88(%rbp)
	call	_closure_set_fptrC
	movq	%rax, %rax
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	-88(%rbp), %rcx
	movq	%rcx, -16(%rax)
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	_array_object
	movq	-24(%rbp), %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%rax, -96(%rbp)
	call	_array_set_elementC
	movq	%rax, %rax
	leaq	___unnamed_3(%rip), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	movq	%rax, -104(%rbp)
	movq	%rcx, -112(%rbp)
	je	LBB2_7
LBB2_6:                                                     ## %forward5
	movq	-112(%rbp), %rax
	jmp	LBB2_3
LBB2_7:                                                     ## %cont6
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB2_1
                                                            ## Inner Loop
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	LBB2_1
LBB2_8:                                                     ## %forward10
	movq	-136(%rbp), %rax
	jmp	LBB2_3
LBB2_9:                                                     ## %loopcont
	movl	$1, %eax
	movl	%eax, %edi
	call	_int_object
	movq	%rax, %rax
	movq	-24(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -120(%rbp)
	call	_array_object
	leaq	___unnamed_4(%rip), %rcx
	movq	-120(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	jne	LBB2_8
LBB2_10:                                                    ## %cont11
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rcx, -144(%rbp)
	call	_array_object
	leaq	___unnamed_5(%rip), %rcx
	movq	-144(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	movq	%rax, -152(%rbp)
	movq	%rcx, -160(%rbp)
	jne	LBB2_13
LBB2_11:                                                    ## %cont16
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	movq	%rcx, -16(%rbp)
	movq	$0, -8(%rbp)
LBB2_12:                                                    ## %ret
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rbp, %rsp
	popq	%rbp
	ret
LBB2_13:                                                    ## %forward15
	movq	-160(%rbp), %rax
	jmp	LBB2_3
Leh_func_end2:


	.align	4, 144
___closure2:                                                ## @__closure2
Leh_func_begin3:
LBB3_0:                                                     ## %entry
	subq	$88, %rsp
Llabel5:
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	%rax, 56(%rsp)
	movl	%edx, 52(%rsp)
	call	_array_get_elementC
	movq	%rax, 64(%rsp)
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	movl	%ecx, 36(%rsp)
	call	_array_object
	movl	36(%rsp), %ecx
	movl	%ecx, %edi
	movq	%rax, 24(%rsp)
	call	_int_object
	movq	24(%rsp), %rcx
	movq	%rcx, %rdi
	movl	52(%rsp), %edx
	movl	%edx, %esi
	movq	%rax, %rdx
	call	_array_set_elementC
	movq	%rax, %rax
	leaq	___unnamed_6(%rip), %rax
	movq	40(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdx
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	movq	%rcx, 8(%rsp)
	jne	LBB3_3
LBB3_1:                                                     ## %cont
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	$0, 80(%rsp)
LBB3_2:                                                     ## %ret
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB3_3:                                                     ## %forward
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	$0, 72(%rsp)
	jmp	LBB3_2
Leh_func_end3:


	.align	4, 144
	.globl	_object_alloc
_object_alloc:                                              ## @object_alloc
LBB4_0:
	subq	$56, %rsp
	movl	%edi, %eax
	movb	%al, %cl
	testb	$128, %cl
                                                            ## implicit-def: ax
	movl	_mem_usage(%rip), %ecx
	movw	%ax, 54(%rsp)
	movl	%ecx, 48(%rsp)
	jne	LBB4_6
LBB4_1:
	movl	48(%rsp), %eax
	movl	%eax, %ecx
	addl	$24, %ecx
	movl	%ecx, _mem_usage(%rip)
	incl	_num_allocs(%rip)
	movl	$24, %ecx
	movq	%rcx, %rdi
	call	_malloc
LBB4_2:
	movq	%rax, %rcx
	movq	%rax, 40(%rsp)
	movq	%rcx, 32(%rsp)
LBB4_3:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	40(%rsp), %rdx
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	movq	%rcx, 24(%rsp)
	je	LBB4_7
LBB4_4:
	movq	24(%rsp), %rax
	movw	54(%rsp), %cx
	movw	%cx, 12(%rax)
	movq	$0, (%rax)
	movl	$2864775150, 8(%rax)
	movq	$0, 16(%rax)
	testq	%rax, %rax
	je	LBB4_8
LBB4_5:
	movq	24(%rsp), %rax
	addq	$56, %rsp
	ret
LBB4_6:
	movl	48(%rsp), %eax
	movl	%eax, %ecx
	addl	$32, %ecx
	movl	%ecx, _mem_usage(%rip)
	incl	_num_allocs(%rip)
	movl	$32, %ecx
	movq	%rcx, %rdi
	call	_malloc
	movq	$0, 24(%rax)
	jmp	LBB4_2
LBB4_7:
	leaq	___func__.object_alloc(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$35, %edx
	leaq	LC2(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB4_8:
	leaq	___func__.object_alloc(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$42, %edx
	leaq	LC4(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_object_free
_object_free:                                               ## @object_free
LBB5_0:
	subq	$56, %rsp
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$129, %ecx
	movq	%rax, 48(%rsp)
	je	LBB5_7
LBB5_1:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movq	(%rcx), %rdx
	movq	%rcx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	.align	4, 144
LBB5_2:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)
	jne	LBB5_8
LBB5_3:
	movq	32(%rsp), %rax
	movw	$65535, 12(%rax)
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movl	%ecx, 4(%rsp)
	je	LBB5_5
LBB5_4:
	movl	4(%rsp), %eax
	cmpl	$135, %eax
	jne	LBB5_6
LBB5_5:
	movq	32(%rsp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, %rdi
	call	_free
LBB5_6:
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	call	_free
	call	_null_object
	addq	$56, %rsp
	ret
LBB5_7:
	leaq	___func__.object_free(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$50, %edx
	leaq	LC6(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB5_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_2
                                                            ## Inner Loop
	movq	16(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%rcx, 8(%rsp)
	call	_free
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	LBB5_2


	.align	4, 144
	.globl	_object_get_flags
_object_get_flags:                                          ## @object_get_flags
LBB6_0:
	movq	%rdi, %rax
	movzwl	12(%rax), %eax
	ret


	.align	4, 144
	.globl	_object_get_metadata
_object_get_metadata:                                       ## @object_get_metadata
LBB7_0:
	movq	%rdi, %rax
	movq	24(%rax), %rax
	ret


	.align	4, 144
	.globl	_object_set_metadata
_object_set_metadata:                                       ## @object_set_metadata
LBB8_0:
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rax, 24(%rcx)
	ret


	.align	4, 144
	.globl	_object_get_slot
_object_get_slot:                                           ## @object_get_slot
LBB9_0:
	subq	$72, %rsp
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rax, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rdx, 48(%rsp)
	jmp	LBB9_6
	.align	4, 144
LBB9_1:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB9_6
                                                            ## Inner Loop
	movq	40(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdi
	movq	64(%rsp), %rcx
	movq	%rcx, %rsi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jne	LBB9_5
LBB9_2:
	movq	40(%rsp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)
	je	LBB9_4
LBB9_3:
	movq	32(%rsp), %rax
	cmpl	$2864775150, 8(%rax)
	je	LBB9_13
LBB9_4:                                                     ## %.thread
	leaq	___func__.object_get_slot(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$94, %edx
	leaq	LC7(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rcx, %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB9_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB9_6
                                                            ## Inner Loop
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)
LBB9_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)
	jne	LBB9_1
LBB9_7:
	leaq	LC8(%rip), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	je	LBB9_12
LBB9_8:
	movq	56(%rsp), %rax
	testq	%rax, %rax
	je	LBB9_14
LBB9_9:
	movq	56(%rsp), %rax
	cmpl	$2864775150, 8(%rax)
	jne	LBB9_14
LBB9_10:                                                    ## %object_get_delegate.exit
	movq	56(%rsp), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)
	je	LBB9_12
LBB9_11:
	call	_null_object
	movq	8(%rsp), %rcx
	cmpq	%rax, %rcx
	jne	LBB9_15
LBB9_12:
	call	_null_object
	addq	$72, %rsp
	ret
LBB9_13:
	movq	32(%rsp), %rax
	addq	$72, %rsp
	ret
LBB9_14:                                                    ## %.thread1
	leaq	___func__.object_get_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$160, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB9_15:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movq	64(%rsp), %rcx
	movq	%rcx, %rsi
	call	_object_get_slot
	addq	$72, %rsp
	ret


	.align	4, 144
	.globl	_object_get_delegate
_object_get_delegate:                                       ## @object_get_delegate
LBB10_0:
	subq	$24, %rsp
	movq	%rdi, %rax
	testq	%rax, %rax
	movq	%rax, 16(%rsp)
	je	LBB10_3
LBB10_1:
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB10_3
LBB10_2:
	movq	8(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rax
	addq	$24, %rsp
	ret
LBB10_3:                                                    ## %.thread
	leaq	___func__.object_get_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$160, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_object_set_slot
_object_set_slot:                                           ## @object_set_slot
LBB11_0:
	subq	$88, %rsp
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	(%rsi), %rdi
                                                            ## implicit-def: ax
	movq	%rdi, %r8
	movw	%ax, 86(%rsp)
	movq	%r8, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%rdi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rsi, 40(%rsp)
	jmp	LBB11_5
	.align	4, 144
LBB11_1:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB11_5
                                                            ## Inner Loop
	movq	32(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdi
	movq	48(%rsp), %rcx
	movq	%rcx, %rsi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jne	LBB11_4
LBB11_2:
	movq	32(%rsp), %rax
	movzwl	8(%rax), %ecx
                                                            ## implicit-def: cl
	testb	$2, %cl
	jne	LBB11_8
LBB11_3:
	movq	32(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, 24(%rax)
	addq	$88, %rsp
	ret
LBB11_4:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB11_5
                                                            ## Inner Loop
	movq	32(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	movq	%rax, %rsi
	movq	%rcx, 56(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rsi, 40(%rsp)
LBB11_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	40(%rsp), %rdx
	movq	%rdx, %rsi
	movq	56(%rsp), %rdi
	movq	%rdi, %r8
	testq	%r8, %r8
	movq	%rcx, 32(%rsp)
	movq	%rsi, 24(%rsp)
	jne	LBB11_1
LBB11_6:
                                                            ## implicit-def: eax
	movw	86(%rsp), %cx
	movw	%cx, %ax
                                                            ## implicit-def: ah
	testb	$16, %ah
	jne	LBB11_9
LBB11_7:
	addl	$32, _mem_usage(%rip)
	incl	_num_allocs(%rip)
	movl	$32, %eax
	movq	%rax, %rdi
	call	_malloc
	movw	86(%rsp), %cx
	movw	%cx, 8(%rax)
	movq	48(%rsp), %rdx
	movq	%rdx, 16(%rax)
	movq	64(%rsp), %rsi
	movq	%rsi, 24(%rax)
	movq	$0, (%rax)
	movq	24(%rsp), %rdi
	movq	%rax, (%rdi)
	addq	$88, %rsp
	ret
LBB11_8:
	leaq	___func__.object_set_slot(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$128, %edx
	leaq	LC10(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB11_9:
	leaq	___func__.object_set_slot(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$139, %edx
	leaq	LC12(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_object_set_delegate
_object_set_delegate:                                       ## @object_set_delegate
LBB12_0:
	subq	$40, %rsp
	movq	%rsi, %rax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	movq	%rcx, 24(%rsp)
	je	LBB12_3
LBB12_1:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB12_3
LBB12_2:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	addq	$40, %rsp
	ret
LBB12_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_object_resolve_slot
_object_resolve_slot:                                       ## @object_resolve_slot
LBB13_0:
	subq	$56, %rsp
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$132, %edx
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
	jne	LBB13_2
LBB13_1:
	leaq	LC14(%rip), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	je	LBB13_7
LBB13_2:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movq	48(%rsp), %rcx
	movq	%rcx, %rsi
	call	_object_get_slot
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	je	LBB13_8
LBB13_3:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$132, %edx
	movq	%rcx, 8(%rsp)
	jne	LBB13_9
LBB13_4:
	movq	8(%rsp), %rax
LBB13_5:
	movq	24(%rax), %rcx
	movq	%rcx, 32(%rsp)
LBB13_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$56, %rsp
	ret
LBB13_7:
	movq	40(%rsp), %rax
	jmp	LBB13_5
LBB13_8:
	leaq	___func__.object_resolve_slot(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$178, %edx
	leaq	LC15(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB13_9:
	call	_wrapped_null_object
	movq	%rax, 32(%rsp)
	jmp	LBB13_6


	.align	4, 144
	.globl	_object_exec
_object_exec:                                               ## @object_exec
LBB14_0:
	subq	$504, %rsp
	movq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	testq	%rsi, %rsi
	movq	%rax, 232(%rsp)
	movq	%rcx, 224(%rsp)
	movq	%rdx, 216(%rsp)
	movq	%rsi, 208(%rsp)
	je	LBB14_16
LBB14_1:
	movq	208(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 200(%rsp)
	jne	LBB14_16
LBB14_2:
	movq	216(%rsp), %rax
	movq	%rax, %rcx
	movq	200(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rcx, 184(%rsp)
	call	_object_resolve_slot
	testq	%rax, %rax
	movq	%rax, 176(%rsp)
	je	LBB14_17
LBB14_3:
	movq	232(%rsp), %rax
	movq	%rax, %rcx
	movq	176(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, 160(%rsp)
	movq	%rsi, 152(%rsp)
	call	_wrapped_null_object
	movq	152(%rsp), %rcx
	cmpq	%rax, %rcx
	jne	LBB14_11
LBB14_4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	%xmm0, 464(%rsp)
	movaps	%xmm0, 448(%rsp)
	movaps	%xmm0, 432(%rsp)
	movaps	%xmm0, 416(%rsp)
	movaps	%xmm0, 400(%rsp)
	movaps	%xmm0, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	leaq	240(%rsp), %rax
	leaq	LC17(%rip), %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	call	___strcpy_chk
	movq	%rax, %rax
	leaq	LC18(%rip), %rax
	movq	200(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_object_resolve_slot
	movq	%rax, 144(%rsp)
	call	_wrapped_null_object
	movq	144(%rsp), %rcx
	cmpq	%rax, %rcx
	je	LBB14_9
LBB14_5:
	movq	144(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rcx, 136(%rsp)
	call	_array_object
	movq	200(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	160(%rsp), %rax
	movq	%rax, %rdx
	movq	136(%rsp), %r8
	call	*%r8
	movq	%rdx, %rcx
	testq	%rax, %rax
	movq	%rax, 128(%rsp)
	je	LBB14_10
LBB14_6:
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$131, %edx
	movq	%rcx, 120(%rsp)
	jne	LBB14_18
LBB14_7:                                                    ## %string_cstrC.exit
	movq	120(%rsp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 104(%rsp)
	je	LBB14_19
LBB14_8:
	leaq	240(%rsp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdi
	movq	104(%rsp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdx
	call	___strcat_chk
	movq	%rax, %rax
	jmp	LBB14_10
LBB14_9:
	leaq	240(%rsp), %rax
	movq	%rax, %rdi
	call	_strlen
	movq	%rax, %rcx
	leaq	240(%rsp,%rcx), %rcx
	xorl	%edx, %edx
	movq	$-1, %rdi
	leaq	LC20(%rip), %r8
	xorb	%r9b, %r9b
	movq	%rdi, 88(%rsp)
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	88(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	200(%rsp), %r8
	movb	%r9b, %al
	call	___sprintf_chk
	movl	%eax, %ecx
LBB14_10:
	leaq	240(%rsp), %rax
	leaq	LC21(%rip), %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rdx, 80(%rsp)
	movq	%rax, 72(%rsp)
	call	___strcat_chk
	movq	%rax, %rax
	movq	72(%rsp), %rax
	movq	%rax, %rdi
	movq	184(%rsp), %rcx
	movq	%rcx, %rsi
	movq	80(%rsp), %rdx
	call	___strcat_chk
	movq	%rax, %rax
	xorl	%eax, %eax
	movq	72(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, 64(%rsp)
	call	_string_object
	movq	64(%rsp), %rcx
	movq	%rax, 56(%rsp)
	movq	%rcx, 48(%rsp)
	jmp	LBB14_15
LBB14_11:
	call	_wrapped_null_object
	movq	152(%rsp), %rcx
	cmpq	%rax, %rcx
	je	LBB14_20
LBB14_12:
	movq	224(%rsp), %rax
	movq	%rax, %rcx
	movq	200(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	160(%rsp), %rcx
	movq	%rcx, %rdx
	movq	152(%rsp), %r8
	call	*%r8
	movq	%rdx, %rcx
	testq	%rax, %rax
	movq	%rcx, %rdx
	movq	%rax, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	jne	LBB14_21
LBB14_13:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	testq	%rcx, %rcx
	jne	LBB14_21
LBB14_14:
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)
	call	_null_object
	movq	8(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 56(%rsp)
LBB14_15:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, %rax
	movq	%rsi, %rdx
	addq	$504, %rsp
	ret
LBB14_16:                                                   ## %.thread
	leaq	___func__.object_exec(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$192, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 192(%rsp)
	movq	%rcx, %rsi
	movq	192(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB14_17:
	leaq	___func__.object_exec(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$197, %edx
	leaq	LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 168(%rsp)
	movq	%rcx, %rsi
	movq	168(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB14_18:
	leaq	___func__.string_cstrC(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$52, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB14_19:
	leaq	___func__.object_exec(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$208, %edx
	leaq	LC19(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 96(%rsp)
	movq	%rcx, %rsi
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB14_20:
	leaq	___func__.object_exec(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$222, %edx
	leaq	LC23(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB14_21:                                                   ## %._crit_edge
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, 48(%rsp)
	movq	%rsi, 56(%rsp)
	jmp	LBB14_15


	.align	4, 144
	.globl	_object_create
_object_create:                                             ## @object_create
LBB15_0:
	subq	$40, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, 32(%rsp)
	call	_object_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB15_3
LBB15_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB15_3
LBB15_2:                                                    ## %object_set_delegate.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	ret
LBB15_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_prototype
_string_prototype:                                          ## @string_prototype
LBB16_0:
	subq	$344, %rsp
	movq	_string_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 336(%rsp)
	jne	LBB16_16
LBB16_1:
	movl	$131, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _string_prototype.prototype(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 328(%rsp)
	call	_object_alloc
	leaq	_string_print(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 320(%rsp)
	call	_closure_prototype
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 312(%rsp)
	je	LBB16_17
LBB16_2:
	movq	320(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 304(%rsp)
	jne	LBB16_17
LBB16_3:                                                    ## %closure_object.exit
	movq	328(%rsp), %rax
	movq	%rax, %rcx
	movq	312(%rsp), %rdx
	movq	%rdx, %rsi
	movq	304(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC24(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	304(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 288(%rsp)
	call	_object_alloc
	leaq	_string_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 280(%rsp)
	call	_closure_prototype
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 272(%rsp)
	je	LBB16_18
LBB16_4:
	movq	280(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 264(%rsp)
	jne	LBB16_18
LBB16_5:                                                    ## %closure_object.exit5
	movq	272(%rsp), %rax
	movq	%rax, %rcx
	movq	264(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC125(%rip), %rcx
	xorl	%esi, %esi
	movq	288(%rsp), %rdi
	movl	%esi, 252(%rsp)
	movq	%rcx, %rsi
	movl	252(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 240(%rsp)
	call	_object_alloc
	leaq	_string_clone(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 232(%rsp)
	call	_closure_prototype
	movq	232(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 224(%rsp)
	je	LBB16_19
LBB16_6:
	movq	232(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 216(%rsp)
	jne	LBB16_19
LBB16_7:                                                    ## %closure_object.exit15
	movq	224(%rsp), %rax
	movq	%rax, %rcx
	movq	216(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC226(%rip), %rcx
	xorl	%esi, %esi
	movq	240(%rsp), %rdi
	movl	%esi, 204(%rsp)
	movq	%rcx, %rsi
	movl	204(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 192(%rsp)
	call	_object_alloc
	leaq	_string_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 184(%rsp)
	call	_closure_prototype
	movq	184(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 176(%rsp)
	je	LBB16_20
LBB16_8:
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 168(%rsp)
	jne	LBB16_20
LBB16_9:                                                    ## %closure_object.exit25
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	movq	168(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	192(%rsp), %rdi
	movl	%esi, 156(%rsp)
	movq	%rcx, %rsi
	movl	156(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 144(%rsp)
	call	_object_alloc
	leaq	_string_add(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 136(%rsp)
	call	_closure_prototype
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 128(%rsp)
	je	LBB16_21
LBB16_10:
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 120(%rsp)
	jne	LBB16_21
LBB16_11:                                                   ## %closure_object.exit30
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC428(%rip), %rcx
	xorl	%esi, %esi
	movq	144(%rsp), %rdi
	movl	%esi, 108(%rsp)
	movq	%rcx, %rsi
	movl	108(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 96(%rsp)
	call	_object_alloc
	leaq	_string_eq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 88(%rsp)
	call	_closure_prototype
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 80(%rsp)
	je	LBB16_22
LBB16_12:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 72(%rsp)
	jne	LBB16_22
LBB16_13:                                                   ## %closure_object.exit20
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC529(%rip), %rcx
	xorl	%esi, %esi
	movq	96(%rsp), %rdi
	movl	%esi, 60(%rsp)
	movq	%rcx, %rsi
	movl	60(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_string_neq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB16_23
LBB16_14:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB16_23
LBB16_15:                                                   ## %closure_object.exit10
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC630(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_string_prototype.prototype(%rip), %rax
	addq	$344, %rsp
	ret
LBB16_16:
	movq	336(%rsp), %rax
	addq	$344, %rsp
	ret
LBB16_17:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 296(%rsp)
	movq	%rcx, %rsi
	movq	296(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_18:                                                   ## %.thread31
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 256(%rsp)
	movq	%rcx, %rsi
	movq	256(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_19:                                                   ## %.thread32
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 208(%rsp)
	movq	%rcx, %rsi
	movq	208(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_20:                                                   ## %.thread33
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 160(%rsp)
	movq	%rcx, %rsi
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_21:                                                   ## %.thread34
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_22:                                                   ## %.thread35
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB16_23:                                                   ## %.thread36
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_print
_string_print:                                              ## @string_print
LBB17_0:
	subq	$24, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movq	%rax, 16(%rsp)
	jne	LBB17_2
LBB17_1:
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, %al
	movq	%rcx, (%rsp)
	call	_puts
	movl	%eax, %ecx
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$24, %rsp
	ret
LBB17_2:
	leaq	___func__.string_print(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$125, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_to_s
_string_to_s:                                               ## @string_to_s
LBB18_0:
	subq	$24, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movq	%rax, 16(%rsp)
	jne	LBB18_2
LBB18_1:
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	addq	$24, %rsp
	ret
LBB18_2:
	leaq	___func__.string_to_s(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$86, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_clone
_string_clone:                                              ## @string_clone
LBB19_0:
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	ret


	.align	4, 144
	.globl	_string_class
_string_class:                                              ## @string_class
LBB20_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC1337(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_string_add
_string_add:                                                ## @string_add
LBB21_0:
	subq	$184, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movzbl	12(%rdx), %esi
	cmpl	$131, %esi
	movq	%rax, 176(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rdx, 160(%rsp)
	jne	LBB21_8
LBB21_1:
	movq	168(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 144(%rsp)
	je	LBB21_9
LBB21_2:
	movq	144(%rsp), %rax
	movq	%rax, %rcx
	leaq	LC125(%rip), %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rcx, 128(%rsp)
	call	_object_get_slot
	testq	%rax, %rax
	movq	%rax, 120(%rsp)
	je	LBB21_10
LBB21_3:
	movq	120(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 104(%rsp)
	je	LBB21_11
LBB21_4:
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	104(%rsp), %rcx
	call	*%rcx
	movq	%rdx, %rcx
	testq	%rax, %rax
	movq	%rax, 88(%rsp)
	je	LBB21_12
LBB21_5:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 72(%rsp)
	je	LBB21_13
LBB21_6:
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, 56(%rsp)
	call	_strlen
	movq	56(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, 48(%rsp)
	call	_strlen
	movq	48(%rsp), %rcx
	leaq	1(%rcx,%rax), %rax
	movq	%rax, %rdi
	call	_malloc
	testq	%rax, %rax
	movq	%rax, 40(%rsp)
	je	LBB21_14
LBB21_7:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	movq	$-1, %rdx
	movq	%rcx, %rdi
	movq	56(%rsp), %rsi
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	call	___strcpy_chk
	movq	%rax, %rax
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movq	72(%rsp), %rcx
	movq	%rcx, %rsi
	movq	24(%rsp), %rdx
	call	___strcat_chk
	movq	%rax, %rax
	xorl	%eax, %eax
	movq	16(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, 8(%rsp)
	call	_string_object
	movq	8(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$184, %rsp
	ret
LBB21_8:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$57, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 152(%rsp)
	movq	%rcx, %rsi
	movq	152(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_9:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$60, %edx
	leaq	LC933(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 136(%rsp)
	movq	%rcx, %rsi
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_10:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$63, %edx
	leaq	LC1034(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_11:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$66, %edx
	leaq	LC16(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 96(%rsp)
	movq	%rcx, %rsi
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_12:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$69, %edx
	leaq	LC1236(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rcx, %rsi
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_13:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$72, %edx
	leaq	LC1337(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB21_14:
	leaq	___func__.string_add(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$77, %edx
	leaq	LC1438(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, %rsi
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_eq
_string_eq:                                                 ## @string_eq
LBB22_0:
	subq	$136, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$131, %edx
	movq	%rax, 128(%rsp)
	movq	%rcx, 120(%rsp)
	jne	LBB22_12
LBB22_1:
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 104(%rsp)
	je	LBB22_13
LBB22_2:
	movq	104(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 96(%rsp)
	jne	LBB22_13
LBB22_3:
	movq	96(%rsp), %rax
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	je	LBB22_7
LBB22_4:
	movl	$134, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	$0, 24(%rax)
	movq	%rax, 80(%rsp)
	call	_bool_prototype
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 72(%rsp)
	je	LBB22_14
LBB22_5:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB22_14
LBB22_6:                                                    ## %bool_object.exit5
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx
	jmp	LBB22_10
LBB22_7:
	movq	120(%rsp), %rax
	movq	%rax, %rcx
	movq	96(%rsp), %rdx
	movq	24(%rdx), %rsi
	movq	24(%rcx), %rcx
	movq	%rcx, %rdi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB22_15
LBB22_8:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB22_15
LBB22_9:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
LBB22_10:                                                   ## %bool_object.exit
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rcx
	movq	%rcx, 48(%rsp)
LBB22_11:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	addq	$136, %rsp
	ret
LBB22_12:
	leaq	___func__.string_eq(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$91, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB22_13:                                                   ## %.thread
	leaq	___func__.string_eq(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$94, %edx
	leaq	LC1539(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 88(%rsp)
	movq	%rcx, %rsi
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB22_14:                                                   ## %.thread6
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB22_15:                                                   ## %.thread7
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_neq
_string_neq:                                                ## @string_neq
LBB23_0:
	subq	$104, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 96(%rsp)
	call	_array_get_elementC
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movq	%rax, 88(%rsp)
	je	LBB23_4
LBB23_1:
	movl	$134, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	$1, 24(%rax)
	movq	%rax, 80(%rsp)
	call	_bool_prototype
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 72(%rsp)
	je	LBB23_9
LBB23_2:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB23_9
LBB23_3:                                                    ## %bool_object.exit5
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx
	jmp	LBB23_7
LBB23_4:
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	movq	88(%rsp), %rdx
	movq	%rdx, %rsi
	movq	24(%rsi), %rsi
	movq	24(%rcx), %rcx
	movq	%rcx, %rdi
	call	_strcmp
	movl	%eax, %ecx
	testl	%ecx, %ecx
	setne	%cl
	movzbl	%cl, %ecx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB23_10
LBB23_5:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB23_10
LBB23_6:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
LBB23_7:                                                    ## %bool_object.exit
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rcx
	movq	%rcx, 48(%rsp)
LBB23_8:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	addq	$104, %rsp
	ret
LBB23_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB23_10:                                                   ## %.thread6
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_object
_string_object:                                             ## @string_object
LBB24_0:
	subq	$56, %rsp
	movq	%rdi, %rax
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	call	_strlen
	incq	%rax
	movq	%rax, %rdi
	call	_malloc
	movq	$-1, %rcx
	movq	%rax, %rdi
	movq	48(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rax, 40(%rsp)
	call	___strcpy_chk
	movq	%rax, %rax
	call	_string_prototype
	movl	$131, %ecx
	movl	%ecx, %edi
	movq	%rax, 32(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	testq	%rax, %rax
	movq	%rax, 24(%rsp)
	je	LBB24_3
LBB24_1:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB24_3
LBB24_2:                                                    ## %object_set_delegate.exit
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$56, %rsp
	ret
LBB24_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_string_cstrC
_string_cstrC:                                              ## @string_cstrC
LBB25_0:
	subq	$24, %rsp
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movq	%rax, 16(%rsp)
	jne	LBB25_2
LBB25_1:
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, %rax
	addq	$24, %rsp
	ret
LBB25_2:
	leaq	___func__.string_cstrC(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$52, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_null_object
_null_object:                                               ## @null_object
LBB26_0:
	subq	$200, %rsp
	movq	_null_object.cached_null(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 192(%rsp)
	jne	LBB26_10
LBB26_1:
	movl	$129, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _null_object.cached_null(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 184(%rsp)
	call	_object_alloc
	leaq	_null_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 176(%rsp)
	call	_closure_prototype
	movq	176(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 168(%rsp)
	je	LBB26_11
LBB26_2:
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 160(%rsp)
	jne	LBB26_11
LBB26_3:                                                    ## %closure_object.exit
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	movq	168(%rsp), %rdx
	movq	%rdx, %rsi
	movq	160(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC125(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	160(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_null_object.cached_null(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 144(%rsp)
	call	_object_alloc
	leaq	_null_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 136(%rsp)
	call	_closure_prototype
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 128(%rsp)
	je	LBB26_12
LBB26_4:
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 120(%rsp)
	jne	LBB26_12
LBB26_5:                                                    ## %closure_object.exit5
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	144(%rsp), %rdi
	movl	%esi, 108(%rsp)
	movq	%rcx, %rsi
	movl	108(%rsp), %ecx
	call	_object_set_slot
	movq	_null_object.cached_null(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 96(%rsp)
	call	_object_alloc
	leaq	_null_neq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 88(%rsp)
	call	_closure_prototype
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 80(%rsp)
	je	LBB26_13
LBB26_6:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 72(%rsp)
	jne	LBB26_13
LBB26_7:                                                    ## %closure_object.exit15
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC630(%rip), %rcx
	xorl	%esi, %esi
	movq	96(%rsp), %rdi
	movl	%esi, 60(%rsp)
	movq	%rcx, %rsi
	movl	60(%rsp), %ecx
	call	_object_set_slot
	movq	_null_object.cached_null(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_null_eq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB26_14
LBB26_8:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB26_14
LBB26_9:                                                    ## %closure_object.exit10
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC529(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_null_object.cached_null(%rip), %rax
	addq	$200, %rsp
	ret
LBB26_10:
	movq	192(%rsp), %rax
	addq	$200, %rsp
	ret
LBB26_11:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 152(%rsp)
	movq	%rcx, %rsi
	movq	152(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB26_12:                                                   ## %.thread16
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB26_13:                                                   ## %.thread17
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB26_14:                                                   ## %.thread18
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_null_to_s
_null_to_s:                                                 ## @null_to_s
LBB27_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %eax
	cmpl	$129, %eax
	jne	LBB27_2
LBB27_1:
	leaq	LC650(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret
LBB27_2:
	leaq	___func__.null_to_s(%rip), %rax
	leaq	LC448(%rip), %rcx
	movl	$31, %edx
	leaq	LC549(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_null_class
_null_class:                                                ## @null_class
LBB28_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC650(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_null_neq
_null_neq:                                                  ## @null_neq
LBB29_0:
	subq	$56, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 48(%rsp)
	call	_array_get_elementC
	movq	48(%rsp), %rcx
	cmpq	%rcx, %rax
	setne	%al
	movzbl	%al, %eax
	movl	$134, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB29_3
LBB29_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB29_3
LBB29_2:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$56, %rsp
	ret
LBB29_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_null_eq
_null_eq:                                                   ## @null_eq
LBB30_0:
	subq	$56, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 48(%rsp)
	call	_array_get_elementC
	movq	48(%rsp), %rcx
	cmpq	%rcx, %rax
	sete	%al
	movzbl	%al, %eax
	movl	$134, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB30_3
LBB30_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB30_3
LBB30_2:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$56, %rsp
	ret
LBB30_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_null_wrapped
_null_wrapped:                                              ## @null_wrapped
LBB31_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	xorl	%eax, %eax
	movq	%rax, (%rsp)
	call	_null_object
	movq	(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_wrapped_null_object
_wrapped_null_object:                                       ## @wrapped_null_object
LBB32_0:
	subq	$40, %rsp
	movq	_wrapped_null_object.cached_wrap(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	jne	LBB32_4
LBB32_1:
	movl	$132, %eax
	movl	%eax, %edi
	call	_object_alloc
	leaq	_null_wrapped(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_closure_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB32_5
LBB32_2:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB32_5
LBB32_3:                                                    ## %closure_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, _wrapped_null_object.cached_wrap(%rip)
	movq	%rdx, %rax
	addq	$40, %rsp
	ret
LBB32_4:
	movq	32(%rsp), %rax
	addq	$40, %rsp
	ret
LBB32_5:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_closure_prototype
_closure_prototype:                                         ## @closure_prototype
LBB33_0:
	subq	$152, %rsp
	movq	_closure_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 144(%rsp)
	jne	LBB33_8
LBB33_1:
	movl	$132, %eax
	movl	%eax, %edi
	movl	%eax, 140(%rsp)
	call	_object_alloc
	movq	%rax, _closure_prototype.prototype(%rip)
	movl	140(%rsp), %ecx
	movl	%ecx, %edi
	movq	%rax, 128(%rsp)
	call	_object_alloc
	leaq	_closure_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 120(%rsp)
	call	_closure_prototype
	movq	120(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 112(%rsp)
	je	LBB33_9
LBB33_2:
	movq	120(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 104(%rsp)
	jne	LBB33_9
LBB33_3:                                                    ## %closure_object.exit10
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	112(%rsp), %rdx
	movq	%rdx, %rsi
	movq	104(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC125(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	104(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_closure_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 88(%rsp)
	call	_object_alloc
	leaq	_closure_clone(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 80(%rsp)
	call	_closure_prototype
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 72(%rsp)
	je	LBB33_10
LBB33_4:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB33_10
LBB33_5:                                                    ## %closure_object.exit5
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC226(%rip), %rcx
	xorl	%esi, %esi
	movq	88(%rsp), %rdi
	movl	%esi, 52(%rsp)
	movq	%rcx, %rsi
	movl	52(%rsp), %ecx
	call	_object_set_slot
	movq	_closure_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	leaq	_closure_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_closure_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB33_11
LBB33_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB33_11
LBB33_7:                                                    ## %closure_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	40(%rsp), %rdi
	movl	%esi, 4(%rsp)
	movq	%rcx, %rsi
	movl	4(%rsp), %ecx
	call	_object_set_slot
	movq	_closure_prototype.prototype(%rip), %rax
	addq	$152, %rsp
	ret
LBB33_8:
	movq	144(%rsp), %rax
	addq	$152, %rsp
	ret
LBB33_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 96(%rsp)
	movq	%rcx, %rsi
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB33_10:                                                   ## %.thread11
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB33_11:                                                   ## %.thread12
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_closure_object
_closure_object:                                            ## @closure_object
LBB34_0:
	subq	$56, %rsp
	movq	%rdi, %rax
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	je	LBB34_4
LBB34_1:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	$132, %edx
	movl	%edx, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_closure_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB34_5
LBB34_2:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB34_5
LBB34_3:                                                    ## %object_set_delegate.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$56, %rsp
	ret
LBB34_4:
	leaq	___func__.closure_object(%rip), %rax
	leaq	LC356(%rip), %rcx
	movl	$27, %edx
	leaq	LC457(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB34_5:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_closure_to_s
_closure_to_s:                                              ## @closure_to_s
LBB35_0:
	subq	$168, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	$-1, %rdi
	leaq	LC558(%rip), %r8
	xorb	%r9b, %r9b
	movq	%rdi, 32(%rsp)
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	32(%rsp), %r10
	movl	%edx, 28(%rsp)
	movq	%r10, %rdx
	movq	%rcx, 16(%rsp)
	movq	%r8, %rcx
	movq	%rax, %r8
	movb	%r9b, %al
	call	___sprintf_chk
	movl	%eax, %ecx
	movl	28(%rsp), %ecx
	movq	16(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, 8(%rsp)
	call	_string_object
	movq	8(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$168, %rsp
	ret


	.align	4, 144
	.globl	_closure_clone
_closure_clone:                                             ## @closure_clone
LBB36_0:
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	ret


	.align	4, 144
	.globl	_closure_class
_closure_class:                                             ## @closure_class
LBB37_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC659(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_closure_object_place
_closure_object_place:                                      ## @closure_object_place
LBB38_0:
	subq	$40, %rsp
	movq	%rdi, %rax
	movl	$132, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, 32(%rsp)
	call	_closure_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB38_3
LBB38_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB38_3
LBB38_2:                                                    ## %object_set_delegate.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	ret
LBB38_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_closure_set_fptrC
_closure_set_fptrC:                                         ## @closure_set_fptrC
LBB39_0:
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rax, 24(%rcx)
	ret


	.align	4, 144
	.globl	_int_prototype
_int_prototype:                                             ## @int_prototype
LBB40_0:
	subq	$584, %rsp
	movq	_int_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 576(%rsp)
	jne	LBB40_26
LBB40_1:
	movl	$130, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _int_prototype.prototype(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 568(%rsp)
	call	_object_alloc
	leaq	_int_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 560(%rsp)
	call	_closure_prototype
	movq	560(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 552(%rsp)
	je	LBB40_27
LBB40_2:
	movq	560(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 544(%rsp)
	jne	LBB40_27
LBB40_3:                                                    ## %closure_object.exit
	movq	568(%rsp), %rax
	movq	%rax, %rcx
	movq	552(%rsp), %rdx
	movq	%rdx, %rsi
	movq	544(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC125(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	544(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 528(%rsp)
	call	_object_alloc
	leaq	_int_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 520(%rsp)
	call	_closure_prototype
	movq	520(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 512(%rsp)
	je	LBB40_28
LBB40_4:
	movq	520(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 504(%rsp)
	jne	LBB40_28
LBB40_5:                                                    ## %closure_object.exit5
	movq	512(%rsp), %rax
	movq	%rax, %rcx
	movq	504(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	528(%rsp), %rdi
	movl	%esi, 492(%rsp)
	movq	%rcx, %rsi
	movl	492(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 480(%rsp)
	call	_object_alloc
	leaq	_int_lt(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 472(%rsp)
	call	_closure_prototype
	movq	472(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 464(%rsp)
	je	LBB40_29
LBB40_6:
	movq	472(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 456(%rsp)
	jne	LBB40_29
LBB40_7:                                                    ## %closure_object.exit15
	movq	464(%rsp), %rax
	movq	%rax, %rcx
	movq	456(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC263(%rip), %rcx
	xorl	%esi, %esi
	movq	480(%rsp), %rdi
	movl	%esi, 444(%rsp)
	movq	%rcx, %rsi
	movl	444(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 432(%rsp)
	call	_object_alloc
	leaq	_int_le(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 424(%rsp)
	call	_closure_prototype
	movq	424(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 416(%rsp)
	je	LBB40_30
LBB40_8:
	movq	424(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 408(%rsp)
	jne	LBB40_30
LBB40_9:                                                    ## %closure_object.exit25
	movq	416(%rsp), %rax
	movq	%rax, %rcx
	movq	408(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC364(%rip), %rcx
	xorl	%esi, %esi
	movq	432(%rsp), %rdi
	movl	%esi, 396(%rsp)
	movq	%rcx, %rsi
	movl	396(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 384(%rsp)
	call	_object_alloc
	leaq	_int_gt(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 376(%rsp)
	call	_closure_prototype
	movq	376(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 368(%rsp)
	je	LBB40_31
LBB40_10:
	movq	376(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 360(%rsp)
	jne	LBB40_31
LBB40_11:                                                   ## %closure_object.exit35
	movq	368(%rsp), %rax
	movq	%rax, %rcx
	movq	360(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC465(%rip), %rcx
	xorl	%esi, %esi
	movq	384(%rsp), %rdi
	movl	%esi, 348(%rsp)
	movq	%rcx, %rsi
	movl	348(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 336(%rsp)
	call	_object_alloc
	leaq	_int_ge(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 328(%rsp)
	call	_closure_prototype
	movq	328(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 320(%rsp)
	je	LBB40_32
LBB40_12:
	movq	328(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 312(%rsp)
	jne	LBB40_32
LBB40_13:                                                   ## %closure_object.exit45
	movq	320(%rsp), %rax
	movq	%rax, %rcx
	movq	312(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC566(%rip), %rcx
	xorl	%esi, %esi
	movq	336(%rsp), %rdi
	movl	%esi, 300(%rsp)
	movq	%rcx, %rsi
	movl	300(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 288(%rsp)
	call	_object_alloc
	leaq	_int_eq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 280(%rsp)
	call	_closure_prototype
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 272(%rsp)
	je	LBB40_33
LBB40_14:
	movq	280(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 264(%rsp)
	jne	LBB40_33
LBB40_15:                                                   ## %closure_object.exit55
	movq	272(%rsp), %rax
	movq	%rax, %rcx
	movq	264(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC529(%rip), %rcx
	xorl	%esi, %esi
	movq	288(%rsp), %rdi
	movl	%esi, 252(%rsp)
	movq	%rcx, %rsi
	movl	252(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 240(%rsp)
	call	_object_alloc
	leaq	_int_neq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 232(%rsp)
	call	_closure_prototype
	movq	232(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 224(%rsp)
	je	LBB40_34
LBB40_16:
	movq	232(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 216(%rsp)
	jne	LBB40_34
LBB40_17:                                                   ## %closure_object.exit50
	movq	224(%rsp), %rax
	movq	%rax, %rcx
	movq	216(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC630(%rip), %rcx
	xorl	%esi, %esi
	movq	240(%rsp), %rdi
	movl	%esi, 204(%rsp)
	movq	%rcx, %rsi
	movl	204(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 192(%rsp)
	call	_object_alloc
	leaq	_int_add(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 184(%rsp)
	call	_closure_prototype
	movq	184(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 176(%rsp)
	je	LBB40_35
LBB40_18:
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 168(%rsp)
	jne	LBB40_35
LBB40_19:                                                   ## %closure_object.exit40
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	movq	168(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC428(%rip), %rcx
	xorl	%esi, %esi
	movq	192(%rsp), %rdi
	movl	%esi, 156(%rsp)
	movq	%rcx, %rsi
	movl	156(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 144(%rsp)
	call	_object_alloc
	leaq	_int_sub(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 136(%rsp)
	call	_closure_prototype
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 128(%rsp)
	je	LBB40_36
LBB40_20:
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 120(%rsp)
	jne	LBB40_36
LBB40_21:                                                   ## %closure_object.exit30
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC970(%rip), %rcx
	xorl	%esi, %esi
	movq	144(%rsp), %rdi
	movl	%esi, 108(%rsp)
	movq	%rcx, %rsi
	movl	108(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 96(%rsp)
	call	_object_alloc
	leaq	_int_mul(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 88(%rsp)
	call	_closure_prototype
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 80(%rsp)
	je	LBB40_37
LBB40_22:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 72(%rsp)
	jne	LBB40_37
LBB40_23:                                                   ## %closure_object.exit20
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC1071(%rip), %rcx
	xorl	%esi, %esi
	movq	96(%rsp), %rdi
	movl	%esi, 60(%rsp)
	movq	%rcx, %rsi
	movl	60(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_int_div(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB40_38
LBB40_24:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB40_38
LBB40_25:                                                   ## %closure_object.exit10
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC1172(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_int_prototype.prototype(%rip), %rax
	addq	$584, %rsp
	ret
LBB40_26:
	movq	576(%rsp), %rax
	addq	$584, %rsp
	ret
LBB40_27:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 536(%rsp)
	movq	%rcx, %rsi
	movq	536(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_28:                                                   ## %.thread56
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 496(%rsp)
	movq	%rcx, %rsi
	movq	496(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_29:                                                   ## %.thread57
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 448(%rsp)
	movq	%rcx, %rsi
	movq	448(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_30:                                                   ## %.thread58
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 400(%rsp)
	movq	%rcx, %rsi
	movq	400(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_31:                                                   ## %.thread59
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 352(%rsp)
	movq	%rcx, %rsi
	movq	352(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_32:                                                   ## %.thread60
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 304(%rsp)
	movq	%rcx, %rsi
	movq	304(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_33:                                                   ## %.thread61
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 256(%rsp)
	movq	%rcx, %rsi
	movq	256(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_34:                                                   ## %.thread62
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 208(%rsp)
	movq	%rcx, %rsi
	movq	208(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_35:                                                   ## %.thread63
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 160(%rsp)
	movq	%rcx, %rsi
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_36:                                                   ## %.thread64
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_37:                                                   ## %.thread65
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB40_38:                                                   ## %.thread66
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_to_s
_int_to_s:                                                  ## @int_to_s
LBB41_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$130, %ecx
	movq	%rax, 48(%rsp)
	jne	LBB41_2
LBB41_1:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	24(%rcx), %ecx
	leaq	56(%rsp), %rdx
	xorl	%esi, %esi
	movq	$-1, %rdi
	leaq	LC1475(%rip), %r8
	xorb	%r9b, %r9b
	movq	%rdi, 32(%rsp)
	movq	%rdx, %rdi
	movl	%esi, 28(%rsp)
	movq	32(%rsp), %r10
	movq	%rdx, 16(%rsp)
	movq	%r10, %rdx
	movl	%ecx, 12(%rsp)
	movq	%r8, %rcx
	movl	12(%rsp), %r8d
	movb	%r9b, %al
	call	___sprintf_chk
	movl	%eax, %ecx
	movl	28(%rsp), %ecx
	movq	16(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, (%rsp)
	call	_string_object
	movq	(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB41_2:
	leaq	___func__.int_to_s(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$60, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_class
_int_class:                                                 ## @int_class
LBB42_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC1576(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_int_lt
_int_lt:                                                    ## @int_lt
LBB43_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB43_6
LBB43_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB43_7
LBB43_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB43_7
LBB43_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	setl	%cl
	movzbl	%cl, %ecx
	movl	$134, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB43_8
LBB43_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB43_8
LBB43_5:                                                    ## %bool_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB43_6:
	leaq	___func__.int_lt(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$73, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB43_7:                                                    ## %.thread
	leaq	___func__.int_lt(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$73, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB43_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_le
_int_le:                                                    ## @int_le
LBB44_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB44_6
LBB44_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB44_7
LBB44_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB44_7
LBB44_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	setle	%cl
	movzbl	%cl, %ecx
	movl	$134, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB44_8
LBB44_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB44_8
LBB44_5:                                                    ## %bool_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB44_6:
	leaq	___func__.int_le(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$74, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB44_7:                                                    ## %.thread
	leaq	___func__.int_le(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$74, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB44_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_gt
_int_gt:                                                    ## @int_gt
LBB45_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB45_6
LBB45_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB45_7
LBB45_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB45_7
LBB45_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	setg	%cl
	movzbl	%cl, %ecx
	movl	$134, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB45_8
LBB45_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB45_8
LBB45_5:                                                    ## %bool_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB45_6:
	leaq	___func__.int_gt(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$75, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB45_7:                                                    ## %.thread
	leaq	___func__.int_gt(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$75, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB45_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_ge
_int_ge:                                                    ## @int_ge
LBB46_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB46_6
LBB46_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB46_7
LBB46_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB46_7
LBB46_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	setge	%cl
	movzbl	%cl, %ecx
	movl	$134, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB46_8
LBB46_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB46_8
LBB46_5:                                                    ## %bool_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB46_6:
	leaq	___func__.int_ge(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$76, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB46_7:                                                    ## %.thread
	leaq	___func__.int_ge(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$76, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB46_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_eq
_int_eq:                                                    ## @int_eq
LBB47_0:
	subq	$104, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 96(%rsp)
	movq	%rcx, 88(%rsp)
	jne	LBB47_8
LBB47_1:
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	LBB47_9
LBB47_2:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB47_9
LBB47_3:
	movq	64(%rsp), %rax
	movzbl	12(%rax), %ecx
	cmpl	$130, %ecx
	jne	LBB47_10
LBB47_4:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	sete	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 48(%rsp)
LBB47_5:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB47_11
LBB47_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB47_11
LBB47_7:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$104, %rsp
	ret
LBB47_8:
	leaq	___func__.int_eq(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$79, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rcx, %rsi
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB47_9:                                                    ## %.thread
	leaq	___func__.int_eq(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$79, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB47_10:                                                   ## %._crit_edge
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)
	jmp	LBB47_5
LBB47_11:                                                   ## %.thread4
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_neq
_int_neq:                                                   ## @int_neq
LBB48_0:
	subq	$104, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 96(%rsp)
	movq	%rcx, 88(%rsp)
	jne	LBB48_8
LBB48_1:
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	LBB48_9
LBB48_2:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB48_9
LBB48_3:
	movq	64(%rsp), %rax
	movzbl	12(%rax), %ecx
	cmpl	$130, %ecx
	jne	LBB48_10
LBB48_4:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	movq	64(%rsp), %rdx
	movl	24(%rdx), %esi
	cmpl	%esi, 24(%rcx)
	setne	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 48(%rsp)
LBB48_5:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB48_11
LBB48_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB48_11
LBB48_7:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$104, %rsp
	ret
LBB48_8:
	leaq	___func__.int_neq(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$82, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rcx, %rsi
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB48_9:                                                    ## %.thread
	leaq	___func__.int_neq(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$82, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB48_10:                                                   ## %._crit_edge
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)
	jmp	LBB48_5
LBB48_11:                                                   ## %.thread4
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_add
_int_add:                                                   ## @int_add
LBB49_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB49_6
LBB49_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB49_7
LBB49_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB49_7
LBB49_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movl	24(%rcx), %ecx
	movq	48(%rsp), %rdx
	addl	24(%rdx), %ecx
	movslq	%ecx, %rcx
	movl	$130, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB49_8
LBB49_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB49_8
LBB49_5:                                                    ## %int_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB49_6:
	leaq	___func__.int_add(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$84, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB49_7:                                                    ## %.thread
	leaq	___func__.int_add(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$84, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB49_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_sub
_int_sub:                                                   ## @int_sub
LBB50_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB50_6
LBB50_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB50_7
LBB50_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB50_7
LBB50_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movl	24(%rcx), %ecx
	movq	48(%rsp), %rdx
	subl	24(%rdx), %ecx
	movslq	%ecx, %rcx
	movl	$130, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB50_8
LBB50_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB50_8
LBB50_5:                                                    ## %int_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB50_6:
	leaq	___func__.int_sub(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$85, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB50_7:                                                    ## %.thread
	leaq	___func__.int_sub(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$85, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB50_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_mul
_int_mul:                                                   ## @int_mul
LBB51_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB51_6
LBB51_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB51_7
LBB51_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB51_7
LBB51_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movl	24(%rcx), %ecx
	movq	48(%rsp), %rdx
	imull	24(%rdx), %ecx
	movslq	%ecx, %rcx
	movl	$130, %esi
	movl	%esi, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB51_8
LBB51_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB51_8
LBB51_5:                                                    ## %int_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB51_6:
	leaq	___func__.int_mul(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$86, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB51_7:                                                    ## %.thread
	leaq	___func__.int_mul(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$86, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB51_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_div
_int_div:                                                   ## @int_div
LBB52_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$130, %edx
	movq	%rax, 80(%rsp)
	movq	%rcx, 72(%rsp)
	jne	LBB52_6
LBB52_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 56(%rsp)
	je	LBB52_7
LBB52_2:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 48(%rsp)
	jne	LBB52_7
LBB52_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movl	24(%rcx), %ecx
	movl	%ecx, %eax
	cltd
	movq	48(%rsp), %rcx
	idivl	24(%rcx)
	movl	%eax, %edx
	movslq	%edx, %rdx
	movl	$130, %esi
	movl	%esi, %edi
	movq	%rdx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB52_8
LBB52_4:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB52_8
LBB52_5:                                                    ## %int_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB52_6:
	leaq	___func__.int_div(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$87, %edx
	leaq	LC1374(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB52_7:                                                    ## %.thread
	leaq	___func__.int_div(%rip), %rax
	leaq	LC1273(%rip), %rcx
	movl	$87, %edx
	leaq	LC1677(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB52_8:                                                    ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_int_object
_int_object:                                                ## @int_object
LBB53_0:
	subq	$40, %rsp
	movl	%edi, %eax
	movl	$130, %ecx
	movl	%ecx, %edi
	movl	%eax, 36(%rsp)
	call	_object_alloc
	movl	36(%rsp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB53_3
LBB53_1:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB53_3
LBB53_2:                                                    ## %object_set_delegate.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	ret
LBB53_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_prototype
_bool_prototype:                                            ## @bool_prototype
LBB54_0:
	subq	$344, %rsp
	movq	_bool_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 336(%rsp)
	jne	LBB54_16
LBB54_1:
	movl	$134, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _bool_prototype.prototype(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 328(%rsp)
	call	_object_alloc
	leaq	_bool_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 320(%rsp)
	call	_closure_prototype
	movq	320(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 312(%rsp)
	je	LBB54_17
LBB54_2:
	movq	320(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 304(%rsp)
	jne	LBB54_17
LBB54_3:                                                    ## %closure_object.exit
	movq	328(%rsp), %rax
	movq	%rax, %rcx
	movq	312(%rsp), %rdx
	movq	%rdx, %rsi
	movq	304(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC125(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	304(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 288(%rsp)
	call	_object_alloc
	leaq	_bool_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 280(%rsp)
	call	_closure_prototype
	movq	280(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 272(%rsp)
	je	LBB54_18
LBB54_4:
	movq	280(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 264(%rsp)
	jne	LBB54_18
LBB54_5:                                                    ## %closure_object.exit5
	movq	272(%rsp), %rax
	movq	%rax, %rcx
	movq	264(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	288(%rsp), %rdi
	movl	%esi, 252(%rsp)
	movq	%rcx, %rsi
	movl	252(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 240(%rsp)
	call	_object_alloc
	leaq	_bool_andand(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 232(%rsp)
	call	_closure_prototype
	movq	232(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 224(%rsp)
	je	LBB54_19
LBB54_6:
	movq	232(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 216(%rsp)
	jne	LBB54_19
LBB54_7:                                                    ## %closure_object.exit15
	movq	224(%rsp), %rax
	movq	%rax, %rcx
	movq	216(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC280(%rip), %rcx
	xorl	%esi, %esi
	movq	240(%rsp), %rdi
	movl	%esi, 204(%rsp)
	movq	%rcx, %rsi
	movl	204(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 192(%rsp)
	call	_object_alloc
	leaq	_bool_oror(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 184(%rsp)
	call	_closure_prototype
	movq	184(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 176(%rsp)
	je	LBB54_20
LBB54_8:
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 168(%rsp)
	jne	LBB54_20
LBB54_9:                                                    ## %closure_object.exit25
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	movq	168(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC381(%rip), %rcx
	xorl	%esi, %esi
	movq	192(%rsp), %rdi
	movl	%esi, 156(%rsp)
	movq	%rcx, %rsi
	movl	156(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 144(%rsp)
	call	_object_alloc
	leaq	_bool_not(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 136(%rsp)
	call	_closure_prototype
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 128(%rsp)
	je	LBB54_21
LBB54_10:
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 120(%rsp)
	jne	LBB54_21
LBB54_11:                                                   ## %closure_object.exit30
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC482(%rip), %rcx
	xorl	%esi, %esi
	movq	144(%rsp), %rdi
	movl	%esi, 108(%rsp)
	movq	%rcx, %rsi
	movl	108(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 96(%rsp)
	call	_object_alloc
	leaq	_bool_eq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 88(%rsp)
	call	_closure_prototype
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 80(%rsp)
	je	LBB54_22
LBB54_12:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 72(%rsp)
	jne	LBB54_22
LBB54_13:                                                   ## %closure_object.exit20
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC529(%rip), %rcx
	xorl	%esi, %esi
	movq	96(%rsp), %rdi
	movl	%esi, 60(%rsp)
	movq	%rcx, %rsi
	movl	60(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_bool_neq(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB54_23
LBB54_14:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB54_23
LBB54_15:                                                   ## %closure_object.exit10
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC630(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_bool_prototype.prototype(%rip), %rax
	addq	$344, %rsp
	ret
LBB54_16:
	movq	336(%rsp), %rax
	addq	$344, %rsp
	ret
LBB54_17:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 296(%rsp)
	movq	%rcx, %rsi
	movq	296(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_18:                                                   ## %.thread31
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 256(%rsp)
	movq	%rcx, %rsi
	movq	256(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_19:                                                   ## %.thread32
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 208(%rsp)
	movq	%rcx, %rsi
	movq	208(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_20:                                                   ## %.thread33
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 160(%rsp)
	movq	%rcx, %rsi
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_21:                                                   ## %.thread34
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_22:                                                   ## %.thread35
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB54_23:                                                   ## %.thread36
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_to_s
_bool_to_s:                                                 ## @bool_to_s
LBB55_0:
	subq	$24, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$134, %ecx
	movq	%rax, 16(%rsp)
	jne	LBB55_5
LBB55_1:
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$0, 24(%rcx)
	jne	LBB55_6
LBB55_2:
	leaq	LC1088(%rip), %rax
LBB55_3:
	movq	%rax, %rdi
	call	_string_object
	movq	%rax, (%rsp)
LBB55_4:
	movq	(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rax
	addq	$24, %rsp
	ret
LBB55_5:
	leaq	___func__.bool_to_s(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$60, %edx
	leaq	LC886(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB55_6:
	leaq	LC987(%rip), %rax
	jmp	LBB55_3


	.align	4, 144
	.globl	_bool_class
_bool_class:                                                ## @bool_class
LBB56_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC1189(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_bool_andand
_bool_andand:                                               ## @bool_andand
LBB57_0:
	subq	$104, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$134, %edx
	movq	%rax, 96(%rsp)
	movq	%rcx, 88(%rsp)
	jne	LBB57_8
LBB57_1:
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	LBB57_9
LBB57_2:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$134, %edx
	movq	%rcx, 64(%rsp)
	jne	LBB57_9
LBB57_3:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$0, 24(%rcx)
	je	LBB57_10
LBB57_4:
	movq	64(%rsp), %rax
	cmpl	$0, 24(%rax)
	setne	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 48(%rsp)
LBB57_5:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB57_11
LBB57_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB57_11
LBB57_7:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$104, %rsp
	ret
LBB57_8:
	leaq	___func__.bool_andand(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$90, %edx
	leaq	LC886(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rcx, %rsi
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB57_9:                                                    ## %.thread
	leaq	___func__.bool_andand(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$90, %edx
	leaq	LC1290(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB57_10:                                                   ## %._crit_edge
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)
	jmp	LBB57_5
LBB57_11:                                                   ## %.thread3
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_oror
_bool_oror:                                                 ## @bool_oror
LBB58_0:
	subq	$104, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$134, %edx
	movq	%rax, 96(%rsp)
	movq	%rcx, 88(%rsp)
	jne	LBB58_8
LBB58_1:
	movq	96(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	call	_array_get_elementC
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	LBB58_9
LBB58_2:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$134, %edx
	movq	%rcx, 64(%rsp)
	jne	LBB58_9
LBB58_3:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$0, 24(%rcx)
	jne	LBB58_10
LBB58_4:
	movq	64(%rsp), %rax
	cmpl	$0, 24(%rax)
	setne	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 48(%rsp)
LBB58_5:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movl	$134, %edx
	movl	%edx, %edi
	movq	%rcx, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB58_11
LBB58_6:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB58_11
LBB58_7:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$104, %rsp
	ret
LBB58_8:
	leaq	___func__.bool_oror(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$91, %edx
	leaq	LC886(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 80(%rsp)
	movq	%rcx, %rsi
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB58_9:                                                    ## %.thread
	leaq	___func__.bool_oror(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$91, %edx
	leaq	LC1290(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB58_10:                                                   ## %._crit_edge
	movl	$1, %eax
	movq	%rax, 48(%rsp)
	jmp	LBB58_5
LBB58_11:                                                   ## %.thread2
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_not
_bool_not:                                                  ## @bool_not
LBB59_0:
	subq	$40, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	cmpl	$0, 24(%rax)
	sete	%al
	movl	$134, %ecx
	movl	%ecx, %edi
	movb	%al, 39(%rsp)
	call	_object_alloc
	movb	39(%rsp), %cl
	movzbl	%cl, %ecx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB59_3
LBB59_1:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB59_3
LBB59_2:                                                    ## %bool_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$40, %rsp
	ret
LBB59_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_eq
_bool_eq:                                                   ## @bool_eq
LBB60_0:
	subq	$56, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 48(%rsp)
	call	_array_get_elementC
	movl	24(%rax), %eax
	movq	48(%rsp), %rcx
	cmpl	%eax, 24(%rcx)
	sete	%al
	movzbl	%al, %eax
	movl	$134, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB60_3
LBB60_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB60_3
LBB60_2:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$56, %rsp
	ret
LBB60_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_neq
_bool_neq:                                                  ## @bool_neq
LBB61_0:
	subq	$56, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 48(%rsp)
	call	_array_get_elementC
	movl	24(%rax), %eax
	movq	48(%rsp), %rcx
	cmpl	%eax, 24(%rcx)
	setne	%al
	movzbl	%al, %eax
	movl	$134, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_bool_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB61_3
LBB61_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB61_3
LBB61_2:                                                    ## %bool_object.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$56, %rsp
	ret
LBB61_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_object
_bool_object:                                               ## @bool_object
LBB62_0:
	subq	$40, %rsp
	movl	%edi, %eax
	movl	$134, %ecx
	movl	%ecx, %edi
	movl	%eax, 36(%rsp)
	call	_object_alloc
	movl	36(%rsp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_bool_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB62_3
LBB62_1:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB62_3
LBB62_2:                                                    ## %object_set_delegate.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	ret
LBB62_3:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_bool_get_value
_bool_get_value:                                            ## @bool_get_value
LBB63_0:
	subq	$24, %rsp
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$129, %ecx
	movl	%ecx, 20(%rsp)
	movq	%rax, 8(%rsp)
	je	LBB63_3
LBB63_1:
	movl	20(%rsp), %eax
	cmpl	$134, %eax
	jne	LBB63_4
LBB63_2:
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$0, 24(%rcx)
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %eax
	addq	$24, %rsp
	ret
LBB63_3:
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
LBB63_4:
	leaq	___func__.bool_get_value(%rip), %rax
	leaq	LC785(%rip), %rcx
	movl	$54, %edx
	leaq	LC886(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_float_object
_float_object:                                              ## @float_object
LBB64_0:
	subq	$104, %rsp
	movl	$133, %eax
	movl	%eax, %edi
	movss	%xmm0, 100(%rsp)
	call	_object_alloc
	movss	100(%rsp), %xmm0
	movd	%xmm0, %ecx
	movq	%rcx, 24(%rax)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 88(%rsp)
	call	_object_alloc
	leaq	_float_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 80(%rsp)
	call	_closure_prototype
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 72(%rsp)
	je	LBB64_5
LBB64_1:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB64_5
LBB64_2:                                                    ## %closure_object.exit
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, %rsi
	movq	64(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC125(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	64(%rsp), %r9
	movq	%r9, %rdx
	movq	%rcx, 48(%rsp)
	movl	%r8d, %ecx
	call	_object_set_slot
	movl	$132, %eax
	movl	%eax, %edi
	call	_object_alloc
	leaq	_float_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB64_6
LBB64_3:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB64_6
LBB64_4:                                                    ## %closure_object.exit5
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	48(%rsp), %rax
	addq	$104, %rsp
	ret
LBB64_5:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB64_6:                                                    ## %.thread6
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_float_to_s
_float_to_s:                                                ## @float_to_s
LBB65_0:
	subq	$88, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$133, %ecx
	movq	%rax, 48(%rsp)
	jne	LBB65_2
LBB65_1:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	cvtss2sd	24(%rcx), %xmm0
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movq	$-1, %rsi
	leaq	LC496(%rip), %rdi
	movb	$1, %r8b
	movq	%rdi, 32(%rsp)
	movq	%rcx, %rdi
	movq	%rsi, 24(%rsp)
	movl	%edx, %esi
	movq	24(%rsp), %r9
	movl	%edx, 20(%rsp)
	movq	%r9, %rdx
	movq	32(%rsp), %r9
	movq	%rcx, 8(%rsp)
	movq	%r9, %rcx
	movb	%r8b, %al
	call	___sprintf_chk
	movl	%eax, %ecx
	movl	20(%rsp), %ecx
	movq	8(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, (%rsp)
	call	_string_object
	movq	(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$88, %rsp
	ret
LBB65_2:
	leaq	___func__.float_to_s(%rip), %rax
	leaq	LC294(%rip), %rcx
	movl	$24, %edx
	leaq	LC395(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_float_class
_float_class:                                               ## @float_class
LBB66_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC597(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_array_prototype
_array_prototype:                                           ## @array_prototype
LBB67_0:
	subq	$248, %rsp
	movq	_array_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 240(%rsp)
	jne	LBB67_12
LBB67_1:
	movl	$135, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _array_prototype.prototype(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 232(%rsp)
	call	_object_alloc
	leaq	_array_at(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 224(%rsp)
	call	_closure_prototype
	movq	224(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 216(%rsp)
	je	LBB67_13
LBB67_2:
	movq	224(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 208(%rsp)
	jne	LBB67_13
LBB67_3:                                                    ## %closure_object.exit
	movq	232(%rsp), %rax
	movq	%rax, %rcx
	movq	216(%rsp), %rdx
	movq	%rdx, %rsi
	movq	208(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC98(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	208(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_array_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 192(%rsp)
	call	_object_alloc
	leaq	_array_to_s(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 184(%rsp)
	call	_closure_prototype
	movq	184(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 176(%rsp)
	je	LBB67_14
LBB67_4:
	movq	184(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 168(%rsp)
	jne	LBB67_14
LBB67_5:                                                    ## %closure_object.exit5
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	movq	168(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC125(%rip), %rcx
	xorl	%esi, %esi
	movq	192(%rsp), %rdi
	movl	%esi, 156(%rsp)
	movq	%rcx, %rsi
	movl	156(%rsp), %ecx
	call	_object_set_slot
	movq	_array_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 144(%rsp)
	call	_object_alloc
	leaq	_array_apply(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 136(%rsp)
	call	_closure_prototype
	movq	136(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 128(%rsp)
	je	LBB67_15
LBB67_6:
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 120(%rsp)
	jne	LBB67_15
LBB67_7:                                                    ## %closure_object.exit15
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	120(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC14(%rip), %rcx
	xorl	%esi, %esi
	movq	144(%rsp), %rdi
	movl	%esi, 108(%rsp)
	movq	%rcx, %rsi
	movl	108(%rsp), %ecx
	call	_object_set_slot
	movq	_array_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 96(%rsp)
	call	_object_alloc
	leaq	_array_size(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 88(%rsp)
	call	_closure_prototype
	movq	88(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 80(%rsp)
	je	LBB67_16
LBB67_8:
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 72(%rsp)
	jne	LBB67_16
LBB67_9:                                                    ## %closure_object.exit20
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC3101(%rip), %rcx
	xorl	%esi, %esi
	movq	96(%rsp), %rdi
	movl	%esi, 60(%rsp)
	movq	%rcx, %rsi
	movl	60(%rsp), %ecx
	call	_object_set_slot
	movq	_array_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_array_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB67_17
LBB67_10:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB67_17
LBB67_11:                                                   ## %closure_object.exit10
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_array_prototype.prototype(%rip), %rax
	addq	$248, %rsp
	ret
LBB67_12:
	movq	240(%rsp), %rax
	addq	$248, %rsp
	ret
LBB67_13:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 200(%rsp)
	movq	%rcx, %rsi
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB67_14:                                                   ## %.thread21
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 160(%rsp)
	movq	%rcx, %rsi
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB67_15:                                                   ## %.thread22
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB67_16:                                                   ## %.thread23
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 64(%rsp)
	movq	%rcx, %rsi
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB67_17:                                                   ## %.thread24
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_at
_array_at:                                                  ## @array_at
LBB68_0:
	subq	$24, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 16(%rsp)
	movl	%edx, 12(%rsp)
	call	_array_get_elementC
	movl	24(%rax), %eax
	movq	16(%rsp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	call	_array_get_elementC
	movl	12(%rsp), %ecx
	movq	%rcx, %rdx
	addq	$24, %rsp
	ret


	.align	4, 144
	.globl	_array_to_s
_array_to_s:                                                ## @array_to_s
LBB69_0:
	subq	$1176, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %rcx
	leaq	144(%rsp), %rdx
	movl	$1024, %esi
	movq	%rdx, %rdi
	movq	%rax, 136(%rsp)
	movq	%rcx, 128(%rsp)
	movq	%rdx, 120(%rsp)
	call	___bzero
	leaq	LC10108(%rip), %rax
	movq	$-1, %rcx
	movq	120(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	call	___strcat_chk
	movq	%rax, %rax
	movq	128(%rsp), %rax
	movzbl	12(%rax), %ecx
	cmpl	$135, %ecx
	jne	LBB69_9
LBB69_1:
	movq	128(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rcx, 104(%rsp)
	movq	%rdx, 96(%rsp)
	je	LBB69_10
LBB69_2:                                                    ## %array_get_sizeC.exit
	movq	136(%rsp), %rax
	movq	%rax, %rcx
	movq	96(%rsp), %rdx
	movl	(%rdx), %esi
	movl	%esi, %edi
	decl	%edi
	xorl	%r8d, %r8d
	leaq	144(%rsp), %r9
	movq	$-1, %r10
	movl	%edi, 84(%rsp)
	movl	%esi, 80(%rsp)
	movq	%r10, 72(%rsp)
	movl	%r8d, 68(%rsp)
	movq	%r9, 56(%rsp)
	movq	%rcx, 48(%rsp)
	jmp	LBB69_7
	.align	4, 144
LBB69_3:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB69_7
                                                            ## Inner Loop
	movq	104(%rsp), %rax
	movq	%rax, %rdi
	movl	44(%rsp), %ecx
	movl	%ecx, %esi
	call	_array_get_elementC
	movq	%rax, 32(%rsp)
	call	_null_object
	leaq	LC125(%rip), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	movzbl	12(%rax), %ecx
	cmpl	$131, %ecx
	movq	%rax, 24(%rsp)
	jne	LBB69_11
LBB69_4:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB69_7
                                                            ## Inner Loop
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	movq	56(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	72(%rsp), %rcx
	movq	%rcx, %rdx
	call	___strcat_chk
	movq	%rax, %rax
	movl	44(%rsp), %eax
	movl	84(%rsp), %ecx
	cmpl	%ecx, %eax
	jae	LBB69_6
LBB69_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB69_7
                                                            ## Inner Loop
	leaq	LC11109(%rip), %rax
	movq	56(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	72(%rsp), %rax
	movq	%rax, %rdx
	call	___strcat_chk
	movq	%rax, %rax
LBB69_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB69_7
                                                            ## Inner Loop
	movl	44(%rsp), %eax
	movl	%eax, %ecx
	incl	%ecx
	movl	%ecx, 68(%rsp)
LBB69_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movl	68(%rsp), %eax
	movl	%eax, %ecx
	movl	80(%rsp), %edx
	cmpl	%edx, %ecx
	movl	%ecx, 44(%rsp)
	jb	LBB69_3
LBB69_8:
	leaq	144(%rsp), %rax
	leaq	LC12110(%rip), %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, 8(%rsp)
	call	___strcat_chk
	movq	%rax, %rax
	xorl	%eax, %eax
	movq	8(%rsp), %rcx
	movq	%rcx, %rdi
	movq	%rax, (%rsp)
	call	_string_object
	movq	(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$1176, %rsp
	ret
LBB69_9:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$99, %edx
	leaq	LC6104(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 112(%rsp)
	movq	%rcx, %rsi
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB69_10:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$102, %edx
	leaq	LC7105(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 88(%rsp)
	movq	%rcx, %rsi
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB69_11:
	leaq	___func__.string_cstrC(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$52, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_apply
_array_apply:                                               ## @array_apply
LBB70_0:
	subq	$24, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%rcx, 16(%rsp)
	movl	%edx, 12(%rsp)
	call	_array_get_elementC
	movl	24(%rax), %eax
	movq	16(%rsp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	call	_array_get_elementC
	movl	12(%rsp), %ecx
	movq	%rcx, %rdx
	addq	$24, %rsp
	ret


	.align	4, 144
	.globl	_array_size
_array_size:                                                ## @array_size
LBB71_0:
	subq	$72, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$135, %ecx
	movq	%rax, 64(%rsp)
	jne	LBB71_5
LBB71_1:
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 48(%rsp)
	je	LBB71_6
LBB71_2:                                                    ## %array_get_sizeC.exit
	movq	48(%rsp), %rax
	movslq	(%rax), %rcx
	movl	$130, %edx
	movl	%edx, %edi
	movq	%rcx, 32(%rsp)
	call	_object_alloc
	movq	32(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 24(%rsp)
	call	_int_prototype
	movq	24(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 16(%rsp)
	je	LBB71_7
LBB71_3:
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 8(%rsp)
	jne	LBB71_7
LBB71_4:                                                    ## %int_object.exit
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	addq	$72, %rsp
	ret
LBB71_5:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$99, %edx
	leaq	LC6104(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB71_6:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$102, %edx
	leaq	LC7105(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB71_7:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, (%rsp)
	movq	%rcx, %rsi
	movq	(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_class
_array_class:                                               ## @array_class
LBB72_0:
	subq	$8, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	LC13111(%rip), %rax
	movq	%rax, %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movq	%rcx, %rdx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_empty_array
_empty_array:                                               ## @empty_array
LBB73_0:
	subq	$56, %rsp
	movq	_empty_array.cached(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	jne	LBB73_4
LBB73_1:
	movl	$8, %eax
	movq	%rax, %rdi
	call	_malloc
	movl	$0, (%rax)
	movl	$135, %ecx
	movl	%ecx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	%rax, _empty_array.cached(%rip)
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_array_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB73_5
LBB73_2:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB73_5
LBB73_3:                                                    ## %object_set_delegate.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	_empty_array.cached(%rip), %rcx
	movq	%rcx, %rax
	addq	$56, %rsp
	ret
LBB73_4:
	movq	48(%rsp), %rax
	addq	$56, %rsp
	ret
LBB73_5:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_object
_array_object:                                              ## @array_object
LBB74_0:
	subq	$56, %rsp
	movl	%edi, %eax
	testl	%eax, %eax
	movl	%eax, 52(%rsp)
	je	LBB74_7
LBB74_1:
	movl	52(%rsp), %eax
	movl	%eax, %ecx
	movl	%ecx, %edx
	incl	%edx
	movslq	%edx, %rdx
	leaq	(,%rdx,8), %rdx
	movq	%rdx, %rdi
	movl	%ecx, 48(%rsp)
	call	_malloc
	movl	48(%rsp), %ecx
	movl	%ecx, (%rax)
	movl	$135, %edx
	movl	%edx, %edi
	movq	%rax, 40(%rsp)
	call	_object_alloc
	movq	40(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 32(%rsp)
	call	_array_prototype
	movq	32(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 24(%rsp)
	je	LBB74_8
LBB74_2:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 16(%rsp)
	jne	LBB74_8
LBB74_3:                                                    ## %object_set_delegate.exit
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	xorl	%ecx, %ecx
	movl	%ecx, 4(%rsp)
	jmp	LBB74_5
	.align	4, 144
LBB74_4:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB74_5
                                                            ## Inner Loop
	call	_null_object
	movq	16(%rsp), %rcx
	movq	%rcx, %rdi
	movl	(%rsp), %edx
	movl	%edx, %esi
	movq	%rax, %rdx
	call	_array_set_elementC
	movq	%rax, %rax
	movl	(%rsp), %eax
	movl	%eax, %ecx
	incl	%ecx
	movl	%ecx, 4(%rsp)
LBB74_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movl	4(%rsp), %eax
	movl	%eax, %ecx
	movl	48(%rsp), %edx
	cmpl	%edx, %ecx
	movl	%ecx, (%rsp)
	jb	LBB74_4
LBB74_6:
	movq	16(%rsp), %rax
	addq	$56, %rsp
	ret
LBB74_7:
	call	_empty_array
	addq	$56, %rsp
	ret
LBB74_8:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_set_elementC
_array_set_elementC:                                        ## @array_set_elementC
LBB75_0:
	subq	$72, %rsp
	movq	%rdx, %rax
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movzbl	12(%rdx), %esi
	cmpl	$135, %esi
	movl	%ecx, 68(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rdx, 48(%rsp)
	jne	LBB75_5
LBB75_1:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)
	je	LBB75_6
LBB75_2:
	movl	68(%rsp), %eax
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	%ecx, 20(%rsp)
	js	LBB75_7
LBB75_3:
	movq	32(%rsp), %rax
	movl	20(%rsp), %ecx
	cmpl	%ecx, (%rax)
	jle	LBB75_7
LBB75_4:
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	movl	20(%rsp), %edx
	movl	%edx, %esi
	incl	%esi
	movslq	%esi, %rsi
	movq	32(%rsp), %rdi
	movq	%rcx, (%rdi,%rsi,8)
	movq	%rcx, %rax
	addq	$72, %rsp
	ret
LBB75_5:
	leaq	___func__.array_set_elementC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$85, %edx
	leaq	LC6104(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 40(%rsp)
	movq	%rcx, %rsi
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB75_6:
	leaq	___func__.array_set_elementC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$88, %edx
	leaq	LC7105(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rcx, %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB75_7:
	leaq	___func__.array_set_elementC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$91, %edx
	leaq	LC9107(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_array_get_elementC
_array_get_elementC:                                        ## @array_get_elementC
LBB76_0:
	subq	$56, %rsp
	movl	%esi, %eax
	movq	%rdi, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$135, %edx
	movl	%eax, 52(%rsp)
	movq	%rcx, 40(%rsp)
	jne	LBB76_5
LBB76_1:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)
	je	LBB76_6
LBB76_2:
	movl	52(%rsp), %eax
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	%ecx, 12(%rsp)
	js	LBB76_4
LBB76_3:
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	cmpl	%ecx, (%rax)
	jg	LBB76_7
LBB76_4:
	call	_null_object
	addq	$56, %rsp
	ret
LBB76_5:
	leaq	___func__.array_get_elementC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$67, %edx
	leaq	LC6104(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, %rsi
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB76_6:
	leaq	___func__.array_get_elementC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$70, %edx
	leaq	LC7105(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB76_7:
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	incl	%ecx
	movslq	%ecx, %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, %rax
	addq	$56, %rsp
	ret


	.align	4, 144
	.globl	_array_get_sizeC
_array_get_sizeC:                                           ## @array_get_sizeC
LBB77_0:
	subq	$40, %rsp
	movq	%rdi, %rax
	movzbl	12(%rax), %ecx
	cmpl	$135, %ecx
	movq	%rax, 32(%rsp)
	jne	LBB77_3
LBB77_1:
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rcx), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)
	je	LBB77_4
LBB77_2:
	movq	16(%rsp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	addq	$40, %rsp
	ret
LBB77_3:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$99, %edx
	leaq	LC6104(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 24(%rsp)
	movq	%rcx, %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB77_4:
	leaq	___func__.array_get_sizeC(%rip), %rax
	leaq	LC5103(%rip), %rcx
	movl	$102, %edx
	leaq	LC7105(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 8(%rsp)
	movq	%rcx, %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	___t_throw
___t_throw:                                                 ## @__t_throw
LBB78_0:
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	movq	%rax, -8(%rsp)
	movq	%rcx, %rax
	movq	-8(%rsp), %rcx
	movq	%rcx, %rdx
	ret


	.align	4, 144
	.globl	___t_init
___t_init:                                                  ## @__t_init
LBB79_0:
	subq	$8, %rsp
	leaq	___t_exit(%rip), %rax
	movq	%rax, %rdi
	call	_atexit
	movl	%eax, %ecx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	___t_start
___t_start:                                                 ## @__t_start
LBB80_0:
	subq	$152, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	%edi, %edx
	movl	%edx, %edi
	movq	%rax, 144(%rsp)
	movq	%rcx, 136(%rsp)
	movl	%edx, 132(%rsp)
	call	_array_object
	xorl	%ecx, %ecx
	movq	136(%rsp), %rdx
	movq	144(%rsp), %rsi
	movl	132(%rsp), %edi
	movl	%ecx, 128(%rsp)
	movl	%edi, 124(%rsp)
	movq	%rax, 112(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rsi, 96(%rsp)
	.align	4, 144
LBB80_1:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	104(%rsp), %rax
	movq	%rax, %rcx
	movl	128(%rsp), %edx
	movl	%edx, %esi
	movl	124(%rsp), %edi
	cmpl	%edi, %esi
	movl	%esi, 92(%rsp)
	movq	%rcx, 80(%rsp)
	jl	LBB80_10
LBB80_2:                                                    ## %create_args.exit
	xorl	%eax, %eax
	leaq	LC3118(%rip), %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	112(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rax, %rcx
	call	_object_exec
	movq	%rax, %rax
	movq	%rdx, %rax
	testq	%rax, %rax
	movq	%rax, 72(%rsp)
	je	LBB80_9
LBB80_3:
	movq	72(%rsp), %rax
	movq	%rax, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rcx, 64(%rsp)
	movl	%edx, 60(%rsp)
	call	_array_object
	movl	60(%rsp), %ecx
	leaq	LC125(%rip), %rdx
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	call	_object_exec
	movq	%rdx, %rcx
	testq	%rax, %rax
	movq	%rax, 48(%rsp)
	je	LBB80_7
LBB80_4:
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	movzbl	12(%rcx), %edx
	cmpl	$131, %edx
	movq	%rcx, 40(%rsp)
	jne	LBB80_11
LBB80_5:                                                    ## %string_cstrC.exit
	movq	40(%rsp), %rax
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)
	je	LBB80_12
LBB80_6:
	leaq	LC6121(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movq	24(%rsp), %rax
	movq	%rax, %rsi
	movb	%cl, %al
	call	_printf
	movl	%eax, %ecx
	jmp	LBB80_8
LBB80_7:
	leaq	LC7122(%rip), %rax
	xorb	%cl, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	call	_printf
	movl	%eax, %ecx
LBB80_8:
	movl	_num_allocs(%rip), %eax
	movl	_mem_usage(%rip), %ecx
	leaq	LC124(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, 15(%rsp)
	movl	%ecx, %esi
	movl	%eax, %edx
	movb	15(%rsp), %al
	call	_printf
	movl	%eax, %ecx
	call	_abort
LBB80_9:
	xorl	%eax, %eax
	addq	$152, %rsp
	ret
LBB80_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB80_1
                                                            ## Inner Loop
	movq	80(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdi
	call	_string_object
	movq	112(%rsp), %rcx
	movq	%rcx, %rdi
	movl	92(%rsp), %edx
	movl	%edx, %esi
	movq	%rax, %rdx
	call	_array_set_elementC
	movq	%rax, %rax
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movl	92(%rsp), %edx
	movl	%edx, %esi
	incl	%esi
	movl	%esi, 128(%rsp)
	movq	%rcx, 104(%rsp)
	jmp	LBB80_1
LBB80_11:
	leaq	___func__.string_cstrC(%rip), %rax
	leaq	LC731(%rip), %rcx
	movl	$52, %edx
	leaq	LC832(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 32(%rsp)
	movq	%rcx, %rsi
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB80_12:
	leaq	___func__.__t_start(%rip), %rax
	leaq	LC1116(%rip), %rcx
	movl	$35, %edx
	leaq	LC5120(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
___t_exit:                                                  ## @__t_exit
LBB81_0:
	subq	$8, %rsp
	movl	_num_allocs(%rip), %eax
	movl	_mem_usage(%rip), %ecx
	leaq	LC124(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, 7(%rsp)
	movl	%ecx, %esi
	movl	%eax, %edx
	movb	7(%rsp), %al
	call	_printf
	movl	%eax, %ecx
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_mem_init
_mem_init:                                                  ## @mem_init
LBB82_0:
	movl	$1, %eax
	ret


	.align	4, 144
	.globl	_mem_shutdown
_mem_shutdown:                                              ## @mem_shutdown
LBB83_0:
	subq	$8, %rsp
	movl	_num_allocs(%rip), %eax
	movl	_mem_usage(%rip), %ecx
	leaq	LC124(%rip), %rdx
	xorb	%sil, %sil
	movq	%rdx, %rdi
	movb	%sil, 7(%rsp)
	movl	%ecx, %esi
	movl	%eax, %edx
	movb	7(%rsp), %al
	call	_printf
	movl	%eax, %ecx
	movl	$1, %ecx
	movl	%ecx, %eax
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_mem_alloc
_mem_alloc:                                                 ## @mem_alloc
LBB84_0:
	subq	$8, %rsp
	movq	%rdi, %rax
	movl	%eax, %ecx
	addl	%ecx, _mem_usage(%rip)
	incl	_num_allocs(%rip)
	movq	%rax, %rdi
	call	_malloc
	addq	$8, %rsp
	ret


	.align	4, 144
	.globl	_object_prototype
_object_prototype:                                          ## @object_prototype
LBB85_0:
	subq	$104, %rsp
	movq	_object_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	movq	%rax, 96(%rsp)
	jne	LBB85_6
LBB85_1:
	xorl	%eax, %eax
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, _object_prototype.prototype(%rip)
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 88(%rsp)
	call	_object_alloc
	leaq	_object_clone(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 80(%rsp)
	call	_closure_prototype
	movq	80(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 72(%rsp)
	je	LBB85_7
LBB85_2:
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 64(%rsp)
	jne	LBB85_7
LBB85_3:                                                    ## %closure_object.exit
	movq	88(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, %rsi
	movq	64(%rsp), %rdi
	movq	%rsi, 16(%rdi)
	leaq	LC226(%rip), %rsi
	xorl	%r8d, %r8d
	movq	%rcx, %rdi
	movq	64(%rsp), %rcx
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	call	_object_set_slot
	movq	_object_prototype.prototype(%rip), %rax
	movl	$132, %ecx
	movl	%ecx, %edi
	movq	%rax, 48(%rsp)
	call	_object_alloc
	leaq	_object_class(%rip), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, 40(%rsp)
	call	_closure_prototype
	movq	40(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)
	je	LBB85_8
LBB85_4:
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	cmpl	$2864775150, 8(%rcx)
	movq	%rcx, 24(%rsp)
	jne	LBB85_8
LBB85_5:                                                    ## %closure_object.exit5
	movq	32(%rsp), %rax
	movq	%rax, %rcx
	movq	24(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	leaq	LC18(%rip), %rcx
	xorl	%esi, %esi
	movq	48(%rsp), %rdi
	movl	%esi, 12(%rsp)
	movq	%rcx, %rsi
	movl	12(%rsp), %ecx
	call	_object_set_slot
	movq	_object_prototype.prototype(%rip), %rax
	addq	$104, %rsp
	ret
LBB85_6:
	movq	96(%rsp), %rax
	addq	$104, %rsp
	ret
LBB85_7:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 56(%rsp)
	movq	%rcx, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn
LBB85_8:                                                    ## %.thread6
	leaq	___func__.object_set_delegate(%rip), %rax
	leaq	LC1(%rip), %rcx
	movl	$154, %edx
	leaq	LC13(%rip), %rsi
	movq	%rax, %rdi
	movq	%rsi, 16(%rsp)
	movq	%rcx, %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	call	___assert_rtn


	.align	4, 144
	.globl	_object_clone
_object_clone:                                              ## @object_clone
LBB86_0:
	subq	$136, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, 128(%rsp)
	movq	%rcx, 120(%rsp)
	movl	%edx, 116(%rsp)
	call	_object_alloc
	movq	120(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	116(%rsp), %edx
	movl	%edx, %edi
	movq	%rax, 104(%rsp)
	movq	%rcx, 96(%rsp)
	call	_array_object
	movq	%rax, %rax
	movq	128(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	96(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rsi, 64(%rsp)
	jmp	LBB86_2
	.align	4, 144
LBB86_1:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB86_2
                                                            ## Inner Loop
	movq	56(%rsp), %rax
	movzwl	8(%rax), %ecx
	movq	24(%rax), %rdx
	movq	16(%rax), %rsi
	leaq	LC2130(%rip), %rdi
	xorb	%r8b, %r8b
	movb	%r8b, %al
	movb	%r8b, 55(%rsp)
	call	_printf
	movl	%eax, %ecx
	movq	56(%rsp), %rcx
	movq	24(%rcx), %rdx
	xorl	%esi, %esi
	leaq	LC226(%rip), %rdi
	movq	%rdi, 40(%rsp)
	movq	%rdx, %rdi
	movq	40(%rsp), %rdx
	movq	%rsi, 32(%rsp)
	movq	%rdx, %rsi
	movq	88(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	%r8, %rcx
	call	_object_exec
	movq	%rdx, %rcx
	leaq	LC3131(%rip), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movb	55(%rsp), %cl
	movq	%rax, 24(%rsp)
	movb	%cl, %al
	call	_printf
	movl	%eax, %edx
	movq	56(%rsp), %rdx
	movzwl	8(%rdx), %esi
	movq	16(%rdx), %rdi
	movq	80(%rsp), %r8
	movq	%rdi, 16(%rsp)
	movq	%r8, %rdi
	movq	16(%rsp), %r9
	movl	%esi, 12(%rsp)
	movq	%r9, %rsi
	movq	24(%rsp), %r9
	movq	%r9, %rdx
	movl	12(%rsp), %r9d
	movl	%r9d, %ecx
	call	_object_set_slot
	movq	56(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 72(%rsp)
	movq	%rdx, 64(%rsp)
LBB86_2:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	movq	72(%rsp), %rdx
	movq	%rdx, %rsi
	testq	%rsi, %rsi
	movq	%rcx, 56(%rsp)
	jne	LBB86_1
LBB86_3:
	xorl	%eax, %eax
	movq	80(%rsp), %rcx
	movq	%rax, (%rsp)
	movq	%rcx, %rax
	movq	(%rsp), %rdx
	addq	$136, %rsp
	ret


	.align	4, 144
	.globl	_object_class
_object_class:                                              ## @object_class
LBB87_0:
	subq	$72, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rax
	movq	%rdi, %rax
	leaq	40(%rsp), %rcx
	xorl	%edx, %edx
	movq	$-1, %rdi
	leaq	LC4132(%rip), %r8
	xorb	%r9b, %r9b
	movq	%rdi, 32(%rsp)
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	32(%rsp), %r10
	movl	%edx, 28(%rsp)
	movq	%r10, %rdx
	movq	%rcx, 16(%rsp)
	movq	%r8, %rcx
	movq	%rax, %r8
	movb	%r9b, %al
	call	___sprintf_chk
	movl	%eax, %ecx
	movl	28(%rsp), %ecx
	movq	16(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, 8(%rsp)
	call	_string_object
	movq	8(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$72, %rsp
	ret
	.subsections_via_symbols
	.private_extern _closuremap
	.section	__DATA,__data
	.lcomm	_closuremap,8,3                             ## @closuremap
	.section	__TEXT,__cstring,cstring_literals
___unnamed_2:                                               ## @0
	.asciz	"lt"
	.private_extern _closuremap1
	.section	__DATA,__data
	.lcomm	_closuremap1,8,3                            ## @closuremap1
	.section	__TEXT,__cstring,cstring_literals
___unnamed_6:                                               ## @1
	.asciz	"add"
___unnamed_3:                                               ## @2
	.asciz	"apply"
___unnamed_4:                                               ## @3
	.asciz	"to_s"
___unnamed_5:                                               ## @4
	.asciz	"print"
___unnamed_1:                                               ## @5
	.asciz	"main"
___func__.object_alloc:                                     ## @__func__.object_alloc
	.asciz	"object_alloc"
LC1:                                                        ## @"\01LC1"
	.asciz	"object.c"
	.align	4
LC2:                                                        ## @"\01LC2"
	.asciz	"ret && \"failed to malloc\""
	.align	4
LC4:                                                        ## @"\01LC4"
	.asciz	"OBJ_VALID(ret) && \"created invalid object\""
___func__.object_free:                                      ## @__func__.object_free
	.asciz	"object_free"
	.align	4
LC6:                                                        ## @"\01LC6"
	.asciz	"OBJ_TYPE(object) != OBJ_NULL && \"can't delete null object\""
___func__.object_get_slot:                                  ## @__func__.object_get_slot
	.asciz	"object_get_slot"
	.align	4
LC7:                                                        ## @"\01LC7"
	.asciz	"OBJ_VALID(node->value)"
LC8:                                                        ## @"\01LC8"
	.asciz	"delegate"
___func__.object_set_slot:                                  ## @__func__.object_set_slot
	.asciz	"object_set_slot"
	.align	4
LC10:                                                       ## @"\01LC10"
	.asciz	"!(node->flags & SLOT_IMMUTABLE) && \"trying to overwrite immutable\""
	.align	4
LC12:                                                       ## @"\01LC12"
	.asciz	"!(flags & SLOT_ASSIGNMENT) && \"trying to assign non-existant slot\""
	.align	4
___func__.object_set_delegate:                              ## @__func__.object_set_delegate
	.asciz	"object_set_delegate"
	.align	4
LC13:                                                       ## @"\01LC13"
	.asciz	"OBJ_VALID(object)"
	.align	4
___func__.object_get_delegate:                              ## @__func__.object_get_delegate
	.asciz	"object_get_delegate"
LC14:                                                       ## @"\01LC14"
	.asciz	"apply"
	.align	4
___func__.object_resolve_slot:                              ## @__func__.object_resolve_slot
	.asciz	"object_resolve_slot"
LC15:                                                       ## @"\01LC15"
	.asciz	"slot"
___func__.object_exec:                                      ## @__func__.object_exec
	.asciz	"object_exec"
LC16:                                                       ## @"\01LC16"
	.asciz	"resolved_method"
	.align	4
LC17:                                                       ## @"\01LC17"
	.asciz	"method not found: "
LC18:                                                       ## @"\01LC18"
	.asciz	"class"
LC19:                                                       ## @"\01LC19"
	.asciz	"classname"
LC20:                                                       ## @"\01LC20"
	.asciz	"0x%08X"
LC21:                                                       ## @"\01LC21"
	.asciz	"."
	.align	4
LC23:                                                       ## @"\01LC23"
	.asciz	"resolved_method != wrapped_null_object() && \"trying to call null\""
	.section	__DATA,__data
	.lcomm	_string_prototype.prototype,8,3             ## @string_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
LC24:                                                       ## @"\01LC24"
	.asciz	"print"
LC125:                                                      ## @"\01LC125"
	.asciz	"to_s"
LC226:                                                      ## @"\01LC226"
	.asciz	"clone"
LC428:                                                      ## @"\01LC428"
	.asciz	"add"
LC529:                                                      ## @"\01LC529"
	.asciz	"eq"
LC630:                                                      ## @"\01LC630"
	.asciz	"neq"
___func__.string_cstrC:                                     ## @__func__.string_cstrC
	.asciz	"string_cstrC"
LC731:                                                      ## @"\01LC731"
	.asciz	"string.c"
	.align	4
LC832:                                                      ## @"\01LC832"
	.asciz	"OBJ_TYPE(self) == OBJ_STRING"
___func__.string_add:                                       ## @__func__.string_add
	.asciz	"string_add"
LC933:                                                      ## @"\01LC933"
	.asciz	"param"
LC1034:                                                     ## @"\01LC1034"
	.asciz	"as_string"
LC1236:                                                     ## @"\01LC1236"
	.asciz	"string_rep.val"
LC1337:                                                     ## @"\01LC1337"
	.asciz	"string"
LC1438:                                                     ## @"\01LC1438"
	.asciz	"new_buffer"
___func__.string_to_s:                                      ## @__func__.string_to_s
	.asciz	"string_to_s"
___func__.string_eq:                                        ## @__func__.string_eq
	.asciz	"string_eq"
	.align	4
LC1539:                                                     ## @"\01LC1539"
	.asciz	"OBJ_VALID(param)"
___func__.string_print:                                     ## @__func__.string_print
	.asciz	"string_print"
	.section	__DATA,__data
	.lcomm	_null_object.cached_null,8,3                ## @null_object.cached_null
	.section	__TEXT,__cstring,cstring_literals
___func__.null_to_s:                                        ## @__func__.null_to_s
	.asciz	"null_to_s"
LC448:                                                      ## @"\01LC448"
	.asciz	"null.c"
	.align	4
LC549:                                                      ## @"\01LC549"
	.asciz	"OBJ_TYPE(self) == OBJ_NULL"
LC650:                                                      ## @"\01LC650"
	.asciz	"null"
	.section	__DATA,__data
	.lcomm	_wrapped_null_object.cached_wrap,8,3        ## @wrapped_null_object.cached_wrap
	.lcomm	_closure_prototype.prototype,8,3            ## @closure_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
___func__.closure_object:                                   ## @__func__.closure_object
	.asciz	"closure_object"
LC356:                                                      ## @"\01LC356"
	.asciz	"closure.c"
LC457:                                                      ## @"\01LC457"
	.asciz	"fptr"
LC558:                                                      ## @"\01LC558"
	.asciz	"Closure 0x%08X"
LC659:                                                      ## @"\01LC659"
	.asciz	"closure"
	.section	__DATA,__data
	.lcomm	_int_prototype.prototype,8,3                ## @int_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
LC263:                                                      ## @"\01LC263"
	.asciz	"lt"
LC364:                                                      ## @"\01LC364"
	.asciz	"le"
LC465:                                                      ## @"\01LC465"
	.asciz	"gt"
LC566:                                                      ## @"\01LC566"
	.asciz	"ge"
LC970:                                                      ## @"\01LC970"
	.asciz	"sub"
LC1071:                                                     ## @"\01LC1071"
	.asciz	"mul"
LC1172:                                                     ## @"\01LC1172"
	.asciz	"div"
___func__.int_to_s:                                         ## @__func__.int_to_s
	.asciz	"int_to_s"
LC1273:                                                     ## @"\01LC1273"
	.asciz	"integer.c"
	.align	4
LC1374:                                                     ## @"\01LC1374"
	.asciz	"OBJ_TYPE(self) == OBJ_INTEGER"
LC1475:                                                     ## @"\01LC1475"
	.asciz	"%i"
LC1576:                                                     ## @"\01LC1576"
	.asciz	"int"
___func__.int_lt:                                           ## @__func__.int_lt
	.asciz	"int_lt"
	.align	4
LC1677:                                                     ## @"\01LC1677"
	.asciz	"other && OBJ_VALID(other)"
___func__.int_le:                                           ## @__func__.int_le
	.asciz	"int_le"
___func__.int_gt:                                           ## @__func__.int_gt
	.asciz	"int_gt"
___func__.int_ge:                                           ## @__func__.int_ge
	.asciz	"int_ge"
___func__.int_eq:                                           ## @__func__.int_eq
	.asciz	"int_eq"
___func__.int_neq:                                          ## @__func__.int_neq
	.asciz	"int_neq"
___func__.int_add:                                          ## @__func__.int_add
	.asciz	"int_add"
___func__.int_sub:                                          ## @__func__.int_sub
	.asciz	"int_sub"
___func__.int_mul:                                          ## @__func__.int_mul
	.asciz	"int_mul"
___func__.int_div:                                          ## @__func__.int_div
	.asciz	"int_div"
	.section	__DATA,__data
	.lcomm	_bool_prototype.prototype,8,3               ## @bool_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
LC280:                                                      ## @"\01LC280"
	.asciz	"andand"
LC381:                                                      ## @"\01LC381"
	.asciz	"oror"
LC482:                                                      ## @"\01LC482"
	.asciz	"not"
___func__.bool_get_value:                                   ## @__func__.bool_get_value
	.asciz	"bool_get_value"
LC785:                                                      ## @"\01LC785"
	.asciz	"bool.c"
	.align	4
LC886:                                                      ## @"\01LC886"
	.asciz	"OBJ_TYPE(self) == OBJ_BOOL"
___func__.bool_to_s:                                        ## @__func__.bool_to_s
	.asciz	"bool_to_s"
LC987:                                                      ## @"\01LC987"
	.asciz	"true"
LC1088:                                                     ## @"\01LC1088"
	.asciz	"false"
LC1189:                                                     ## @"\01LC1189"
	.asciz	"bool"
___func__.bool_andand:                                      ## @__func__.bool_andand
	.asciz	"bool_andand"
	.align	4
LC1290:                                                     ## @"\01LC1290"
	.asciz	"other && OBJ_TYPE(other) == OBJ_BOOL"
___func__.bool_oror:                                        ## @__func__.bool_oror
	.asciz	"bool_oror"
___func__.float_to_s:                                       ## @__func__.float_to_s
	.asciz	"float_to_s"
LC294:                                                      ## @"\01LC294"
	.asciz	"float.c"
	.align	4
LC395:                                                      ## @"\01LC395"
	.asciz	"OBJ_TYPE(self) == OBJ_FLOAT"
LC496:                                                      ## @"\01LC496"
	.asciz	"%f"
LC597:                                                      ## @"\01LC597"
	.asciz	"float"
	.section	__DATA,__data
	.lcomm	_array_prototype.prototype,8,3              ## @array_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
LC98:                                                       ## @"\01LC98"
	.asciz	"at"
LC3101:                                                     ## @"\01LC3101"
	.asciz	"size"
	.section	__DATA,__data
	.lcomm	_empty_array.cached,8,3                     ## @empty_array.cached
	.section	__TEXT,__cstring,cstring_literals
	.align	4
___func__.array_get_elementC:                               ## @__func__.array_get_elementC
	.asciz	"array_get_elementC"
LC5103:                                                     ## @"\01LC5103"
	.asciz	"array.c"
	.align	4
LC6104:                                                     ## @"\01LC6104"
	.asciz	"OBJ_TYPE(self) == OBJ_ARRAY"
LC7105:                                                     ## @"\01LC7105"
	.asciz	"data"
	.align	4
___func__.array_set_elementC:                               ## @__func__.array_set_elementC
	.asciz	"array_set_elementC"
	.align	4
LC9107:                                                     ## @"\01LC9107"
	.asciz	"index >= 0 && index < size && \"index out of bounds\""
___func__.array_get_sizeC:                                  ## @__func__.array_get_sizeC
	.asciz	"array_get_sizeC"
LC10108:                                                    ## @"\01LC10108"
	.asciz	"["
LC11109:                                                    ## @"\01LC11109"
	.asciz	", "
LC12110:                                                    ## @"\01LC12110"
	.asciz	"]"
LC13111:                                                    ## @"\01LC13111"
	.asciz	"array"
LC1116:                                                     ## @"\01LC1116"
	.asciz	"start.c"
LC3118:                                                     ## @"\01LC3118"
	.asciz	"main"
___func__.__t_start:                                        ## @__func__.__t_start
	.asciz	"__t_start"
LC5120:                                                     ## @"\01LC5120"
	.asciz	"cstr"
	.align	4
LC6121:                                                     ## @"\01LC6121"
	.asciz	"Unhandled exception: %s\n"
	.align	4
LC7122:                                                     ## @"\01LC7122"
	.asciz	"Unhandled exception\n"
	.align	4
LC124:                                                      ## @"\01LC124"
	.asciz	"mem usage: %i, num allocs: %i\n"
	.section	__DATA,__data
	.lcomm	_mem_usage,4,2                              ## @mem_usage
	.lcomm	_num_allocs,4,2                             ## @num_allocs
	.lcomm	_object_prototype.prototype,8,3             ## @object_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
	.align	4
LC2130:                                                     ## @"\01LC2130"
	.asciz	"Cloning %s %x %x...\n"
LC3131:                                                     ## @"\01LC3131"
	.asciz	"   object: %x\n"
	.align	4
LC4132:                                                     ## @"\01LC4132"
	.asciz	"[Object: 0x%08X]"
	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
	.set	Lset1eh,Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset1eh                                     ## Length of Common Information Entry
Leh_frame_common_begin:
	.long	0x0                                         ## CIE Identifier Tag
	.byte	0x1                                         ## CIE Version
	.asciz	"zR"                                        ## CIE Augmentation
	.byte	0x1                                         ## CIE Code Alignment Factor
	.byte	0x78                                        ## CIE Data Alignment Factor
	.byte	0x10                                        ## CIE Return Address Column
	.byte	0x1                                         ## Augmentation Size
	.byte	0x1B                                        ## FDE Encoding (pcrel sdata4)
	.byte	0xC                                         ## DW_CFA_def_cfa
	.byte	0x7                                         ## Register
	.byte	0x8                                         ## Offset
	.byte	0x90                                        ## DW_CFA_offset + Reg (16)
	.byte	0x1                                         ## Offset
	.align	3
Leh_frame_common_end:

	.globl	_main.eh
_main.eh:
	.set	Lset2eh,Leh_frame_end1-Leh_frame_begin1
	.long	Lset2eh                                     ## Length of Frame Information Entry
Leh_frame_begin1:
	.long	Leh_frame_begin1-Leh_frame_common           ## FDE CIE offset
	.long	Leh_func_begin1-.                           ## FDE initial location
	.set	Lset3eh,Leh_func_end1-Leh_func_begin1
	.long	Lset3eh                                     ## FDE address range
	.byte	0x0                                         ## Augmentation size
	.byte	0x4                                         ## DW_CFA_advance_loc4
	.set	Lset4eh,Llabel1-Leh_func_begin1
	.long	Lset4eh
	.byte	0xE                                         ## DW_CFA_def_cfa_offset
	.byte	0x40                                        ## Offset
	.align	3
Leh_frame_end1:
___closure.eh:
	.set	Lset5eh,Leh_frame_end2-Leh_frame_begin2
	.long	Lset5eh                                     ## Length of Frame Information Entry
Leh_frame_begin2:
	.long	Leh_frame_begin2-Leh_frame_common           ## FDE CIE offset
	.long	Leh_func_begin2-.                           ## FDE initial location
	.set	Lset6eh,Leh_func_end2-Leh_func_begin2
	.long	Lset6eh                                     ## FDE address range
	.byte	0x0                                         ## Augmentation size
	.byte	0x4                                         ## DW_CFA_advance_loc4
	.set	Lset7eh,Llabel2-Leh_func_begin2
	.long	Lset7eh
	.byte	0xE                                         ## DW_CFA_def_cfa_offset
	.byte	0x10                                        ## Offset
	.byte	0x86                                        ## DW_CFA_offset + Reg (6)
	.byte	0x2                                         ## Offset
	.byte	0x4                                         ## DW_CFA_advance_loc4
	.set	Lset8eh,Llabel3-Llabel2
	.long	Lset8eh
	.byte	0xD                                         ## DW_CFA_def_cfa_register
	.byte	0x6                                         ## Register
	.align	3
Leh_frame_end2:
___closure2.eh:
	.set	Lset9eh,Leh_frame_end3-Leh_frame_begin3
	.long	Lset9eh                                     ## Length of Frame Information Entry
Leh_frame_begin3:
	.long	Leh_frame_begin3-Leh_frame_common           ## FDE CIE offset
	.long	Leh_func_begin3-.                           ## FDE initial location
	.set	Lset10eh,Leh_func_end3-Leh_func_begin3
	.long	Lset10eh                                    ## FDE address range
	.byte	0x0                                         ## Augmentation size
	.byte	0x4                                         ## DW_CFA_advance_loc4
	.set	Lset11eh,Llabel5-Leh_func_begin3
	.long	Lset11eh
	.byte	0xE                                         ## DW_CFA_def_cfa_offset
	.byte	0x60                                        ## Offset
	.align	3
Leh_frame_end3:

