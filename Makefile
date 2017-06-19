NAME=nibbler
NAME_LIB=nibbler NcursesWindow.so 

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

NCURSES=./environ/ncurses/NcursesWindow.cpp

BOOL= 0

ifeq ($(shell uname -s), Linux)
END_FLAGS = -ldl
endif

$(NAME):
	bash ./lib/install.sh
	g++ -shared -fPIC -lpanel -lncurses -o NcursesWindow.so $(NCURSES)
	#g++ -shared -fPIC 
	#g++ -shared -fPIC 
	g++ $(FLAGS) -c $(SRC) $(END_FLAGS)
	g++ $(FLAGS) -o $(NAME) $(OBJ) $(END_FLAGS)

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
