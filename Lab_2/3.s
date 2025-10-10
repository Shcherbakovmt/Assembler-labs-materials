	.file	"3.c"
	.text
	.globl	Global_Point
	.bss
	.align 32
	.type	Global_Point, @object
	.size	Global_Point, 52
Global_Point:
	.zero	52
	.text
	.globl	function
	.type	function, @function
function:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	24(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	32(%rbp), %rcx
	movq	40(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	48(%rbp), %rcx
	movq	56(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	64(%rbp), %edx
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	function, .-function
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$2, Global_Point(%rip)
	movl	$10, 4+Global_Point(%rip)
	movb	$112, 8+Global_Point(%rip)
	movl	$27, 32+Global_Point(%rip)
	leaq	-80(%rbp), %rdx
	subq	$56, %rsp
	movq	%rsp, %rax
	movq	Global_Point(%rip), %rcx
	movq	8+Global_Point(%rip), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16+Global_Point(%rip), %rcx
	movq	24+Global_Point(%rip), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32+Global_Point(%rip), %rcx
	movq	40+Global_Point(%rip), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movl	48+Global_Point(%rip), %ecx
	movl	%ecx, 48(%rax)
	movq	%rdx, %rdi
	call	function
	addq	$56, %rsp
	movzbl	-72(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
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
