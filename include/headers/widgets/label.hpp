#pragma once
#include <sdl/SDL.h>
#include <sdl/SDL_ttf.h>
#include <string>


class Label {
    public:
        Label();
        ~Label();

        SDL_Rect* draw(SDL_Renderer* renderer, SDL_Rect* rect, std::string text, int psize, int height = 80, int width = 60, SDL_Color color = { 255, 255, 255, 0 });
    
    private:

        void Init_Font();
        TTF_Font* _font;

        SDL_Texture* _texture;
        SDL_Rect _rect;
        std::string _text;
        int _fontSize;
        SDL_Color _color;

};