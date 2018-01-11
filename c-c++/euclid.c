#include <stdio.h>
//gets a remainder of a and b that is less than b
int getr(int a, int b, int n){
	int r = (a - (b*n));
	if (r > b)
		return getr(a, b, n+1);
	else
		return r;
}
//gets the greatest common denominator of a and b
//a must be larger than b, if b is larger than a, it will reverse
int euclid(int a, int b){
	if (b > a){
		return euclid(b, a);
	}
	else {
		int rem = getr(a, b, 1);
		if (rem == 0)
			return b;
		else
			return euclid(b, rem);
	}
}
int main(){
	printf("%d\n", euclid(288, 44));
	return 0;
}
