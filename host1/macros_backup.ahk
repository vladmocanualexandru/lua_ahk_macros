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

PrintScreen::
Send, {PrintScreen}
Return

+PrintScreen::
Run,  D:\Repositories\personal\macros\host1\get_latest_screenshot.bat
Return

F13::
Send, {Alt Down}l{Alt Up}m{Down 6}{Enter} 
Return

<+F13::
Send, {Alt Down}l{Alt Up}m{Down 8}{Enter}
Return

F14::
Send, {Alt Down}l{Alt Up}m{Down 3}{Enter}  
Return

<+F14::
Send, {Alt Down}l{Alt Up}t{Down 2}{Enter}   
Return

F15::
Send, {Alt Down}l{Alt Up}m{Down 7}{Enter}
Return

<+F15::
Send, {Alt Down}l{Alt Up}m{Down 9}{Enter} 
Return

F16::
Send, {Alt Down}l{Alt Up}m{Enter}
Return

<+F16::
Send, {Alt Down}l{Alt Up}t{Enter}
Return

F17::
Send, {Alt Down}l{Alt Up}m{Down 1}{Enter}
Return

<+F17::
Send, {Alt Down}l{Alt Up}m{Down 4}{Enter}
Return

F18::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

<+F18::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

F19::
Send, {Alt Down}l{Alt Up}m{Down 5}{Enter}
Return

<+F19::
Send, {Alt Down}l{Alt Up}t{Down 3}{Enter}
Return

F20::
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Return

F21::
Send, {Volume_Down}{Volume_Down}
return

+F21::
Send, {Media_Prev}
return

F22::
Send, {Volume_Up}{Volume_Up}
return

+F22::
Send, {Media_Next}
return

F23::
Send, {Volume_Mute}
return

+F23::
Send, {Media_Play_Pause}
return

NumpadEnd::
Numpad1::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 0
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

<+NumpadEnd::
<+Numpad1::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 1
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

NumpadDown::
Numpad2::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 2
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

+NumpadDown::
+Numpad2::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 3
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

NumpadPgdn::
Numpad3::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 4
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

+NumpadPgdn::
+Numpad3::
Run, D:\Repositories\personal\macros\host1\decrypt_password.bat 5
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return
