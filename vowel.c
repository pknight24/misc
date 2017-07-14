#include <stdio.h>


int charVowel(char c, char vwl[]){
  for (int i = 0; vwl[i]; i++){
    if (vwl[i] == c){
      return 1;
    }
  }
  return 0;
}


int main(){
  int k = 0;
  char vowels[] = "aeiouAEIOU";
  char newWrd[15];
  char word[15];
  char c = 'e';
  printf("%d\n", charVowel(c, vowels));
  printf("Enter word:" );
  scanf("%s", word);
  for (int i = 0; word[i]; i++){
    if (charVowel(word[i], vowels) == 0){
      newWrd[k] = word[i];
      k++;
    }
  }
  newWrd[k+1] = '\0';
  printf("%s\n", newWrd);
  return 0;
}
