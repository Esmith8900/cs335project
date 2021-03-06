LIB    = ./lib/libggfonts.a /usr/lib/x86_64-linux-gnu/libopenal.so /usr/lib/libalut.so
FLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm -Wall -Wextra
SOURCES = src/project.cpp src/ppm.cpp src/perryH.cpp src/ericS.cpp src/vincenteL.cpp src/erikJ.cpp

all: project

project: $(SOURCES)
	g++ $(SOURCES) $(LIB) $(FLAGS) -o project

clean:
	rm -f project
	rm -f *.o
