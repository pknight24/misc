#include <stdio.h>
#include <stdlib.h>

struct Fraction{
	int num;
	int denom;
  
};

void getFract(int n, int d){
   printf("Your fraction is: \t %d/%d\n", n, d);
}

void addFract(int n1, int d1, int n2, int d2){
   int newDenom = d1 * d2;
   int newN1 = n1 * d2;
   int newN2 = n2 * d1;
   printf("Your added fraction is %d/%d.\n", newN1 + newN2, newDenom);


}
int main(){
	
   struct Fraction f1;
   struct Fraction f2;
   f2.num = 6;
   f2.denom = 1;
   printf("Enter numerator:\t");	
   scanf("%d", &f1.num);
   printf("Enter denominator:\t");
   scanf("%d", &f1.denom);
   getFract(f1.num, f1.denom);
   addFract(f1.num, f1.denom, f2.num, f2.denom); 
   return 0;
   
}
