.text
.globl sum
.type sum, @function
sum:
movl %esi, %eax
addl %edi, %eax
ret
.size sum, .-sum

.section .note.GNU-stack,"",@progbits

