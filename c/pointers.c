#include <stdio.h>

void inc(int *p);
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

    struct s trial;
    trial.name = "Parker";
    trial.val = 2;
    printf("Name = %s\nval = %d\n", trial.name, trial.val);
    
}

void inc(int *p)
{
    *p = *p + 1;
}
