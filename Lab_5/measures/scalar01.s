	.file	"scalarO0.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"w"
.LC2:
	.string	"scalar_o0.txt"
.LC5:
	.string	"%d,%.6f\n"
#NO_APP
	.text
	.globl	main
	.type	main, @function
main:
.LFB2345:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	fopen@PLT
	movq	%rax, %r13
	leaq	_ZL5sizes(%rip), %r14
	leaq	20(%r14), %r15
	leaq	a(%rip), %rbx
	jmp	.L11
.L5:
	addss	(%rax), %xmm0
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L5
.L7:
	addss	12(%rsp), %xmm0
	movss	%xmm0, 12(%rsp)
	subl	$1, %ecx
	je	.L6
.L4:
	movq	%rbx, %rax
	pxor	%xmm0, %xmm0
	testl	%ebp, %ebp
	jg	.L5
	jmp	.L7
.L6:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movl	%ebp, %ecx
	leaq	.LC5(%rip), %rdx
	movl	$2, %esi
	movq	%r13, %rdi
	movl	$1, %eax
	call	__fprintf_chk@PLT
	pxor	%xmm0, %xmm0
	cvtss2sd	12(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L18
	cmpb	$0, 56(%rbp)
	je	.L9
	movzbl	67(%rbp), %eax
.L10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	addq	$4, %r14
	cmpq	%r15, %r14
	je	.L19
.L11:
	movl	(%r14), %ebp
	testl	%ebp, %ebp
	jle	.L2
	movslq	%ebp, %rdx
	movl	$0, %eax
.L3:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	addss	.LC3(%rip), %xmm0
	movss	%xmm0, (%rbx,%rax,4)
	addq	$1, %rax
	cmpq	%rdx, %rax
	jne	.L3
.L2:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	movslq	%ebp, %rax
	leaq	(%rbx,%rax,4), %rdx
	movl	$1000, %ecx
	movl	$0x00000000, 12(%rsp)
	jmp	.L4
.L18:
	call	_ZSt16__throw_bad_castv@PLT
.L9:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*48(%rax)
	jmp	.L10
.L19:
	movq	%r13, %rdi
	call	fclose@PLT
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
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
	.cfi_endproc
.LFE2345:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC3:
	.long	1065353216
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
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
