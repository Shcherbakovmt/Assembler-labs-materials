#include <stdio.h>
int a[10] = {1,2,3,4,5,6,7,8,9,10};
int element = 0;
int counter = 0;
int main(void)
{


    asm(
	    "   movl    $0, %ecx \n"
        "   jmp .Check_counter \n"

        ".for_iteration: \n"
        "   movl    %ecx, %eax \n"
        "   cltq \n"
        "   leaq 0(, %rax, 4), %rdx \n"
        "   leaq a(%rip), %rax \n"
        "   movl (%rdx,%rax), %ebx \n"
        "   movl %ebx, element(%rip) \n"
        "   addl $1, %ecx \n"
        "   movl %ecx, counter(%rip) \n"
    );
    printf("%d", element);
    printf("\n");
    asm(

        //"   cmpl $9, %ecx \n"
        //"   jle .for_iteration \n"
        ".Check_counter: \n"
        "   movl counter(%rip), %ecx \n"
        "   cmpl $9, %ecx \n"
        "   jle .for_iteration \n"
    );
    


}
