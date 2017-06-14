NAME=nibbler

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

ifeq ($(shell uname -s), Linux)
END_FLAGS = -ldl
endif

$(NAME):
	g++ $(FLAGS) -c $(SRC) $(END_FLAGS)
	g++ $(FLAGS) -o $(NAME) $(OBJ) $(END_FLAGS)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re
