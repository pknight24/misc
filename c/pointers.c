#include <stdio.h>

void inc(int *p);
void pstr(char *c);

struct s
{
  int val;
  char *name;
};

int main()
{
    int *p;
    int i;
    i = 9;
    p = &i;
    printf("i is located at %p\n", p);
    printf("value of i: %d\n", i);
    inc(p);
    printf("i incremented: %d\n", i);
    
    char name[] = "Parker";
    pstr(name);
}

void inc(int *p)
{
    *p = *p + 1;
}

//uses pointer arithmetic to print a string
void pstr(char *c)
{
  if (*c == '\0')
    printf("\n");
  else
  {
    printf("%c", *c);
    pstr(c+1);
  }
}
