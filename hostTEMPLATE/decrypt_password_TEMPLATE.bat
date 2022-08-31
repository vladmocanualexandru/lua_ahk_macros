set password_index=%1

cd D:\Repositories\git-macros-lua-ahk\host
..\venv\Scripts\python.exe ..\decrypt_password.py ../encrypted_passwords.txt %password_index% ../local_key.txt ../remote_key.txt 