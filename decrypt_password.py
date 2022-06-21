from cryptography.fernet import Fernet
import base64, sys

encryptedPasswords = [
    "gAAAAABisZ_eQKyGLBz5i6Wv57IKqVowkUmUbY9ibpjaMA7FlaXMzg2Ah5trfnb3K0zfdwy0VpPNZMLZYMxBgCivWnYu7ugrDw==",
    "gAAAAABisaPDVDjjGLT2HZenA4GNzEOMsaReQVz5tpIHnqpH-BuBlG1lKdnSOL7PKxP_A8lf0a90mxUrGR4_g5vtfGLXW8BDFw==",
    "gAAAAABisaPoF0QBmDaxW0ybqi90Erv5dbVimY1QrCjgaZXjR5UdOAgZQutwfntdq3_mnsVhg66XICq_jBb2ys9m0-VCsEeNhgmWAsaVDGozCIqzToXawPx5VRqnugsongCckWt46bSD",
    "gAAAAABisbKmricIx-wtM0SGHD8q2yNDIlDTHiVf22INfuwAGiBvUoiBfDHWspTuQKlnWAzGVLrRzpk_P5YzbQMkmAFElv2rgg==",
    "gAAAAABisbVWvtp1VFON5hIDnzI66gFC0s81_6-9tbcUAJG9PLXzeSAn-xBgiJVbYaomDnNUBqCN55zW3tvsWlBZW3TZDdVO8Q=="
]

key = None
try:
    with open('E:/key.txt') as f:
        lines = f.readlines()
        key = lines[0]

    fernetKey = Fernet(base64.b64encode(key.encode('ascii')))

    passwordIndex = int(sys.argv[1])
    decryptedPassword = fernetKey.decrypt(encryptedPasswords[passwordIndex].encode()).decode()

    with open('D:/Temp/pass.txt', 'w') as f:
        f.write(decryptedPassword)

    print("password decrypted")
except:
    print("ERROR")