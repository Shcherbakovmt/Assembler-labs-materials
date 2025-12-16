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

    int method_change_values() {

        return 10;
    }

    std::string method_get_text() const {
        return private_text + std::to_string(public_value);
    }
};

// Глобальный объект
MyClassWithVeryLongName global_object;




int main() {

    MyClassWithVeryLongName local_obj;
    local_obj.method_change_values();

    MyClassWithVeryLongName* heap_obj = new MyClassWithVeryLongName();
    heap_obj->method_change_values();
    delete heap_obj;
    global_object.method_change_values();
    return 0;
}