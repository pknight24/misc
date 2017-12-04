#pokemon style turn based game
import random
import time

playerHP = 100
aiHP = 100
turn = 1
distracted = False
#n = enemy hp
#m = player hp


def intro():
    print ('Welcome to SooperFite.')
    time.sleep(0.4)
    print ('You and your opponent both start with 100 HP.')
    time.sleep(0.4)
    print ('You have a list of moves that can be viewed by typing 0 at any time.')
    time.sleep(0.4)
    print ('========================================')
    time.sleep(1)


def prnt():
    global playerHP
    global aiHP
    print ("Enemy HP:", aiHP)
    print ("Your HP:", playerHP)
    print('====================================')
    time.sleep(1)





def move_list():
    print ("===============================")
    print ("1: Headbutt. 15 dmg")
    print ("2: Slice. 10-25 dmg")
    print ("3: Heal. Gives 10 HP")
    print ('4: Trap Moves. 0.2 chance to do 50 damage. If you miss, you lose 5 health.')
    print ('===============================')
    time.sleep(1)

def move_one():
    print("You use headbutt!")
    global aiHP
    aiHP -= 15
    prnt()

def move_two():
    print("You use slice!")
    global aiHP
    dmg = random.randint(10, 25)
    aiHP -= dmg
    prnt()
def move_three():
    print('You use heal!')
    global playerHP
    playerHP += 10
    prnt()
def move_four():
    global aiHP
    global playerHP
    print ('You use your trap moves!')
    chance = random.randint(1, 5)
    if chance == 2:
        print ('You do massive damage!')
        aiHP -= 50
    else:
        print ('You missed! You inflict self damage!')
        playerHP -= 5
    prnt()
def combat():
    global distracted

    try:
        action = int(input("Type your move: "))
        if distracted == False:
            if action == 1:
                move_one()
                gameplay(turn + 1)
            elif action == 2:
                move_two()
                gameplay(turn + 1)
            elif action == 3:
                move_three()
                gameplay(turn + 1)
            elif action == 4:
                move_four()
                gameplay(turn + 1)
            elif action == 0:
                move_list()
                gameplay(turn)
        else:
            print ('YOU ARE DISTRACTED')
            distraction()
            distracted = False
            gameplay(turn + 1)
    except ValueError:
        print ('Invalid input. Please press 0 for your list of valid moves.')
        time.sleep(0.8)
        combat()


def AI_combat():
    global playerHP
    global aiHP
    global distracted
    ai_move = random.randint(1, 3)
    if ai_move == 1:
        print ("Enemy uses slap!")
        playerHP -= 10
    elif ai_move == 2:
        print ("Enemy uses quickscope!")
        chance = random.randint(1, 4)
        if chance == 1:
            print("He hits it!")
            playerHP -= 40
        else:
            print("He missed!")
    elif ai_move == 3:
        print ("Enemy uses distract!")
        distracted = True
    prnt()
    gameplay(turn)

def gameplay(x):
    global playerHP
    global aiHP
    if (playerHP > 0 and aiHP > 0):
        if (x % 2 == 0):
            AI_combat()
        else:
            combat()
    else:
        if (playerHP <= 0):
            print ('You have died. You lose.')
        elif (aiHP <= 0):
            print('You have defeated your enemy. You win!')


def distraction():
    print('____  _  ____  _____  ____  ____  ____  _____  _____ ____')
    time.sleep(0.4)
    print('/  _ \/ \/ ___\/__ __\/  __\/  _ \/   _\/__ __\/  __//  _ \'')
    time.sleep(0.4)
    print('| | \|| ||    \  / \  |  \/|| / \||  /    / \  |  \  | | \|')
    time.sleep(0.4)
    print('| |_/|| |\___ |  | |  |    /| |-|||  \_   | |  |  /_ | |_/|')
    time.sleep(0.4)
    print('\____/\_/\____/  \_/  \_/\_\\_/ \|\____/  \_/  \____\\____/')
    time.sleep(0.4)


intro()
gameplay(turn)
