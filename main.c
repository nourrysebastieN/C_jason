/*
** EPITECH PROJECT, 2022
** main
** File description:
** main
*/

#include "my.h"
#include "jason.h"

#include <stdio.h>
#include <stdlib.h>

int main(int ac, char **av)
{
    (void)ac;
    if (ac < 2)
        return 84;
    char *file = get_file(av[1]);
    free(file);
    return 0;
}
