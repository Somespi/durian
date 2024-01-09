#include <headers/widgets/label.hpp>



SDL_Rect* Label::draw(
    SDL_Renderer* renderer, 
    std::string text,
    int psize, 
    int height, 
    int width, 
    SDL_Color color
    ) {


    _text = text;
    _color = color;
    _fontSize = psize;

    Init_Font();
    SDL_Surface* surface = TTF_RenderText_Solid(_font, _text.c_str(), _color);
    SDL_Texture* texture =  SDL_CreateTextureFromSurface(renderer, surface);
    SDL_Rect* rect = new SDL_Rect;  
    rect->x = 0;
    rect->y = 0;
    rect->w = width * text.size();
    rect->h = height;

    SDL_RenderCopy(renderer, texture, NULL, rect);
    SDL_FreeSurface(surface);
    SDL_DestroyTexture(texture);

    return rect;

}

void Label::Init_Font() {
    TTF_Init();
    _font = TTF_OpenFont("./assets/fonts/arial.ttf", _fontSize);
    TTF_Quit();
}