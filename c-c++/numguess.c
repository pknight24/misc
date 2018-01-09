#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//for solving recursively
void checkNum(int guess, int x){
  int newGuess;
  if (guess < x){
    printf("Too low! Guess again.\n");
    scanf("%d", &newGuess);
    checkNum(newGuess, x);
  } else if (guess > x){
    printf("Too high! Guess again.\n");
    scanf("%d", &newGuess);
    checkNum(newGuess, x);
  } else if ( guess == x){
    printf("That's right! Thank you for playing.\n");
  }
}

//can also solve with a while loop
int main(){
  int guess;
  int x;
  time_t curTime;
  srand((unsigned) time(&curTime));
  x = rand() % 50 + 1;
  printf("I am thinking of a number from 1 to 50. Care to guess?\n");
  scanf("%d", &guess);
  while (guess != x){
    if (guess < x){
      printf("Too low! Guess again.\n");
    } else {
      printf("Too high! Guess again.\n");
    }
    scanf("%d", &guess);
  }
  printf("That's right! Thank you for playing.\n");
}
