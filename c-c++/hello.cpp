#include <iostream>
#include "classes/Node.h"

struct apple
{
    int age;
};


int factorial(int n)
{
    if (n == 0)
        return 1;
    else
        return n * factorial(n-1);
}

void appleday(struct apple *a)
{
    a->age++;
}

int main()
{
    int i;
    struct apple a;

    std::cout << "Enter the age of your apple: " << std::endl;
    std::cin >> a.age;
    std::cout << a.age << " minutes old." << std::endl;
    appleday(&a);
    std::cout << a.age << std::endl;

    Node n(88);

    return 0;
}



