#include <stdio.h>
int b = 5;
int a = 10;
int main(void)
{
    asm(
    ".Decrease: \n"
        "movl a(%rip), %eax \n"
        "subl $1, %eax \n"
        "movl %eax, a(%rip) \n"
    ".Compare_a_b: \n"
        "movl a(%rip), %eax \n"
        "movl b(%rip), %ebx \n"
        "cmpl %eax, %ebx \n"
        "jle .Decrease \n"
    );
    printf("%d", a);
}