#include <xmmintrin.h>
#include <stdio.h>
#include <stdint.h>
#include <time.h>
#include <cfloat>

float test_denorm(float d) {
    float res = d;
    for (int i = 0; i < 100000000; ++i)
        res += d/2;
        res *= 1.5f;
    return res;
}

int main() {
    float min_norm = FLT_MIN;
    float min_denorm = min_norm / 200.0f;

    clock_t start, end;
    // С DAZ и FTZ
    _mm_setcsr(_mm_getcsr() | 0x8040);
    start = clock();
    test_denorm(min_denorm);
    end = clock();
    printf("With DAZ/FTZ: %ld ms\n", (end - start) * 1000 / CLOCKS_PER_SEC);

    // Без DAZ и FTZ
    _mm_setcsr(_mm_getcsr() & ~0x8040);
    start = clock();
    test_denorm(min_denorm);
    end = clock();
    printf("Without DAZ/FTZ: %ld ms\n", (end - start) * 1000 / CLOCKS_PER_SEC);

    return 0;
}
