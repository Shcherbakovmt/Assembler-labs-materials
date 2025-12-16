#include <cstdio>

const int N = 1600;
float a[N];

int main() {
    // Заполняем массив
    for (int i = 0; i < N; ++i)
        a[i] = i + 1.0f;

    // Скалярное среднее (проверка)
    double scalar_sum = 0.0;
    for (int i = 0; i < N; ++i)
        scalar_sum += a[i];
    double scalar_avg = scalar_sum / N;
    std::printf("scalar_avg = %.6f\n", scalar_avg);

    float tmp[4] = {0,0,0,0};

    asm volatile (
        "movq   %[ptr], %%rsi      \n\t"  // rsi = &a[0]
        "movl   %[cnt], %%ecx      \n\t"  // ecx = N
        "pxor   %%xmm0, %%xmm0     \n\t"  // xmm0 = 0
        "test   %%ecx, %%ecx       \n\t"
        "jz     2f                 \n\t"

        "1:                        \n\t"
        "sub    $4, %%ecx          \n\t"  // ecx -= 4
        "jl     2f                 \n\t"  // если < 4 элементов — выходим
        "movups (%%rsi), %%xmm1    \n\t"  // загрузить 4 float
        "addps %%xmm1, %%xmm0      \n\t"  // накопить в xmm0
        "add    $16, %%rsi         \n\t"  // rsi += 4*sizeof(float)
        "jmp    1b                 \n\t"

        "2:                        \n\t"
        "movaps %%xmm0, %0         \n\t"  // сохранить в tmp[4]
        : "=m"(tmp)
        : [ptr] "r"(a), [cnt] "r"(N)
        : "rsi", "ecx", "xmm0", "xmm1", "memory"
    );

    float sse_sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];

    // Хвост, если N не кратно 4
    int processed = (N / 4) * 4;
    for (int i = processed; i < N; ++i)
        sse_sum += a[i];

    float sse_avg = sse_sum / N;
    std::printf("sse_avg = %.6f\n", (double)sse_avg);

    return 0;
}
