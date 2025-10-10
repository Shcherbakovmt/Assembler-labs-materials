#include <stdio.h>
int a = 0;
int b = 10;
int summm = 0;
int main(void)
{
    int i = 0;

    asm(
        ".Add_10:\n"
        "movl summm(%rip), %eax\n"
        "addl $10, %eax\n"
        "movl %eax, summm(%rip)\n"
        "addl $1, -4(%rbp)\n"
    );

    printf("%d", summm);
    printf("\n");

    asm(
        ".For_5_times:\n"
        "cmpl $5, -4(%rbp)\n"
        "jle .Add_10"
        
    );
    


    

}
