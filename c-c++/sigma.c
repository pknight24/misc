#include <stdio.h>
#include <math.h>
#include <stdlib.h>
//calculates the sum of a function up to a number x


int toPower(int x, int p){
  if (p==0){
    return 1;
  }
  else {
    return x * toPower(x, p-1);
  }
}

//returns x^2 + 1
int func(int x){
  return toPower(x, 2) + 1;
}

//adds up the outputs of func from inputs 0 to x
int sigma(int x){
  int current = func(x);
  if (x>0){
    return current+sigma(x-1);
  } else {
    return current;
  }
}

int main(){
  printf("Enter a number:\t");
  int x;
  scanf("%d", &x);
  int *pX;
  pX = &x;
  printf("%d\n", sigma(*pX));
  printf("Done.\n");
}
