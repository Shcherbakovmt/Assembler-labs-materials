#include <stdio.h>
int b = 10;
int a[5] = {1,2,3,4,5};
int main(void)
{
    for(unsigned int i = 0; i < 10; i++)
    {
        a[i] += 1;
    }
}
