/*
** EPITECH PROJECT, 2022
** jason
** File description:
** skip the whitespaces
*/

#include "jason.h"
#include <stddef.h>
#include <sys/types.h>
#include <stdbool.h>

bool is_sep(char c, char *sep)
{
    for (size_t i = 0; sep[i] != 0; i++)
        if (c == sep[i])
            return true;
    return false;
}


ssize_t skip_whitespaces(char *str, char *sep)
{
    ssize_t spaces = 0;

    for (size_t i = 0; str[i] != 0; i++)
        if (is_sep(str[i], sep))
            spaces++;
    return spaces;
}
