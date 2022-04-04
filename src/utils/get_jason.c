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
    char *buffer = malloc(sizeof(char) * 1);
    size_t n = 0;

    my_memset(buffer, 0, 1);
    while (getline(&ptr, &n, stream) != -1) {
        buffer = freed_concat(buffer, ptr);
    }
    if (buffer == NULL)
        return NULL;
    free(ptr);
    printf("%s", buffer);
    fclose(stream);
    return buffer;
}
