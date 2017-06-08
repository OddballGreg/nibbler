NAME=nibbler

SRC= main.cpp

OBJ= $(SRC:.c=.o)

HEAD=

$(NAME):
	clang++ -Wall -Wextra -Werror -Wno-unused -Wconversion -c $(SRC)
	clang++ -Wall -Wextra -Werror -o $(NAME) $(OBJ)

all: $(NAME)

clean:
	/bin/rm -rf $(OBJ)

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all

.PHONY: $(NAME) all clean fclean re
