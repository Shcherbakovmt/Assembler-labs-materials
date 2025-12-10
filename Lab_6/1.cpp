#include <iostream>
#include <string>

class MyClassWithStrangeName {
private:
    int private_value1;
    int private_value2;
    int private_value3;
    int private_value4;
    int private_value5;

    void private_method() 
    {
        std::cout << "public_method called\n";
    }
    
public:
    int public_value1;
    int public_value2;
    int public_value3;
    int public_value4;
    int public_value5;

    void public_method() 
    {
        std::cout << "private_method called\n";
    }
    

    MyClassWithStrangeName()
    {
        private_value1 = 10;
        private_value2 = 20;
        private_value3 = 30;
        private_value4 = 40;
        private_value5 = 50;

        public_value1 = 1;
        public_value2 = 2;
        public_value3 = 3;
        public_value4 = 4;
        public_value5 = 5;
    }

    MyClassWithStrangeName(int privatee, int publicc, int i1, int i2, int i3)
    {
        private_value1 = privatee;
        private_value2 = privatee;
        private_value3 = privatee;
        private_value4 = privatee;
        private_value5 = privatee;

        public_value1 = publicc;
        public_value2 = publicc;
        public_value3 = publicc;
        public_value4 = publicc;
        public_value5 = publicc;
    }

    int metod_of_summ_public()
    {
        return public_value1 + public_value2 + public_value3 + public_value4 + public_value5;
    }

    ~MyClassWithStrangeName() {}

};

// Глобальный объект
MyClassWithStrangeName global_object_base_constr;
MyClassWithStrangeName global_object_nonebase_constr(10,1,0,0,0);

int main() {
    std::cout << global_object_base_constr.metod_of_summ_public();
    return 0;
}
