CFLAGS = -I ./include
##LIB    = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: project

project: project.cpp perryH.cpp ppm.c log.c
	g++ $(CFLAGS) project.cpp perryH.cpp log.c libggfonts.a -Wall -Wextra $(LFLAGS) -o project

clean:
	rm -f project
	rm -f *.o
