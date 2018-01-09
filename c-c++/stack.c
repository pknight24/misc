#include <stdio.h>
/** naive implementation of a stack in C **/

struct node
{
    char *data;
    struct node *next;
};

//pushes a new node onto the stack
//f is a pointer to an existing node, new is the node to add
void push(struct node *f, struct node *new);

//pops the top node off of the stack
struct node pop(struct node *f);

//displays a stack starting at node t
void display_stack(struct node *t);

//returns a pointer to a new node, where d is the data of the new node
struct node make_node(char *d);

//displays options for person using the stack
void display_options();

int main()
{

}


void display_options()
{
    printf("Options\n"
        "1: Display stack\n"
        "2: Push item\n"
        "3: Pop item\n"
        "4: Exit\n");
}

void push(struct node *f, struct node *new)
{
    if (f->next == NULL)
    {
        f->next = new;
    }
    else
    {
        push(f->next,new);
    }
}

struct node pop(struct node *f)
{
    if (f->next == NULL)
    {
        printf("Stack is too short to pop!\n");
        return *f;
    }
    else if (f->next->next == NULL)
    {
        struct node temp = *(f->next);
        f->next = NULL;
        return temp;
    }
    else
    {
        return pop(f->next);
    }
}

void display_stack(struct node *t)
{
    char *d = t->data;
    while (*d != '\0')
    {
        printf("%c", *d);
        d++;
    }
    printf("-->");
    if (t->next == NULL)
    {
        printf("NULL\n");
    }
    else
    {
        display_stack(t->next);
    }
}

struct node make_node(char *d)
{
    struct node temp;
    temp.data = d;
    temp.next = NULL;
    return temp;
}
