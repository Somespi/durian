#include <headers/widgets/label.hpp>



void Label::draw(SDL_Renderer* renderer, SDL_Rect* rect, std::string text, int fontSize, SDL_Color color = { 255, 255, 255, 0 }) {

    _text = text;
    _fontSize = fontSize;
    _color = color;



}

