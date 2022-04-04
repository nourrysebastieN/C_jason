/*
** EPITECH PROJECT, 2022
** jason parser
** File description:
** get jason file
*/

#include "jason.h"
#include "my.h"

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

char *get_file(char const *file)
{
    FILE *stream = fopen(file, "r");
    char *ptr = NULL;
    char *buffer = NULL;
    size_t n = 0;

    while (getline(&ptr, &n, stream) != -1) {
        buffer = my_freed_strcat(buffer, ptr);
    }
    free(ptr);
    printf("%s", buffer);
    fclose(stream);
    return buffer;
}
