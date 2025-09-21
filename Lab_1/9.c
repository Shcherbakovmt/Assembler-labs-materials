#include <stdio.h>
int a = 10;
int b = 5;
int max = 0;
int main(void)
{


    asm(
        //"subl $4, %rsp \n"
        //"movl $0, -4(%rbp) \n"

        "Compare: \n"
        "    movl a(%rip), %eax \n"
        "    movl b(%rip), %ebx \n"
        "    cmpl %eax, %ebx \n"
        "    jge mov_max_to_a \n"
        "    movl b(%rip), %ebx \n"
        "    movl %eax, a(%rip) \n"
        "    jmp pass \n"

        "mov_max_to_a: \n"
        "    movl %ebx, a(%rip) \n"

        "pass: \n"
        ""

    );

    
    printf("%d", a);

}
