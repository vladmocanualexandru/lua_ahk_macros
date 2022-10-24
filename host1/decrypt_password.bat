set password_index=%1

cd D:\Repositories\git-macros-lua-ahk\host1
..\venv\Scripts\python.exe ..\decrypt_password.py ./encrypted_passwords.txt %password_index% ../local_key.txt E:/remote_key.txt Z:/laptop_remote_key.txt