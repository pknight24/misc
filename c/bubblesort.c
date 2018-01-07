#include <stdio.h>

void swap (int *a, int *b)
{
  int temp = *a;
  *a = *b;
  *b = temp;
}

void test()
{
  int x, y;
  x = 3;
  y = 6;

  printf("x = %d, y = %d", x, y);
  printf("Now swapping!");
  swap(&x, &y);
  printf("x = %d, y = %d", x, y);

}

void print_list(int l[], int length)
{
  for (int i = 0;i < length; i++)
  {
    printf("%d ", l[i]);
  }
  printf("\n");
}


int main()
{
  int list[8] = {3, 7, 0, 1, 2, 8, 17, 4};
  int count = 1;

  print_list(list, 8);

  while (count > 0)
  {
    count = 0;
    for (int i = 0; i < (sizeof(list) / sizeof(int)) - 1; i++)
    {
      if (list[i] > list[i + 1])
      {
        swap(&list[i], &list[i + 1]);
        count++;
      }
    }
  } 
  
  print_list(list, 8);

  return 0;
}
