#include <stdio.h>

extern char* func(char *a);

int main(void)
{
    char text[]="Ram pam pam";

    printf("Input string      > %s\n", text);
    char *r = func(text);
    printf("Conversion results> %s\n", r);

    return 0;
}
