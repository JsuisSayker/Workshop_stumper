##
## EPITECH PROJECT, 2024
## makefile of root
## File description:
## Makefile
##

SRC	=	my_strncpy.c


DIR_SRC =       $(addprefix src/, $(SRC))

OBJ     =       $(DIR_SRC:.c=.o)

CPPFLAGS	=	-I include

NAME	=	../libmy_str.a

$(NAME):  $(OBJ)
	ar rc $(NAME) $(OBJ)

all:	$(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
