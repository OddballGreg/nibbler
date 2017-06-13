NAME=nibbler

HOST= $(addprefix host/, ReadLib.class.cpp main.cpp)

SRC= $(HOST)

OBJ= ./*.o

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

$(NAME):
	g++ $(FLAGS) -c $(SRC)
	g++ -Wall -Wextra -Werror -o $(NAME) $(OBJ)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re
