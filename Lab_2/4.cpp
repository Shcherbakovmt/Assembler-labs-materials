
struct point
{
    int x_float;
    int y_int;
    char name;
    int array[3];
    
};

struct point Global_Point;

point function(struct point& pointer)
{
    return pointer;
}

int main()
{
    Global_Point.x_float = 2;
    Global_Point.y_int = 10;
    Global_Point.name = 'p';
    Global_Point.array[0] = 27;
    
    struct point b = function(Global_Point);

}