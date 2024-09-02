def encrypt(text,s):
    result = ""
    for i in range(len(text)):
        char = text[i]
        if(char == " "):
            result += " "
        else: 
            if(char.isupper()):
                result += chr((ord(char) + s - 65) % 26 + 65)
            else:
                result += chr((ord(char) + s - 97) % 26 + 97)
    
    return result

#input text 
text =input("Enter Text to encrypt: ")
s = 4

print("Plain Text:  "+ text)
print("Shift Pattern: "+str(s))
print("Cipher: " + encrypt(text,s))
