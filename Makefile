##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## compiling libmy.a
##

CC = gcc

SRC = src/utils/get_jason.c \
	  src/utils/skip_whitespace.c \

OBJ	=	$(SRC:.c=.o)

SRC_TEST = $(wildcard tests/*.c) \
		   $(wildcard src/*.c) \
		   $(wildcard lib/my/*.c)

OBJ_TEST = $(SRC_TEST:.c=.o)

CFLAGS = -I./include -W -Werror -Wall -Wextra -g3

LIBFLAG = -L./lib/my -lmy

NAME = jason

all: $(NAME)

tests_run: libmy.a $(OBJ_TEST)
	gcc -o unit_tests $(OBJ_TEST) $(LDFLAGS) --coverage -lcriterion
	./unit_tests

$(NAME): libmy.a $(OBJ)
		gcc -o $(NAME) $(CFLAGS) ./main.c $(OBJ) $(LIBFLAG)

libmy.a:
	make -C ./lib/my/

re: fclean all

clean:
	rm -f $(OBJ)
	make -C ./lib/my/ fclean

fclean: clean
	rm -f ./$(NAME) $(NAME)
	make -C ./lib/my/ fclean

fclean_test: clean
	rm -f unit_tests $(OBJ_TEST)
