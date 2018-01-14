#include <stdio.h>
#include <stdlib.h>

int main()
{
    int x = 4;
    int *p = malloc(sizeof (int));
    printf("%p\n", p);
    free(p);
    printf("%p\n", p);
    return 0;

}
