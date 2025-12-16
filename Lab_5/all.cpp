#include <cstdio>
#include <chrono>

const int N = 1600;
float a[N];

int main() {
    for (int i = 0; i < N; ++i)
        a[i] = i + 1.0f;

    const int iters = 1000;

    // 1) скаляр (float)
    auto t1 = std::chrono::high_resolution_clock::now();
    float acc1 = 0.0f;
    for (int k = 0; k < iters; ++k) {
        float sum = 0.0f;
        for (int i = 0; i < N; ++i)
            sum += a[i];
        acc1 += sum;
    }
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

    // 3) две суммы (float)
    t1 = std::chrono::high_resolution_clock::now();
    float acc3 = 0.0f;
    for (int k = 0; k < iters; ++k) {
        float s0 = 0.0f, s1 = 0.0f;
        int i = 0;
        for (; i + 1 < N; i += 2) {
            s0 += a[i];
            s1 += a[i + 1];
        }
        if (i < N) s0 += a[i];
        acc3 += (s0 + s1);
    }
    t2 = std::chrono::high_resolution_clock::now();
    double time_two = std::chrono::duration<double>(t2 - t1).count();

    // 4) четыре суммы (float)
    t1 = std::chrono::high_resolution_clock::now();
    float acc4 = 0.0f;
    for (int k = 0; k < iters; ++k) {
        float t0 = 0.0f, t1s = 0.0f, t2s = 0.0f, t3s = 0.0f;
        int i = 0;
        for (; i + 3 < N; i += 4) {
            t0  += a[i];
            t1s += a[i + 1];
            t2s += a[i + 2];
            t3s += a[i + 3];
        }
        for (; i < N; ++i)
            t0 += a[i];
        acc4 += (t0 + t1s + t2s + t3s);
    }
    t2 = std::chrono::high_resolution_clock::now();
    double time_four = std::chrono::duration<double>(t2 - t1).count();

    // вывод
    std::printf("N=%d iters=%d\n", N, iters);
    std::printf("scalar: %f  acc=%f\n", time_scalar, acc1);
    std::printf("sse   : %f  acc=%f\n", time_sse,   acc2);
    std::printf("two   : %f  acc=%f\n", time_two,   acc3);
    std::printf("four  : %f  acc=%f\n", time_four,  acc4);
}
