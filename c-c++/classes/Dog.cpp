#include <iostream>

using namespace std;

class Dog
{
    int age;

  public:
    Dog(int a);
    int getAge();
};

Dog::Dog(int a)
{
    age = a;
}

int Dog::getAge()
{
    return age;
}

int main()
{
    Dog d(12);

    cout << d.getAge() << endl;

    return 0;
}
