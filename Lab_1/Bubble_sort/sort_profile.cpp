#include <iostream>
#include <chrono>
#include <fstream>
#include "sort_C.h"
using namespace std;

int n, a[100000];
void sort();

int main()
{
    std::ofstream outfile;
    outfile.open("result_o2.txt"); 
    long int max_tries = 1000000000;
    for (n = 10; n < 3000; n *= 1.3)
    {
        int max_tries_n = max_tries / n / n;
        double res = 0.0;
        for (int tries = 0; tries < max_tries_n; tries++)
        {
            for (int i = 0; i < n; i++)
                a[n - 1 - i] = i;
            auto start = chrono::high_resolution_clock::now();
            sort();
            auto end = chrono::high_resolution_clock::now();
            chrono::duration<double> diff = end - start;
            res += diff.count();
        }
        // cout << n << "\t\t" << diff.count() << endl;
        outfile << n << " " << res / max_tries_n << endl;
    }
    outfile.close();
    return 0;
}

#include "sort.h"