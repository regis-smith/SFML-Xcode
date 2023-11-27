#include <SFML/Graphics.hpp>
#include <iostream>
#include <chrono>
#include <thread>

using namespace std::chrono_literals;

int main()
{
    sf::RenderWindow window({400,300},"Hello!");
    
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            switch (event.type) {
                case sf::Event::Closed: window.close(); break;
                default: break;
            }
        }
    }
}
