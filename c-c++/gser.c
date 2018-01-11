#include <stdio.h>
#include <stdlib.h>

//TODO: break out the notebook and check this shit
//also, make it add itself
//i guess there is actually a fair amount to do here
int getPower(int x, int a){
   if (a==0){
      return 1;
      }
   else{
      return x * getPower(x, a-1);
   }

}

int series(int p, int q, int i){
   return p * getPower(q, i-1); 
}
int main(){
   printf("%d\n", series(4, 2, 5));
   return 0;
}
