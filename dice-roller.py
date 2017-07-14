import random


#n = number of sides
#m = number of dice
def roll_die(n, m):
    roll = random.randint(1, n)
    print ('Roll: ', roll)

    if m >1 :
        return roll + roll_die(n, m-1)
    else:
        return roll



def txt():
        side = int(input('How many sides to your dice? '))
        numDice = int(input('How many dice are you rolling? '))
        print ('Total:', roll_die(side, numDice))
        yn = input('Would you like to roll again? y/n')
        if yn == 'y':
            txt()
        else:
            print('Thanks for rolling with us.')



print('Welcome to the dice rolling simulator.')
txt()
