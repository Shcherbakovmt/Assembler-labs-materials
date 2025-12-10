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
    unsigned int u = 12345;
    int i = -12345;

    printf("unsigned int decimal: %u\n", u);
    printf("unsigned int hex: 0x%08x\n", u);
    printf("unsigned int binary: ");
    print_binary_with_spaces(u);

    printf("int decimal: %d\n", i);
    printf("int hex: 0x%08x\n", (unsigned int)i);
    printf("int binary: ");
    print_binary_with_spaces((uint32_t)i);

    return 0;
}
