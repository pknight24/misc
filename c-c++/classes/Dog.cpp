#include <iostream>
#include <string>
#include "Dog.h"

using namespace std;

Dog::Dog(int _age, string _name)
{
    age = _age;
    name = _name;
}

int Dog::getAge()
{
    return age;
}

string Dog::getName()
{
    return name;
}
