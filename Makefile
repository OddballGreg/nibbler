NAME=nibbler
NAME_LIB=nibbler NcursesWindow.so 

DEFD=DDEBUG

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp GameState.cpp Part.cpp Snake.cpp AI.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wno-deprecated -Wconversion --std=c++11

NCURSES=./environ/ncurses/NcursesWindow.cpp
OPENGL=./environ/OpenGL/OpenGL.class.cpp
SDL=./environ/SDL/SDL.class.cpp

ifeq ($(shell uname -s), Darwin)
SYS = OSX
else
SYS = LINUX
endif

# I'll include the entire 3.5GB library if I want to. Ha Ha.
VTK_DIR=./lib/VTK
CXXFLAG=-I$(VTK_DIR)/include/

VTK_FUCKTON= $(addprefix $(VTK_DIR), *.dylib)

SHARED= ./shared/Coord.cpp \
		./shared/Direction.cpp \
		./shared/Logger.cpp \
		./shared/Log.cpp

BOOL= 0

ifeq ($(shell uname -s), Linux)
END_FLAGS = -ldl
endif

$(NAME):
	# bash ./lib/install.sh
	g++ $(FLAGS) -shared -fPIC $(SHARED) -I ./shared/ -o Shared.so
	g++ $(FLAGS) -shared -fPIC -lpanel -lncurses Shared.so -o NcursesWindow.so $(NCURSES)
	g++ $(FLAGS) -shared -fPIC -framework SDL2 Shared.so -o SDL.so $(SDL)
ifeq ($(SYS), OSX)
	g++ $(FLAGS) -shared -fPIC -framework OpenGL -framework GLUT Shared.so -o OpenGL.so $(OPENGL)
else
	g++ $(FLAGS) -shared -fPIC -lGLU -lGL -lglut Shared.so -o OpenGL.so $(OPENGL)
endif
	g++ $(FLAGS) -c $(SRC) $(END_FLAGS)
	g++ $(FLAGS) -o $(NAME) $(OBJ) Shared.so $(END_FLAGS)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)
	/bin/rm -rf tst_file
	/bin/rm -rf Shared.so
	/bin/rm -rf NcursesWindow.so
	/bin/rm -rf OpenGL.so
	# /bin/rm -rf nibbler_log.txt 

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

run: re
	reset
	./nibbler

unistall:
	bash ./lib/uninstall.sh

.PHONY: $(NAME) all clean fclean re
