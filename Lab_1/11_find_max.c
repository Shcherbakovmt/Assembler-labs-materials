#include <stdio.h>
int a[10] = {1,2,3,4,52,6,77,8,9,10};
int maxx = 0;
int main(void)
{


    asm(
        "   movl    $-100000, maxx(%rip) \n"
	    "   movl    $0, %ecx \n"
        "   jmp .Check_counter \n"

        ".for_iteration: \n"
        
        "   movl    %ecx, %eax \n"
        "   cltq \n"
        "   leaq 0(, %rax, 4), %rdx \n"
        "   leaq a(%rip), %rax \n"
        "   movl (%rdx,%rax), %ebx \n"
        "   addl $1, %ecx \n"

        "   movl    maxx(%rip), %eax \n"
        "   cmpl    %eax, %ebx \n"
        "   jge     .Change_max \n"
        "   jmp .Check_counter \n"
        
        ".Change_max: \n"
        "   movl    %ebx, maxx(%rip) \n"
        "   jmp .Check_counter \n"

        //"   cmpl $9, %ecx \n"
        //"   jle .for_iteration \n"
        ".Check_counter: \n"
        "   cmpl $9, %ecx \n"
        "   jle .for_iteration \n"
    );
    
    printf("%d", maxx);

}
