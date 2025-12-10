#include <stdio.h>
#include <stdint.h>
#include <math.h>

void print_binary_with_spaces_32(uint32_t value) {
    for(int i = 31; i >= 0; i--) {
        printf("%d", (value >> i) & 1);
        if (i % 4 == 0 && i != 0)
            printf(" ");
    }
    printf("\n");
}

void print_binary_with_spaces_64(uint64_t value) {
    for(int i = 63; i >= 0; i--) {
        printf("%llu", (value >> i) & 1ULL);
        if (i % 4 == 0 && i != 0)
            printf(" ");
    }
    printf("\n");
}

int main() {
    float f = 1.234f;
    double d = 1.23456789;

    uint32_t f_raw = *(uint32_t*)&f;
    uint64_t d_raw = *(uint64_t*)&d;

    printf("float decimal: %f\n", f);
    printf("float hex: 0x%08x\n", f_raw);
    printf("float binary: ");
    print_binary_with_spaces_32(f_raw);

    printf("double decimal: %lf\n", d);
    printf("double hex: 0x%016llx\n", d_raw);
    printf("double binary: ");
    print_binary_with_spaces_64(d_raw);

    // Специальные значения для float
    float f_nan = NAN;
    float f_inf = INFINITY;
    float f_ninf = -INFINITY;
    float f_zero = 0.0f;

    printf("\nSpecial float values:\n");

    uint32_t nan_raw = *(uint32_t*)&f_nan;
    printf("NaN decimal: %f\n", f_nan);
    printf("NaN hex: 0x%08x\n", nan_raw);
    printf("NaN binary: ");
    print_binary_with_spaces_32(nan_raw);

    uint32_t inf_raw = *(uint32_t*)&f_inf;
    printf("Infinity decimal: %f\n", f_inf);
    printf("Infinity hex: 0x%08x\n", inf_raw);
    printf("Infinity binary: ");
    print_binary_with_spaces_32(inf_raw);

    uint32_t ninf_raw = *(uint32_t*)&f_ninf;
    printf("Negative Infinity decimal: %f\n", f_ninf);
    printf("Negative Infinity hex: 0x%08x\n", ninf_raw);
    printf("Negative Infinity binary: ");
    print_binary_with_spaces_32(ninf_raw);

    uint32_t zero_raw = *(uint32_t*)&f_zero;
    printf("Zero decimal: %f\n", f_zero);
    printf("Zero hex: 0x%08x\n", zero_raw);
    printf("Zero binary: ");
    print_binary_with_spaces_32(zero_raw);

    return 0;
}
