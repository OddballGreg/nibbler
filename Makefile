NAME=nibbler
NAME_LIB=nibbler graphlib.so

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

BOOL= 0

ifeq ($(shell uname -s), Linux)
END_FLAGS = -ldl
endif

$(NAME):
	bash ./lib/install.sh
	g++ -dynamiclib -flat_namespace ./shared/Coord.cpp ./shared/Direction.cpp -o shared.so
	g++ -dynamiclib -flat_namespace shared.so -lpanel -lncurses ./environ/ncurses/NcursesWindow.cpp -o NcursesWindow.so
	g++ -shared -fPIC -o graphlib.so ./host/run.cpp
	g++ $(FLAGS) -c $(SRC) $(END_FLAGS)
	g++ $(FLAGS) -o $(NAME_LIB) $(OBJ) $(END_FLAGS)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)
	/bin/rm -rf tst_file

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

unistall:
	bash ./lib/uninstall.sh

.PHONY: $(NAME) all clean fclean re
