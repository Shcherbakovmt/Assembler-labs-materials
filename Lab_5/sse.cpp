#include <cstdio>
#include <chrono>

const int N = 16000;
float a[N];

int main() {
    for (int i = 0; i < N; ++i)
        a[i] = i + 1.0f;

    const int iters = 1000;

    auto t1 = std::chrono::high_resolution_clock::now();
    auto t2 = std::chrono::high_resolution_clock::now();

    double time_scalar = std::chrono::duration<double>(t2 - t1).count();

    // 2) SSE + asm (float)
    t1 = std::chrono::high_resolution_clock::now();
    float acc2 = 0.0f;
    for (int k = 0; k < iters; ++k) {
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
            "addps %%xmm1, %%xmm0      \n\t"  // накопить
            "add    $16, %%rsi         \n\t"  // rsi += 4*sizeof(float)
            "jmp    1b                 \n\t"

            "2:                        \n\t"
            "movaps %%xmm0, %0         \n\t"  // сохранить в tmp[4]
            : "=m"(tmp)
            : [ptr] "r"(a), [cnt] "r"(N)
            : "rsi", "ecx", "xmm0", "xmm1", "memory"
        );

        float sse_sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];

        acc2 = sse_sum;
    }
    t2 = std::chrono::high_resolution_clock::now();
    double time_sse = std::chrono::duration<double>(t2 - t1).count();

    std::printf("N=%d iters=%d\n", N, iters);
    std::printf("sse   : %f  acc=%f\n", time_sse,   acc2);
}
