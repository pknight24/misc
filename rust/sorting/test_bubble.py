import random
def increasing(vec):
    changes = 1
    while(changes > 0):
        changes = 0
        for i in range(len(vec)):
            if i < len(vec) - 1:
                if vec[i] > vec[i+1]:
                    temp = vec[i+1]
                    vec[i+1] = vec[i]
                    vec[i] = temp
                    changes += 1
    return vec


def decreasing(vec):
    changes = 1
    while(changes > 0):
        changes = 0
        for i in range(len(vec)):
            if i < len(vec) - 1:
                if vec[i] < vec[i+1]:
                    temp = vec[i+1]
                    vec[i+1] = vec[i]
                    vec[i] = temp
                    changes += 1
    return vec


nums = [4, 5, 0, 3, 5, 2, 1, 6]
##while (len(nums) <= 100):
##    nums.append(random.randint(0, 100))


print (decreasing(increasing(nums)))
