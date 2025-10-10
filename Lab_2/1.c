#include <stdio.h>  

void function()
{
    int a = 5;
    int b = 10;
    a += b;
    return;
}
char function_char()
{
    char a = 'c';
    return a;
}

int increment(int a)
{
    return a + 1;
}

int summ(int a, int b, int c)
{
    return a + b + c;
}

void main()
{
    function();

    printf("%c", function_char());

    printf("%d", increment(5));

    printf("%d", summ(10,50,90));

}