#include <iostream>
#include <string>

class Animal {
protected:
    int age;

public:
    Animal(int a) : age(a) 
    {
        std::cout << "Animal constructor: " << " age=" << age << "\n";
    }

    virtual ~Animal() 
    {
        std::cout << "Animal destructor\n";
    }

    virtual void make_sound() const
    {
        std::cout << "Animal sound\n";
    }
};

class Predator : public Animal {
protected:
    int teeth_count;

public:
    Predator( int a, int teeth)
        : Animal(a), teeth_count(teeth) 
    {
        std::cout << "Predator constructor: teeth=" << teeth_count << "\n";
    }

    ~Predator() override 
    {
        std::cout << "Predator destructor\n";
    }

    void make_sound() const override 
    {
        std::cout << "Predator sound\n";
    }
};

class Cat : public Predator 
{
private:
    int lives;

public:
    Cat(int a, int teeth, int l)
        : Predator(a, teeth),

          lives(l)
    {
        std::cout << "Cat constructor: lives=" << lives << "\n";
    }

    ~Cat() override {
        std::cout << "Cat destructor\n";
    }

    void make_sound() const override {
        std::cout << "Cat sound: meow\n";
    }

    void play() const {
        std::cout << "Cat plays\n";
    }
};

int main() 
{
    Cat cat(3, 30, 9);
    cat.make_sound();
    cat.play();
    return 0;
}
