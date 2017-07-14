def get_permutations(sequence):
    permutations = []
    if len(sequence) == 1:
        permutations.append(sequence[0])
    else:            
        for i in (get_permutations(sequence[1:])):
            chars = []
            for char in i:
                chars.append(char)
            for spot in (range(len(chars)+1)):
                p = []
                for c in chars:
                    p.append(c)
                p.insert(spot, sequence[0])
                perm = ''.join(p)
                permutations.append(perm)


        
    return (permutations) 
    





if __name__ == '__main__':
    word = input("Enter a word to permutate: ")
    print(get_permutations(word))
