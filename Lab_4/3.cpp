#include <stdio.h>
#include <stdint.h>

void print_binary_with_spaces(uint32_t value) {
    for(int i = 31; i >= 0; i--) {
        printf("%d", (value >> i) & 1);
        if (i % 4 == 0 && i != 0)
            printf(" ");
    }
    printf("\n");
}

int main() {
    float large = 1.0e20f;      // очень большое число
    float small = 1.0f;         // относительно маленькое число

    printf("Before addition:\n");
    printf("large decimal: %e\n", large);
    printf("large hex: 0x%08x\n", *(uint32_t*)&large);
    printf("large binary: ");
    print_binary_with_spaces(*(uint32_t*)&large);

    float result = large + small;  // Добавляем маленькое число к большому

    printf("\nAfter addition:\n");
    printf("result decimal: %e\n", result);
    printf("result hex: 0x%08x\n", *(uint32_t*)&result);
    printf("result binary: ");
    print_binary_with_spaces(*(uint32_t*)&result);

    // Показываем, что result == large (потеря точности, переполнение мантиссы)
    printf("\nIs result equal to large? %s\n", (result == large) ? "YES" : "NO");

    return 0;
}
