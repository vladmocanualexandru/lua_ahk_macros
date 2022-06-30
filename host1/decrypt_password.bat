set password_index=%1

cd D:\Repositories\git-macros-lua-ahk\host1
..\venv\Scripts\python.exe ..\decrypt_password.py ./encrypted_passwords.txt ../local_key.txt E:/remote_key.txt %password_index%