#include <iostream>
#include "Node.h"
#include "Dog.h"

using namespace std;

Dog mate(Dog *mom, Dog *dad, string name)
{
    return Dog(0, name);
}


int main()
{
    Node n(69);

    cout << n.getData() << endl;

    Dog fido(3, "Fido");
    
    cout << "My dog's name is " << fido.getName() << " and he is " << fido.getAge() << " years old." << endl;

    Dog *myDog = NULL;

    myDog = &fido;

    cout << myDog << endl;
    cout << myDog->getName() << endl;

    Dog child = mate(myDog, &fido, "gay");

    return 0;
}
