#include <stdio.h>
//gets all numbers divisble by three or five up to a certain number and returns their sum

int checkNum(int n){
	if (n % 3 == 0 || n % 5 == 0)
	{
	return 1;
	}
	else
	{ return 0;
	}


}
int main(){
	//starting with numbers 0 - 999
	int index = 0;
	int validNums[1000];
	for (int i = 0; i  < 1000; i++){
		if (checkNum(i) == 1){
			validNums[index] = i;
			index++;
		}
	
	}
	int summ = 0;
	for (int i = 0; i <= index; i++){
		summ += validNums[i];
	
	
	
	}
	printf("Hello World.\n");
	printf("%d\n", summ);
	return 0;

}
