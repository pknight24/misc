#shifts all the characters in a word s to the right in the alphabet
#for example: a (shift 2) -> c
#TODO: use recursion to shift the big boys

def encode(word, shift):
    alpha = 'abcdefghijklmnopqrstuvwxyz'
    newWord = []
    for c in word:
        for i, a in enumerate(alpha):
            if c == a:
                if i + shift < len(alpha):
                    newWord.append(alpha[i+shift])
                else:
                    newWord.append(alpha[i + shift - 26])
   
    return ''.join(newWord)
                
def decode(word, shift):
    alpha = 'abcdefghijklmnopqrstuvwxyz'
    newWord = []
    for c in word:
        for i, a in enumerate(alpha):
            if c == a:
                if i - shift >= 0:
                    newWord.append(alpha[i-shift])
                else:
                    newWord.append(alpha[i - shift + 26])
   
    return ''.join(newWord)

word = input("Enter word to encode: ")
shift = int(input("Enter shift value: "))
encoded = encode(word.lower(), shift)
print (encoded)  
print (decode(encoded,shift))

