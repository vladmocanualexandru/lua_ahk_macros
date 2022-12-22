#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

; ================================================== UNIVERSAL MACROS ===========================================================================================================================
^+v::                                        ; Paste without formatting
Clipboard=%Clipboard%   ; will remove formatting
Sleep, 100   ; wait for Clipboard to update
Send ^v
return

Pause::                                        ; send basic Linux browse command
Send, ls -ahl{Space}
return

; Pause::                                      ; Open git bash
; Run, D:\Repositories\git-bash.lnk
; return

; ================================================== LUA KEYCODE ENTRYPOINT ===========================================================================================================================
F24::
FileRead, wrappedKey, D:\Temp\lua_keypress.txt

; ================================================== SIMPLE MACROS ===========================================================================================================================
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------

4504C20_78={Media_Prev}                                                                                       ; Media keys - previous
4504C20_77={Media_Next}                                                                                       ; Media keys - next
4504C20_188={Media_Play_Pause}                                                                                ; Media keys - play/pause
4504C20_88={Volume_Down}{Volume_Down}                                                                         ; Media keys - volume down (fast)
4504C20_67={Volume_Up}{Volume_Up}                                                                             ; Media keys - volume up (fast)
4504C20_86={Volume_Mute}                                                                                      ; Media keys - toggle mute
4504C20_49={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                ; Affinity Designer - space horizontally
4504C20_55={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                ; Affinity Designer - distribute horizontally
4504C20_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                ; Affinity Designer - align top
4504C20_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                ; Affinity Designer - flip horizontal
4504C20_51={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                ; Affinity Designer - space vertically
4504C20_57={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                ; Affinity Designer - distribute vertically
4504C20_81={Alt Down}l{Alt Up}m{Enter}                                                                        ; Affinity Designer - align left
4504C20_85={Alt Down}l{Alt Up}t{Enter}                                                                        ; Affinity Designer - rotate left
4504C20_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                ; Affinity Designer - align center
4504C20_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                ; Affinity Designer - align middle
4504C20_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                ; Affinity Designer - align right
4504C20_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                ; Affinity Designer - rotate right
4504C20_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                ; Affinity Designer - align bottom
4504C20_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                ; Affinity Designer - flip vertical
4504C20_54=git fetch{Enter}                                                                                   ; Git command - fetch
4504C20_187=git pull{Enter}                                                                                   ; Git command - pull
4504C20_221=git push{Enter}                                                                                    ; Git command - push
4504C20_53=git status{Enter}                                                                                  ; Git command - check status
4504C20_82=git add .{Enter}                                                                                   ; Git command - add all
4504C20_80=git reset{Enter}                                                                                   ; Git command - revert "add all"
4504C20_84=git commit -a -m ""{Left}                                                                          ; Git command - commit with message
4504C20_219=git reset --soft HEAD~1{Enter}                                                                    ; Git command - revert all commits
4504C20_90={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                  ; Paint.net - crop

; -------------------------------------------------- 4x6 macropad (WORK) ----------------------------------------------------------------------------------------------------

20C54725_78={Media_Prev}                                                                                        ; Media keys - previous
20C54725_77={Media_Next}                                                                                        ; Media keys - next
20C54725_188={Media_Play_Pause}                                                                                 ; Media keys - play/pause
20C54725_88={Volume_Down}{Volume_Down}                                                                          ; Media keys - volume down (fast)
20C54725_67={Volume_Up}{Volume_Up}                                                                              ; Media keys - volume up (fast)
20C54725_86={Volume_Mute}                                                                                       ; Media keys - toggle mute
20C54725_49={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                 ; Affinity Designer - space horizontally
20C54725_55={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                 ; Affinity Designer - distribute horizontally
20C54725_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                 ; Affinity Designer - align top
20C54725_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                 ; Affinity Designer - flip horizontal
20C54725_51={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                 ; Affinity Designer - space vertically
20C54725_57={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                 ; Affinity Designer - distribute vertically
20C54725_81={Alt Down}l{Alt Up}m{Enter}                                                                         ; Affinity Designer - align left
20C54725_85={Alt Down}l{Alt Up}t{Enter}                                                                         ; Affinity Designer - rotate left
20C54725_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                 ; Affinity Designer - align center
20C54725_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                 ; Affinity Designer - align middle
20C54725_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                 ; Affinity Designer - align right
20C54725_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                 ; Affinity Designer - rotate right
20C54725_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                 ; Affinity Designer - align bottom
20C54725_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                 ; Affinity Designer - flip vertical
20C54725_54=git fetch{Enter}                                                                                    ; Git command - fetch
20C54725_187=git pull{Enter}                                                                                    ; Git command - pull
20C54725_221=git push{Enter}                                                                                     ; Git command - push
20C54725_53=git status{Enter}                                                                                   ; Git command - check status
20C54725_82=git add .{Enter}                                                                                    ; Git command - add all
20C54725_80=git reset{Enter}                                                                                    ; Git command - revert "add all"
20C54725_84=git commit -a -m ""{Left}                                                                           ; Git command - commit with message
20C54725_219=git reset --soft HEAD~1{Enter}                                                                     ; Git command - revert all commits
20C54725_90={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

; ================================================== COMPLEX MACROS ===========================================================================================================================
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
if (wrappedKey = "4504C20_72" or wrappedKey="20C54725_72") {                                              ; Password macro index 0
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_220" or wrappedKey="20C54725_220") {                                         ; Password macro index 1
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_71" or wrappedKey="20C54725_71") {                                         ; Password macro index 2
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_222" or wrappedKey="20C54725_222") {                                         ; Password macro index 3
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_70" or wrappedKey="20C54725_70") {                                         ; Password macro index 4
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 4
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_186" or wrappedKey="20C54725_186") {                                         ; Password macro index 5
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 5
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}

else if (wrappedKey = "4504C20_52" or wrappedKey="20C54725_52") {                                         ; Git bash
	Run, D:\Repositories\git-bash.lnk
}

else if (wrappedKey = "4504C20_68" or wrappedKey="20C54725_68") {                                         ; Send timestamp
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} 
else if (wrappedKey = "4504C20_65" or wrappedKey="20C54725_65") {                                          ; Open latest screenshot in Greenshot
	Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
} 
else if (wrappedKey = "4504C20_66" or wrappedKey="20C54725_66") {                                         ; Save current image to desktop as jpg90
	Send, {Control Down}{Shift Down}s{Shift Up}{Control Up}{asc 0037}USERPROFILE{asc 0037}\Desktop\
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
	Send, {Tab}pj{Enter}{Tab 4}90{Enter}
} 
else if (wrappedKey = "4504C20_48" or wrappedKey = "20C54725_48") {                                         ; Copy current folder path in clipboard, open powershell with admin rights
	Send, {Shift Down}{Tab 3}{Shift Up}{Enter}
	Send, {CtrlDown}c{CtrlUp}
	Run, powershell -NoExit -Command "start-process PowerShell -verb runas"
} 

; ================================================== HANDLE SIMPLE MACRO ===========================================================================================================================
else {
	Send, % %wrappedKey%
}

; ================================================== CLEANUP ===========================================================================================================================
FileDelete, D:\Temp\lua_keypress.txt
return