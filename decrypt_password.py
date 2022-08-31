from cryptography.fernet import Fernet
import base64, sys

TEMPORARY_PASSWORD_FILE='D:/Temp/pass.txt'

def decryptString(str, key):
    fernetKey = Fernet(base64.b64encode(key.encode('ascii')))
    return fernetKey.decrypt(str.encode()).decode()

try:

    # read encrypted passwords from file
    encryptedPasswords = []
    with open(sys.argv[1]) as f:
        for line in f.readlines():
            encryptedPasswords.append(line.strip())

    passwordIndex = int(sys.argv[2])

    # read local key (not encrypted)
    localKey = None
    with open(sys.argv[3]) as f:
        lines = f.readlines()
        localKey = lines[0]

    # read encrypted remote key
    encryptedRemoteKey = None
    for keyPath in sys.argv[4:]:
        try:
            with open(keyPath) as f:
                lines = f.readlines()
                encryptedRemoteKey = lines[0]
                break
        except:
            print('%s not found, trying next remote key..' % keyPath)

    if encryptedRemoteKey == None:
        raise RuntimeError('Unable to find a remote key!')

    # decrypt remote key using local key
    remoteKey = decryptString(encryptedRemoteKey, localKey)

    # according to the specified index, decrypt, using the remote key, one of the encrypted passwords
    decryptedPassword = decryptString(encryptedPasswords[passwordIndex], remoteKey)

    # save unencrypted password to temporary file (this file should be deleted after this script)
    with open(TEMPORARY_PASSWORD_FILE, 'w') as f:
        f.write(decryptedPassword)

    print("password decrypted")
except:
    # in case anything goes wrong, write ERROR to the temporary password file
    print("ERROR")
    with open(TEMPORARY_PASSWORD_FILE, 'w') as f:
        f.write("ERROR")