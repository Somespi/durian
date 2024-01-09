all:
	g++ -I include -I include/headers -I include/sdl -Llib -o main src/*.cpp -lmingw32 -lSDL2main -lSDL2 


