#pragma once
#include <sdl/SDL.h>
#include <sdl/SDL_ttf.h>
#include <string>


class Label {
    public:
        Label();
        ~Label();

        void draw(SDL_Renderer* renderer, SDL_Rect* rect, std::string text, int fontSize, SDL_Color color);
    
    private:
        SDL_Texture* _texture;
        SDL_Rect _rect;
        std::string _text;
        int _fontSize;
        SDL_Color _color;

};