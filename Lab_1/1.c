#include <stdio.h>
int summ = 0;
int a = 10;
int main(void)
{
    asm(    "movl summ(%rip), %eax\n"
            "movl a(%rip), %ebx\n"
            "addl %eax, %ebx\n"
            "movl %ebx, summ(%rip)\n"
            );
    printf("%d", summ);
    return 0;
}
