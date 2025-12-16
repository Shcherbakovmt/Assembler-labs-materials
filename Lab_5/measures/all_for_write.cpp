#include <cstdio>
#include <chrono>

const int sizes[] = {16, 160, 1600, 16000, 160000};
const int num_sizes = 5;
const int iters = 1000;

float a[160000]; 

int main() {
    FILE* f = fopen("benchmark.txt", "w");
    
    for (int s = 0; s < num_sizes; ++s) {
        int N = sizes[s];
        

        for (int i = 0; i < N; ++i)
            a[i] = i + 1.0f;
        

        auto t1 = std::chrono::high_resolution_clock::now();
        float acc1 = 0.0f;
        for (int k = 0; k < iters; ++k) {
            float sum = 0.0f;
            for (int i = 0; i < N; ++i) sum += a[i];
            acc1 += sum;
        }
        auto t2 = std::chrono::high_resolution_clock::now();
        double time_scalar = std::chrono::duration<double>(t2 - t1).count();

 
        t1 = std::chrono::high_resolution_clock::now();
        float acc2 = 0.0f;
        for (int k = 0; k < iters; ++k) {
            float tmp[4] = {0,0,0,0};
            asm volatile (
                "movq   %[ptr], %%rsi      \n\t"
                "movl   %[cnt], %%ecx      \n\t"
                "pxor   %%xmm0, %%xmm0     \n\t"
                "test   %%ecx, %%ecx       \n\t"
                "jz     2f                 \n\t"
                "1:                        \n\t"
                "sub    $4, %%ecx          \n\t"
                "jl     2f                 \n\t"
                "movups (%%rsi), %%xmm1    \n\t"
                "addps %%xmm1, %%xmm0      \n\t"
                "add    $16, %%rsi         \n\t"
                "jmp    1b                 \n\t"
                "2:                        \n\t"
                "movaps %%xmm0, %0         \n\t"
                : "=m"(tmp)
                : [ptr] "r"(a), [cnt] "r"(N)
                : "rsi", "ecx", "xmm0", "xmm1", "memory"
            );
            float sse_sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];
            int processed = (N / 4) * 4;
            for (int i = processed; i < N; ++i) sse_sum += a[i];
            acc2 = sse_sum;
        }
        t2 = std::chrono::high_resolution_clock::now();
        double time_sse = std::chrono::duration<double>(t2 - t1).count();


        t1 = std::chrono::high_resolution_clock::now();
        float acc3 = 0.0f;
        for (int k = 0; k < iters; ++k) {
            float s0 = 0.0f, s1 = 0.0f;
            int i = 0;
            for (; i + 1 < N; i += 2) {
                s0 += a[i]; s1 += a[i + 1];
            }
            if (i < N) s0 += a[i];
            acc3 += (s0 + s1);
        }
        t2 = std::chrono::high_resolution_clock::now();
        double time_two = std::chrono::duration<double>(t2 - t1).count();

 
        t1 = std::chrono::high_resolution_clock::now();
        float acc4 = 0.0f;
        for (int k = 0; k < iters; ++k) {
            float t0 = 0.0f, t1s = 0.0f, t2s = 0.0f, t3s = 0.0f;
            int i = 0;
            for (; i + 3 < N; i += 4) {
                t0  += a[i];   t1s += a[i + 1];
                t2s += a[i + 2]; t3s += a[i + 3];
            }
            for (; i < N; ++i) t0 += a[i];
            acc4 += (t0 + t1s + t2s + t3s);
        }
        t2 = std::chrono::high_resolution_clock::now();
        double time_four = std::chrono::duration<double>(t2 - t1).count();

        
        fprintf(f, "%d,%.6f,%.6f,%.6f,%.6f\n", 
                N, time_scalar, time_sse, time_two, time_four);
        
        printf("N=%d: scalar=%.6f sse=%.6f two=%.6f four=%.6f\n", 
               N, time_scalar, time_sse, time_two, time_four);
    }
    fclose(f);
    return 0;
}
