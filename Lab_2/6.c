#include <stdio.h>  

int recoursive_function(int x, int summ)
{
    if (x < 0)
    {
        return summ;
    }
    else
    {
        return recoursive_function(x-1, summ + x);
    }
}

void main()
{
    int a = 253000;
    printf("%d", recoursive_function(a,0) );


}