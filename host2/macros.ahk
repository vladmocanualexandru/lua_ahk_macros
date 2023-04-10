#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

F13::
Send, {Volume_Down}{Volume_Down}
return

F14::
Send, {Volume_Mute}
return

F15::
Send, {Volume_Up}{Volume_Up}
return

>^F13::
Send, {Media_Prev}
return

>^F14::
Send, {Media_Play_Pause}
return

>^F15::
Send, {Media_Next}
return

>+F17::
Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 1
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F17::
Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 3
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+F18::
Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 0
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F18::
Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 2
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>^F19::
Send, git push{Enter}
return

F20::
Send, git commit -a -m ""{Left}
return

>^F20::
Send, git reset --soft HEAD~1{Enter}
return

F21::
Send, git add . {Enter}
Return

>^F21::
Send, git reset{Enter}
return

F22::
Send, git status{Enter}
Return

>^F22::
Run, D:\Repositories\git-bash.lnk
Return
