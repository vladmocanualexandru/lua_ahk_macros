set password_index=%1

cd D:\Repositories\git-macros-lua-ahk\host
..\venv\Scripts\python.exe ..\decrypt_password.py ./encrypted_passwords.txt E:/key.txt %password_index%