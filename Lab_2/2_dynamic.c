#include <stdio.h>  
#include <malloc.h>

int function(int k)
{
    int* a = malloc( 100 * sizeof(int) );
    a[4] = 1;
    return a[4] * k;
}

void main()
{

    printf("%d", function(10));

}