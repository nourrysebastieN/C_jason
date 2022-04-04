##
## EPITECH PROJECT, 2021
## my_printf
## File description:
## Makefile for my_printf lib
##

CC = gcc

SRC = $(wildcard *.c)

SRC_ASM = ../asm/my_exit.s

OBJ = $(SRC:.c=.o)

LIBMY = libmy.a

ASMFLAG = -felf64

CFLAGS = -W -Wall -Werror -Wextra -g3 -g

all: libmy.a

asm_comp:
	nasm $(ASMFLAG) $(SRC_ASM)

libmy.a : $(OBJ) asm_comp
	ar rc $(LIBMY) $(OBJ) ../asm/*.o

re: fclean all

clean:
	rm -f $(OBJ) ../asm/*.o

fclean: clean
	rm -f $(LIBMY)
