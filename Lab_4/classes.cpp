#include <SFML/Graphics.hpp>
#include <cmath>
#include "classes.h"
#include <cfloat>

static const float G = 10000.0f;

float abs(sf::Vector2f a)
{
    return sqrt(a.x * a.x + a.y * a.y);
}
sf::Vector2f F_Grav(object A_test, object B) // вернет силу, действующее на тело A
{
    float dist = abs(A_test.r - B.r);
    if (dist > FLT_MIN)
    {
        return -(A_test.r - B.r) * G * A_test.mass * B.mass/(dist * dist * dist);
    }
    else
    {
        return {0,0};
    }

}




object::object(float m, sf::Vector2f v, sf::Vector2f r_vector)
{
    this->mass = m;

    this->velocity = v;
    this->velocity_before = v;

    this->r = r_vector;
    this->r_before = r_vector;
}

void object::turn(float dt, object other)
{
    acceleration = F_Grav(*this, other)/mass;

    sf::Vector2f temp_r = r;
    r = r_before + velocity * (2 * dt);
    r_before = temp_r;

    sf::Vector2f temp_v = velocity;
    velocity = velocity_before + acceleration * (dt * 2);
    velocity_before = temp_v;
    
    sprite.setPosition(r.x, r.y);
}