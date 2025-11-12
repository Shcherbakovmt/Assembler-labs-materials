#include <stdio.h>  

struct point
{
    int x_float;
    int y_int;
    char name;
    int array[3];
    
};



struct point function(struct point* pointer)
{
    struct point local_point = *pointer;
    int a = 0;
    scanf("%d", &a);
    local_point.y_int += 1;
    local_point.name = 'A';
    return local_point;
}

void main()
{
    
    struct point Global_Point;
    scanf("%d", &Global_Point.y_int);
    
    
    struct point b = function(&Global_Point);
    printf("%d", b.y_int);
    

}