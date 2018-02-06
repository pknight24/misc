#ifndef DOG
#define DOG

#include <string>
using namespace std;

class Dog
{
    int age;
    string name;

  public:
    Dog(int _age, string _name);
    int getAge();
    string getName();

};

#endif
