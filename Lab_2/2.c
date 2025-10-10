#include <stdio.h>  


int function(int k)
{
    int a[] = {1,2,3,4,5};
    return a[4] * k;
}

void main()
{

    printf("%d", function(10));

}