#include <iostream>
#include <string>

class MyClassWithVeryLongName {
private:
    int private_value = 777;
    std::string private_text = "hidden_42";

public:
    int public_value = 123;
    double public_double = 3.14;

    MyClassWithVeryLongName() : public_value(999), public_double(6.626e-34) {
        std::cout << "MyClassWithVeryLongName constructor\n";
    }

    ~MyClassWithVeryLongName() {
        std::cout << "MyClassWithVeryLongName destructor\n";
    }

    void method_change_values(int x, double y) {
        private_value += x;
        public_value *= static_cast<int>(y);
    }

    std::string method_get_text() const {
        return private_text + std::to_string(public_value);
    }
};

// Глобальный объект
MyClassWithVeryLongName global_object;




int main() {

    MyClassWithVeryLongName local_obj;
    local_obj.method_change_values(10, 2.0);

    MyClassWithVeryLongName* heap_obj = new MyClassWithVeryLongName();
    heap_obj->method_change_values(20, 3.0);
    delete heap_obj;
    global_object.method_change_values(5, 4.0);
    return 0;
}