#include <stdio.h>  

struct point
{
    int array[100000];
};

struct point Global_Point;

struct point function(struct point pointer)
{
    struct point temp_point = pointer;
    return temp_point;
}

void main()
{

    Global_Point.array[0] = 27;
    
    struct point b = function(Global_Point);

}