NAME=nibbler
NAME_LIB=nibbler NcursesWindow.so 

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp GameState.cpp Part.cpp Snake.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

NCURSES=./environ/ncurses/NcursesWindow.cpp

# I'll include the entire 3.5GB library if I want to. Ha Ha.
VTK_DIR=./lib/VTK/lib

VTK_FUCKTON= $(addprefix $(VTK_DIR), *.dylib)

SHARED= ./shared/Coord.cpp \
		./shared/Direction.cpp \
		./shared/Logger.cpp

BOOL= 0

ifeq ($(shell uname -s), Linux)
END_FLAGS = -ldl
endif

$(NAME):
	bash ./lib/install.sh
	g++ $(FLAGS) -shared -fPIC $(SHARED) -I ./shared/ -o Shared.so
	g++ $(FLAGS) -shared -fPIC -lpanel -lncurses Shared.so -o NcursesWindow.so $(NCURSES) 
	g++ $(FLAGS) -c $(SRC) $(END_FLAGS)
	g++ $(FLAGS) -o $(NAME) $(OBJ) Shared.so $(END_FLAGS)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)
	/bin/rm -rf tst_file

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

run: re
	reset
	./nibbler

unistall:
	bash ./lib/uninstall.sh

.PHONY: $(NAME) all clean fclean re
