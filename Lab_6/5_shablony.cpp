#include <iostream>
#include <string>
#include <typeinfo>

template<typename T>
class Box {
public:

    T data;

    Box(T d) : data(d) {
        std::cout << "Box constructor, type=" << typeid(T).name() << "\n";
    }

    T get() const {
        return data;
    }
};

template<typename T>
T add_values(T a, T b) {
    std::cout << "add_values called\n";
    return a + b;
}

int main() {
    Box<int> int_box(42);
    Box<double> double_box(3.14);

    std::cout << "int_box: " << int_box.get() << "\n";
    std::cout << "double_box: " << double_box.get() << "\n";

    int sum_int = add_values(10, 20);
    double sum_double = add_values(1.5, 2.5);

    std::cout << "sum_int: " << sum_int << "\n";
    std::cout << "sum_double: " << sum_double << "\n";
    return 0;
}