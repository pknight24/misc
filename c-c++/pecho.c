#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[])
	{
      int newline = 0;

		  for (int i = 1;i < argc;i++)
      {
          printf("%s ", argv[i]);
          
      } 
      printf("\n");
		  return 0;
	}
