#include <headers/window.hpp>


Window::Window() {
    _window = nullptr;
    _renderer = nullptr;

};

Window::~Window() {};


void Window::run() {
    init("Redefine", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, _WIDTH, _HEIGHT, SDL_WINDOW_SHOWN);
    winloop();
}



void Window::init(const char* title, int x, int y, int w, int h, Uint32 flags) {
    SDL_Init(SDL_INIT_EVERYTHING);
    _window = SDL_CreateWindow(title, x, y, w, h, flags);
    _renderer = SDL_CreateRenderer(_window, -1, 0);

    Label label;
    SDL_Rect* text = label.draw(_renderer, nullptr, "Hello World", 20);

}

void Window::winloop() {
    while (_STATE != STATE::QUIT) {
        handleEvents();
    }
    SDL_Quit();
    SDL_DestroyWindow(_window);
}

void Window::handleEvents() {
    SDL_Event event;
    SDL_PollEvent(&event);
    
    switch (event.type) {

        case SDL_QUIT:
            _STATE = STATE::QUIT;
            break;
    
    }
}