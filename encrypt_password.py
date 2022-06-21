from cryptography.fernet import Fernet
import base64

password = input("password?")
key = input("key(32 length)?")

fernetKey = Fernet(base64.b64encode(key.encode('ascii')))

encryptedPassword = fernetKey.encrypt(password.encode()).decode()

print("encrypted password: ", encryptedPassword)