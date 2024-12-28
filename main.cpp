/**General Introduction

This file documents the networking features in GNU Awk (gawk) version 4.0 and later.

This is Edition 1.6 of TCP/IP Internetworking with gawk, for the 5.2.0 (or later) version of the GNU implementation of AWK. **/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_LENGTH 1000

int main() {
    char input[MAX_LENGTH];
    int length, i, j;

    printf("Enter a string: ");
    fgets(input, MAX_LENGTH, stdin);

    length = strlen(input) - 1; // Remove the trailing newline character

    // Reverse the string
    for (i = 0, j = length - 1; i < j; i++, j--) {
        char temp = input[i];
        input[i] = input[j];
        input[j] = temp;
    }

    printf("Reversed string: %s", input);

    return 0;
}
