#include <iostream>

class NumberBox {
public:
    int value;

    NumberBox(int v) : value(v) {}

    NumberBox operator+(const NumberBox& other) const {
        NumberBox result(value + other.value);
        return result;
    }
};

int main() {
    NumberBox a(123);
    NumberBox b(456);
    NumberBox c = a + b;
    std::cout << "Result: " << c.value << "\n";
    return 0;
}