from cryptography.fernet import Fernet
import base64, sys

encryptedPasswords = []
key = None

encryptedPasswordsPath = sys.argv[1]
with open(encryptedPasswordsPath) as f:
    for line in f.readlines():
        encryptedPasswords.append(line.strip())

keyFile = sys.argv[2]
with open(keyFile) as f:
    lines = f.readlines()
    key = lines[0]

fernetKey = Fernet(base64.b64encode(key.encode('ascii')))

passwordIndex = int(sys.argv[3])
decryptedPassword = fernetKey.decrypt(encryptedPasswords[passwordIndex].encode()).decode()

with open('D:/Temp/pass.txt', 'w') as f:
    f.write(decryptedPassword)

print("password decrypted")
