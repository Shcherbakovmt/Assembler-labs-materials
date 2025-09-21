	.file	"12_print.c"
	.text
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 40
a:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.globl	element
	.bss
	.align 4
	.type	element, @object
	.size	element, 4
element:
	.zero	4
	.globl	counter
	.align 4
	.type	counter, @object
	.size	counter, 4
counter:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 9 "12_print.c" 1
	   movl    $0, %ecx 
   jmp .Check_counter 
.for_iteration: 
   movl    %ecx, %eax 
   cltq 
   leaq 0(, %rax, 4), %rdx 
   leaq a(%rip), %rax 
   movl (%rdx,%rax), %ebx 
   movl %ebx, element(%rip) 
   addl $1, %ecx 
   movl %ecx, counter(%rip) 

# 0 "" 2
#NO_APP
	movl	element(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
#APP
# 25 "12_print.c" 1
	.Check_counter: 
   movl counter(%rip), %ecx 
   cmpl $9, %ecx 
   jle .for_iteration 

# 0 "" 2
#NO_APP
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
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
