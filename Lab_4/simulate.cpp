#include <iostream>
#include <SFML/Graphics.hpp>
#include "classes.h"


int main()
{
    float G = 10000.0f;

    sf::RenderWindow window(sf::VideoMode(1600, 1000), "Problem of 2 boulders"); // с этой частью связана утечка приемрно в 259,467 байт
    sf::Texture BoulderTexture;
    BoulderTexture.loadFromFile("Boulder.png");
    
    float mass1 = 3;
    sf::Vector2f V_1 = {0,1.5};
    sf::Vector2f r_1 = {800,300};


    float mass2 = 1;
    //sf::Vector2f V_2 = {0, 100};
    sf::Vector2f V_2 = {0,-V_1.y * mass1/mass2};
    sf::Vector2f r_2 = {200,300};



    
    object B1(mass1, V_1, r_1);
    object B2(mass2, V_2, r_2);
    object temp = B1;

    B1.sprite.setTexture(BoulderTexture); 
    B1.sprite.scale(0.04,0.04);

    B2.sprite.setTexture(BoulderTexture);
    B2.sprite.scale(0.04,0.04);

    float Energy;

    sf::Clock WorldTime;

    window.setFramerateLimit(60);
    while (window.isOpen())
    {
        int mult = 10000;
        float dt = 0.0001;
        for(int _ = 0; _ < 1 * mult; _++)
        {
            temp = B1;
            B1.turn(dt, B2);
            B2.turn(dt, temp);
        }

        
        window.clear();
        window.draw(B1.sprite);
        window.draw(B2.sprite);
        window.display();
        
        Energy = B1.mass * abs(B1.velocity) * abs(B1.velocity)/2 + B2.mass * abs(B2.velocity) * abs(B2.velocity)/2 - G * B1.mass * B2.mass/abs(B1.r - B2.r);
        std::cout << "Energy = " << Energy << std::endl;
    }

    return 0;
}