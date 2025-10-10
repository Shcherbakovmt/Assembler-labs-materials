#include <stdio.h>  

struct point
{
    int x_float;
    int y_int;
    char name;
    int array[10];
    
};

struct point Global_Point;

struct point function(struct point a)
{
    return a;
}

void main()
{
    Global_Point.x_float = 2;
    Global_Point.y_int = 10;
    Global_Point.name = 'p';
    Global_Point.array[5] = 27;

    printf("%d", function(Global_Point).name );
}