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

; +-------------+-------------+-------------+-------------+-------------+-------------+
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; |     F13     |     F14     |     F15     | NumpadHome  |  NumpadUp   | NumpadPgup  |
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; +-------------+-------------+-------------+-------------+-------------+-------------+
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; |     F16     |     F17     |     F18     | NumpadLeft  | NumpadClear | NumpadRight |
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; +-------------+-------------+-------------+-------------+-------------+-------------+
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; |     F19     |     F20     |     F21     |  NumpadEnd  | NumpadDown  | NumpadPgdn  |
; |             |             |             |             |             |             |
; |             |             |             |             |             |             |
; +-------------+-------------+-------------+-------------+-------------+-------------+
; |             |             |             |             |                           |
; |             |             |             |             |                           |
; |    RCtrl    |     F22     |     F23     |  NumpadIns  |            RAlt           |
; |     >^      |             |             |             |             >!            |
; |             |             |             |             |                           |
; +-------------+-------------+-------------+-------------+---------------------------+

F13::
Send, {Alt Down}l{Alt Up}m{Down 6}{Enter} 
Return

>!F13::
Send, {Alt Down}l{Alt Up}m{Down 8}{Enter}
Return

F14::
Send, {Alt Down}l{Alt Up}m{Down 3}{Enter}  
Return

>!F14::
Send, {Alt Down}l{Alt Up}t{Down 2}{Enter}   
Return

F15::
Send, {Alt Down}l{Alt Up}m{Down 7}{Enter}
Return

>!F15::
Send, {Alt Down}l{Alt Up}m{Down 9}{Enter} 
Return

NumpadHome::
Return

>^NumpadUp::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>^>!NumpadUp::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>^NumpadPgup::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

>^>!NumpadPgup::
Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
sleep, 500
FileRead, decryptedPassword, D:\Temp\pass.txt
FileDelete, D:\Temp\pass.txt
Send, %decryptedPassword%
Send, {Enter}
return

F16::
Send, {Alt Down}l{Alt Up}m{Enter}
Return

>!F16::
Send, {Alt Down}l{Alt Up}t{Enter}
Return

F17::
Send, {Alt Down}l{Alt Up}m{Down 1}{Enter}
Return

>!F17::
Send, {Alt Down}l{Alt Up}m{Down 4}{Enter}
Return

F18::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

>!F18::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

NumpadLeft::
Send, git add . {Enter}
Return

>!NumpadLeft::
Send, git reset{Enter}
return

NumpadClear::
Send, git commit -a -m ""{Left}
return

>!NumpadClear::
Send, git reset --soft HEAD~1{Enter}
return

NumpadRight::
Return

>!NumpadRight::
Send, git push{Enter}
return

F19::
Send, {PrintScreen}
Return

>!F19::
Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
Return

F20::
Send, {Alt Down}l{Alt Up}m{Down 5}{Enter}
Return

>!F20::
Send, {Alt Down}l{Alt Up}t{Down 3}{Enter}
Return

F21::
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Return

NumpadEnd::
Run, D:\Repositories\git-bash.lnk
Return

NumpadDown::
Send, git status{Enter}
Return

NumpadPgdn::
Send, git fetch{Enter}
Return

>!NumpadPgdn::
Send, git pull{Enter}
Return

F22::
Send, {Volume_Down}{Volume_Down}
return

>!F22::
Send, {Media_Prev}
return

F23::
Send, {Volume_Mute}
return

>!F23::
Send, {Media_Play_Pause}
return

NumpadIns::
Send, {Volume_Up}{Volume_Up}
return

>!NumpadIns::
Send, {Media_Next}
return