#include <stdio.h>
#include <stdlib.h>


int get_length(char *string)
{
    char *q = string;
    while(*q != '\0')
    {
        q++;
    }

    return q - string;
}

char *reverse(char *string)
{
    int length = get_length(string);

    char *spot = string + (length - 1);

    char *reversed = malloc(sizeof(*string));

    int i = 0;

    
    while (spot >= string)
    {
        reversed[i] = *spot;
        i++;
        spot--;
    }

    char *r = reversed;

    free(reversed);
    return r;

}


int main()
{
  char *name = "Parker";
  printf("%s\n", reverse(name));

}
