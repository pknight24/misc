#takes a string and converts it to Robber's Language
#https://www.reddit.com/r/dailyprogrammer/comments/341c03/20150427_challenge_212_easy_r%C3%B6varspr%C3%A5ket/
import re

def robberish_encoder(phrase):
    vowels = ['a', 'e', 'i', 'o', 'u',]
    new_phrase = []
    for char in phrase:
        if char.lower() not in vowels and char.isalpha():
            c = char + 'o' + char.lower()
            new_phrase.append(c)
        else:
            c = char
            new_phrase.append(c)
    return ''.join(new_phrase)

#TODO: finish the decoder
def robberish_decoder(phrase):
    decoded_word = []
    decoderRegex = re.compile(r'?P=<char>[^aeiouAEIOU] + o + ?P=<char>')
    findRobberish = decoderRegex.findall(phrase)
    for i in phrase:
        if i in findRobberish:
            decoded_word.append(i)
    return ''.join(decoded_word)


phrase = input('Enter a phrase to encode in Robberish: ')
print (robberish_encoder(phrase))
#print ('Your phrase decoded is: ')
#print (robberish_encoder("Hello Parker"))
#print (robberish_decoder(robberish_encoder("Hello Parker")))
