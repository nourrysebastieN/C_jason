##
## EPITECH PROJECT, 2021
## my_defender
## File description:
## Building my_defender
##

SRC = $(wildcard ./*.c \
				./src/*.c \
				./pslib/*.c \
				./src/hero/*.c \
				./pslib/spritesheet/*.c \
				./pslib/assetmanager/*.c \
				./pslib/map/*.c \
				./pslib/black_fades/*.c \
				./pslib/ui/*.c \
				./pslib/sprite/*.c \
				./pslib/ui/boxui/*.c \
				./pslib/ui/buttonui/*.c \
				./pslib/ui/iconui/*.c \
				./src/gamestate/*.c \
				./src/perspectivetexture/*.c \
				./src/monsters/*.c)

OBJ = $(SRC:.c=.o)

IFLAGS = -I./include -I./powerstrike -L./pslib -L./lib/my

LFLAGS = -lmy -lcsfml-graphics -lcsfml-audio -lcsfml-system -lcsfml-window -lm

CFLAGS = -I./include -I./powerstrike -W -Wextra -Wall -Werror -O3 -g3

NAME = jason

$(NAME):
	make -C lib/my
	gcc -o $(NAME) $(SRC) $(CFLAGS) $(IFLAGS) $(LFLAGS)

all:	 $(NAME)

clean:
	make clean -C lib/my
	rm -f $(OBJ)

fclean: clean
	make fclean -C lib/my
	rm -f $(NAME)

re: 	fclean all

.PHONY: all clean fclean re
