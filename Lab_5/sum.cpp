#include <cstdio>
#include <chrono>

const int N = 1600;
float a[N];

int main() {
    for (int i = 0; i < N; ++i)
        a[i] = i + 1.0f;

    const int iters = 100;

    // 1) скаляр (float)
    auto t1 = std::chrono::high_resolution_clock::now();
    auto t2 = std::chrono::high_resolution_clock::now();

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
    std::printf("four  : %f  acc=%f\n", time_four,  acc4);
}
