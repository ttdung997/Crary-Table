CXX=g++
CXXFLAGS=-std=c++11 -Wall
LDFLAGS=-lglut -lGLU -lGL

all: ct

ct: main.o
	$(CXX) $(CXXFLAGS) main.o -o ct $(LDFLAGS)

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c main.cpp

clean:
	rm -f *.o ct
