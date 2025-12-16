	.file	"scalarO0.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"w"
.LC2:
	.string	"scalar_o3.txt"
.LC7:
	.string	"%d,%.6f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB334:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	_ZL5sizes(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	20(%r14), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	leaq	a(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	fopen@PLT
	movss	.LC5(%rip), %xmm2
	movdqa	.LC3(%rip), %xmm3
	movq	%rax, %rbx
	shufps	$0, %xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L6:
	movl	(%r14), %r15d
	testl	%r15d, %r15d
	jle	.L2
	leal	-1(%r15), %eax
	cmpl	$2, %eax
	jbe	.L7
	movl	%r15d, %edx
	movdqa	.LC0(%rip), %xmm1
	movq	%rbp, %rcx
	leaq	a(%rip), %rax
	shrl	$2, %edx
	salq	$4, %rdx
	addq	%rbp, %rdx
	.p2align 4,,10
	.p2align 3
.L4:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	cvtdq2ps	%xmm0, %xmm0
	addps	%xmm2, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L4
	movl	%r15d, %eax
	andl	$-4, %eax
	testb	$3, %r15b
	je	.L2
.L3:
	pxor	%xmm0, %xmm0
	movslq	%eax, %rdx
	cvtsi2ssl	%eax, %xmm0
	addss	.LC5(%rip), %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	leal	1(%rax), %edx
	cmpl	%edx, %r15d
	jle	.L2
	pxor	%xmm0, %xmm0
	movslq	%edx, %rsi
	addl	$2, %eax
	cvtsi2ssl	%edx, %xmm0
	addss	.LC5(%rip), %xmm0
	movss	%xmm0, (%rcx,%rsi,4)
	cmpl	%eax, %r15d
	jle	.L2
	pxor	%xmm0, %xmm0
	movslq	%eax, %rdx
	cvtsi2ssl	%eax, %xmm0
	addss	.LC5(%rip), %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
.L2:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	addq	$4, %r14
	movq	%rax, %r12
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movl	%r15d, %ecx
	movq	%rbx, %rdi
	subq	%r12, %rax
	leaq	.LC7(%rip), %rdx
	movl	$2, %esi
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	divsd	.LC6(%rip), %xmm0
	call	__fprintf_chk@PLT
	cmpq	%r13, %r14
	movdqa	.LC3(%rip), %xmm3
	movaps	.LC4(%rip), %xmm2
	jne	.L6
	movq	%rbx, %rdi
	call	fclose@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	xorl	%eax, %eax
	leaq	a(%rip), %rcx
	jmp	.L3
	.cfi_endproc
.LFE334:
	.size	main, .-main
	.globl	a
	.bss
	.align 32
	.type	a, @object
	.size	a, 640000
a:
	.zero	640000
	.section	.rodata
	.align 16
	.type	_ZL5sizes, @object
	.size	_ZL5sizes, 20
_ZL5sizes:
	.long	16
	.long	160
	.long	1600
	.long	16000
	.long	160000
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC3:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC4:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.set	.LC5,.LC4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
