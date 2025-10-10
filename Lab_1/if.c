#include <stdio.h>
int b = 5;
int a = 10;
int main(void)
{
    asm(

    ".Compare_a_b: \n"
        "movl a(%rip), %eax \n"
        "movl b(%rip), %ebx \n"
        "cmpl %eax, b(%rip) \n"
        "jle .Decrease \n"
    ".Decrease: \n"
        "subl $1, a(%rip) \n"
    );
    printf("%d", a);
}