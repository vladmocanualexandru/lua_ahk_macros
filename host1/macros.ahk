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

>+F16::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 4
sleep, 500
FileRead, decryptedPassword, D:\temp\pass.txt
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 4
sleep, 500
FileRead, decryptedPassword, D:\temp\pass.txt
FileDelete, D:\temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
Return

>+>^F16::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 5
sleep, 500
FileRead, decryptedPassword, D:\temp\pass.txt
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 5
sleep, 500
FileRead, decryptedPassword, D:\temp\pass.txt
FileDelete, D:\temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
Return

>+F17::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F17::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+F18::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>+>^F18::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
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

F23::
Send, git fetch{Enter}
Return

>^F23::
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

NumpadPgUp::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

>^NumpadPgUp::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

NumpadLeft::
Send, {PrintScreen}
Return

>^NumpadLeft::
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

NumpadEnd::
Send, {Control Down}{Shift Down}x{Shift Up}{Control Up} 
Return

>^NumpadEnd::
Send, {Control Down}{Shift Down}s{Shift Up}{Control Up}{asc 0037}USERPROFILE{asc 0037}\Desktop\
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Send, {Tab}pj{Enter}{Tab 4}90{Enter}
Return

NumpadDown::
Send, {CtrlDown}r{CtrlUp}{ShiftDown}{Tab 3}{ShiftUp}33{Enter}
Return

>^NumpadDown::
Send, {CtrlDown}r{CtrlUp}{ShiftDown}{Tab 3}{ShiftUp}50{Enter}
Return

NumpadPgDn::
Send, {CtrlDown}{ShiftDown}r{CtrlUp}{ShiftUp}{Tab 7}m{Tab 3}200{Enter}
Return

>^NumpadPgDn::
Send, {CtrlDown}{ShiftDown}r{CtrlUp}{ShiftUp}{Tab 7}m{Tab 3}1000{Enter}
Return


