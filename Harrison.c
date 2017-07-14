#include <stdio.h>
#include <stdlib.h>


void harMath(){
  int b;
  int h;
  float area;
  float square;
  printf("\n\nOkay so this is how harrison does math.\n");
  printf("Let's say you want to calculate the area of a triangle.\nEnter the base: ");
  scanf("%d", &b);
  printf("Enter the height: ");
  scanf("%d", &h);
  area = (b*h)/2.0;
  printf("If any sane person did this math, your area would be %f.\n", area);
  square = b*h;
  printf("But Harrison somehow gets %f. Because he is such a square.\n", square);
}

int charVowel(char c, char vwl[]);
int charVowel(char c, char vwl[]){
  for (int i = 0; vwl[i]; i++){
    if (vwl[i] == c){
      return 1;
    }
  }
  return 0;
}

void makeSquareTri(){
  int b;
  int h;
  printf("\n");
  printf("Okay, so lets says that you wanted to print a square.\nMost people could accomplish that.\n");
  printf("Harrison somehow cannot.\n");
  printf("Enter the base of your square: ");
  scanf("%d", &b);
  printf("This is how most people would print the square: ");
  for (int i = 1; i <= b; i++){
    for (int counter = 0; counter < b; counter++){
      printf("# ");
    }
    printf("\n");
  }
  printf("Harrison makes square like THIS\n");
  for (int i = 1; i <= b; i++){
    for (int counter = 0; counter < i; counter++){
      printf("# ");
    }
    printf("\n");
  }
  printf("HOW DUMB IS HE HA\n");
}

void spellName(){
  char name[15];
  char newSpell[15];
  char vowels[] = "aeiouAEIOU";
  int k;
  k = 0;
  printf("\nMoving forward, Harrison is also bad because he does not know how to spell.\n");
  printf("I will give you an example. Enter your name: " );
  scanf("%s", name);
  printf("So your name is %s.\n", name);


  for (int i = 0; name[i]; i++){
    if (charVowel(name[i], vowels) == 0){
      newSpell[k] = name[i];
      k++;
    }
  }
  newSpell[k+1] = '\0';
  printf("Harrison would spell your name like this: %s\n", newSpell);
  printf("He is so dumb........ I can't take it. Nothing he does makes sense.\n");


}

//gets a to the b power
int getsPower(int d, int e){
  if (e==0)
  {
    return 1;
  }
  else
  {
    printf("%d\n", d);
    return d * (getsPower(d, e-1));
  }
}



int main(){
  char yn;
  printf("Today I want to tell you a story about a man who is so bad.\nHis name is Harrison.\n");
  printf("Harrison is a demon.\nDo you want to know how Harrison does math? (y/n)\n");
  scanf("%c", &yn);
  if (yn == 'y'){
    harMath();
  } else {
    printf("Whatever, it's not important anyway.\n");

  }
  spellName();
  makeSquareTri();
  printf("Onward.\nLet's talk more about math.\n");
  printf("This is 2 to the 4th power: ");
  printf("%d\n", getsPower(2, 4));
  printf("Harrison could not do that.\n");
  printf("To conclude, Harrison is very bad. Thank you for your time.\n");
  return 0;
}
