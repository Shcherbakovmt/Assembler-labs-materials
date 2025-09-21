	.file	"9.c"
	.text
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	10
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	5
	.globl	max
	.bss
	.align 4
	.type	max, @object
	.size	max, 4
max:
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
# 9 "9.c" 1
	Compare: 
    movl a(%rip), %eax 
    movl b(%rip), %ebx 
    cmpl %eax, %ebx 
    jge mov_max_to_a 
    movl b(%rip), %ebx 
    movl %eax, a(%rip) 
    jmp pass 
mov_max_to_a: 
    movl %ebx, a(%rip) 
pass: 

# 0 "" 2
#NO_APP
	movl	a(%rip), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
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
