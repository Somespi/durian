all:
	g++ -I include -I include/headers -I include/sdl -I include/headers/widgets -Llib  -o main src/**/*.cpp -lmingw32 -lSDL2main -lSDL2 -lSDL2_ttf -lSDL2_image
	./main 

clean:
	rm ./main.exe

run:
	./main
