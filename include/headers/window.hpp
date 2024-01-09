#pragma once 

#include <sdl/SDL.h>
//#include <widgets/label.hpp>


enum class STATE {
    RUNNING,
    QUIT
};


class Window {
    public:
        Window();
        ~Window();

        void run();
    
    private:
        void init(const char* title, int x, int y, int w, int h, Uint32 flags);
        void winloop();
        void handleEvents();

        SDL_Window* _window;
        SDL_Renderer* _renderer;
        
        short _WIDTH = 1024;
        short _HEIGHT = 600;
        STATE _STATE = STATE::RUNNING;

};