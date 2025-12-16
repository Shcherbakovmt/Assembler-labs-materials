#include <iostream>
#include <fstream>
#include <SFML/Graphics.hpp>
#include "classes.h"
#include <iomanip>

using namespace std;

float y(float x, float p, float e)
{
    return sqrt(p * p - (1 - e * e) * x * x - 2 * e * p * x);
}

int main()
{
    std::ofstream fout("data_dt/dt=0.00001_100000_circles.txt");
    BoulderTexture.loadFromFile("snowball.png");
    sf::RenderWindow window(sf::VideoMode(1600, 1000), "Problem of 2 boulders"); // с этой частью связана утечка приемрно в 259,467 байт

    
    //float mass1 = 3;
    float x_0 = 800;
    float y_0 = 500;
    float mass1 = 10000;
    sf::Vector2f V_1 = {0,0};
    sf::Vector2f r_1 = {x_0,y_0};
    

    
    float mass2 = 1;
    sf::Vector2f V_2 = {0, 10};
    //sf::Vector2f V_2 = {0,-V_1.y * mass1/mass2};
    sf::Vector2f r_2 = {200,500};

    float k = G * mass1;
    float L = mass2 * ((r_1 - r_2).x * V_2.y - (r_1 - r_2).y * V_2.x); // момент импульса
    float c = L/mass2; // удельный момент импульса
    float p = c * c/k; // p эллипса
    float h = V_2.x * V_2.x + V_2.y * V_2.y - 2 * k/abs(r_2-r_1); // удельная энергия
    float e = sqrt(1 + h * c * c/(k*k)); // эксцентриситет

    std::cout << "p = " << p << endl;
    std::cout << "e = " << e << endl;
    std::cout << "E = " << h * mass2/2 << endl;

    float left = -p/(1 - e) + 0.01;
    float right = p/(1 + e) - 0.01;

    
    object B1(mass1, V_1, r_1);
    object B2(mass2, V_2, r_2);
    object temp = B1;
    
    float k_size = 0.1;

    B1.sprite.setTexture(BoulderTexture);
    B1.sprite.scale(k_size, k_size);
    sf::FloatRect bounds_1 = B1.sprite.getLocalBounds();
    B1.sprite.setOrigin(bounds_1.width / 2.f, bounds_1.height / 2.f);

    B2.sprite.setTexture(BoulderTexture);
    B2.sprite.scale(k_size, k_size);
    sf::FloatRect bounds_2 = B2.sprite.getLocalBounds();
    B2.sprite.setOrigin(bounds_2.width / 2.f, bounds_2.height / 2.f);

    float Energy;

    double WorldTime = 0;
    float time_ox = 0;
    unsigned int circles = 0;
    

    vector<sf::CircleShape> points_anal;
    vector<sf::CircleShape> points_real;
    
    int N = 100;
    for(int i = 0; i <= N; i++)
    {
        float x = left + (right - left)/float(N) * float(i);
        sf::CircleShape shape_1(1.0f);
        shape_1.setFillColor(sf::Color(100, 250, 50));
        shape_1.setPosition(x + x_0, y(x, p, e) + y_0);

        sf::CircleShape shape_2(1.0f);
        shape_2.setFillColor(sf::Color(100, 250, 50));
        shape_2.setPosition(x + x_0, -y(x, p, e) + y_0);

        points_anal.push_back(shape_1);
        points_anal.push_back(shape_2);
    }
    unsigned int count = 0;

    B1.turn(0, B2);
    while (window.isOpen())
    {
        sf::Event event;
        while(window.pollEvent(event)) 
        {
            if(event.type == sf::Event::Closed)
            window.close();
        }
        int mult = 100;
        float dt=0.001;


        //float c_m = (B1.mass * B1.r.x + B2.mass * B2.r.x)/(B1.mass + B2.mass);
        //cout << c_m << endl;
        

        for(int _ = 0; _ < 1 * mult; _++)
        {
            //cout << std::fixed << setprecision(20) << "r = " << B2.r.x  << " " << B2.r.y << endl;
            //cout << std::fixed << setprecision(20) << "dr = " << (B2.r - B2.r_before).x << " " << (B2.r - B2.r_before).y << endl << endl << endl;
            count += 1;

            if( count%100 == 0 )
            {
                sf::CircleShape shape_real(1.0f);
                shape_real.setFillColor(sf::Color(255, 0, 0));
                shape_real.setPosition(B2.r.x, B2.r.y);
                points_real.push_back(shape_real);
            }

            if(points_real.size() > 500)
            {
                points_real.erase(points_real.begin());
            }
            time_ox += dt;
            WorldTime += dt;
            temp = B1;
            //B1.turn(dt, B2);
            B2.turn(dt, temp);
            
            //if(B2.velocity.x * B2.velocity_before.x < 0 /*&& time_ox > 1*/ && B2.r.x < 600 && circles < 100000)
            //{
            //    circles += 1;
            //    fout << abs(B2.r.x - 200)/2 << " " << circles << std::endl;
            //    time_ox = 0;
            //    //cout << B2.r.x << endl;
            //}
        }

        
        window.clear();

        window.draw(B1.sprite);
        window.draw(B2.sprite);
        for(auto& p : points_anal)
        {
            window.draw(p);
        }

        for(auto& p : points_real)
        {
            window.draw(p);
        }

        window.display();
        

        //Energy = B1.mass * abs(B1.velocity) * abs(B1.velocity)/2 + B2.mass * abs(B2.velocity) * abs(B2.velocity)/2 - G * B1.mass * B2.mass/abs(B1.r - B2.r);
        //std::cout << "Energy = " << Energy << std::endl;
    }

    return 0;
}