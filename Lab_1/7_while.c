#include <stdio.h>
int a = 0;
int b = 5;
int summm = 0;
int main(void)
{

    int i = 0;

    asm(
        ".Increment: \n"
        "    movl a(%rip), %eax \n"
        "    addl $1, %eax \n"
        "    movl %eax, a(%rip) \n"
        "    jmp .While_al10 \n"
        ""
        ".While_al10: \n"
        "    movl a(%rip), %eax \n"
        "    cmpl $10, %eax \n"
        "    jl .Increment \n"
        
    );
    
    printf("%d", a);

}
