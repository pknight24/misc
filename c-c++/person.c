#include <stdio.h>

struct person
{
  char *name;
  int age;
};


void bday(struct person *p)
{
  p->age++;
}

void p_info(struct person *p)
{
  printf("%s's age is %d\n", p->name, p->age);
}

int main()
{
  struct person parker;
  parker.name = "Parker";
  parker.age = 19;

  p_info(&parker);
  
  printf("birthday!\n");
  bday(&parker);
  
  p_info(&parker);
  
  return 0;
}
