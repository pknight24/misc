import sys
import os


inventory = {'Radiohead - OK Computer': 10 ,
        'Jeff Rosenstock - WORRY.' : 3}
def check_inv(inv):
    for item in inv:
        if inv[item] < 1:
            inv[item] = "OUT OF STOCK"
    prnt_inv(inv)
def prnt_inv(inv):
    for i in inv:
        print (i + " : " + str(inv[i]))
    main()

def show_commands():
    print ("Type i to show your inventory.")
    print ("Type s to enter a new sale.")
    print ("Type f to view financial information.")
    print ("Type a to enter an arriving shipment of albums.")
    print ("Type q to quit.")
    main()
def enter_sale():
    record = input("What is the customer buying? ")
    if record in inventory:
        num = int(input("How many copies? "))
        inventory[record] -= num
        yn = input("Is that all? y/n: ")
        if yn == "y":
            main()
        else:
            enter_sale()
    else:
        print ("That is not in our inventory. \nPlease make sure that the record name was entered correctly.\nArtist - Record Title \n")
        enter_sale()

def arrival():
    name = input("What is the name of the record? ")
    num = int(input("How many did you receive? "))
    inventory[name] = num
    yn = input("Is that all? y/n ")
    if yn == "y":
        main()
    else:
        arrival()

def main():
    act = input()
    if act == "*":
        show_commands()
    elif act == "i":
        check_inv(inventory)
    elif act == "s":
        enter_sale()
    elif act == "a":
        arrival()
    elif act == "q":
        sys.exit(0)


print ("Hello and Welcome to the Pizaa Records management software. \nHow can I help you today?")   
print ("To see a list of possible commands, type, *")

print (os.getcwd())
main()
