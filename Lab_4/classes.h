#include <SFML/Graphics.hpp>
#include <cmath>



class object
{
public:
    float mass;
    sf::Vector2f velocity;
    sf::Vector2f velocity_before;
    sf::Vector2f acceleration;
    sf::Vector2f r;
    sf::Vector2f r_before;
    sf::Sprite sprite;
    sf::Texture texture;


    object(float m, sf::Vector2f v, sf::Vector2f r_vector);
    void turn(float dt, object other);
};

float abs(sf::Vector2f a);
sf::Vector2f F_Grav(object A_test, object B); // вернет силу, действующее на тело A
