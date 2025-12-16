#include <cstdio>
#include <chrono>
#include <iostream>

const int sizes[] = {16, 160, 1600, 16000, 160000};
const int num_sizes = 5;
const int iters = 1000;
float a[160000];

int main() {
    FILE* f = fopen("scalar_o0.txt", "w");
    for (int s = 0; s < num_sizes; ++s) {
        int N = sizes[s];
        for (int i = 0; i < N; ++i) a[i] = i + 1.0f;
        
        auto t1 = std::chrono::high_resolution_clock::now();
        float acc = 0.0f;
        for (int k = 0; k < iters; ++k) {
            float sum = 0.0f;
            for (int i = 0; i < N; ++i) sum += a[i];
            acc += sum;
        }
        auto t2 = std::chrono::high_resolution_clock::now();
        double time = std::chrono::duration<double>(t2 - t1).count();
        
        fprintf(f, "%d,%.6f\n", N, time);
        std::cout << acc << std::endl;
    }
    
    fclose(f);
}
