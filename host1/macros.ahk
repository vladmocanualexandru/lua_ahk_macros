#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

^+v::                                        ; Paste without formatting
Clipboard=%Clipboard%   ; will remove formatting
Sleep, 100   ; wait for Clipboard to update
Send ^v
return

F22::
Send, {Volume_Down}{Volume_Down}
return

F23::
Send, {Volume_Mute}
return

F24::
Send, {Volume_Up}{Volume_Up}
return

>^F22::
Send, {Media_Prev}
return

>^F23::
Send, {Media_Play_Pause}
return

>^F24::
Send, {Media_Next}
return

>+F14::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 4
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F14::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 5
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+F15::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F15::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+F16::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F16::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>^F17::
Send, git push{Enter}
return

F18::
Send, git commit -a -m ""{Left}
return

>^F18::
Send, git reset --soft HEAD~1{Enter}
return

F19::
Send, git add . {Enter}
Return

>^F19::
Send, git reset{Enter}
return

F20::
Send, git status{Enter}
Return

>^F20::
Run, D:\Repositories\git-bash.lnk
Return

F21::
Send, git fetch{Enter}
Return

>^F21::
Send, git pull{Enter}
Return

NumpadDiv::
Send, {Alt Down}l{Alt Up}m{Down 6}{Enter} 
Return

>^NumpadDiv::
Send, {Alt Down}l{Alt Up}m{Down 8}{Enter}
Return

NumpadMult::
Send, {Alt Down}l{Alt Up}m{Down 3}{Enter}  
Return

>^NumpadMult::
Send, {Alt Down}l{Alt Up}t{Down 2}{Enter}   
Return

NumpadSub::
Send, {Alt Down}l{Alt Up}m{Down 7}{Enter}
Return

>^NumpadSub::
Send, {Alt Down}l{Alt Up}m{Down 9}{Enter} 
Return

NumpadHome::
Send, {Alt Down}l{Alt Up}m{Enter}
Return

>^NumpadHome::
Send, {Alt Down}l{Alt Up}t{Enter}
Return

NumpadUp::
Send, {Alt Down}l{Alt Up}m{Down 1}{Enter}
Return

>^NumpadUp::
Send, {Alt Down}l{Alt Up}m{Down 4}{Enter}
Return

NumpadPgup::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

>^NumpadPgup::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

NumpadDel::
Send, {PrintScreen}
Return

>^NumpadDel::
Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
Return

NumpadClear::
Send, {Alt Down}l{Alt Up}m{Down 5}{Enter}
Return

>^NumpadClear::
Send, {Alt Down}l{Alt Up}t{Down 3}{Enter}
Return

NumpadRight::
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Return

NumpadAdd::
Send, {Control Down}{Shift Down}x{Shift Up}{Control Up} 
Return

>^NumpadAdd::
Send, {Control Down}{Shift Down}s{Shift Up}{Control Up}{asc 0037}USERPROFILE{asc 0037}\Desktop\
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Send, {Tab}pj{Enter}{Tab 4}90{Enter}
Return