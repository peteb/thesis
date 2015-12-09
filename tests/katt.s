

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 144
_object_alloc:                                              ## @object_alloc
LBB1_0:
	pushq	%rbx
	movl	%edi, %eax
	testb	$1, %ah
	setne	%cl
	testb	$2, %ah
	movzbl	%cl, %eax
	leaq	24(,%rax,8), %rax
	movl	%edi, %ebx
	je	LBB1_4
LBB1_1:
	leaq	LC(%rip), %rsi
	movl	$38, %edx
LBB1_2:
	movq	%rax, %rdi
	call	_GC_debug_malloc
	testq	%rax, %rax
	jne	LBB1_5
LBB1_3:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB1_4:
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	jmp	LBB1_2
LBB1_5:                                                     ## %mem_alloc.exit
	testq	%rax, %rax
	je	LBB1_7
LBB1_6:
	movl	%ebx, 12(%rax)
	movl	$364969966, 8(%rax)
	popq	%rbx
	ret
LBB1_7:
	leaq	___func__.object_alloc(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$42, %edx
	leaq	LC2(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_object_get_slot:                                           ## @object_get_slot
LBB2_0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	leaq	___sym_delegate(%rip), %rax
	subq	%rsi, %rax
	cmpq	$3, %rax
	movq	%rdi, %rbx
	ja	LBB2_4
LBB2_1:
	testq	%rbx, %rbx
	je	LBB2_22
LBB2_2:
	cmpl	$364969966, 8(%rbx)
	jne	LBB2_22
LBB2_3:                                                     ## %object_get_delegate.exit
	movq	16(%rbx), %rax
	jmp	LBB2_21
LBB2_4:
	movq	%rsi, %r14
	movq	%rbx, %rax
	.align	4, 144
LBB2_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	(%rax), %rax
	testq	%rax, %rax
	je	LBB2_10
LBB2_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB2_5
                                                            ## Inner Loop
	movq	%r14, %rcx
	subq	16(%rax), %rcx
	cmpq	$3, %rcx
	ja	LBB2_5
LBB2_7:
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	LBB2_9
LBB2_8:
	cmpl	$364969966, 8(%rax)
	je	LBB2_21
LBB2_9:                                                     ## %.thread4
	leaq	___func__.object_get_slot(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$99, %edx
	leaq	LC5(%rip), %rcx
	call	___assert_rtn
LBB2_10:
	testq	%rbx, %rbx
	je	LBB2_22
LBB2_11:
	cmpl	$364969966, 8(%rbx)
	jne	LBB2_22
LBB2_12:                                                    ## %object_get_delegate.exit3
	movq	16(%rbx), %r15
	testq	%r15, %r15
	je	LBB2_20
LBB2_13:
	call	_null_object
	cmpq	%rax, %r15
	je	LBB2_20
LBB2_14:
	movl	12(%r15), %eax
	movzbl	%al, %ecx
	cmpl	$4, %ecx
	jne	LBB2_19
LBB2_15:
	testb	$1, %ah
	je	LBB2_23
LBB2_16:                                                    ## %closure_get_fptrC.exit
	movq	24(%r15), %r12
	testq	%r12, %r12
	je	LBB2_18
LBB2_17:
	xorl	%edi, %edi
	call	_array_object
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	call	*%r12
	movq	%rax, %r15
LBB2_18:
	testq	%r15, %r15
	je	LBB2_24
LBB2_19:
	movq	%r15, %rdi
	movq	%r14, %rsi
	call	_object_get_slot
	jmp	LBB2_21
LBB2_20:
	call	_null_object
LBB2_21:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
LBB2_22:                                                    ## %.thread
	leaq	___func__.object_get_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$197, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB2_23:
	leaq	___func__.closure_get_fptrC(%rip), %rdi
	leaq	LC30(%rip), %rsi
	movl	$73, %edx
	leaq	LC232(%rip), %rcx
	call	___assert_rtn
LBB2_24:
	leaq	___func__.object_get_slot(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$126, %edx
	leaq	LC6(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_object_set_slot:                                           ## @object_set_slot
LBB3_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	leaq	___sym_delegate(%rip), %rax
	subq	%rsi, %rax
	cmpq	$3, %rax
	movq	%rdx, 8(%rsp)
	ja	LBB3_5
LBB3_1:
	testq	%rdi, %rdi
	je	LBB3_15
LBB3_2:
	cmpl	$364969966, 8(%rdi)
	jne	LBB3_15
LBB3_3:                                                     ## %object_set_delegate.exit
	movq	%rdx, %rax
	movq	%rax, 16(%rdi)
LBB3_4:                                                     ## %object_set_delegate.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB3_5:
	movl	%ecx, %ebx
	movq	%rsi, %r14
	movq	(%rdi), %rax
	movq	%rdi, %r15
	movq	%rax, %rcx
	jmp	LBB3_11
	.align	4, 144
LBB3_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB3_11
                                                            ## Inner Loop
	movq	%r14, %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB3_10
LBB3_7:
	testb	$2, 8(%rdx)
	je	LBB3_9
LBB3_8:
	movq	8(%rsp), %rax
	movq	%rax, 24(%rdx)
	jmp	LBB3_4
LBB3_9:
	leaq	LC7(%rip), %rdi
	xorb	%al, %al
	movq	%r14, %rsi
	call	_printf
	jmp	LBB3_4
LBB3_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB3_11
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %r15
	movq	%rax, %rcx
LBB3_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB3_6
LBB3_12:
	testb	$16, %bh
	jne	LBB3_16
LBB3_13:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB3_17
LBB3_14:                                                    ## %mem_alloc.exit
	movl	%ebx, 8(%rax)
	movq	%r14, 16(%rax)
	movq	8(%rsp), %rcx
	movq	%rcx, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%r15)
	jmp	LBB3_4
LBB3_15:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB3_16:
	leaq	___func__.object_set_slot(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$171, %edx
	leaq	LC9(%rip), %rcx
	call	___assert_rtn
LBB3_17:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_object_exec:                                               ## @object_exec
LBB4_0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	LBB4_20
LBB4_1:
	movq	%rdi, %rbx
	cmpl	$364969966, 8(%rbx)
	jne	LBB4_20
LBB4_2:
	movq	%rdx, %r14
	leaq	___sym_apply(%rip), %rax
	subq	%rsi, %rax
	cmpq	$3, %rax
	ja	LBB4_4
LBB4_3:
	movzbl	12(%rbx), %eax
	cmpl	$4, %eax
	je	LBB4_27
LBB4_4:
	movq	%rbx, %rdi
	call	_object_get_slot
LBB4_5:
	movq	%rax, %r15
	testq	%r15, %r15
	je	LBB4_21
LBB4_6:
	cmpl	$364969966, 8(%r15)
	jne	LBB4_21
LBB4_7:
	movl	12(%r15), %eax
	movzbl	%al, %ecx
	cmpl	$4, %ecx
	jne	LBB4_22
LBB4_8:
	testb	$1, %ah
	je	LBB4_23
LBB4_9:                                                     ## %closure_get_fptrC.exit
	movq	_wrapped_null_object.cached_wrap(%rip), %rax
	testq	%rax, %rax
	movq	24(%r15), %r12
	jne	LBB4_15
LBB4_10:
	leaq	_wrapped_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _wrapped_null_object.cached_wrap(%rip)
	jne	LBB4_14
LBB4_11:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB4_24
LBB4_12:
	movq	%rax, %r13
	movl	$260, 12(%r13)
	movl	$364969966, 8(%r13)
	leaq	_null_wrapped(%rip), %rax
	movq	%rax, 24(%r13)
	call	_closure_prototype
	cmpl	$364969966, 8(%r13)
	jne	LBB4_25
LBB4_13:                                                    ## %closure_object.exit.i
	movq	%rax, 16(%r13)
	movq	%r13, _wrapped_null_object.cached_wrap(%rip)
LBB4_14:
	leaq	_wrapped_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_wrapped_null_object.cached_wrap(%rip), %rax
LBB4_15:                                                    ## %wrapped_null_object.exit
	cmpq	%rax, %r12
	je	LBB4_26
LBB4_16:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	call	*%r12
	testq	%rax, %rax
	jne	LBB4_19
LBB4_17:
	testq	%rdx, %rdx
	jne	LBB4_19
LBB4_18:
	xorl	%ebx, %ebx
	call	_null_object
	movq	%rbx, %rdx
LBB4_19:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
LBB4_20:                                                    ## %.thread
	leaq	___func__.object_exec(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$227, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB4_21:                                                    ## %.thread3
	leaq	___func__.object_exec(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$244, %edx
	leaq	LC12(%rip), %rcx
	call	___assert_rtn
LBB4_22:
	leaq	___func__.object_exec(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$245, %edx
	leaq	LC13(%rip), %rcx
	call	___assert_rtn
LBB4_23:
	leaq	___func__.closure_get_fptrC(%rip), %rdi
	leaq	LC30(%rip), %rsi
	movl	$73, %edx
	leaq	LC232(%rip), %rcx
	call	___assert_rtn
LBB4_24:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB4_25:                                                    ## %.thread.i
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB4_26:
	leaq	___func__.object_exec(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$252, %edx
	leaq	LC14(%rip), %rcx
	call	___assert_rtn
LBB4_27:                                                    ## %._crit_edge
	movq	%rbx, %rax
	jmp	LBB4_5


	.align	4, 144
_string_prototype:                                          ## @string_prototype
LBB5_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_string_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB5_140
LBB5_1:
	leaq	_string_prototype_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _string_prototype.prototype(%rip)
	jne	LBB5_139
LBB5_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_3:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _string_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_4:                                                     ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_5:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_print(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_6:                                                     ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_print(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_10
LBB5_7:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_8:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_9:                                                     ## %object_set_delegate.exit.i15
	movq	%r14, 16(%rbx)
	jmp	LBB5_19
LBB5_10:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_16
	.align	4, 144
LBB5_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_16
                                                            ## Inner Loop
	leaq	___sym_print(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_15
LBB5_12:
	testb	$2, 8(%rdx)
	je	LBB5_14
LBB5_13:
	movq	%r14, 24(%rdx)
	jmp	LBB5_19
LBB5_14:
	leaq	LC7(%rip), %rdi
	leaq	___sym_print(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_19
LBB5_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_16
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_11
LBB5_17:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_18:                                                    ## %mem_alloc.exit.i18
	movl	$0, 8(%rax)
	leaq	___sym_print(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_19:                                                    ## %object_set_slot.exit19
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_20:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_puts(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_21:                                                    ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_puts(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_25
LBB5_22:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_23:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_24:                                                    ## %object_set_delegate.exit.i42
	movq	%r14, 16(%rbx)
	jmp	LBB5_34
LBB5_25:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_31
	.align	4, 144
LBB5_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_31
                                                            ## Inner Loop
	leaq	___sym_puts(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_30
LBB5_27:
	testb	$2, 8(%rdx)
	je	LBB5_29
LBB5_28:
	movq	%r14, 24(%rdx)
	jmp	LBB5_34
LBB5_29:
	leaq	LC7(%rip), %rdi
	leaq	___sym_puts(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_34
LBB5_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_31
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_26
LBB5_32:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_33:                                                    ## %mem_alloc.exit.i45
	movl	$0, 8(%rax)
	leaq	___sym_puts(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_34:                                                    ## %object_set_slot.exit46
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_35:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_36:                                                    ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_40
LBB5_37:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_38:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_39:                                                    ## %object_set_delegate.exit.i69
	movq	%r14, 16(%rbx)
	jmp	LBB5_49
LBB5_40:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_46
	.align	4, 144
LBB5_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_46
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_45
LBB5_42:
	testb	$2, 8(%rdx)
	je	LBB5_44
LBB5_43:
	movq	%r14, 24(%rdx)
	jmp	LBB5_49
LBB5_44:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_49
LBB5_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_46
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_46:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_41
LBB5_47:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_48:                                                    ## %mem_alloc.exit.i72
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_49:                                                    ## %object_set_slot.exit73
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_50:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_51:                                                    ## %closure_object.exit30
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_55
LBB5_52:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_53:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_54:                                                    ## %object_set_delegate.exit.i63
	movq	%r14, 16(%rbx)
	jmp	LBB5_64
LBB5_55:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_61
	.align	4, 144
LBB5_56:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_61
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_60
LBB5_57:
	testb	$2, 8(%rdx)
	je	LBB5_59
LBB5_58:
	movq	%r14, 24(%rdx)
	jmp	LBB5_64
LBB5_59:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_64
LBB5_60:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_61
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_61:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_56
LBB5_62:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_63:                                                    ## %mem_alloc.exit.i66
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_64:                                                    ## %object_set_slot.exit67
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_65:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_66:                                                    ## %closure_object.exit40
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_70
LBB5_67:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_68:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_69:                                                    ## %object_set_delegate.exit.i51
	movq	%r14, 16(%rbx)
	jmp	LBB5_79
LBB5_70:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_76
	.align	4, 144
LBB5_71:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_76
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_75
LBB5_72:
	testb	$2, 8(%rdx)
	je	LBB5_74
LBB5_73:
	movq	%r14, 24(%rdx)
	jmp	LBB5_79
LBB5_74:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_79
LBB5_75:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_76
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_76:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_71
LBB5_77:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_78:                                                    ## %mem_alloc.exit.i54
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_79:                                                    ## %object_set_slot.exit55
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_80:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_add(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_81:                                                    ## %closure_object.exit35
	movq	%rax, 16(%r14)
	leaq	___sym_add(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_85
LBB5_82:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_83:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_84:                                                    ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB5_94
LBB5_85:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_91
	.align	4, 144
LBB5_86:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_91
                                                            ## Inner Loop
	leaq	___sym_add(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_90
LBB5_87:
	testb	$2, 8(%rdx)
	je	LBB5_89
LBB5_88:
	movq	%r14, 24(%rdx)
	jmp	LBB5_94
LBB5_89:
	leaq	LC7(%rip), %rdi
	leaq	___sym_add(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_94
LBB5_90:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_91
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_91:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_86
LBB5_92:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_93:                                                    ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_add(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_94:                                                    ## %object_set_slot.exit40
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_95:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_eq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_96:                                                    ## %closure_object.exit25
	movq	%rax, 16(%r14)
	leaq	___sym_eq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_100
LBB5_97:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_98:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_99:                                                    ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB5_109
LBB5_100:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_106
	.align	4, 144
LBB5_101:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_106
                                                            ## Inner Loop
	leaq	___sym_eq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_105
LBB5_102:
	testb	$2, 8(%rdx)
	je	LBB5_104
LBB5_103:
	movq	%r14, 24(%rdx)
	jmp	LBB5_109
LBB5_104:
	leaq	LC7(%rip), %rdi
	leaq	___sym_eq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_109
LBB5_105:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_106
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_106:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_101
LBB5_107:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_108:                                                   ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_eq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_109:                                                   ## %object_set_slot.exit28
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_110:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_neq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_111:                                                   ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_neq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_115
LBB5_112:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_113:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_114:                                                   ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB5_124
LBB5_115:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_121
	.align	4, 144
LBB5_116:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_121
                                                            ## Inner Loop
	leaq	___sym_neq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_120
LBB5_117:
	testb	$2, 8(%rdx)
	je	LBB5_119
LBB5_118:
	movq	%r14, 24(%rdx)
	jmp	LBB5_124
LBB5_119:
	leaq	LC7(%rip), %rdi
	leaq	___sym_neq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_124
LBB5_120:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_121
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_121:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_116
LBB5_122:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_123:                                                   ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_neq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_124:                                                   ## %object_set_slot.exit13
	movq	_string_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_125:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_string_size(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB5_141
LBB5_126:                                                   ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_size(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB5_130
LBB5_127:
	testq	%rbx, %rbx
	je	LBB5_141
LBB5_128:
	cmpl	$364969966, 8(%rbx)
	jne	LBB5_141
LBB5_129:                                                   ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB5_139
LBB5_130:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB5_136
	.align	4, 144
LBB5_131:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_136
                                                            ## Inner Loop
	leaq	___sym_size(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB5_135
LBB5_132:
	testb	$2, 8(%rdx)
	je	LBB5_134
LBB5_133:
	movq	%r14, 24(%rdx)
	jmp	LBB5_139
LBB5_134:
	leaq	LC7(%rip), %rdi
	leaq	___sym_size(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB5_139
LBB5_135:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB5_136
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB5_136:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB5_131
LBB5_137:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB5_142
LBB5_138:                                                   ## %mem_alloc.exit.i1
	movl	$0, 8(%rax)
	leaq	___sym_size(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB5_139:                                                   ## %object_set_slot.exit
	leaq	_string_prototype_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_string_prototype.prototype(%rip), %rax
LBB5_140:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB5_141:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB5_142:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_print:                                              ## @string_print
LBB6_0:
	pushq	%rbx
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB6_2
LBB6_1:
	movq	%rdi, %rbx
	movq	24(%rbx), %rsi
	leaq	LC424(%rip), %rdi
	xorb	%al, %al
	call	_printf
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	popq	%rbx
	ret
LBB6_2:
	leaq	___func__.string_print(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$146, %edx
	leaq	LC323(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_puts:                                               ## @string_puts
LBB7_0:
	pushq	%rbx
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB7_2
LBB7_1:
	movq	%rdi, %rbx
	movq	24(%rbx), %rdi
	call	_puts
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	popq	%rbx
	ret
LBB7_2:
	leaq	___func__.string_puts(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$154, %edx
	leaq	LC323(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_to_s:                                               ## @string_to_s
LBB8_0:
	subq	$8, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB8_2
LBB8_1:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	addq	$8, %rsp
	ret
LBB8_2:
	leaq	___func__.string_to_s(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$107, %edx
	leaq	LC323(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_clone:                                              ## @string_clone
LBB9_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_string_class:                                              ## @string_class
LBB10_0:
	subq	$8, %rsp
	leaq	LC222(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_string_add:                                                ## @string_add
LBB11_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB11_9
LBB11_1:                                                    ## %string_cstrC.exit
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB11_10
LBB11_2:
	movq	24(%rdi), %rbx
	cmpl	$0, (%rax)
	jg	LBB11_11
LBB11_3:
	call	_null_object
LBB11_4:                                                    ## %array_get_elementC.exit
	movzbl	12(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB11_12
LBB11_5:                                                    ## %string_cstrC.exit2
	movq	24(%rax), %r14
	movq	%rbx, %rdi
	call	_strlen
	movq	%rax, %r15
	movq	%r14, %rdi
	call	_strlen
	leaq	1(%r15,%rax), %rdi
	leaq	LC20(%rip), %rsi
	movl	$99, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB11_13
LBB11_6:
	movq	%rax, %r15
	movq	%rbx, %rdi
	call	_strlen
	leaq	1(%rax), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	$-1, %rcx
	call	___memcpy_chk
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	$-1, %rdx
	call	___strcat_chk
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB11_13
LBB11_7:
	movq	%rax, %rbx
	movl	$259, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%r15, 24(%rbx)
	call	_string_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB11_14
LBB11_8:                                                    ## %string_object_nocopy.exit
	movq	%rax, 16(%rbx)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB11_9:
	leaq	___func__.string_add(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$94, %edx
	leaq	LC323(%rip), %rcx
	call	___assert_rtn
LBB11_10:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB11_11:
	movq	8(%rax), %rax
	jmp	LBB11_4
LBB11_12:
	leaq	___func__.string_cstrC(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$88, %edx
	leaq	LC121(%rip), %rcx
	call	___assert_rtn
LBB11_13:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB11_14:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_eq:                                                 ## @string_eq
LBB12_0:
	pushq	%rbx
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB12_9
LBB12_1:
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB12_10
LBB12_2:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB12_11
LBB12_3:
	call	_null_object
LBB12_4:                                                    ## %array_get_elementC.exit
	testq	%rax, %rax
	je	LBB12_12
LBB12_5:
	cmpl	$364969966, 8(%rax)
	jne	LBB12_12
LBB12_6:
	movzbl	12(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB12_13
LBB12_7:
	movq	24(%rax), %rsi
	movq	24(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edi
	call	_bool_object
LBB12_8:
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB12_9:
	leaq	___func__.string_eq(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$112, %edx
	leaq	LC323(%rip), %rcx
	call	___assert_rtn
LBB12_10:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB12_11:
	movq	8(%rax), %rax
	jmp	LBB12_4
LBB12_12:                                                   ## %.thread
	leaq	___func__.string_eq(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$115, %edx
	leaq	LC525(%rip), %rcx
	call	___assert_rtn
LBB12_13:
	xorl	%edi, %edi
	call	_bool_object
	jmp	LBB12_8


	.align	4, 144
_string_neq:                                                ## @string_neq
LBB13_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB13_6
LBB13_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB13_7
LBB13_2:
	call	_null_object
LBB13_3:                                                    ## %array_get_elementC.exit
	movzbl	12(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB13_8
LBB13_4:
	movq	24(%rax), %rsi
	movq	24(%rbx), %rdi
	call	_strcmp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edi
	call	_bool_object
LBB13_5:
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB13_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB13_7:
	movq	8(%rax), %rax
	jmp	LBB13_3
LBB13_8:
	movl	$1, %edi
	call	_bool_object
	jmp	LBB13_5


	.align	4, 144
_string_size:                                               ## @string_size
LBB14_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$3, %eax
	jne	LBB14_4
LBB14_1:                                                    ## %string_cstrC.exit
	movq	24(%rdi), %rdi
	call	_strlen
	movq	%rax, %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB14_5
LBB14_2:
	movq	%rax, %r14
	movl	$258, 12(%r14)
	movl	$364969966, 8(%r14)
	movslq	%ebx, %rax
	movq	%rax, 24(%r14)
	call	_int_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB14_6
LBB14_3:                                                    ## %int_object.exit
	movq	%rax, 16(%r14)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB14_4:
	leaq	___func__.string_cstrC(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$88, %edx
	leaq	LC121(%rip), %rcx
	call	___assert_rtn
LBB14_5:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB14_6:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_string_object:                                             ## @string_object
LBB15_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	%rdi, %rbx
	movq	%rbx, %rdi
	call	_strlen
	leaq	1(%rax), %rdi
	leaq	LC20(%rip), %rsi
	movl	$72, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB15_4
LBB15_1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	call	_strlen
	leaq	1(%rax), %rdx
	movq	$-1, %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	call	___memcpy_chk
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB15_4
LBB15_2:
	movq	%rax, %rbx
	movl	$259, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%r14, 24(%rbx)
	call	_string_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB15_5
LBB15_3:                                                    ## %string_object_nocopy.exit
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB15_4:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB15_5:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_null_object:                                               ## @null_object
LBB16_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_null_object.cached_null(%rip), %rax
	testq	%rax, %rax
	jne	LBB16_80
LBB16_1:
	leaq	_null_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _null_object.cached_null(%rip)
	jne	LBB16_79
LBB16_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_3:
	movq	%rax, %rbx
	movl	$513, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _null_object.cached_null(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_4:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_null_object.cached_null(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_5:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_null_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB16_81
LBB16_6:                                                    ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB16_10
LBB16_7:
	testq	%rbx, %rbx
	je	LBB16_81
LBB16_8:
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_9:                                                    ## %object_set_delegate.exit.i15
	movq	%r14, 16(%rbx)
	jmp	LBB16_19
LBB16_10:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB16_16
	.align	4, 144
LBB16_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_16
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB16_15
LBB16_12:
	testb	$2, 8(%rdx)
	je	LBB16_14
LBB16_13:
	movq	%r14, 24(%rdx)
	jmp	LBB16_19
LBB16_14:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB16_19
LBB16_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_16
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB16_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB16_11
LBB16_17:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_18:                                                   ## %mem_alloc.exit.i18
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB16_19:                                                   ## %object_set_slot.exit19
	movq	_null_object.cached_null(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_20:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_null_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB16_81
LBB16_21:                                                   ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB16_25
LBB16_22:
	testq	%rbx, %rbx
	je	LBB16_81
LBB16_23:
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_24:                                                   ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB16_34
LBB16_25:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB16_31
	.align	4, 144
LBB16_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_31
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB16_30
LBB16_27:
	testb	$2, 8(%rdx)
	je	LBB16_29
LBB16_28:
	movq	%r14, 24(%rdx)
	jmp	LBB16_34
LBB16_29:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB16_34
LBB16_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_31
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB16_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB16_26
LBB16_32:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_33:                                                   ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB16_34:                                                   ## %object_set_slot.exit40
	movq	_null_object.cached_null(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_35:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_null_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB16_81
LBB16_36:                                                   ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB16_40
LBB16_37:
	testq	%rbx, %rbx
	je	LBB16_81
LBB16_38:
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_39:                                                   ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB16_49
LBB16_40:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB16_46
	.align	4, 144
LBB16_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_46
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB16_45
LBB16_42:
	testb	$2, 8(%rdx)
	je	LBB16_44
LBB16_43:
	movq	%r14, 24(%rdx)
	jmp	LBB16_49
LBB16_44:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB16_49
LBB16_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_46
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB16_46:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB16_41
LBB16_47:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_48:                                                   ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB16_49:                                                   ## %object_set_slot.exit28
	movq	_null_object.cached_null(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_50:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_null_neq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB16_81
LBB16_51:                                                   ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_neq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB16_55
LBB16_52:
	testq	%rbx, %rbx
	je	LBB16_81
LBB16_53:
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_54:                                                   ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB16_64
LBB16_55:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB16_61
	.align	4, 144
LBB16_56:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_61
                                                            ## Inner Loop
	leaq	___sym_neq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB16_60
LBB16_57:
	testb	$2, 8(%rdx)
	je	LBB16_59
LBB16_58:
	movq	%r14, 24(%rdx)
	jmp	LBB16_64
LBB16_59:
	leaq	LC7(%rip), %rdi
	leaq	___sym_neq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB16_64
LBB16_60:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_61
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB16_61:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB16_56
LBB16_62:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_63:                                                   ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_neq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB16_64:                                                   ## %object_set_slot.exit13
	movq	_null_object.cached_null(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_65:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_null_eq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB16_81
LBB16_66:                                                   ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_eq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB16_70
LBB16_67:
	testq	%rbx, %rbx
	je	LBB16_81
LBB16_68:
	cmpl	$364969966, 8(%rbx)
	jne	LBB16_81
LBB16_69:                                                   ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB16_79
LBB16_70:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB16_76
	.align	4, 144
LBB16_71:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_76
                                                            ## Inner Loop
	leaq	___sym_eq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB16_75
LBB16_72:
	testb	$2, 8(%rdx)
	je	LBB16_74
LBB16_73:
	movq	%r14, 24(%rdx)
	jmp	LBB16_79
LBB16_74:
	leaq	LC7(%rip), %rdi
	leaq	___sym_eq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB16_79
LBB16_75:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB16_76
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB16_76:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB16_71
LBB16_77:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB16_82
LBB16_78:                                                   ## %mem_alloc.exit.i1
	movl	$0, 8(%rax)
	leaq	___sym_eq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB16_79:                                                   ## %object_set_slot.exit
	leaq	_null_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_null_object.cached_null(%rip), %rax
LBB16_80:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB16_81:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB16_82:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_null_to_s:                                                 ## @null_to_s
LBB17_0:
	subq	$8, %rsp
	leaq	LC27(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_null_class:                                                ## @null_class
LBB18_0:
	subq	$8, %rsp
	leaq	LC27(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_null_clone:                                                ## @null_clone
LBB19_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_null_neq:                                                  ## @null_neq
LBB20_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB20_4
LBB20_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB20_5
LBB20_2:
	call	_null_object
LBB20_3:                                                    ## %array_get_elementC.exit
	cmpq	%rbx, %rax
	setne	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB20_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB20_5:
	movq	8(%rax), %rax
	jmp	LBB20_3


	.align	4, 144
_null_eq:                                                   ## @null_eq
LBB21_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB21_4
LBB21_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB21_5
LBB21_2:
	call	_null_object
LBB21_3:                                                    ## %array_get_elementC.exit
	cmpq	%rbx, %rax
	sete	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB21_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB21_5:
	movq	8(%rax), %rax
	jmp	LBB21_3


	.align	4, 144
_null_wrapped:                                              ## @null_wrapped
LBB22_0:
	pushq	%rbx
	xorl	%ebx, %ebx
	call	_null_object
	movq	%rbx, %rdx
	popq	%rbx
	ret


	.align	4, 144
_closure_prototype:                                         ## @closure_prototype
LBB23_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_closure_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB23_50
LBB23_1:
	leaq	_closure_prototype_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _closure_prototype.prototype(%rip)
	jne	LBB23_49
LBB23_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_3:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _closure_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB23_51
LBB23_4:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_closure_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_5:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_closure_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB23_51
LBB23_6:                                                    ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB23_10
LBB23_7:
	testq	%rbx, %rbx
	je	LBB23_51
LBB23_8:
	cmpl	$364969966, 8(%rbx)
	jne	LBB23_51
LBB23_9:                                                    ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB23_19
LBB23_10:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB23_16
	.align	4, 144
LBB23_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_16
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB23_15
LBB23_12:
	testb	$2, 8(%rdx)
	je	LBB23_14
LBB23_13:
	movq	%r14, 24(%rdx)
	jmp	LBB23_19
LBB23_14:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB23_19
LBB23_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_16
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB23_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB23_11
LBB23_17:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_18:                                                   ## %mem_alloc.exit.i4
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB23_19:                                                   ## %object_set_slot.exit
	movq	_closure_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_20:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_closure_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB23_51
LBB23_21:                                                   ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB23_25
LBB23_22:
	testq	%rbx, %rbx
	je	LBB23_51
LBB23_23:
	cmpl	$364969966, 8(%rbx)
	jne	LBB23_51
LBB23_24:                                                   ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB23_34
LBB23_25:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB23_31
	.align	4, 144
LBB23_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_31
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB23_30
LBB23_27:
	testb	$2, 8(%rdx)
	je	LBB23_29
LBB23_28:
	movq	%r14, 24(%rdx)
	jmp	LBB23_34
LBB23_29:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB23_34
LBB23_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_31
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB23_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB23_26
LBB23_32:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_33:                                                   ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB23_34:                                                   ## %object_set_slot.exit13
	movq	_closure_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_35:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_closure_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB23_51
LBB23_36:                                                   ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB23_40
LBB23_37:
	testq	%rbx, %rbx
	je	LBB23_51
LBB23_38:
	cmpl	$364969966, 8(%rbx)
	jne	LBB23_51
LBB23_39:                                                   ## %object_set_delegate.exit.i18
	movq	%r14, 16(%rbx)
	jmp	LBB23_49
LBB23_40:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB23_46
	.align	4, 144
LBB23_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_46
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB23_45
LBB23_42:
	testb	$2, 8(%rdx)
	je	LBB23_44
LBB23_43:
	movq	%r14, 24(%rdx)
	jmp	LBB23_49
LBB23_44:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB23_49
LBB23_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB23_46
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB23_46:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB23_41
LBB23_47:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB23_52
LBB23_48:                                                   ## %mem_alloc.exit.i21
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB23_49:                                                   ## %object_set_slot.exit22
	leaq	_closure_prototype_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_closure_prototype.prototype(%rip), %rax
LBB23_50:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB23_51:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB23_52:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_closure_to_s:                                              ## @closure_to_s
LBB24_0:
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %r8
	leaq	8(%rsp), %rbx
	xorl	%r14d, %r14d
	movq	$-1, %rdx
	leaq	LC434(%rip), %rcx
	xorb	%al, %al
	movq	%rbx, %rdi
	movl	$0, %esi
	call	___sprintf_chk
	movq	%rbx, %rdi
	call	_string_object
	movq	%r14, %rdx
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	ret


	.align	4, 144
_closure_clone:                                             ## @closure_clone
LBB25_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_closure_class:                                             ## @closure_class
LBB26_0:
	subq	$8, %rsp
	leaq	LC333(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_closure_object_place:                                      ## @closure_object_place
LBB27_0:
	pushq	%rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB27_3
LBB27_1:
	movq	%rax, %rbx
	movl	$260, 12(%rbx)
	movl	$364969966, 8(%rbx)
	call	_closure_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB27_4
LBB27_2:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	ret
LBB27_3:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB27_4:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_prototype:                                             ## @int_prototype
LBB28_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_int_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB28_230
LBB28_1:
	leaq	_int_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _int_prototype.prototype(%rip)
	jne	LBB28_229
LBB28_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_3:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _int_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_4:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_5:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_6:                                                    ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_10
LBB28_7:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_8:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_9:                                                    ## %object_set_delegate.exit.i15
	movq	%r14, 16(%rbx)
	jmp	LBB28_19
LBB28_10:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_16
	.align	4, 144
LBB28_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_16
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_15
LBB28_12:
	testb	$2, 8(%rdx)
	je	LBB28_14
LBB28_13:
	movq	%r14, 24(%rdx)
	jmp	LBB28_19
LBB28_14:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_19
LBB28_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_16
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_11
LBB28_17:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_18:                                                   ## %mem_alloc.exit.i18
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_19:                                                   ## %object_set_slot.exit19
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_20:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_21:                                                   ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_25
LBB28_22:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_23:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_24:                                                   ## %object_set_delegate.exit.i42
	movq	%r14, 16(%rbx)
	jmp	LBB28_34
LBB28_25:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_31
	.align	4, 144
LBB28_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_31
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_30
LBB28_27:
	testb	$2, 8(%rdx)
	je	LBB28_29
LBB28_28:
	movq	%r14, 24(%rdx)
	jmp	LBB28_34
LBB28_29:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_34
LBB28_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_31
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_26
LBB28_32:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_33:                                                   ## %mem_alloc.exit.i45
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_34:                                                   ## %object_set_slot.exit46
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_35:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_36:                                                   ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_40
LBB28_37:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_38:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_39:                                                   ## %object_set_delegate.exit.i69
	movq	%r14, 16(%rbx)
	jmp	LBB28_49
LBB28_40:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_46
	.align	4, 144
LBB28_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_46
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_45
LBB28_42:
	testb	$2, 8(%rdx)
	je	LBB28_44
LBB28_43:
	movq	%r14, 24(%rdx)
	jmp	LBB28_49
LBB28_44:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_49
LBB28_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_46
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_46:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_41
LBB28_47:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_48:                                                   ## %mem_alloc.exit.i72
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_49:                                                   ## %object_set_slot.exit73
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_50:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_lt(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_51:                                                   ## %closure_object.exit30
	movq	%rax, 16(%r14)
	leaq	___sym_lt(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_55
LBB28_52:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_53:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_54:                                                   ## %object_set_delegate.exit.i96
	movq	%r14, 16(%rbx)
	jmp	LBB28_64
LBB28_55:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_61
	.align	4, 144
LBB28_56:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_61
                                                            ## Inner Loop
	leaq	___sym_lt(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_60
LBB28_57:
	testb	$2, 8(%rdx)
	je	LBB28_59
LBB28_58:
	movq	%r14, 24(%rdx)
	jmp	LBB28_64
LBB28_59:
	leaq	LC7(%rip), %rdi
	leaq	___sym_lt(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_64
LBB28_60:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_61
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_61:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_56
LBB28_62:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_63:                                                   ## %mem_alloc.exit.i99
	movl	$0, 8(%rax)
	leaq	___sym_lt(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_64:                                                   ## %object_set_slot.exit100
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_65:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_le(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_66:                                                   ## %closure_object.exit40
	movq	%rax, 16(%r14)
	leaq	___sym_le(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_70
LBB28_67:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_68:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_69:                                                   ## %object_set_delegate.exit.i123
	movq	%r14, 16(%rbx)
	jmp	LBB28_79
LBB28_70:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_76
	.align	4, 144
LBB28_71:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_76
                                                            ## Inner Loop
	leaq	___sym_le(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_75
LBB28_72:
	testb	$2, 8(%rdx)
	je	LBB28_74
LBB28_73:
	movq	%r14, 24(%rdx)
	jmp	LBB28_79
LBB28_74:
	leaq	LC7(%rip), %rdi
	leaq	___sym_le(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_79
LBB28_75:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_76
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_76:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_71
LBB28_77:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_78:                                                   ## %mem_alloc.exit.i126
	movl	$0, 8(%rax)
	leaq	___sym_le(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_79:                                                   ## %object_set_slot.exit127
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_80:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_gt(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_81:                                                   ## %closure_object.exit50
	movq	%rax, 16(%r14)
	leaq	___sym_gt(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_85
LBB28_82:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_83:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_84:                                                   ## %object_set_delegate.exit.i117
	movq	%r14, 16(%rbx)
	jmp	LBB28_94
LBB28_85:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_91
	.align	4, 144
LBB28_86:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_91
                                                            ## Inner Loop
	leaq	___sym_gt(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_90
LBB28_87:
	testb	$2, 8(%rdx)
	je	LBB28_89
LBB28_88:
	movq	%r14, 24(%rdx)
	jmp	LBB28_94
LBB28_89:
	leaq	LC7(%rip), %rdi
	leaq	___sym_gt(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_94
LBB28_90:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_91
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_91:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_86
LBB28_92:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_93:                                                   ## %mem_alloc.exit.i120
	movl	$0, 8(%rax)
	leaq	___sym_gt(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_94:                                                   ## %object_set_slot.exit121
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_95:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_ge(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_96:                                                   ## %closure_object.exit60
	movq	%rax, 16(%r14)
	leaq	___sym_ge(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_100
LBB28_97:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_98:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_99:                                                   ## %object_set_delegate.exit.i105
	movq	%r14, 16(%rbx)
	jmp	LBB28_109
LBB28_100:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_106
	.align	4, 144
LBB28_101:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_106
                                                            ## Inner Loop
	leaq	___sym_ge(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_105
LBB28_102:
	testb	$2, 8(%rdx)
	je	LBB28_104
LBB28_103:
	movq	%r14, 24(%rdx)
	jmp	LBB28_109
LBB28_104:
	leaq	LC7(%rip), %rdi
	leaq	___sym_ge(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_109
LBB28_105:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_106
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_106:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_101
LBB28_107:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_108:                                                  ## %mem_alloc.exit.i108
	movl	$0, 8(%rax)
	leaq	___sym_ge(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_109:                                                  ## %object_set_slot.exit109
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_110:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_eq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_111:                                                  ## %closure_object.exit70
	movq	%rax, 16(%r14)
	leaq	___sym_eq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_115
LBB28_112:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_113:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_114:                                                  ## %object_set_delegate.exit.i90
	movq	%r14, 16(%rbx)
	jmp	LBB28_124
LBB28_115:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_121
	.align	4, 144
LBB28_116:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_121
                                                            ## Inner Loop
	leaq	___sym_eq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_120
LBB28_117:
	testb	$2, 8(%rdx)
	je	LBB28_119
LBB28_118:
	movq	%r14, 24(%rdx)
	jmp	LBB28_124
LBB28_119:
	leaq	LC7(%rip), %rdi
	leaq	___sym_eq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_124
LBB28_120:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_121
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_121:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_116
LBB28_122:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_123:                                                  ## %mem_alloc.exit.i93
	movl	$0, 8(%rax)
	leaq	___sym_eq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_124:                                                  ## %object_set_slot.exit94
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_125:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_neq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_126:                                                  ## %closure_object.exit65
	movq	%rax, 16(%r14)
	leaq	___sym_neq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_130
LBB28_127:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_128:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_129:                                                  ## %object_set_delegate.exit.i78
	movq	%r14, 16(%rbx)
	jmp	LBB28_139
LBB28_130:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_136
	.align	4, 144
LBB28_131:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_136
                                                            ## Inner Loop
	leaq	___sym_neq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_135
LBB28_132:
	testb	$2, 8(%rdx)
	je	LBB28_134
LBB28_133:
	movq	%r14, 24(%rdx)
	jmp	LBB28_139
LBB28_134:
	leaq	LC7(%rip), %rdi
	leaq	___sym_neq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_139
LBB28_135:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_136
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_136:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_131
LBB28_137:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_138:                                                  ## %mem_alloc.exit.i81
	movl	$0, 8(%rax)
	leaq	___sym_neq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_139:                                                  ## %object_set_slot.exit82
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_140:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_add(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_141:                                                  ## %closure_object.exit55
	movq	%rax, 16(%r14)
	leaq	___sym_add(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_145
LBB28_142:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_143:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_144:                                                  ## %object_set_delegate.exit.i63
	movq	%r14, 16(%rbx)
	jmp	LBB28_154
LBB28_145:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_151
	.align	4, 144
LBB28_146:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_151
                                                            ## Inner Loop
	leaq	___sym_add(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_150
LBB28_147:
	testb	$2, 8(%rdx)
	je	LBB28_149
LBB28_148:
	movq	%r14, 24(%rdx)
	jmp	LBB28_154
LBB28_149:
	leaq	LC7(%rip), %rdi
	leaq	___sym_add(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_154
LBB28_150:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_151
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_151:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_146
LBB28_152:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_153:                                                  ## %mem_alloc.exit.i66
	movl	$0, 8(%rax)
	leaq	___sym_add(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_154:                                                  ## %object_set_slot.exit67
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_155:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_sub(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_156:                                                  ## %closure_object.exit45
	movq	%rax, 16(%r14)
	leaq	___sym_sub(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_160
LBB28_157:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_158:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_159:                                                  ## %object_set_delegate.exit.i51
	movq	%r14, 16(%rbx)
	jmp	LBB28_169
LBB28_160:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_166
	.align	4, 144
LBB28_161:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_166
                                                            ## Inner Loop
	leaq	___sym_sub(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_165
LBB28_162:
	testb	$2, 8(%rdx)
	je	LBB28_164
LBB28_163:
	movq	%r14, 24(%rdx)
	jmp	LBB28_169
LBB28_164:
	leaq	LC7(%rip), %rdi
	leaq	___sym_sub(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_169
LBB28_165:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_166
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_166:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_161
LBB28_167:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_168:                                                  ## %mem_alloc.exit.i54
	movl	$0, 8(%rax)
	leaq	___sym_sub(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_169:                                                  ## %object_set_slot.exit55
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_170:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_mul(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_171:                                                  ## %closure_object.exit35
	movq	%rax, 16(%r14)
	leaq	___sym_mul(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_175
LBB28_172:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_173:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_174:                                                  ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB28_184
LBB28_175:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_181
	.align	4, 144
LBB28_176:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_181
                                                            ## Inner Loop
	leaq	___sym_mul(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_180
LBB28_177:
	testb	$2, 8(%rdx)
	je	LBB28_179
LBB28_178:
	movq	%r14, 24(%rdx)
	jmp	LBB28_184
LBB28_179:
	leaq	LC7(%rip), %rdi
	leaq	___sym_mul(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_184
LBB28_180:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_181
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_181:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_176
LBB28_182:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_183:                                                  ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_mul(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_184:                                                  ## %object_set_slot.exit40
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_185:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_div(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_186:                                                  ## %closure_object.exit25
	movq	%rax, 16(%r14)
	leaq	___sym_div(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_190
LBB28_187:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_188:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_189:                                                  ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB28_199
LBB28_190:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_196
	.align	4, 144
LBB28_191:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_196
                                                            ## Inner Loop
	leaq	___sym_div(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_195
LBB28_192:
	testb	$2, 8(%rdx)
	je	LBB28_194
LBB28_193:
	movq	%r14, 24(%rdx)
	jmp	LBB28_199
LBB28_194:
	leaq	LC7(%rip), %rdi
	leaq	___sym_div(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_199
LBB28_195:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_196
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_196:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_191
LBB28_197:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_198:                                                  ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_div(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_199:                                                  ## %object_set_slot.exit28
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_200:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_rem(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_201:                                                  ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_rem(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_205
LBB28_202:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_203:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_204:                                                  ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB28_214
LBB28_205:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_211
	.align	4, 144
LBB28_206:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_211
                                                            ## Inner Loop
	leaq	___sym_rem(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_210
LBB28_207:
	testb	$2, 8(%rdx)
	je	LBB28_209
LBB28_208:
	movq	%r14, 24(%rdx)
	jmp	LBB28_214
LBB28_209:
	leaq	LC7(%rip), %rdi
	leaq	___sym_rem(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_214
LBB28_210:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_211
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_211:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_206
LBB28_212:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_213:                                                  ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_rem(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_214:                                                  ## %object_set_slot.exit13
	movq	_int_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_215:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_int_succ(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB28_231
LBB28_216:                                                  ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_succ(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB28_220
LBB28_217:
	testq	%rbx, %rbx
	je	LBB28_231
LBB28_218:
	cmpl	$364969966, 8(%rbx)
	jne	LBB28_231
LBB28_219:                                                  ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB28_229
LBB28_220:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB28_226
	.align	4, 144
LBB28_221:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_226
                                                            ## Inner Loop
	leaq	___sym_succ(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB28_225
LBB28_222:
	testb	$2, 8(%rdx)
	je	LBB28_224
LBB28_223:
	movq	%r14, 24(%rdx)
	jmp	LBB28_229
LBB28_224:
	leaq	LC7(%rip), %rdi
	leaq	___sym_succ(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB28_229
LBB28_225:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB28_226
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB28_226:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB28_221
LBB28_227:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB28_232
LBB28_228:                                                  ## %mem_alloc.exit.i1
	movl	$0, 8(%rax)
	leaq	___sym_succ(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB28_229:                                                  ## %object_set_slot.exit
	leaq	_int_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_int_prototype.prototype(%rip), %rax
LBB28_230:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB28_231:                                                  ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB28_232:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_to_s:                                                  ## @int_to_s
LBB29_0:
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$2, %eax
	jne	LBB29_2
LBB29_1:
	movl	24(%rdi), %r8d
	leaq	8(%rsp), %rbx
	xorl	%r14d, %r14d
	movq	$-1, %rdx
	leaq	LC340(%rip), %rcx
	xorb	%al, %al
	movq	%rbx, %rdi
	movl	$0, %esi
	call	___sprintf_chk
	movq	%rbx, %rdi
	call	_string_object
	movq	%r14, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB29_2:
	leaq	___func__.int_to_s(%rip), %rdi
	leaq	LC138(%rip), %rsi
	movl	$97, %edx
	leaq	LC239(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_class:                                                 ## @int_class
LBB30_0:
	subq	$8, %rsp
	leaq	LC37(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_int_clone:                                                 ## @int_clone
LBB31_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_int_lt:                                                    ## @int_lt
LBB32_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB32_4
LBB32_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB32_5
LBB32_2:
	call	_null_object
LBB32_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setl	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB32_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB32_5:
	movq	8(%rax), %rax
	jmp	LBB32_3


	.align	4, 144
_int_le:                                                    ## @int_le
LBB33_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB33_4
LBB33_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB33_5
LBB33_2:
	call	_null_object
LBB33_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setle	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB33_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB33_5:
	movq	8(%rax), %rax
	jmp	LBB33_3


	.align	4, 144
_int_gt:                                                    ## @int_gt
LBB34_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB34_4
LBB34_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB34_5
LBB34_2:
	call	_null_object
LBB34_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setg	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB34_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB34_5:
	movq	8(%rax), %rax
	jmp	LBB34_3


	.align	4, 144
_int_ge:                                                    ## @int_ge
LBB35_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB35_4
LBB35_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB35_5
LBB35_2:
	call	_null_object
LBB35_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setge	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB35_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB35_5:
	movq	8(%rax), %rax
	jmp	LBB35_3


	.align	4, 144
_int_eq:                                                    ## @int_eq
LBB36_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB36_6
LBB36_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB36_7
LBB36_2:
	call	_null_object
LBB36_3:                                                    ## %array_get_elementC.exit
	movzbl	12(%rax), %ecx
	cmpl	$2, %ecx
	jne	LBB36_8
LBB36_4:
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	sete	%al
	movzbl	%al, %edi
LBB36_5:
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB36_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB36_7:
	movq	8(%rax), %rax
	jmp	LBB36_3
LBB36_8:                                                    ## %array_get_elementC.exit._crit_edge
	xorl	%edi, %edi
	jmp	LBB36_5


	.align	4, 144
_int_neq:                                                   ## @int_neq
LBB37_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB37_6
LBB37_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB37_7
LBB37_2:
	call	_null_object
LBB37_3:                                                    ## %array_get_elementC.exit
	movzbl	12(%rax), %ecx
	cmpl	$2, %ecx
	jne	LBB37_8
LBB37_4:
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setne	%al
	movzbl	%al, %edi
LBB37_5:
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB37_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB37_7:
	movq	8(%rax), %rax
	jmp	LBB37_3
LBB37_8:                                                    ## %array_get_elementC.exit._crit_edge
	xorl	%edi, %edi
	jmp	LBB37_5


	.align	4, 144
_int_add:                                                   ## @int_add
LBB38_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB38_6
LBB38_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB38_7
LBB38_2:
	call	_null_object
LBB38_3:                                                    ## %array_get_elementC.exit
	movq	24(%rax), %r14
	movq	24(%rbx), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB38_8
LBB38_4:
	movq	%rax, %r15
	movl	$258, 12(%r15)
	movl	$364969966, 8(%r15)
	addl	%r14d, %ebx
	movslq	%ebx, %rax
	movq	%rax, 24(%r15)
	call	_int_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB38_9
LBB38_5:                                                    ## %int_object.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB38_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB38_7:
	movq	8(%rax), %rax
	jmp	LBB38_3
LBB38_8:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB38_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_sub:                                                   ## @int_sub
LBB39_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB39_6
LBB39_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB39_7
LBB39_2:
	call	_null_object
LBB39_3:                                                    ## %array_get_elementC.exit
	movq	24(%rax), %r14
	movq	24(%rbx), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB39_8
LBB39_4:
	movq	%rax, %r15
	movl	$258, 12(%r15)
	movl	$364969966, 8(%r15)
	subl	%r14d, %ebx
	movslq	%ebx, %rax
	movq	%rax, 24(%r15)
	call	_int_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB39_9
LBB39_5:                                                    ## %int_object.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB39_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB39_7:
	movq	8(%rax), %rax
	jmp	LBB39_3
LBB39_8:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB39_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_mul:                                                   ## @int_mul
LBB40_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB40_6
LBB40_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB40_7
LBB40_2:
	call	_null_object
LBB40_3:                                                    ## %array_get_elementC.exit
	movq	24(%rax), %r14
	movq	24(%rbx), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB40_8
LBB40_4:
	movq	%rax, %r15
	movl	$258, 12(%r15)
	movl	$364969966, 8(%r15)
	imull	%r14d, %ebx
	movslq	%ebx, %rax
	movq	%rax, 24(%r15)
	call	_int_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB40_9
LBB40_5:                                                    ## %int_object.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB40_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB40_7:
	movq	8(%rax), %rax
	jmp	LBB40_3
LBB40_8:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB40_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_div:                                                   ## @int_div
LBB41_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB41_6
LBB41_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB41_7
LBB41_2:
	call	_null_object
LBB41_3:                                                    ## %array_get_elementC.exit
	movq	24(%rax), %r14
	movq	24(%rbx), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB41_8
LBB41_4:
	movq	%rax, %r15
	movl	$258, 12(%r15)
	movl	$364969966, 8(%r15)
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	movslq	%eax, %rax
	movq	%rax, 24(%r15)
	call	_int_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB41_9
LBB41_5:                                                    ## %int_object.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB41_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB41_7:
	movq	8(%rax), %rax
	jmp	LBB41_3
LBB41_8:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB41_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_rem:                                                   ## @int_rem
LBB42_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB42_6
LBB42_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB42_7
LBB42_2:
	call	_null_object
LBB42_3:                                                    ## %array_get_elementC.exit
	movq	24(%rax), %r14
	movq	24(%rbx), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB42_8
LBB42_4:
	movq	%rax, %r15
	movl	$258, 12(%r15)
	movl	$364969966, 8(%r15)
	movl	%ebx, %eax
	cltd
	idivl	%r14d
	movslq	%edx, %rax
	movq	%rax, 24(%r15)
	call	_int_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB42_9
LBB42_5:                                                    ## %int_object.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB42_6:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB42_7:
	movq	8(%rax), %rax
	jmp	LBB42_3
LBB42_8:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB42_9:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_int_succ:                                                  ## @int_succ
LBB43_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdi), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB43_3
LBB43_1:
	movq	%rax, %r14
	movl	$258, 12(%r14)
	movl	$364969966, 8(%r14)
	incl	%ebx
	movslq	%ebx, %rax
	movq	%rax, 24(%r14)
	call	_int_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB43_4
LBB43_2:                                                    ## %int_object.exit
	movq	%rax, 16(%r14)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB43_3:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB43_4:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_bool_prototype:                                            ## @bool_prototype
LBB44_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_bool_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB44_124
LBB44_1:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_2:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _bool_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_3:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_4:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_5:                                                    ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_9
LBB44_6:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_7:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_8:                                                    ## %object_set_delegate.exit.i15
	movq	%r14, 16(%rbx)
	jmp	LBB44_18
LBB44_9:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_15
	.align	4, 144
LBB44_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_15
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_14
LBB44_11:
	testb	$2, 8(%rdx)
	je	LBB44_13
LBB44_12:
	movq	%r14, 24(%rdx)
	jmp	LBB44_18
LBB44_13:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_18
LBB44_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_15
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_10
LBB44_16:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_17:                                                   ## %mem_alloc.exit.i18
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_18:                                                   ## %object_set_slot.exit19
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_19:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_20:                                                   ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_24
LBB44_21:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_22:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_23:                                                   ## %object_set_delegate.exit.i42
	movq	%r14, 16(%rbx)
	jmp	LBB44_33
LBB44_24:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_30
	.align	4, 144
LBB44_25:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_30
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_29
LBB44_26:
	testb	$2, 8(%rdx)
	je	LBB44_28
LBB44_27:
	movq	%r14, 24(%rdx)
	jmp	LBB44_33
LBB44_28:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_33
LBB44_29:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_30
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_25
LBB44_31:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_32:                                                   ## %mem_alloc.exit.i45
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_33:                                                   ## %object_set_slot.exit46
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_34:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_35:                                                   ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_39
LBB44_36:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_37:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_38:                                                   ## %object_set_delegate.exit.i63
	movq	%r14, 16(%rbx)
	jmp	LBB44_48
LBB44_39:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_45
	.align	4, 144
LBB44_40:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_45
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_44
LBB44_41:
	testb	$2, 8(%rdx)
	je	LBB44_43
LBB44_42:
	movq	%r14, 24(%rdx)
	jmp	LBB44_48
LBB44_43:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_48
LBB44_44:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_45
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_40
LBB44_46:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_47:                                                   ## %mem_alloc.exit.i66
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_48:                                                   ## %object_set_slot.exit67
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_49:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_andand(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_50:                                                   ## %closure_object.exit30
	movq	%rax, 16(%r14)
	leaq	___sym_andand(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_54
LBB44_51:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_52:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_53:                                                   ## %object_set_delegate.exit.i51
	movq	%r14, 16(%rbx)
	jmp	LBB44_63
LBB44_54:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_60
	.align	4, 144
LBB44_55:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_60
                                                            ## Inner Loop
	leaq	___sym_andand(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_59
LBB44_56:
	testb	$2, 8(%rdx)
	je	LBB44_58
LBB44_57:
	movq	%r14, 24(%rdx)
	jmp	LBB44_63
LBB44_58:
	leaq	LC7(%rip), %rdi
	leaq	___sym_andand(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_63
LBB44_59:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_60
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_60:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_55
LBB44_61:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_62:                                                   ## %mem_alloc.exit.i54
	movl	$0, 8(%rax)
	leaq	___sym_andand(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_63:                                                   ## %object_set_slot.exit55
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_64:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_oror(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_65:                                                   ## %closure_object.exit35
	movq	%rax, 16(%r14)
	leaq	___sym_oror(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_69
LBB44_66:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_67:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_68:                                                   ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB44_78
LBB44_69:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_75
	.align	4, 144
LBB44_70:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_75
                                                            ## Inner Loop
	leaq	___sym_oror(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_74
LBB44_71:
	testb	$2, 8(%rdx)
	je	LBB44_73
LBB44_72:
	movq	%r14, 24(%rdx)
	jmp	LBB44_78
LBB44_73:
	leaq	LC7(%rip), %rdi
	leaq	___sym_oror(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_78
LBB44_74:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_75
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_75:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_70
LBB44_76:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_77:                                                   ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_oror(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_78:                                                   ## %object_set_slot.exit40
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_79:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_not(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_80:                                                   ## %closure_object.exit25
	movq	%rax, 16(%r14)
	leaq	___sym_not(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_84
LBB44_81:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_82:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_83:                                                   ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB44_93
LBB44_84:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_90
	.align	4, 144
LBB44_85:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_90
                                                            ## Inner Loop
	leaq	___sym_not(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_89
LBB44_86:
	testb	$2, 8(%rdx)
	je	LBB44_88
LBB44_87:
	movq	%r14, 24(%rdx)
	jmp	LBB44_93
LBB44_88:
	leaq	LC7(%rip), %rdi
	leaq	___sym_not(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_93
LBB44_89:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_90
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_90:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_85
LBB44_91:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_92:                                                   ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_not(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_93:                                                   ## %object_set_slot.exit28
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_94:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_eq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_95:                                                   ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_eq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_99
LBB44_96:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_97:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_98:                                                   ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB44_108
LBB44_99:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_105
	.align	4, 144
LBB44_100:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_105
                                                            ## Inner Loop
	leaq	___sym_eq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_104
LBB44_101:
	testb	$2, 8(%rdx)
	je	LBB44_103
LBB44_102:
	movq	%r14, 24(%rdx)
	jmp	LBB44_108
LBB44_103:
	leaq	LC7(%rip), %rdi
	leaq	___sym_eq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_108
LBB44_104:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_105
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_105:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_100
LBB44_106:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_107:                                                  ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_eq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_108:                                                  ## %object_set_slot.exit13
	movq	_bool_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_109:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_bool_neq(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB44_125
LBB44_110:                                                  ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_neq(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB44_114
LBB44_111:
	testq	%rbx, %rbx
	je	LBB44_125
LBB44_112:
	cmpl	$364969966, 8(%rbx)
	jne	LBB44_125
LBB44_113:                                                  ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB44_123
LBB44_114:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB44_120
	.align	4, 144
LBB44_115:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_120
                                                            ## Inner Loop
	leaq	___sym_neq(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB44_119
LBB44_116:
	testb	$2, 8(%rdx)
	je	LBB44_118
LBB44_117:
	movq	%r14, 24(%rdx)
	jmp	LBB44_123
LBB44_118:
	leaq	LC7(%rip), %rdi
	leaq	___sym_neq(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB44_123
LBB44_119:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB44_120
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB44_120:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB44_115
LBB44_121:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB44_126
LBB44_122:                                                  ## %mem_alloc.exit.i1
	movl	$0, 8(%rax)
	leaq	___sym_neq(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB44_123:                                                  ## %object_set_slot.exit
	movq	_bool_prototype.prototype(%rip), %rax
LBB44_124:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB44_125:                                                  ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB44_126:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_bool_to_s:                                                 ## @bool_to_s
LBB45_0:
	subq	$8, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$6, %eax
	jne	LBB45_4
LBB45_1:
	cmpl	$0, 24(%rdi)
	jne	LBB45_5
LBB45_2:
	leaq	LC446(%rip), %rdi
	call	_string_object
LBB45_3:
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret
LBB45_4:
	leaq	___func__.bool_to_s(%rip), %rdi
	leaq	LC143(%rip), %rsi
	movl	$106, %edx
	leaq	LC244(%rip), %rcx
	call	___assert_rtn
LBB45_5:
	leaq	LC345(%rip), %rdi
	call	_string_object
	jmp	LBB45_3


	.align	4, 144
_bool_class:                                                ## @bool_class
LBB46_0:
	subq	$8, %rsp
	leaq	LC42(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_bool_clone:                                                ## @bool_clone
LBB47_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_bool_andand:                                               ## @bool_andand
LBB48_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB48_7
LBB48_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB48_8
LBB48_2:
	call	_null_object
LBB48_3:                                                    ## %array_get_elementC.exit
	cmpl	$0, 24(%rbx)
	je	LBB48_9
LBB48_4:
	movzbl	12(%rax), %ecx
	cmpl	$1, %ecx
	je	LBB48_9
LBB48_5:
	cmpl	$0, 24(%rax)
	setne	%al
	movzbl	%al, %edi
LBB48_6:                                                    ## %bool_get_value.exit
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB48_7:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB48_8:
	movq	8(%rax), %rax
	jmp	LBB48_3
LBB48_9:                                                    ## %array_get_elementC.exit.bool_get_value.exit_crit_edge
	xorl	%edi, %edi
	jmp	LBB48_6


	.align	4, 144
_bool_oror:                                                 ## @bool_oror
LBB49_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB49_7
LBB49_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB49_8
LBB49_2:
	call	_null_object
LBB49_3:                                                    ## %array_get_elementC.exit
	cmpl	$0, 24(%rbx)
	jne	LBB49_9
LBB49_4:
	movzbl	12(%rax), %ecx
	cmpl	$1, %ecx
	je	LBB49_10
LBB49_5:
	cmpl	$0, 24(%rax)
	setne	%al
	movzbl	%al, %edi
LBB49_6:                                                    ## %bool_get_value.exit
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB49_7:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB49_8:
	movq	8(%rax), %rax
	jmp	LBB49_3
LBB49_9:                                                    ## %array_get_elementC.exit.bool_get_value.exit_crit_edge
	movl	$1, %edi
	jmp	LBB49_6
LBB49_10:                                                   ## %.bool_get_value.exit_crit_edge
	xorl	%edi, %edi
	jmp	LBB49_6


	.align	4, 144
_bool_not:                                                  ## @bool_not
LBB50_0:
	pushq	%rbx
	cmpl	$0, 24(%rdi)
	sete	%al
	xorl	%ebx, %ebx
	movzbl	%al, %edi
	call	_bool_object
	movq	%rbx, %rdx
	popq	%rbx
	ret


	.align	4, 144
_bool_eq:                                                   ## @bool_eq
LBB51_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB51_4
LBB51_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB51_5
LBB51_2:
	call	_null_object
LBB51_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	sete	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB51_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB51_5:
	movq	8(%rax), %rax
	jmp	LBB51_3


	.align	4, 144
_bool_neq:                                                  ## @bool_neq
LBB52_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB52_4
LBB52_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB52_5
LBB52_2:
	call	_null_object
LBB52_3:                                                    ## %array_get_elementC.exit
	movl	24(%rax), %eax
	cmpl	%eax, 24(%rbx)
	setne	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB52_4:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB52_5:
	movq	8(%rax), %rax
	jmp	LBB52_3


	.align	4, 144
_bool_object:                                               ## @bool_object
LBB53_0:
	pushq	%rbx
	testl	%edi, %edi
	je	LBB53_9
LBB53_1:
	cmpq	$0, _bool_true.cached_true(%rip)
	jne	LBB53_8
LBB53_2:
	leaq	_bool_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _bool_true.cached_true(%rip)
	jne	LBB53_7
LBB53_3:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB53_18
LBB53_4:                                                    ## %object_alloc.exit
	movl	$262, 12(%rax)
	movl	$364969966, 8(%rax)
	movq	%rax, _bool_true.cached_true(%rip)
	movq	$1, 24(%rax)
	movq	_bool_true.cached_true(%rip), %rbx
	call	_bool_prototype
	testq	%rbx, %rbx
	je	LBB53_19
LBB53_5:
	cmpl	$364969966, 8(%rbx)
	jne	LBB53_19
LBB53_6:                                                    ## %object_set_delegate.exit.i
	movq	%rax, 16(%rbx)
LBB53_7:
	leaq	_bool_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
LBB53_8:                                                    ## %.bool_true.exit_crit_edge
	leaq	_bool_true.cached_true(%rip), %rax
	jmp	LBB53_17
LBB53_9:
	cmpq	$0, _bool_false.cached_false(%rip)
	jne	LBB53_16
LBB53_10:
	leaq	_bool_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _bool_false.cached_false(%rip)
	jne	LBB53_15
LBB53_11:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB53_18
LBB53_12:                                                   ## %object_alloc.exit3
	movl	$262, 12(%rax)
	movl	$364969966, 8(%rax)
	movq	%rax, _bool_false.cached_false(%rip)
	movq	$0, 24(%rax)
	movq	_bool_false.cached_false(%rip), %rbx
	call	_bool_prototype
	testq	%rbx, %rbx
	je	LBB53_19
LBB53_13:
	cmpl	$364969966, 8(%rbx)
	jne	LBB53_19
LBB53_14:                                                   ## %object_set_delegate.exit.i3
	movq	%rax, 16(%rbx)
LBB53_15:
	leaq	_bool_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
LBB53_16:                                                   ## %.bool_true.exit_crit_edge1
	leaq	_bool_false.cached_false(%rip), %rax
LBB53_17:                                                   ## %bool_true.exit
	movq	(%rax), %rax
	popq	%rbx
	ret
LBB53_18:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB53_19:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_object:                                              ## @array_object
LBB54_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	testl	%edi, %edi
	jne	LBB54_8
LBB54_1:
	movq	_empty_c(%rip), %rbx
	testq	%rbx, %rbx
	jne	LBB54_19
LBB54_2:
	leaq	_array_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _empty_c(%rip)
	jne	LBB54_7
LBB54_3:
	movl	$8, %edi
	leaq	LC52(%rip), %rsi
	movl	$109, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB54_17
LBB54_4:                                                    ## %mem_alloc.exit.i
	movq	%rax, %rbx
	movl	$0, (%rbx)
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB54_17
LBB54_5:
	movq	%rax, %r14
	movl	$263, 12(%r14)
	movl	$364969966, 8(%r14)
	movq	%r14, _empty_c(%rip)
	movq	%rbx, 24(%r14)
	call	_array_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB54_18
LBB54_6:                                                    ## %object_set_delegate.exit.i
	movq	%rax, 16(%r14)
LBB54_7:
	leaq	_array_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_empty_c(%rip), %rax
	jmp	LBB54_20
LBB54_8:
	movl	%edi, %r14d
	leal	1(%r14), %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	leaq	LC52(%rip), %rsi
	movl	$92, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB54_17
LBB54_9:                                                    ## %mem_alloc.exit
	movq	%rax, %r15
	movl	%r14d, (%r15)
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB54_17
LBB54_10:
	movq	%rax, %rbx
	movl	$263, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%r15, 24(%rbx)
	call	_array_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB54_18
LBB54_11:                                                   ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	xorl	%r15d, %r15d
	.align	4, 144
LBB54_12:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r14d, %r15d
	jae	LBB54_19
LBB54_13:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB54_12
                                                            ## Inner Loop
	call	_null_object
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB54_21
LBB54_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB54_12
                                                            ## Inner Loop
	testl	%r15d, %r15d
	js	LBB54_22
LBB54_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB54_12
                                                            ## Inner Loop
	cmpl	(%rcx), %r15d
	jge	LBB54_22
LBB54_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB54_12
                                                            ## Inner Loop
	incl	%r15d
	movslq	%r15d, %rdx
	movq	%rax, (%rcx,%rdx,8)
	jmp	LBB54_12
LBB54_17:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB54_18:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB54_19:                                                   ## %empty_array.exit
	movq	%rbx, %rax
LBB54_20:                                                   ## %empty_array.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB54_21:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB54_22:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_prototype:                                           ## @array_prototype
LBB55_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_array_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB55_185
LBB55_1:
	leaq	_array_cache_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _array_prototype.prototype(%rip)
	jne	LBB55_184
LBB55_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_3:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _array_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_4:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbx)
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_5:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_at(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_6:                                                    ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_at(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_10
LBB55_7:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_8:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_9:                                                    ## %object_set_delegate.exit.i15
	movq	%r14, 16(%rbx)
	jmp	LBB55_19
LBB55_10:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_16
	.align	4, 144
LBB55_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_16
                                                            ## Inner Loop
	leaq	___sym_at(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_15
LBB55_12:
	testb	$2, 8(%rdx)
	je	LBB55_14
LBB55_13:
	movq	%r14, 24(%rdx)
	jmp	LBB55_19
LBB55_14:
	leaq	LC7(%rip), %rdi
	leaq	___sym_at(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_19
LBB55_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_16
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_11
LBB55_17:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_18:                                                   ## %mem_alloc.exit.i18
	movl	$0, 8(%rax)
	leaq	___sym_at(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_19:                                                   ## %object_set_slot.exit19
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_20:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_21:                                                   ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_25
LBB55_22:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_23:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_24:                                                   ## %object_set_delegate.exit.i42
	movq	%r14, 16(%rbx)
	jmp	LBB55_34
LBB55_25:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_31
	.align	4, 144
LBB55_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_31
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_30
LBB55_27:
	testb	$2, 8(%rdx)
	je	LBB55_29
LBB55_28:
	movq	%r14, 24(%rdx)
	jmp	LBB55_34
LBB55_29:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_34
LBB55_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_31
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_26
LBB55_32:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_33:                                                   ## %mem_alloc.exit.i45
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_34:                                                   ## %object_set_slot.exit46
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_35:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_apply(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_36:                                                   ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_apply(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_40
LBB55_37:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_38:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_39:                                                   ## %object_set_delegate.exit.i69
	movq	%r14, 16(%rbx)
	jmp	LBB55_49
LBB55_40:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_46
	.align	4, 144
LBB55_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_46
                                                            ## Inner Loop
	leaq	___sym_apply(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_45
LBB55_42:
	testb	$2, 8(%rdx)
	je	LBB55_44
LBB55_43:
	movq	%r14, 24(%rdx)
	jmp	LBB55_49
LBB55_44:
	leaq	LC7(%rip), %rdi
	leaq	___sym_apply(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_49
LBB55_45:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_46
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_46:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_41
LBB55_47:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_48:                                                   ## %mem_alloc.exit.i72
	movl	$0, 8(%rax)
	leaq	___sym_apply(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_49:                                                   ## %object_set_slot.exit73
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_50:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_size(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_51:                                                   ## %closure_object.exit30
	movq	%rax, 16(%r14)
	leaq	___sym_size(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_55
LBB55_52:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_53:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_54:                                                   ## %object_set_delegate.exit.i96
	movq	%r14, 16(%rbx)
	jmp	LBB55_64
LBB55_55:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_61
	.align	4, 144
LBB55_56:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_61
                                                            ## Inner Loop
	leaq	___sym_size(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_60
LBB55_57:
	testb	$2, 8(%rdx)
	je	LBB55_59
LBB55_58:
	movq	%r14, 24(%rdx)
	jmp	LBB55_64
LBB55_59:
	leaq	LC7(%rip), %rdi
	leaq	___sym_size(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_64
LBB55_60:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_61
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_61:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_56
LBB55_62:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_63:                                                   ## %mem_alloc.exit.i99
	movl	$0, 8(%rax)
	leaq	___sym_size(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_64:                                                   ## %object_set_slot.exit100
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_65:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_66:                                                   ## %closure_object.exit40
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_70
LBB55_67:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_68:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_69:                                                   ## %object_set_delegate.exit.i90
	movq	%r14, 16(%rbx)
	jmp	LBB55_79
LBB55_70:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_76
	.align	4, 144
LBB55_71:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_76
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_75
LBB55_72:
	testb	$2, 8(%rdx)
	je	LBB55_74
LBB55_73:
	movq	%r14, 24(%rdx)
	jmp	LBB55_79
LBB55_74:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_79
LBB55_75:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_76
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_76:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_71
LBB55_77:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_78:                                                   ## %mem_alloc.exit.i93
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_79:                                                   ## %object_set_slot.exit94
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_80:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_81:                                                   ## %closure_object.exit50
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_85
LBB55_82:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_83:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_84:                                                   ## %object_set_delegate.exit.i78
	movq	%r14, 16(%rbx)
	jmp	LBB55_94
LBB55_85:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_91
	.align	4, 144
LBB55_86:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_91
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_90
LBB55_87:
	testb	$2, 8(%rdx)
	je	LBB55_89
LBB55_88:
	movq	%r14, 24(%rdx)
	jmp	LBB55_94
LBB55_89:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_94
LBB55_90:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_91
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_91:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_86
LBB55_92:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_93:                                                   ## %mem_alloc.exit.i81
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_94:                                                   ## %object_set_slot.exit82
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_95:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_append(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_96:                                                   ## %closure_object.exit55
	movq	%rax, 16(%r14)
	leaq	___sym_append(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_100
LBB55_97:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_98:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_99:                                                   ## %object_set_delegate.exit.i63
	movq	%r14, 16(%rbx)
	jmp	LBB55_109
LBB55_100:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_106
	.align	4, 144
LBB55_101:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_106
                                                            ## Inner Loop
	leaq	___sym_append(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_105
LBB55_102:
	testb	$2, 8(%rdx)
	je	LBB55_104
LBB55_103:
	movq	%r14, 24(%rdx)
	jmp	LBB55_109
LBB55_104:
	leaq	LC7(%rip), %rdi
	leaq	___sym_append(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_109
LBB55_105:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_106
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_106:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_101
LBB55_107:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_108:                                                  ## %mem_alloc.exit.i66
	movl	$0, 8(%rax)
	leaq	___sym_append(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_109:                                                  ## %object_set_slot.exit67
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_110:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_each(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_111:                                                  ## %closure_object.exit45
	movq	%rax, 16(%r14)
	leaq	___sym_each(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_115
LBB55_112:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_113:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_114:                                                  ## %object_set_delegate.exit.i51
	movq	%r14, 16(%rbx)
	jmp	LBB55_124
LBB55_115:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_121
	.align	4, 144
LBB55_116:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_121
                                                            ## Inner Loop
	leaq	___sym_each(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_120
LBB55_117:
	testb	$2, 8(%rdx)
	je	LBB55_119
LBB55_118:
	movq	%r14, 24(%rdx)
	jmp	LBB55_124
LBB55_119:
	leaq	LC7(%rip), %rdi
	leaq	___sym_each(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_124
LBB55_120:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_121
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_121:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_116
LBB55_122:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_123:                                                  ## %mem_alloc.exit.i54
	movl	$0, 8(%rax)
	leaq	___sym_each(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_124:                                                  ## %object_set_slot.exit55
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_125:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_each_with_index(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_126:                                                  ## %closure_object.exit35
	movq	%rax, 16(%r14)
	leaq	___sym_each_with_index(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_130
LBB55_127:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_128:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_129:                                                  ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB55_139
LBB55_130:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_136
	.align	4, 144
LBB55_131:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_136
                                                            ## Inner Loop
	leaq	___sym_each_with_index(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_135
LBB55_132:
	testb	$2, 8(%rdx)
	je	LBB55_134
LBB55_133:
	movq	%r14, 24(%rdx)
	jmp	LBB55_139
LBB55_134:
	leaq	LC7(%rip), %rdi
	leaq	___sym_each_with_index(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_139
LBB55_135:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_136
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_136:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_131
LBB55_137:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_138:                                                  ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_each_with_index(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_139:                                                  ## %object_set_slot.exit40
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_140:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_inject(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_141:                                                  ## %closure_object.exit25
	movq	%rax, 16(%r14)
	leaq	___sym_inject(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_145
LBB55_142:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_143:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_144:                                                  ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB55_154
LBB55_145:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_151
	.align	4, 144
LBB55_146:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_151
                                                            ## Inner Loop
	leaq	___sym_inject(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_150
LBB55_147:
	testb	$2, 8(%rdx)
	je	LBB55_149
LBB55_148:
	movq	%r14, 24(%rdx)
	jmp	LBB55_154
LBB55_149:
	leaq	LC7(%rip), %rdi
	leaq	___sym_inject(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_154
LBB55_150:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_151
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_151:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_146
LBB55_152:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_153:                                                  ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_inject(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_154:                                                  ## %object_set_slot.exit28
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_155:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_join(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_156:                                                  ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_join(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_160
LBB55_157:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_158:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_159:                                                  ## %object_set_delegate.exit.i9
	movq	%r14, 16(%rbx)
	jmp	LBB55_169
LBB55_160:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_166
	.align	4, 144
LBB55_161:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_166
                                                            ## Inner Loop
	leaq	___sym_join(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_165
LBB55_162:
	testb	$2, 8(%rdx)
	je	LBB55_164
LBB55_163:
	movq	%r14, 24(%rdx)
	jmp	LBB55_169
LBB55_164:
	leaq	LC7(%rip), %rdi
	leaq	___sym_join(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_169
LBB55_165:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_166
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_166:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_161
LBB55_167:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_168:                                                  ## %mem_alloc.exit.i12
	movl	$0, 8(%rax)
	leaq	___sym_join(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_169:                                                  ## %object_set_slot.exit13
	movq	_array_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_170:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_array_all_q(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB55_186
LBB55_171:                                                  ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_all_q(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB55_175
LBB55_172:
	testq	%rbx, %rbx
	je	LBB55_186
LBB55_173:
	cmpl	$364969966, 8(%rbx)
	jne	LBB55_186
LBB55_174:                                                  ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB55_184
LBB55_175:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB55_181
	.align	4, 144
LBB55_176:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_181
                                                            ## Inner Loop
	leaq	___sym_all_q(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB55_180
LBB55_177:
	testb	$2, 8(%rdx)
	je	LBB55_179
LBB55_178:
	movq	%r14, 24(%rdx)
	jmp	LBB55_184
LBB55_179:
	leaq	LC7(%rip), %rdi
	leaq	___sym_all_q(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB55_184
LBB55_180:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB55_181
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB55_181:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB55_176
LBB55_182:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB55_187
LBB55_183:                                                  ## %mem_alloc.exit.i1
	movl	$0, 8(%rax)
	leaq	___sym_all_q(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB55_184:                                                  ## %object_set_slot.exit
	leaq	_array_cache_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_array_prototype.prototype(%rip), %rax
LBB55_185:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB55_186:                                                  ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB55_187:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_at:                                                  ## @array_at
LBB56_0:
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB56_9
LBB56_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB56_8
LBB56_2:
	call	_null_object
LBB56_3:                                                    ## %array_get_elementC.exit
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB56_9
LBB56_4:
	movl	24(%rax), %eax
	testl	%eax, %eax
	js	LBB56_6
LBB56_5:
	cmpl	(%rcx), %eax
	jl	LBB56_10
LBB56_6:
	call	_null_object
LBB56_7:                                                    ## %array_get_elementC.exit6
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbx
	ret
LBB56_8:
	movq	8(%rax), %rax
	jmp	LBB56_3
LBB56_9:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB56_10:
	incl	%eax
	movslq	%eax, %rax
	movq	(%rcx,%rax,8), %rax
	jmp	LBB56_7


	.align	4, 144
_array_to_s:                                                ## @array_to_s
LBB57_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1048, %rsp
	movq	%rdi, %rbx
	movq	%rbx, 8(%rsp)
	leaq	16(%rsp), %r14
	movl	$1024, %esi
	movq	%r14, %rdi
	call	___bzero
	leaq	LC959(%rip), %rsi
	movq	$-1, %rdx
	movq	%r14, %rdi
	call	___strcat_chk
	movzbl	12(%rbx), %eax
	cmpl	$7, %eax
	jne	LBB57_13
LBB57_1:
	movq	%rbx, %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	LBB57_14
LBB57_2:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %ebx
	leal	-1(%rbx), %r14d
	xorl	%r15d, %r15d
	leaq	16(%rsp), %r12
	movq	$-1, %r13
	jmp	LBB57_11
	.align	4, 144
LBB57_3:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	LBB57_15
LBB57_4:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	testl	%r15d, %r15d
	js	LBB57_6
LBB57_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	cmpl	(%rax), %r15d
	jl	LBB57_16
LBB57_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	call	_null_object
LBB57_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	movq	%rax, %rbp
	call	_null_object
	leaq	___sym_to_s(%rip), %rsi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	call	_object_exec
	movzbl	12(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB57_17
LBB57_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	movq	24(%rax), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	call	___strcat_chk
	cmpl	%r14d, %r15d
	jae	LBB57_10
LBB57_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	leaq	LC1060(%rip), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	call	___strcat_chk
LBB57_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	incl	%r15d
LBB57_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%ebx, %r15d
	jb	LBB57_3
LBB57_12:
	leaq	16(%rsp), %rbx
	leaq	LC1161(%rip), %rsi
	movq	$-1, %rdx
	movq	%rbx, %rdi
	call	___strcat_chk
	xorl	%r14d, %r14d
	movq	%rbx, %rdi
	call	_string_object
	movq	%r14, %rdx
	addq	$1048, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB57_13:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB57_14:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB57_15:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB57_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB57_11
                                                            ## Inner Loop
	leal	1(%r15), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB57_7
LBB57_17:
	leaq	___func__.string_cstrC(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$88, %edx
	leaq	LC121(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_apply:                                               ## @array_apply
LBB58_0:
	subq	$8, %rsp
	call	_array_at
	addq	$8, %rsp
	ret


	.align	4, 144
_array_size:                                                ## @array_size
LBB59_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$7, %eax
	jne	LBB59_5
LBB59_1:
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	LBB59_6
LBB59_2:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %ebx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB59_7
LBB59_3:
	movq	%rax, %r14
	movl	$258, 12(%r14)
	movl	$364969966, 8(%r14)
	movslq	%ebx, %rax
	movq	%rax, 24(%r14)
	call	_int_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB59_8
LBB59_4:                                                    ## %int_object.exit
	movq	%rax, 16(%r14)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB59_5:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB59_6:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB59_7:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB59_8:                                                    ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_class:                                               ## @array_class
LBB60_0:
	subq	$8, %rsp
	leaq	LC858(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.align	4, 144
_array_clone:                                               ## @array_clone
LBB61_0:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, %rax
	ret


	.align	4, 144
_array_append:                                              ## @array_append
LBB62_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB62_27
LBB62_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB62_22
LBB62_2:
	call	_null_object
LBB62_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	movzbl	12(%rbx), %eax
	cmpl	$7, %eax
	jne	LBB62_23
LBB62_4:
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB62_24
LBB62_5:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %r15d
	leal	2(%r15), %edi
	shlq	$3, %rdi
	leaq	LC52(%rip), %rsi
	movl	$336, %edx
	call	_GC_debug_malloc
	leal	1(%r15), %r12d
	testq	%rax, %rax
	je	LBB62_25
LBB62_6:                                                    ## %mem_alloc.exit
	movq	%rax, %r13
	movl	%r12d, (%r13)
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB62_25
LBB62_7:
	movq	%rax, %rbp
	movl	$263, 12(%rbp)
	movl	$364969966, 8(%rbp)
	movq	%r13, 24(%rbp)
	call	_array_prototype
	cmpl	$364969966, 8(%rbp)
	jne	LBB62_26
LBB62_8:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%rbp)
	xorl	%r13d, %r13d
	jmp	LBB62_17
	.align	4, 144
LBB62_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB62_27
LBB62_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	testl	%r13d, %r13d
	js	LBB62_12
LBB62_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	cmpl	(%rax), %r13d
	jl	LBB62_28
LBB62_12:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	call	_null_object
LBB62_13:                                                   ## %array_get_elementC.exit14
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	movq	24(%rbp), %rcx
	testq	%rcx, %rcx
	je	LBB62_30
LBB62_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	testl	%r13d, %r13d
	js	LBB62_29
LBB62_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	cmpl	(%rcx), %r13d
	jge	LBB62_29
LBB62_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	incl	%r13d
	movslq	%r13d, %rdx
	movq	%rax, (%rcx,%rdx,8)
LBB62_17:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r15d, %r13d
	jb	LBB62_9
LBB62_18:
	movq	24(%rbp), %rax
	testq	%rax, %rax
	je	LBB62_30
LBB62_19:
	testl	%r15d, %r15d
	js	LBB62_29
LBB62_20:
	cmpl	(%rax), %r15d
	jge	LBB62_29
LBB62_21:                                                   ## %array_set_elementC.exit
	movslq	%r12d, %rcx
	movq	%r14, (%rax,%rcx,8)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB62_22:
	movq	8(%rax), %rax
	jmp	LBB62_3
LBB62_23:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB62_24:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB62_25:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB62_26:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB62_27:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB62_28:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB62_17
                                                            ## Inner Loop
	leal	1(%r13), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB62_13
LBB62_29:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn
LBB62_30:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_each:                                                ## @array_each
LBB63_0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB63_18
LBB63_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB63_15
LBB63_2:
	call	_null_object
LBB63_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	movzbl	12(%rbx), %eax
	cmpl	$7, %eax
	jne	LBB63_16
LBB63_4:
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB63_17
LBB63_5:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %r15d
	movl	$1, %edi
	call	_array_object
	xorl	%r12d, %r12d
	movq	%rax, %r13
	jmp	LBB63_13
	.align	4, 144
LBB63_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB63_18
LBB63_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	testl	%r12d, %r12d
	js	LBB63_9
LBB63_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	cmpl	(%rax), %r12d
	jl	LBB63_19
LBB63_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	call	_null_object
LBB63_10:                                                   ## %array_get_elementC.exit12
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	LBB63_20
LBB63_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB63_21
LBB63_12:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	movq	%rax, 8(%rcx)
	leaq	___sym_apply(%rip), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	call	_object_exec
	incl	%r12d
LBB63_13:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r15d, %r12d
	jb	LBB63_6
LBB63_14:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
LBB63_15:
	movq	8(%rax), %rax
	jmp	LBB63_3
LBB63_16:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB63_17:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB63_18:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB63_19:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB63_13
                                                            ## Inner Loop
	leal	1(%r12), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB63_10
LBB63_20:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB63_21:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_each_with_index:                                     ## @array_each_with_index
LBB64_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB64_22
LBB64_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB64_19
LBB64_2:
	call	_null_object
LBB64_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	movzbl	12(%rbx), %eax
	cmpl	$7, %eax
	jne	LBB64_20
LBB64_4:
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB64_21
LBB64_5:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %r15d
	movl	$2, %edi
	call	_array_object
	xorl	%r12d, %r12d
	movq	%rax, %r13
	jmp	LBB64_17
	.align	4, 144
LBB64_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB64_22
LBB64_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	testl	%r12d, %r12d
	js	LBB64_9
LBB64_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	cmpl	(%rax), %r12d
	jl	LBB64_23
LBB64_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	call	_null_object
LBB64_10:                                                   ## %array_get_elementC.exit18
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	LBB64_27
LBB64_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB64_24
LBB64_12:                                                   ## %array_set_elementC.exit12
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	%rax, 8(%rcx)
	leaq	LC(%rip), %rsi
	movl	$32, %eax
	movq	%rax, %rdi
	movl	$40, %eax
	movl	%eax, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB64_25
LBB64_13:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	%rax, %rbp
	movl	$258, 12(%rbp)
	movl	$364969966, 8(%rbp)
	movslq	%r12d, %rax
	movq	%rax, 24(%rbp)
	call	_int_prototype
	cmpl	$364969966, 8(%rbp)
	jne	LBB64_26
LBB64_14:                                                   ## %int_object.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	%rax, 16(%rbp)
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	LBB64_27
LBB64_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	cmpl	$1, (%rax)
	jle	LBB64_24
LBB64_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	movq	%rbp, 16(%rax)
	leaq	___sym_apply(%rip), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	call	_object_exec
	incl	%r12d
LBB64_17:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r15d, %r12d
	jb	LBB64_6
LBB64_18:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB64_19:
	movq	8(%rax), %rax
	jmp	LBB64_3
LBB64_20:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB64_21:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB64_22:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB64_23:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB64_17
                                                            ## Inner Loop
	leal	1(%r12), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB64_10
LBB64_24:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn
LBB64_25:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn
LBB64_26:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB64_27:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_inject:                                              ## @array_inject
LBB65_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB65_24
LBB65_1:
	movq	%rdx, %rbx
	movq	%rdi, %r14
	cmpl	$2, (%rax)
	jge	LBB65_20
LBB65_2:
	call	_null_object
LBB65_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r15
	movzbl	12(%r14), %eax
	cmpl	$7, %eax
	jne	LBB65_21
LBB65_4:
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	LBB65_22
LBB65_5:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %r12d
	movl	$2, %edi
	call	_array_object
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB65_24
LBB65_6:
	movq	%rax, %rbx
	cmpl	$0, (%rcx)
	jg	LBB65_23
LBB65_7:
	call	_null_object
LBB65_8:                                                    ## %array_get_elementC.exit22
	xorl	%r13d, %r13d
	movq	%rax, %rbp
	jmp	LBB65_18
	.align	4, 144
LBB65_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	movq	24(%r14), %rax
	testq	%rax, %rax
	je	LBB65_24
LBB65_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	testl	%r13d, %r13d
	js	LBB65_12
LBB65_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	cmpl	(%rax), %r13d
	jl	LBB65_25
LBB65_12:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	call	_null_object
LBB65_13:                                                   ## %array_get_elementC.exit16
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB65_27
LBB65_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB65_26
LBB65_15:                                                   ## %array_set_elementC.exit10
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	movq	%rax, 8(%rcx)
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB65_27
LBB65_16:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	cmpl	$1, (%rax)
	jle	LBB65_26
LBB65_17:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	movq	%rbp, 16(%rax)
	leaq	___sym_apply(%rip), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	call	_object_exec
	incl	%r13d
	movq	%rax, %rbp
LBB65_18:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r12d, %r13d
	jb	LBB65_9
LBB65_19:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbp, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB65_20:
	movq	16(%rax), %rax
	jmp	LBB65_3
LBB65_21:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB65_22:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB65_23:
	movq	8(%rcx), %rax
	jmp	LBB65_8
LBB65_24:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB65_25:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB65_18
                                                            ## Inner Loop
	leal	1(%r13), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB65_13
LBB65_26:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn
LBB65_27:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_join:                                                ## @array_join
LBB66_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movzbl	12(%rdi), %eax
	cmpl	$7, %eax
	jne	LBB66_23
LBB66_1:
	movq	%rdi, %rax
	movq	%rax, 8(%rsp)
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	LBB66_24
LBB66_2:                                                    ## %array_get_sizeC.exit
	movq	%rdx, %rbx
	movl	(%rax), %eax
	movl	%eax, 20(%rsp)
	leaq	LC757(%rip), %rdi
	call	_string_object
	movzbl	12(%rbx), %ecx
	cmpl	$7, %ecx
	jne	LBB66_23
LBB66_3:
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	LBB66_24
LBB66_4:                                                    ## %array_get_sizeC.exit7
	movq	%rax, %rbx
	movl	(%rcx), %eax
	testl	%eax, %eax
	je	LBB66_25
LBB66_5:
	testl	%eax, %eax
	jg	LBB66_26
LBB66_6:
	call	_null_object
LBB66_7:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	xorl	%edi, %edi
	call	_array_object
	leaq	___sym_to_s(%rip), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	call	_object_exec
LBB66_8:
	movq	%rax, %r14
	movl	20(%rsp), %eax
	leal	-1(%rax), %r15d
	xorl	%r12d, %r12d
	jmp	LBB66_21
	.align	4, 144
LBB66_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	LBB66_27
LBB66_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	testl	%r12d, %r12d
	js	LBB66_12
LBB66_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	cmpl	(%rax), %r12d
	jl	LBB66_28
LBB66_12:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	call	_null_object
LBB66_13:                                                   ## %array_get_elementC.exit22
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	movq	%rax, %r13
	xorl	%edi, %edi
	call	_array_object
	leaq	___sym_to_s(%rip), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	call	_object_exec
	movq	%rax, %r13
	movl	$1, %eax
	movl	%eax, %edi
	call	_array_object
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB66_29
LBB66_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB66_30
LBB66_15:                                                   ## %array_set_elementC.exit16
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	movq	%rax, %rbp
	movq	%r13, 8(%rcx)
	leaq	___sym_add(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	call	_object_exec
	cmpl	%r15d, %r12d
	jae	LBB66_20
LBB66_16:                                                   ## %array_set_elementC.exit16
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	testq	%r14, %r14
	je	LBB66_20
LBB66_17:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	movq	24(%rbp), %rbx
	testq	%rbx, %rbx
	je	LBB66_29
LBB66_18:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	cmpl	$0, (%rbx)
	jle	LBB66_30
LBB66_19:                                                   ## %array_set_elementC.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	movq	%r14, 8(%rbx)
	leaq	___sym_add(%rip), %rsi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	call	_object_exec
LBB66_20:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	incl	%r12d
	movq	%rax, %rbx
LBB66_21:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	20(%rsp), %r12d
	jb	LBB66_9
LBB66_22:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB66_23:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB66_24:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB66_25:                                                   ## %array_get_sizeC.exit7._crit_edge
	xorl	%eax, %eax
	jmp	LBB66_8
LBB66_26:
	movq	8(%rcx), %rax
	jmp	LBB66_7
LBB66_27:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB66_28:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB66_21
                                                            ## Inner Loop
	leal	1(%r12), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB66_13
LBB66_29:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB66_30:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_array_all_q:                                               ## @array_all_q
LBB67_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB67_20
LBB67_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB67_17
LBB67_2:
	call	_null_object
LBB67_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	movzbl	12(%rbx), %eax
	cmpl	$7, %eax
	jne	LBB67_18
LBB67_4:
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB67_19
LBB67_5:                                                    ## %array_get_sizeC.exit
	movl	(%rax), %r15d
	movl	$1, %edi
	call	_array_object
	xorl	%r12d, %r12d
	movq	%rax, %r13
	movl	%r12d, %ebp
	jmp	LBB67_15
	.align	4, 144
LBB67_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	LBB67_20
LBB67_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	testl	%r12d, %r12d
	js	LBB67_9
LBB67_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	cmpl	(%rax), %r12d
	jl	LBB67_21
LBB67_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	call	_null_object
LBB67_10:                                                   ## %array_get_elementC.exit10
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	LBB67_22
LBB67_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB67_23
LBB67_12:                                                   ## %array_set_elementC.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	movq	%rax, 8(%rcx)
	leaq	___sym_apply(%rip), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	call	_object_exec
	movzbl	12(%rax), %ecx
	cmpl	$1, %ecx
	je	LBB67_14
LBB67_13:                                                   ## %bool_get_value.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	cmpl	$0, 24(%rax)
	setne	%al
	movzbl	%al, %eax
	addl	%eax, %ebp
LBB67_14:                                                   ## %bool_get_value.exit.thread
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	incl	%r12d
LBB67_15:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r15d, %r12d
	jb	LBB67_6
LBB67_16:
	cmpl	%r15d, %ebp
	sete	%al
	movzbl	%al, %edi
	call	_bool_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB67_17:
	movq	8(%rax), %rax
	jmp	LBB67_3
LBB67_18:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$149, %edx
	leaq	LC456(%rip), %rcx
	call	___assert_rtn
LBB67_19:
	leaq	___func__.array_get_sizeC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$152, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB67_20:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB67_21:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB67_15
                                                            ## Inner Loop
	leal	1(%r12), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	LBB67_10
LBB67_22:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB67_23:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
___t_start:                                                 ## @__t_start
LBB68_0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	%edi, %r15d
	movl	%r15d, %edi
	call	_array_object
	xorl	%r12d, %r12d
	movq	%rax, %r13
	jmp	LBB68_5
	.align	4, 144
LBB68_1:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB68_5
                                                            ## Inner Loop
	movq	(%r14), %rdi
	call	_string_object
	movq	24(%r13), %rcx
	testq	%rcx, %rcx
	je	LBB68_14
LBB68_2:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB68_5
                                                            ## Inner Loop
	testl	%r12d, %r12d
	js	LBB68_15
LBB68_3:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB68_5
                                                            ## Inner Loop
	cmpl	(%rcx), %r12d
	jge	LBB68_15
LBB68_4:                                                    ## %array_set_elementC.exit.i
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB68_5
                                                            ## Inner Loop
	incl	%r12d
	movslq	%r12d, %rdx
	movq	%rax, (%rcx,%rdx,8)
	addq	$8, %r14
LBB68_5:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	cmpl	%r15d, %r12d
	jl	LBB68_1
LBB68_6:                                                    ## %create_args.exit
	leaq	LC368(%rip), %rdi
	leaq	___sym_main(%rip), %r14
	xorb	%al, %al
	movq	%r14, %rsi
	call	_printf
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	call	_object_exec
	testq	%rdx, %rdx
	je	LBB68_13
LBB68_7:
	movq	%rdx, %rbx
	xorl	%edi, %edi
	call	_array_object
	leaq	___sym_to_s(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	call	_object_exec
	testq	%rax, %rax
	je	LBB68_11
LBB68_8:
	movzbl	12(%rax), %ecx
	cmpl	$3, %ecx
	jne	LBB68_16
LBB68_9:                                                    ## %string_cstrC.exit
	movq	24(%rax), %rsi
	testq	%rsi, %rsi
	je	LBB68_17
LBB68_10:
	leaq	LC570(%rip), %rdi
	xorb	%al, %al
	call	_printf
	jmp	LBB68_12
LBB68_11:
	leaq	LC671(%rip), %rdi
	xorb	%al, %al
	call	_printf
LBB68_12:
	call	_GC_gcollect
	call	_GC_get_heap_size
	leaq	LC73(%rip), %rdi
	movq	%rax, %rsi
	xorb	%al, %al
	call	_printf
	leaq	LC174(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorb	%al, %al
	call	_printf
	movq	_GC_gc_no@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	LC275(%rip), %rdi
	xorb	%al, %al
	call	_printf
	call	_abort
LBB68_13:
	call	_GC_gcollect
	call	_GC_get_heap_size
	leaq	LC73(%rip), %rdi
	movq	%rax, %rsi
	xorb	%al, %al
	call	_printf
	leaq	LC174(%rip), %rdi
	movl	$0, %esi
	xorl	%edx, %edx
	xorb	%al, %al
	call	_printf
	movq	_GC_gc_no@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	LC275(%rip), %rdi
	xorb	%al, %al
	call	_printf
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
LBB68_14:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB68_15:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn
LBB68_16:
	leaq	___func__.string_cstrC(%rip), %rdi
	leaq	LC20(%rip), %rsi
	movl	$88, %edx
	leaq	LC121(%rip), %rcx
	call	___assert_rtn
LBB68_17:
	leaq	___func__.__t_start(%rip), %rdi
	leaq	LC166(%rip), %rsi
	movl	$45, %edx
	leaq	LC469(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
___t_exit:                                                  ## @__t_exit
LBB69_0:
	subq	$8, %rsp
	call	_GC_gcollect
	call	_GC_get_heap_size
	leaq	LC73(%rip), %rdi
	movq	%rax, %rsi
	xorb	%al, %al
	call	_printf
	leaq	LC174(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorb	%al, %al
	call	_printf
	movq	_GC_gc_no@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	leaq	LC275(%rip), %rdi
	xorb	%al, %al
	call	_printf
	addq	$8, %rsp
	ret


	.align	4, 144
_object_prototype:                                          ## @object_prototype
LBB70_0:
	pushq	%r14
	pushq	%rbx
	subq	$8, %rsp
	movq	_object_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB70_78
LBB70_1:
	leaq	_object_prototype_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _object_prototype.prototype(%rip)
	jne	LBB70_77
LBB70_2:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_3:                                                    ## %object_alloc.exit13
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _object_prototype.prototype(%rip)
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_4:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_object_clone(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB70_79
LBB70_5:                                                    ## %closure_object.exit
	movq	%rax, 16(%r14)
	leaq	___sym_clone(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB70_8
LBB70_6:
	cmpl	$364969966, 8(%rbx)
	jne	LBB70_79
LBB70_7:                                                    ## %object_set_delegate.exit.i24
	movq	%r14, 16(%rbx)
	jmp	LBB70_17
LBB70_8:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB70_14
	.align	4, 144
LBB70_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_14
                                                            ## Inner Loop
	leaq	___sym_clone(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB70_13
LBB70_10:
	testb	$2, 8(%rdx)
	je	LBB70_12
LBB70_11:
	movq	%r14, 24(%rdx)
	jmp	LBB70_17
LBB70_12:
	leaq	LC7(%rip), %rdi
	leaq	___sym_clone(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB70_17
LBB70_13:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_14
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB70_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB70_9
LBB70_15:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_16:                                                   ## %mem_alloc.exit.i27
	movl	$0, 8(%rax)
	leaq	___sym_clone(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB70_17:                                                   ## %object_set_slot.exit28
	movq	_object_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_18:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_object_class(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB70_79
LBB70_19:                                                   ## %closure_object.exit5
	movq	%rax, 16(%r14)
	leaq	___sym_class(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB70_23
LBB70_20:
	testq	%rbx, %rbx
	je	LBB70_79
LBB70_21:
	cmpl	$364969966, 8(%rbx)
	jne	LBB70_79
LBB70_22:                                                   ## %object_set_delegate.exit.i36
	movq	%r14, 16(%rbx)
	jmp	LBB70_32
LBB70_23:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB70_29
	.align	4, 144
LBB70_24:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_29
                                                            ## Inner Loop
	leaq	___sym_class(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB70_28
LBB70_25:
	testb	$2, 8(%rdx)
	je	LBB70_27
LBB70_26:
	movq	%r14, 24(%rdx)
	jmp	LBB70_32
LBB70_27:
	leaq	LC7(%rip), %rdi
	leaq	___sym_class(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB70_32
LBB70_28:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_29
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB70_29:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB70_24
LBB70_30:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_31:                                                   ## %mem_alloc.exit.i39
	movl	$0, 8(%rax)
	leaq	___sym_class(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB70_32:                                                   ## %object_set_slot.exit40
	movq	_object_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_33:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_object_inspect(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB70_79
LBB70_34:                                                   ## %closure_object.exit10
	movq	%rax, 16(%r14)
	leaq	___sym_inspect(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB70_38
LBB70_35:
	testq	%rbx, %rbx
	je	LBB70_79
LBB70_36:
	cmpl	$364969966, 8(%rbx)
	jne	LBB70_79
LBB70_37:                                                   ## %object_set_delegate.exit.i18
	movq	%r14, 16(%rbx)
	jmp	LBB70_47
LBB70_38:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB70_44
	.align	4, 144
LBB70_39:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_44
                                                            ## Inner Loop
	leaq	___sym_inspect(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB70_43
LBB70_40:
	testb	$2, 8(%rdx)
	je	LBB70_42
LBB70_41:
	movq	%r14, 24(%rdx)
	jmp	LBB70_47
LBB70_42:
	leaq	LC7(%rip), %rdi
	leaq	___sym_inspect(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB70_47
LBB70_43:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_44
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB70_44:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB70_39
LBB70_45:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_46:                                                   ## %mem_alloc.exit.i21
	movl	$0, 8(%rax)
	leaq	___sym_inspect(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB70_47:                                                   ## %object_set_slot.exit22
	movq	_object_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_48:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_object_to_s(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB70_79
LBB70_49:                                                   ## %closure_object.exit15
	movq	%rax, 16(%r14)
	leaq	___sym_to_s(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB70_53
LBB70_50:
	testq	%rbx, %rbx
	je	LBB70_79
LBB70_51:
	cmpl	$364969966, 8(%rbx)
	jne	LBB70_79
LBB70_52:                                                   ## %object_set_delegate.exit.i3
	movq	%r14, 16(%rbx)
	jmp	LBB70_62
LBB70_53:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB70_59
	.align	4, 144
LBB70_54:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_59
                                                            ## Inner Loop
	leaq	___sym_to_s(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB70_58
LBB70_55:
	testb	$2, 8(%rdx)
	je	LBB70_57
LBB70_56:
	movq	%r14, 24(%rdx)
	jmp	LBB70_62
LBB70_57:
	leaq	LC7(%rip), %rdi
	leaq	___sym_to_s(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB70_62
LBB70_58:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_59
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB70_59:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB70_54
LBB70_60:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_61:                                                   ## %mem_alloc.exit.i6
	movl	$0, 8(%rax)
	leaq	___sym_to_s(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB70_62:                                                   ## %object_set_slot.exit7
	movq	_object_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_63:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_object_dotdot(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB70_79
LBB70_64:                                                   ## %closure_object.exit20
	movq	%rax, 16(%r14)
	leaq	___sym_dotdot(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB70_68
LBB70_65:
	testq	%rbx, %rbx
	je	LBB70_79
LBB70_66:
	cmpl	$364969966, 8(%rbx)
	jne	LBB70_79
LBB70_67:                                                   ## %object_set_delegate.exit.i
	movq	%r14, 16(%rbx)
	jmp	LBB70_77
LBB70_68:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB70_74
	.align	4, 144
LBB70_69:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_74
                                                            ## Inner Loop
	leaq	___sym_dotdot(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB70_73
LBB70_70:
	testb	$2, 8(%rdx)
	je	LBB70_72
LBB70_71:
	movq	%r14, 24(%rdx)
	jmp	LBB70_77
LBB70_72:
	leaq	LC7(%rip), %rdi
	leaq	___sym_dotdot(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB70_77
LBB70_73:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB70_74
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB70_74:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB70_69
LBB70_75:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB70_80
LBB70_76:                                                   ## %mem_alloc.exit.i
	movl	$0, 8(%rax)
	leaq	___sym_dotdot(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB70_77:                                                   ## %object_set_slot.exit
	leaq	_object_prototype_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_object_prototype.prototype(%rip), %rax
LBB70_78:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
LBB70_79:                                                   ## %.thread
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB70_80:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_object_clone:                                              ## @object_clone
LBB71_0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movl	12(%rdi), %eax
	testb	$2, %ah
	movq	%rdi, %r14
	jne	LBB71_14
LBB71_1:
	movl	%eax, %edi
	call	_object_alloc
	movq	%rax, %r15
	xorl	%edi, %edi
	call	_array_object
	testq	%r14, %r14
	je	LBB71_15
LBB71_2:
	cmpl	$364969966, 8(%r14)
	jne	LBB71_15
LBB71_3:                                                    ## %object_get_delegate.exit
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	LBB71_11
LBB71_4:
	leaq	___sym_clone(%rip), %rsi
	movq	%rbx, %rdx
	call	_object_exec
	testl	%edx, %edx
	jne	LBB71_16
LBB71_5:
	testq	%r15, %r15
	je	LBB71_17
LBB71_6:
	cmpl	$364969966, 8(%r15)
	jne	LBB71_17
LBB71_7:                                                    ## %object_set_delegate.exit
	movq	%rax, 16(%r15)
	jmp	LBB71_11
LBB71_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB71_11
                                                            ## Inner Loop
	movl	8(%r14), %ecx
	testb	$4, %cl
	jne	LBB71_18
LBB71_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB71_11
                                                            ## Inner Loop
	movq	24(%r14), %rdi
	leaq	___sym_clone(%rip), %rsi
	movq	%rbx, %rdx
	call	_object_exec
	testl	%edx, %edx
	jne	LBB71_16
LBB71_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB71_11
                                                            ## Inner Loop
	movl	8(%r14), %ecx
	movq	16(%r14), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	_object_set_slot
LBB71_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	(%r14), %r14
	testq	%r14, %r14
	jne	LBB71_8
LBB71_12:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %r14
LBB71_13:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
LBB71_14:
	xorl	%edx, %edx
	jmp	LBB71_13
LBB71_15:                                                   ## %.thread
	leaq	___func__.object_get_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$197, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB71_16:                                                   ## %.loopexit
	movq	%rax, %r14
	jmp	LBB71_13
LBB71_17:                                                   ## %.thread4
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB71_18:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB71_11
                                                            ## Inner Loop
	movq	24(%r14), %rdx
	movq	16(%r14), %rsi
	movq	%r15, %rdi
	call	_object_set_slot
	jmp	LBB71_11


	.align	4, 144
_object_class:                                              ## @object_class
LBB72_0:
	subq	$8, %rsp
	leaq	LC27104(%rip), %rdi
	call	_string_object
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$8, %rsp
	ret


	.section	__TEXT,__const
	.align	4
LCPI73_0:                                                   ## constant <4 x i32>
	.space	16
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 144
_object_inspect:                                            ## @object_inspect
LBB73_0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	xorps	%xmm0, %xmm0
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
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movl	12(%rdi), %eax
	testb	$1, %ah
	movq	%rdi, (%rsp)
	je	LBB73_37
LBB73_1:
	leaq	208(%rsp), %rdi
	leaq	LC83(%rip), %rsi
	movq	$-1, %rdx
	call	___strcat_chk
	movq	(%rsp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
LBB73_2:
	testb	$2, %ch
	je	LBB73_4
LBB73_3:
	leaq	208(%rsp), %rdi
	leaq	LC184(%rip), %rsi
	movq	$-1, %rdx
	call	___strcat_chk
	movq	(%rsp), %rax
	movl	12(%rax), %eax
LBB73_4:
	movzbl	%al, %eax
	decl	%eax
	cmpl	$7, %eax
	ja	LBB73_15
LBB73_5:
	leaq	LJTI73_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB73_6:
	leaq	208(%rsp), %rdi
	leaq	LC285(%rip), %rsi
	jmp	LBB73_14
LBB73_7:
	leaq	208(%rsp), %rdi
	leaq	LC386(%rip), %rsi
	jmp	LBB73_14
LBB73_8:
	leaq	208(%rsp), %rdi
	leaq	LC487(%rip), %rsi
	jmp	LBB73_14
LBB73_9:
	leaq	208(%rsp), %rdi
	leaq	LC588(%rip), %rsi
	jmp	LBB73_14
LBB73_10:
	leaq	208(%rsp), %rdi
	leaq	LC689(%rip), %rsi
	jmp	LBB73_14
LBB73_11:
	leaq	208(%rsp), %rdi
	leaq	LC790(%rip), %rsi
	jmp	LBB73_14
LBB73_12:
	leaq	208(%rsp), %rdi
	leaq	LC891(%rip), %rsi
	jmp	LBB73_14
LBB73_13:
	leaq	208(%rsp), %rdi
	leaq	LC992(%rip), %rsi
LBB73_14:
	movq	$-1, %rdx
	call	___strcat_chk
LBB73_15:
	cmpb	$0, 208(%rsp)
	jne	LBB73_38
LBB73_16:
	leaq	208(%rsp), %rdi
	leaq	LC1093(%rip), %rsi
	movq	$-1, %rdx
	call	___strcpy_chk
LBB73_17:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	leaq	144(%rsp), %rbx
	movl	$64, %esi
	xorl	%r14d, %r14d
	movq	$-1, %rcx
	leaq	LC1194(%rip), %r8
	movq	%rbx, %rdi
	movl	$0, %edx
	movq	(%rsp), %r9
	xorb	%al, %al
	call	___snprintf_chk
	leaq	LC1295(%rip), %rdi
	movq	%rbx, %rsi
	xorb	%al, %al
	call	_printf
	leaq	144(%rsp), %rbx
	.align	4, 144
LBB73_18:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rbx, %rdi
	call	_strlen
	movl	$76, %ecx
	subq	%rax, %rcx
	movslq	%r14d, %rax
	cmpq	%rcx, %rax
	jb	LBB73_39
LBB73_19:
	leaq	LC1497(%rip), %rdi
	xorb	%bl, %bl
	xorb	%al, %al
	call	_printf
	movq	(%rsp), %r14
	movl	8(%r14), %esi
	leaq	LC1598(%rip), %rdi
	xorb	%al, %al
	call	_printf
	movl	12(%r14), %esi
	leaq	LC1699(%rip), %rdi
	leaq	208(%rsp), %rdx
	xorb	%al, %al
	call	_printf
	movq	16(%r14), %rsi
	leaq	LC17100(%rip), %rdi
	xorb	%al, %al
	call	_printf
	movq	(%r14), %rsi
	leaq	LC18101(%rip), %rdi
	movb	%bl, %al
	call	_printf
	testb	$1, 13(%r14)
	je	LBB73_21
LBB73_20:
	movq	%r14, %rax
	movq	24(%rax), %rsi
	leaq	LC19102(%rip), %rdi
	xorb	%al, %al
	call	_printf
LBB73_21:
	movq	(%rsp), %rax
	cmpq	$0, (%rax)
	je	LBB73_23
LBB73_22:
	leaq	LC1497(%rip), %rdi
	xorb	%al, %al
	call	_printf
	leaq	LC20103(%rip), %rdi
	call	_puts
LBB73_23:
	leaq	16(%rsp), %rbx
	movq	$-1, %r14
	leaq	464(%rsp), %r15
	movq	8(%rsp), %rax
	jmp	LBB73_33
	.align	4, 144
LBB73_24:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movq	8(%rsp), %rax
	movq	24(%rax), %r12
	movl	8(%rax), %r13d
	movq	16(%rax), %rbp
	movq	%rbx, %rdi
	movl	$32, %eax
	movl	%eax, %esi
	movl	$30, %eax
	movq	%rax, %rdx
	movq	$-1, %rcx
	call	___memset_chk
	movb	$0, 46(%rsp)
	leaq	LC1194(%rip), %rcx
	movq	%rbx, %rdi
	movl	$0, %esi
	movq	$-1, %rdx
	movq	%rbp, %r8
	xorb	%al, %al
	call	___sprintf_chk
	movq	%rbx, %rdi
	call	_strlen
	movb	$32, 16(%rsp,%rax)
	leaq	LC22(%rip), %rcx
	leaq	46(%rsp), %rax
	movq	%rax, %rdi
	movl	$0, %esi
	movq	$-1, %rdx
	movq	%r12, %r8
	movl	%r13d, %r9d
	xorb	%al, %al
	call	___sprintf_chk
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 512(%rsp)
	movaps	%xmm0, 496(%rsp)
	movaps	%xmm0, 480(%rsp)
	movaps	%xmm0, 464(%rsp)
	testb	$2, %r13b
	je	LBB73_26
LBB73_25:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	leaq	LC23(%rip), %rsi
	movq	%r15, %rdi
	movq	$-1, %rdx
	call	___strcat_chk
LBB73_26:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	testb	$4, %r13b
	je	LBB73_28
LBB73_27:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	leaq	LC24(%rip), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	call	___strcat_chk
LBB73_28:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	movq	%r15, %rdi
	call	_strlen
	cmpb	$124, -1(%rax,%r15)
	jne	LBB73_30
LBB73_29:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	movq	%r15, %rdi
	call	_strlen
	movb	$0, -1(%rax,%r15)
LBB73_30:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	cmpb	$0, 464(%rsp)
	jne	LBB73_32
LBB73_31:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	leaq	LC1093(%rip), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	call	___strcat_chk
LBB73_32:                                                   ## %table_format.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_33
                                                            ## Inner Loop
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	call	___strcat_chk
	leaq	LC25(%rip), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	call	___strcat_chk
	leaq	LC21(%rip), %rdi
	xorb	%al, %al
	call	_printf
	movq	%rbx, %rdi
	call	_puts
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
LBB73_33:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	testq	%rax, %rax
	jne	LBB73_24
LBB73_34:
	movq	(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	LBB73_36
LBB73_35:
	leaq	LC1497(%rip), %rdi
	xorb	%al, %al
	call	_printf
	movq	(%rsp), %rax
	movq	16(%rax), %rbx
	xorl	%edi, %edi
	call	_array_object
	leaq	___sym_inspect(%rip), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	call	_object_exec
LBB73_36:
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	(%rsp), %rax
	addq	$536, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
LBB73_37:                                                   ## %._crit_edge
	movl	%eax, %ecx
	jmp	LBB73_2
LBB73_38:
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	call	_strlen
	movb	$0, -1(%rax,%rbx)
	jmp	LBB73_17
LBB73_39:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB73_18
                                                            ## Inner Loop
	leaq	LC1396(%rip), %rdi
	xorb	%al, %al
	call	_printf
	incl	%r14d
	jmp	LBB73_18
	.align	2, 144
	.set L73_0_set_6,LBB73_6-LJTI73_0
	.set L73_0_set_7,LBB73_7-LJTI73_0
	.set L73_0_set_8,LBB73_8-LJTI73_0
	.set L73_0_set_9,LBB73_9-LJTI73_0
	.set L73_0_set_10,LBB73_10-LJTI73_0
	.set L73_0_set_11,LBB73_11-LJTI73_0
	.set L73_0_set_12,LBB73_12-LJTI73_0
	.set L73_0_set_13,LBB73_13-LJTI73_0
LJTI73_0:
	.long	 L73_0_set_6
	.long	 L73_0_set_7
	.long	 L73_0_set_8
	.long	 L73_0_set_9
	.long	 L73_0_set_10
	.long	 L73_0_set_11
	.long	 L73_0_set_12
	.long	 L73_0_set_13


	.align	4, 144
_object_to_s:                                               ## @object_to_s
LBB74_0:
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r8
	leaq	8(%rsp), %rbx
	xorl	%r14d, %r14d
	movq	$-1, %rdx
	leaq	LC26(%rip), %rcx
	xorb	%al, %al
	movq	%rbx, %rdi
	movl	$0, %esi
	call	___sprintf_chk
	movq	%rbx, %rdi
	call	_string_object
	movq	%r14, %rdx
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	ret


	.align	4, 144
_object_dotdot:                                             ## @object_dotdot
LBB75_0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB75_48
LBB75_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB75_49
LBB75_2:
	call	_null_object
LBB75_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_4:                                                    ## %object_alloc.exit.i
	movq	%rax, %r15
	movl	$0, 12(%r15)
	movl	$364969966, 8(%r15)
	leaq	___sym___start(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	jbe	LBB75_50
LBB75_5:
	movq	(%r15), %rax
	movq	%r15, %r12
	movq	%rax, %rcx
	jmp	LBB75_11
	.align	4, 144
LBB75_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_11
                                                            ## Inner Loop
	leaq	___sym___start(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB75_10
LBB75_7:
	testb	$2, 8(%rdx)
	je	LBB75_9
LBB75_8:
	movq	%rbx, 24(%rdx)
	jmp	LBB75_14
LBB75_9:
	leaq	LC7(%rip), %rdi
	leaq	___sym___start(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB75_14
LBB75_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_11
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %r12
	movq	%rax, %rcx
LBB75_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB75_6
LBB75_12:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_13:                                                   ## %mem_alloc.exit.i7.i
	movl	$0, 8(%rax)
	leaq	___sym___start(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%r12)
LBB75_14:                                                   ## %object_set_slot.exit8.i
	leaq	___sym___end(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB75_17
LBB75_15:
	cmpl	$364969966, 8(%r15)
	jne	LBB75_51
LBB75_16:                                                   ## %object_set_delegate.exit.i13.i
	movq	%r14, 16(%r15)
	jmp	LBB75_26
LBB75_17:
	movq	(%r15), %rax
	movq	%r15, %rbx
	movq	%rax, %rcx
	jmp	LBB75_23
	.align	4, 144
LBB75_18:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_23
                                                            ## Inner Loop
	leaq	___sym___end(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB75_22
LBB75_19:
	testb	$2, 8(%rdx)
	je	LBB75_21
LBB75_20:
	movq	%r14, 24(%rdx)
	jmp	LBB75_26
LBB75_21:
	leaq	LC7(%rip), %rdi
	leaq	___sym___end(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB75_26
LBB75_22:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_23
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB75_23:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB75_18
LBB75_24:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_25:                                                   ## %mem_alloc.exit.i16.i
	movl	$0, 8(%rax)
	leaq	___sym___end(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB75_26:                                                   ## %object_set_slot.exit17.i
	movq	_range_prototype.prototype(%rip), %rax
	testq	%rax, %rax
	jne	LBB75_46
LBB75_27:
	leaq	_range_prototype_m(%rip), %rdi
	call	_pthread_mutex_lock
	cmpq	$0, _range_prototype.prototype(%rip)
	jne	LBB75_45
LBB75_28:
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$38, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_29:
	movq	%rax, %rbx
	movl	$512, 12(%rbx)
	movl	$364969966, 8(%rbx)
	movq	%rbx, _range_prototype.prototype(%rip)
	call	_object_prototype
	cmpl	$364969966, 8(%rbx)
	jne	LBB75_51
LBB75_30:                                                   ## %object_set_delegate.exit.i.i
	movq	%rax, 16(%rbx)
	movq	_range_prototype.prototype(%rip), %rbx
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_31:
	movq	%rax, %r14
	movl	$260, 12(%r14)
	movl	$364969966, 8(%r14)
	leaq	_range_each(%rip), %rax
	movq	%rax, 24(%r14)
	call	_closure_prototype
	cmpl	$364969966, 8(%r14)
	jne	LBB75_51
LBB75_32:                                                   ## %closure_object.exit.i.i
	movq	%rax, 16(%r14)
	leaq	___sym_each(%rip), %rax
	leaq	___sym_delegate(%rip), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	ja	LBB75_36
LBB75_33:
	testq	%rbx, %rbx
	je	LBB75_51
LBB75_34:
	cmpl	$364969966, 8(%rbx)
	jne	LBB75_51
LBB75_35:                                                   ## %object_set_delegate.exit.i1.i
	movq	%r14, 16(%rbx)
	jmp	LBB75_45
LBB75_36:
	movq	(%rbx), %rax
	movq	%rax, %rcx
	jmp	LBB75_42
	.align	4, 144
LBB75_37:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_42
                                                            ## Inner Loop
	leaq	___sym_each(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB75_41
LBB75_38:
	testb	$2, 8(%rdx)
	je	LBB75_40
LBB75_39:
	movq	%r14, 24(%rdx)
	jmp	LBB75_45
LBB75_40:
	leaq	LC7(%rip), %rdi
	leaq	___sym_each(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB75_45
LBB75_41:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB75_42
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rax, %rcx
LBB75_42:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB75_37
LBB75_43:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB75_52
LBB75_44:                                                   ## %mem_alloc.exit.i2.i
	movl	$0, 8(%rax)
	leaq	___sym_each(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%rbx)
LBB75_45:                                                   ## %object_set_slot.exit.i
	leaq	_range_prototype_m(%rip), %rdi
	call	_pthread_mutex_unlock
	movq	_range_prototype.prototype(%rip), %rax
LBB75_46:
	cmpl	$364969966, 8(%r15)
	jne	LBB75_51
LBB75_47:                                                   ## %range_create.exit
	movq	%rax, 16(%r15)
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
LBB75_48:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB75_49:
	movq	8(%rax), %rax
	jmp	LBB75_3
LBB75_50:                                                   ## %object_set_delegate.exit.i4.i
	movq	%rbx, 16(%r15)
	jmp	LBB75_14
LBB75_51:                                                   ## %.thread.i12.i
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB75_52:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
_range_each:                                                ## @range_each
LBB76_0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$8, %rsp
	movq	24(%rdx), %rax
	testq	%rax, %rax
	je	LBB76_17
LBB76_1:
	movq	%rdi, %rbx
	cmpl	$0, (%rax)
	jg	LBB76_18
LBB76_2:
	call	_null_object
LBB76_3:                                                    ## %array_get_elementC.exit
	movq	%rax, %r14
	leaq	___sym___start(%rip), %rsi
	movq	%rbx, %rdi
	call	_object_get_slot
	movq	%rax, %r15
	leaq	___sym___end(%rip), %rsi
	movq	%rbx, %rdi
	call	_object_get_slot
	testq	%r15, %r15
	je	LBB76_19
LBB76_4:                                                    ## %array_get_elementC.exit..preheader_crit_edge
	movq	%rax, %rbx
	movl	$1, %r12d
	.align	4, 144
LBB76_5:                                                    ## %.preheader
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movl	%r12d, %edi
	call	_array_object
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB76_20
LBB76_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB76_21
LBB76_7:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	movq	%r15, 8(%rcx)
	leaq	___sym_apply(%rip), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	call	_object_exec
	testl	%edx, %edx
	jne	LBB76_22
LBB76_8:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	movl	%r12d, %edi
	call	_array_object
	movq	24(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB76_20
LBB76_9:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	cmpl	$0, (%rcx)
	jle	LBB76_21
LBB76_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	movq	%rbx, 8(%rcx)
	leaq	___sym_eq(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	_object_exec
	testl	%edx, %edx
	jne	LBB76_22
LBB76_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	movzbl	12(%rax), %ecx
	cmpl	$1, %ecx
	je	LBB76_13
LBB76_12:                                                   ## %bool_get_value.exit
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	cmpl	$0, 24(%rax)
	jne	LBB76_15
LBB76_13:                                                   ## %bool_get_value.exit.thread
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	xorl	%edi, %edi
	call	_array_object
	leaq	___sym_succ(%rip), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	call	_object_exec
	testl	%edx, %edx
	jne	LBB76_22
LBB76_14:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB76_5
                                                            ## Inner Loop
	movq	%rax, %r15
	jmp	LBB76_5
LBB76_15:
	xorl	%edx, %edx
LBB76_16:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
LBB76_17:
	leaq	___func__.array_get_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$123, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB76_18:
	movq	8(%rax), %rax
	jmp	LBB76_3
LBB76_19:
	leaq	___func__.range_each(%rip), %rdi
	leaq	LC136(%rip), %rsi
	movl	$58, %edx
	leaq	LC2137(%rip), %rcx
	call	___assert_rtn
LBB76_20:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$138, %edx
	leaq	LC153(%rip), %rcx
	call	___assert_rtn
LBB76_21:
	leaq	___func__.array_set_elementC(%rip), %rdi
	leaq	LC52(%rip), %rsi
	movl	$141, %edx
	leaq	LC355(%rip), %rcx
	call	___assert_rtn
LBB76_22:                                                   ## %.loopexit
	movq	%rax, %r15
	jmp	LBB76_16


	.align	4, 144
	.globl	_main
_main:                                                      ## @main
LBB77_0:                                                    ## %entry
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movl	%edi, %r14d
	leaq	___t_exit(%rip), %rdi
	call	_atexit
	call	_GC_init
	movl	$24, %edi
	leaq	LC(%rip), %rsi
	movl	$40, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB77_16
LBB77_1:
	movq	%rax, %r15
	movl	$0, 12(%r15)
	movl	$364969966, 8(%r15)
	call	_object_prototype
	cmpl	$364969966, 8(%r15)
	jne	LBB77_15
LBB77_2:                                                    ## %object_create.exit
	movq	%rax, 16(%r15)
	leaq	___closure(%rip), %r12
	call	_closure_object_place
	movq	%r12, 24(%rax)
	leaq	___sym_main(%rip), %rcx
	leaq	___sym_delegate(%rip), %rdx
	subq	%rcx, %rdx
	cmpq	$3, %rdx
	movq	%rax, %r12
	ja	LBB77_5
LBB77_3:
	cmpl	$364969966, 8(%r15)
	jne	LBB77_15
LBB77_4:                                                    ## %object_set_delegate.exit.i
	movq	%r12, 16(%r15)
	jmp	LBB77_14
LBB77_5:
	movq	(%r15), %rax
	movq	%r15, %r13
	movq	%rax, %rcx
	jmp	LBB77_11
	.align	4, 144
LBB77_6:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB77_11
                                                            ## Inner Loop
	leaq	___sym_main(%rip), %rax
	subq	16(%rdx), %rax
	cmpq	$3, %rax
	ja	LBB77_10
LBB77_7:
	testb	$2, 8(%rdx)
	je	LBB77_9
LBB77_8:
	movq	%r12, 24(%rdx)
	jmp	LBB77_14
LBB77_9:
	leaq	LC7(%rip), %rdi
	leaq	___sym_main(%rip), %rsi
	xorb	%al, %al
	call	_printf
	jmp	LBB77_14
LBB77_10:
                                                            ## Loop Depth 1
                                                            ## Loop Header is BB77_11
                                                            ## Inner Loop
	movq	(%rdx), %rax
	movq	%rdx, %r13
	movq	%rax, %rcx
LBB77_11:
                                                            ## Loop Depth 1
                                                            ## Loop Header
                                                            ## Inner Loop
	movq	%rax, %rdx
	testq	%rcx, %rcx
	jne	LBB77_6
LBB77_12:
	movl	$32, %edi
	leaq	LC(%rip), %rsi
	movl	$175, %edx
	call	_GC_debug_malloc
	testq	%rax, %rax
	je	LBB77_16
LBB77_13:                                                   ## %mem_alloc.exit.i
	movl	$0, 8(%rax)
	leaq	___sym_main(%rip), %rcx
	movq	%rcx, 16(%rax)
	movq	%r12, 24(%rax)
	movq	$0, (%rax)
	movq	%rax, (%r13)
LBB77_14:                                                   ## %object_set_slot.exit
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	call	___t_start
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
LBB77_15:                                                   ## %.thread.i
	leaq	___func__.object_set_delegate(%rip), %rdi
	leaq	LC(%rip), %rsi
	movl	$191, %edx
	leaq	LC10(%rip), %rcx
	call	___assert_rtn
LBB77_16:
	leaq	___func__.mem_alloc(%rip), %rdi
	leaq	LC477(%rip), %rsi
	movl	$52, %edx
	leaq	LC578(%rip), %rcx
	call	___assert_rtn


	.align	4, 144
___closure:                                                 ## @__closure
LBB78_0:                                                    ## %ret
	pushq	%rbx
	xorl	%ebx, %ebx
	call	_null_object
	movq	%rbx, %rdx
	popq	%rbx
	ret
	.subsections_via_symbols
	.section	__TEXT,__cstring,cstring_literals
LC:                                                         ## @"\01LC"
	.asciz	"object.c"
___func__.object_alloc:                                     ## @__func__.object_alloc
	.asciz	"object_alloc"
	.align	4
LC2:                                                        ## @"\01LC2"
	.asciz	"ret && \"failed to malloc\""
	.section	__DATA,__data
	.lcomm	___sym_delegate,4,2                         ## @__sym_delegate
	.section	__TEXT,__cstring,cstring_literals
___func__.object_get_slot:                                  ## @__func__.object_get_slot
	.asciz	"object_get_slot"
	.align	4
LC5:                                                        ## @"\01LC5"
	.asciz	"OBJ_VALID(node->value)"
LC6:                                                        ## @"\01LC6"
	.asciz	"target"
	.align	4
LC7:                                                        ## @"\01LC7"
	.asciz	"Warning: trying to overwrite immutable slot: '%p'\n"
___func__.object_set_slot:                                  ## @__func__.object_set_slot
	.asciz	"object_set_slot"
	.align	4
LC9:                                                        ## @"\01LC9"
	.asciz	"!(flags & SLOT_ASSIGNMENT) && \"trying to assign non-existant slot\""
	.align	4
___func__.object_set_delegate:                              ## @__func__.object_set_delegate
	.asciz	"object_set_delegate"
	.align	4
LC10:                                                       ## @"\01LC10"
	.asciz	"OBJ_VALID(object)"
	.align	4
___func__.object_get_delegate:                              ## @__func__.object_get_delegate
	.asciz	"object_get_delegate"
	.section	__DATA,__data
	.lcomm	___sym_apply,4,2                            ## @__sym_apply
	.section	__TEXT,__cstring,cstring_literals
___func__.object_exec:                                      ## @__func__.object_exec
	.asciz	"object_exec"
	.align	4
LC12:                                                       ## @"\01LC12"
	.asciz	"OBJ_VALID(resolved_slot)"
	.align	4
LC13:                                                       ## @"\01LC13"
	.asciz	"OBJ_TYPE(resolved_slot) == OBJ_CLOSURE"
	.align	4
LC14:                                                       ## @"\01LC14"
	.asciz	"0 && \"NOOOOOOOOO\""
	.section	__DATA,__data
	.lcomm	_string_prototype.prototype,8,3             ## @string_prototype.prototype
	.align	3
_string_prototype_m:                                        ## @string_prototype_m
	.quad	850045863
	.space	56
	.lcomm	___sym_print,4,2                            ## @__sym_print
	.lcomm	___sym_puts,4,2                             ## @__sym_puts
	.lcomm	___sym_to_s,4,2                             ## @__sym_to_s
	.lcomm	___sym_clone,4,2                            ## @__sym_clone
	.lcomm	___sym_class,4,2                            ## @__sym_class
	.lcomm	___sym_add,4,2                              ## @__sym_add
	.lcomm	___sym_eq,4,2                               ## @__sym_eq
	.lcomm	___sym_neq,4,2                              ## @__sym_neq
	.lcomm	___sym_size,4,2                             ## @__sym_size
	.section	__TEXT,__cstring,cstring_literals
LC20:                                                       ## @"\01LC20"
	.asciz	"string.c"
___func__.string_cstrC:                                     ## @__func__.string_cstrC
	.asciz	"string_cstrC"
	.align	4
LC121:                                                      ## @"\01LC121"
	.asciz	"OBJ_TYPE(obj) == OBJ_STRING"
LC222:                                                      ## @"\01LC222"
	.asciz	"string"
___func__.string_puts:                                      ## @__func__.string_puts
	.asciz	"string_puts"
	.align	4
LC323:                                                      ## @"\01LC323"
	.asciz	"OBJ_TYPE(self) == OBJ_STRING"
___func__.string_print:                                     ## @__func__.string_print
	.asciz	"string_print"
LC424:                                                      ## @"\01LC424"
	.asciz	"%s"
___func__.string_eq:                                        ## @__func__.string_eq
	.asciz	"string_eq"
	.align	4
LC525:                                                      ## @"\01LC525"
	.asciz	"OBJ_VALID(param)"
___func__.string_to_s:                                      ## @__func__.string_to_s
	.asciz	"string_to_s"
___func__.string_add:                                       ## @__func__.string_add
	.asciz	"string_add"
	.section	__DATA,__data
	.lcomm	_null_object.cached_null,8,3                ## @null_object.cached_null
	.align	3
_null_cache_m:                                              ## @null_cache_m
	.quad	850045863
	.space	56
	.lcomm	_wrapped_null_object.cached_wrap,8,3        ## @wrapped_null_object.cached_wrap
	.align	3
_wrapped_cache_m:                                           ## @wrapped_cache_m
	.quad	850045863
	.space	56
	.section	__TEXT,__cstring,cstring_literals
LC27:                                                       ## @"\01LC27"
	.asciz	"null"
	.section	__DATA,__data
	.lcomm	_closure_prototype.prototype,8,3            ## @closure_prototype.prototype
	.align	3
_closure_prototype_m:                                       ## @closure_prototype_m
	.quad	850045863
	.space	56
	.section	__TEXT,__cstring,cstring_literals
LC30:                                                       ## @"\01LC30"
	.asciz	"closure.c"
	.align	4
___func__.closure_get_fptrC:                                ## @__func__.closure_get_fptrC
	.asciz	"closure_get_fptrC"
	.align	4
LC232:                                                      ## @"\01LC232"
	.asciz	"self_obj->flags & OBJ_METADATA"
LC333:                                                      ## @"\01LC333"
	.asciz	"closure"
LC434:                                                      ## @"\01LC434"
	.asciz	"Closure %p"
	.section	__DATA,__data
	.lcomm	_int_prototype.prototype,8,3                ## @int_prototype.prototype
	.align	3
_int_cache_m:                                               ## @int_cache_m
	.quad	850045863
	.space	56
	.lcomm	___sym_lt,4,2                               ## @__sym_lt
	.lcomm	___sym_le,4,2                               ## @__sym_le
	.lcomm	___sym_gt,4,2                               ## @__sym_gt
	.lcomm	___sym_ge,4,2                               ## @__sym_ge
	.lcomm	___sym_sub,4,2                              ## @__sym_sub
	.lcomm	___sym_mul,4,2                              ## @__sym_mul
	.lcomm	___sym_div,4,2                              ## @__sym_div
	.lcomm	___sym_rem,4,2                              ## @__sym_rem
	.lcomm	___sym_succ,4,2                             ## @__sym_succ
	.section	__TEXT,__cstring,cstring_literals
LC37:                                                       ## @"\01LC37"
	.asciz	"int"
___func__.int_to_s:                                         ## @__func__.int_to_s
	.asciz	"int_to_s"
LC138:                                                      ## @"\01LC138"
	.asciz	"integer.c"
	.align	4
LC239:                                                      ## @"\01LC239"
	.asciz	"OBJ_TYPE(self) == OBJ_INTEGER"
LC340:                                                      ## @"\01LC340"
	.asciz	"%i"
	.section	__DATA,__data
	.lcomm	_bool_prototype.prototype,8,3               ## @bool_prototype.prototype
	.lcomm	___sym_andand,4,2                           ## @__sym_andand
	.lcomm	___sym_oror,4,2                             ## @__sym_oror
	.lcomm	___sym_not,4,2                              ## @__sym_not
	.section	__TEXT,__cstring,cstring_literals
LC42:                                                       ## @"\01LC42"
	.asciz	"bool"
___func__.bool_to_s:                                        ## @__func__.bool_to_s
	.asciz	"bool_to_s"
LC143:                                                      ## @"\01LC143"
	.asciz	"bool.c"
	.align	4
LC244:                                                      ## @"\01LC244"
	.asciz	"OBJ_TYPE(self) == OBJ_BOOL"
LC345:                                                      ## @"\01LC345"
	.asciz	"true"
LC446:                                                      ## @"\01LC446"
	.asciz	"false"
	.section	__DATA,__data
	.lcomm	_bool_false.cached_false,8,3                ## @bool_false.cached_false
	.align	3
_bool_cache_m:                                              ## @bool_cache_m
	.quad	850045863
	.space	56
	.lcomm	_bool_true.cached_true,8,3                  ## @bool_true.cached_true
	.section	__TEXT,__cstring,cstring_literals
LC52:                                                       ## @"\01LC52"
	.asciz	"array.c"
	.align	4
___func__.array_get_elementC:                               ## @__func__.array_get_elementC
	.asciz	"array_get_elementC"
LC153:                                                      ## @"\01LC153"
	.asciz	"data"
	.align	4
___func__.array_set_elementC:                               ## @__func__.array_set_elementC
	.asciz	"array_set_elementC"
	.align	4
LC355:                                                      ## @"\01LC355"
	.asciz	"index >= 0 && index < size && \"index out of bounds\""
___func__.array_get_sizeC:                                  ## @__func__.array_get_sizeC
	.asciz	"array_get_sizeC"
	.align	4
LC456:                                                      ## @"\01LC456"
	.asciz	"OBJ_TYPE(self) == OBJ_ARRAY"
	.section	__DATA,__data
	.lcomm	___sym_at,4,2                               ## @__sym_at
	.lcomm	___sym_join,4,2                             ## @__sym_join
	.lcomm	___sym_inject,4,2                           ## @__sym_inject
	.lcomm	___sym_append,4,2                           ## @__sym_append
	.lcomm	___sym_each_with_index,4,2                  ## @__sym_each_with_index
	.lcomm	___sym_all_q,4,2                            ## @__sym_all_q
	.lcomm	___sym_each,4,2                             ## @__sym_each
	.lcomm	_empty_c,8,3                                ## @empty_c
	.align	3
_array_cache_m:                                             ## @array_cache_m
	.quad	850045863
	.space	56
	.lcomm	_array_prototype.prototype,8,3              ## @array_prototype.prototype
	.section	__TEXT,__cstring,cstring_literals
LC757:                                                      ## @"\01LC757"
	.space	1
LC858:                                                      ## @"\01LC858"
	.asciz	"array"
LC959:                                                      ## @"\01LC959"
	.asciz	"["
LC1060:                                                     ## @"\01LC1060"
	.asciz	", "
LC1161:                                                     ## @"\01LC1161"
	.asciz	"]"
LC166:                                                      ## @"\01LC166"
	.asciz	"start.c"
LC368:                                                      ## @"\01LC368"
	.asciz	"MAIN-----> %p\n"
	.section	__DATA,__data
	.lcomm	___sym_main,4,2                             ## @__sym_main
	.section	__TEXT,__cstring,cstring_literals
___func__.__t_start:                                        ## @__func__.__t_start
	.asciz	"__t_start"
LC469:                                                      ## @"\01LC469"
	.asciz	"cstr"
	.align	4
LC570:                                                      ## @"\01LC570"
	.asciz	"Unhandled exception: %s\n"
	.align	4
LC671:                                                      ## @"\01LC671"
	.asciz	"Unhandled exception\n"
LC73:                                                       ## @"\01LC73"
	.asciz	"Heap size = %d\n"
	.align	4
LC174:                                                      ## @"\01LC174"
	.asciz	"mem usage: %i, num allocs: %i\n"
	.align	4
LC275:                                                      ## @"\01LC275"
	.asciz	"# collections %i\n"
___func__.mem_alloc:                                        ## @__func__.mem_alloc
	.asciz	"mem_alloc"
LC477:                                                      ## @"\01LC477"
	.asciz	"memory.c"
	.align	4
LC578:                                                      ## @"\01LC578"
	.asciz	"ret && \"failed to alloc space\""
	.section	__DATA,__data
	.lcomm	_object_prototype.prototype,8,3             ## @object_prototype.prototype
	.align	3
_object_prototype_m:                                        ## @object_prototype_m
	.quad	850045863
	.space	56
	.lcomm	___sym_inspect,4,2                          ## @__sym_inspect
	.lcomm	___sym_dotdot,4,2                           ## @__sym_dotdot
	.section	__TEXT,__cstring,cstring_literals
LC83:                                                       ## @"\01LC83"
	.asciz	"OBJ_METADATA|"
LC184:                                                      ## @"\01LC184"
	.asciz	"OBJ_CLASS|"
LC285:                                                      ## @"\01LC285"
	.asciz	"OBJ_NULL|"
LC386:                                                      ## @"\01LC386"
	.asciz	"OBJ_INTEGER|"
LC487:                                                      ## @"\01LC487"
	.asciz	"OBJ_STRING|"
LC588:                                                      ## @"\01LC588"
	.asciz	"OBJ_CLOSURE|"
LC689:                                                      ## @"\01LC689"
	.asciz	"OBJ_FLOAT|"
LC790:                                                      ## @"\01LC790"
	.asciz	"OBJ_BOOL|"
LC891:                                                      ## @"\01LC891"
	.asciz	"OBJ_ARRAY|"
LC992:                                                      ## @"\01LC992"
	.asciz	"OBJ_PROC|"
LC1093:                                                     ## @"\01LC1093"
	.asciz	"0"
LC1194:                                                     ## @"\01LC1194"
	.asciz	"%p"
LC1295:                                                     ## @"\01LC1295"
	.asciz	"== %s "
LC1396:                                                     ## @"\01LC1396"
	.asciz	"="
LC1497:                                                     ## @"\01LC1497"
	.asciz	"\n"
	.align	4
LC1598:                                                     ## @"\01LC1598"
	.asciz	"   magic: 0x%08X\n"
	.align	4
LC1699:                                                     ## @"\01LC1699"
	.asciz	"   flags: 0x%04X (%s)\n"
	.align	4
LC17100:                                                    ## @"\01LC17100"
	.asciz	"   delegate: %p\n"
	.align	4
LC18101:                                                    ## @"\01LC18101"
	.asciz	"   first node: %p\n"
	.align	4
LC19102:                                                    ## @"\01LC19102"
	.asciz	"   metadata: %p\n"
	.align	4
LC20103:                                                    ## @"\01LC20103"
	.asciz	"   name                          value       flags"
LC21:                                                       ## @"\01LC21"
	.asciz	"   "
LC22:                                                       ## @"\01LC22"
	.asciz	"%p 0x%04X ("
LC23:                                                       ## @"\01LC23"
	.asciz	"SLOT_MUTABLE|"
LC24:                                                       ## @"\01LC24"
	.asciz	"SLOT_METADATA|"
LC25:                                                       ## @"\01LC25"
	.asciz	")"
LC26:                                                       ## @"\01LC26"
	.asciz	"[Object: %p]"
LC27104:                                                    ## @"\01LC27104"
	.asciz	"object"
	.section	__DATA,__data
	.lcomm	___sym___start,4,2                          ## @__sym___start
	.lcomm	___sym___end,4,2                            ## @__sym___end
	.lcomm	_range_prototype.prototype,8,3              ## @range_prototype.prototype
	.align	3
_range_prototype_m:                                         ## @range_prototype_m
	.quad	850045863
	.space	56
	.section	__TEXT,__cstring,cstring_literals
___func__.range_each:                                       ## @__func__.range_each
	.asciz	"range_each"
LC136:                                                      ## @"\01LC136"
	.asciz	"range.c"
LC2137:                                                     ## @"\01LC2137"
	.asciz	"element"

