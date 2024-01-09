#include <headers/widgets/label.hpp>



SDL_Rect* Label::draw(
    SDL_Renderer* renderer, 
    SDL_Rect* rect, 
    std::string text,
    int psize, 
    int height = 80, 
    int width = 60, 
    SDL_Color color = { 255, 255, 255, 0 }
    ) {


    _text = text;
    _color = color;
    _fontSize = psize;

    Init_Font();
    SDL_Surface* surface = TTF_RenderText_Solid(_font, _text.c_str(), _color);
    SDL_Texture* texture =  SDL_CreateTextureFromSurface(renderer, surface);
    SDL_Rect rect = { 0, 0, text.size() * width, height};

    SDL_RenderCopy(renderer, texture, NULL, rect);
    free(surface);
    return rect;

}

void Label::Init_Font() {
    TTF_Init();
    _font = TTF_OpenFont("./assets/fonts/arial.ttf", _fontSize);
    TTF_Quit();
}