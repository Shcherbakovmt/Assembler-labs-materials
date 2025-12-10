#include <stdio.h>
#include <float.h>
#include <math.h>

int main() {
    float overflow = FLT_MAX * 2.0f;
    printf("Overflow float: %e\n", overflow);

    float min_pos = FLT_MIN;
    printf("Min normalized float: %e\n", min_pos);

    float denorm = min_pos / 2000000.0f;
    printf("Denormalized float: %e\n", denorm);
    printf("Is denormal? %s\n", (denorm < FLT_MIN && denorm != 0.0f) ? "Yes" : "No");
    return 0;
}
