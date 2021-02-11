Game: game_loop.o game.o command.o screen.o graphic_engine.o space.o
	gcc game_loop.o game.o screen.o command.o graphic_engine.o space.o -o Game

game_loop.o: game_loop.c
	gcc -c -Wall game_loop.c

game.o: game.c game.h
	gcc -c -Wall game.c

command.o: command.c command.h
	gcc -c -Wall command.c

screen.o: screen.c screen.h
	gcc -c -Wall screen.c

graphic_engine.o: graphic_engine.c graphic_engine.h
	gcc -c -Wall graphic_engine.c

space.o: space.c space.h types.h
	gcc -c -Wall space.c

clean:
	rm -f *.o
