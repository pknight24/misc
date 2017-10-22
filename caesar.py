#an alternate form of the caesar cypher
#shifts characters by their ASCII value
#toHex futher encodes the string by converting them to hex
def encode(word, shift):
    alpha = ' !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
    newWord = []
    for c in word:
        for i, a in enumerate(alpha):
            if c == a:
                if i + shift < len(alpha):
                    newWord.append(alpha[i+shift])
                else:
                    newWord.append(alpha[i + shift - len(alpha)])
   
    return ''.join(newWord)
def decode(word, shift):
    alpha = ' !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
    newWord = []
    for c in word:
        for i, a in enumerate(alpha):
            if c == a:
                if i - shift >= 0:
                    newWord.append(alpha[i-shift])
                else:
                    newWord.append(alpha[i - shift + len(alpha)])
   
    return ''.join(newWord)
def toHex(word):
    alpha = ' !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
    hexWord = []
    for i, c in enumerate(word):
        hexWord.append(hex((alpha.index(c)+32))) 
    return ''.join(hexWord)
def getAlpha():
    return ' !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
