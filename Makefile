NAME=nibbler

SRC= ReadLib.class.cpp main.cpp

OBJ= $(SRC:.cpp=.o)

HEAD=

FLAGS= -Wall -Wextra -Werror -Wno-unused -Wconversion --std=c++11

$(NAME):
	g++ $(FLAGS) -c $(SRC) -ldl
	g++ -Wall -Wextra -Werror -o $(NAME) $(OBJ) -ldl

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re
