#include <stdio.h>

int main()
{
  int i; 
  int sum = 0;
  scanf("%d", &i);
  
  for (int j = 0;j <= i; j++)
  {
    sum += j;
  }

  printf("%d", sum);

  return 0;
}
