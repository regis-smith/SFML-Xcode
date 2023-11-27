# Change this to match your SFML library download
SFML_DIR=$(HOME)/SFML-2.6.1

CXX = clang++
CPPFLAGS = -I $(SFML_DIR)/include -std=c++20 -g
LDFLAGS = -L $(SFML_DIR)/lib -Wl,-rpath $(SFML_DIR)/lib 
LDLIBS = -lsfml-graphics -lsfml-window -lsfml-system

OBJECT_FILES = main.o MovingBall.o Game.o

run: $(OBJECT_FILES)
	$(CXX) $(OBJECT_FILES) $(LDFLAGS) $(LDLIBS) -o run

main.o:
MovingBall.o: MovingBall.hpp
Game.o: Game.hpp MovingBall.hpp

.PHONY: clean
clean:
	rm -f *.o run
