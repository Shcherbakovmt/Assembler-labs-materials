#include <stdio.h>
int a = 0;
int b = 5;
int summm = 0;
int main(void)
{

    int i = 0;

    asm(
        "    movl $0, %eax \n"
        "    movl $10, %ecx \n"
        ".sum: \n"

        "    addl %ecx, %eax \n"
        "    loop .sum \n"
        "movl %eax, a(%rip) \n"
    );

    
    printf("%d", a);

}
