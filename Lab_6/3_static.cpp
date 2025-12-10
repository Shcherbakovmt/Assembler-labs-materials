#include <iostream>
#include <string>

class StaticDemo {
public:
    static int global_counter;

    int instance_id;

    StaticDemo() {
        global_counter++;
        instance_id = global_counter;
        std::cout << "StaticDemo constructor, instance_id=" << instance_id << "\n";
    }

    ~StaticDemo() {
        std::cout << "StaticDemo destructor, instance_id=" << instance_id << "\n";
    }

    static void static_method() {
        std::cout << "static_method: counter=" << global_counter << "\n";
        // здесь нет доступа к instance_id (нет this)
    }

    void non_static_method() {
        std::cout << "non_static_method: instance_id=" << instance_id << "\n";
    }
};

int StaticDemo::global_counter = 0;

int main() {
    StaticDemo::static_method();
    StaticDemo a;
    StaticDemo b;
    a.non_static_method();
    b.non_static_method();
    StaticDemo::static_method();

    return 0;
}