#include <stdio.h>

int main() {
    float a = 1e30, b = -1e30, c = 1.0f;
    float res1 = (a + b) + c; // 1.0
    float res2 = a + (b + c); // 0.0
    printf("(a + b) + c: %f\n", res1);
    printf("a + (b + c): %f\n", res2);
    return 0;
}
