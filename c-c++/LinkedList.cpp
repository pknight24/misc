#include <iostream>


struct node
{
    int data;
    struct node *next;
};


void display_LL(struct node *f)
{
    std::cout << f->data << " >> ";
    if (f->next == NULL)
        std::cout << "END" << std::endl;
    else
        display_LL(f->next);
}


struct node makenode(int d)
{
    struct node temp;
    temp.data = d;
    temp.next = NULL;
    return temp;
}

int findLL(int desired, struct node *f)
{
    if (f->data == desired)
        return 0;
    else if (f->next == NULL)
        return -2000000;
    else
        return 1 + findLL(desired, f->next);
}

bool elemLL(int desired, struct node *f)
{
    if (findLL(desired, f) >= 0)
        return true;
    else
        return false;
}

int main()
{
    struct node first;
    first.data = 0;
    first.next = NULL;

    int i = 0;

    struct node n;
    n.data = 69;
    n.next = NULL;

    first.next = &n;

    struct node third = makenode(121);
    n.next = &third;
    
    display_LL(&first);

    std::cout << elemLL(69, &first) << std::endl;

    return 0;
}
