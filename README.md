# lua_ahk_macros

## From keypress to macro

1. (setup) Get ids for macropad devices (unique but fixed for the same host and usb port)
```
run identify_device.bat
edit hostX/listeners.lua
```
2. (start) Use Lua to listen for key codes from identified devices
```
run hostX/run_lua.bat
```
3. (ongoing) For every key press, Lua saves the unique code into
```
D:\Temp\lua_keypress.txt
```
4. (ongoing) Lua sends F24 key
5. (setup) Configure macros AHK file to target registered device ids and run desired macros
```
edit hostX/macros.ahk
```
6. (start) Use AutoHotkey to "convert" Lua key codes into macros
```
run hostX/macros.ahk
``` 
7. (ongoing) AHK listens for F24 key; once identified, reads unique key code from 
```
D:\Temp\lua_keypress.txt
```
8. (ongoing) according to configuration, runs macros
9. (ongoing) once macro is executed, AHK deletes Lua keypress file

## Can I use this for passwords?

Yes but it's a bit more complicated as passwords should never be stored in plain text, especially on a public repository like this one.

In order to create a password macro, one must use encryption. Anytime you need to encrypt something, use the following script
```
encrypt_password.py
```
Steps to use passwords in macros:

1. generate a 32 character local key and store it somewhere on your local machine
2. generate a 32 character remote key (it's recommended to back it up somewhere safe, like within a password manager)
3. encrypt all the passwords you wish to use in macros and save all of them in a file
4. encrypt the remote key using the local key and store it on a remote location, like a usb drive
5. create a batch file that makes a similar call
```
python decrypt_password.py <PATH TO ENCRYPTED PASSWORDS> <PATH TO LOCAL KEY> <PATH TO ENCRYPTED REMOTE KEY> <INDEX OF ENCRYPTED PASSWORD>
```
6. the decryption script will use the local key, to decrypt the remote key, and then use the decrypted remote key to decrypt the desired password
7. WARNING - the decryption script will save the decrypted password to some location on your local filesystems, in order to be parsed by AHK - THIS FILE MUST BE DELETED BY AHK
8. in AHK, call the decryption script, then read the password from the temporary local filesystem file, DELETE THE TEMPORARY FILE, then send the password as keypresses. Example oh AHK config:
```
if (wrappedKey = "DEVICE1_ID_67") {
	Run, D:\Macros\decrypt_password_0.bat
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
```
NOTE: Text that is about to be encrypted, can containany character but some might create weird behavior upon decrypting, for example double "!" characters will be ignored. DOUBLE TRIPLE CHECK your final macro result and if needed, change the password so that it contains safe characters.

