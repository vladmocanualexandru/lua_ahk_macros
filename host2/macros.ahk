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

Pause::                                        ; Open file in notepad++
Clipboard =
Send ^c
ClipWait
Run notepad++ "%clipboard%"
return

; Pause::                                      ; Open git bash
; Run, D:\Repositories\git-bash.lnk
; return

; ================================================== LUA KEYCODE ENTRYPOINT ===========================================================================================================================
F24::
FileRead, wrappedKey, D:\Temp\lua_keypress.txt

; ================================================== SIMPLE MACROS ===========================================================================================================================
; -------------------------------------------------- 4x3 knobs macropad (HOME) ----------------------------------------------------------------------------------------------------
144F1566_54={Down}                                                                                               ; Media keys - previous
144F1566_53={Up}                                                                                                 ; Media keys - next
144F1566_57={Shift Down}{Down}{Shift Up}                                                                         ; Media keys - volume down (fast)
144F1566_56={Shift Down}{Up}{Shift Up}                                                                           ; Media keys - volume up (fast)
144F1566_49={Control Down}{Shift Down}]{Shift Up}{Control Up}                                                    ; Affinity Designer - move layer to top
144F1566_81={Control Down}]{Control Up}                                                                          ; Affinity Designer - move layer up
144F1566_65={Control Down}[{Control Up}                                                                          ; Affinity Designer - move layer down
144F1566_90={Control Down}{Shift Down}[{Shift Up}{Control Up}                                                    ; Affinity Designer - move layer to bottom
144F1566_50={Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}33{Enter}                                    ; Paint.net - resize to 33%
144F1566_51={Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}50{Enter}                                    ; Paint.net - resize to 50%
144F1566_87={Control Down}{Shift Down}r{Shift Up}{Control Up}{Tab 7}m{Shift Down}{Tab 10}{Shift Up}200{Enter}    ; Paint.net - resize canvas to 200%
144F1566_69={Control Down}{Shift Down}r{Shift Up}{Control Up}{Tab 7}m{Shift Down}{Tab 10}{Shift Up}1000{Enter}   ; Paint.net - resize canvas to 1000%

; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
113CB3CC_48={Media_Prev}                                                                                        ; Media keys - previous
113CB3CC_187={Media_Next}                                                                                       ; Media keys - next
113CB3CC_189={Media_Play_Pause}                                                                                 ; Media keys - play/pause
113CB3CC_52={Volume_Down}{Volume_Down}                                                                          ; Media keys - volume down (fast)
113CB3CC_54={Volume_Up}{Volume_Up}                                                                              ; Media keys - volume up (fast)
113CB3CC_53={Volume_Mute}                                                                                       ; Media keys - toggle mute
113CB3CC_49={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                 ; Affinity Designer - space horizontally
113CB3CC_55={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                 ; Affinity Designer - distribute horizontally
113CB3CC_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                 ; Affinity Designer - align top
113CB3CC_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                 ; Affinity Designer - flip horizontal
113CB3CC_51={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                 ; Affinity Designer - space vertically
113CB3CC_57={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                 ; Affinity Designer - distribute vertically
113CB3CC_81={Alt Down}l{Alt Up}m{Enter}                                                                         ; Affinity Designer - align left
113CB3CC_85={Alt Down}l{Alt Up}t{Enter}                                                                         ; Affinity Designer - rotate left
113CB3CC_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                 ; Affinity Designer - align center
113CB3CC_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                 ; Affinity Designer - align middle
113CB3CC_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                 ; Affinity Designer - align right
113CB3CC_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                 ; Affinity Designer - rotate right
113CB3CC_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                 ; Affinity Designer - align bottom
113CB3CC_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                 ; Affinity Designer - flip vertical
113CB3CC_89=git fetch{Enter}                                                                                    ; Git command - fetch
113CB3CC_221=git pull{Enter}                                                                                    ; Git command - pull
113CB3CC_220=git push{Enter}                                                                                    ; Git command - push
113CB3CC_84=git status{Enter}                                                                                   ; Git command - check status
113CB3CC_70=git add .{Enter}                                                                                    ; Git command - add all
113CB3CC_186=git reset{Enter}                                                                                   ; Git command - revert "add all"
113CB3CC_71=git commit -a -m ""{Left}                                                                           ; Git command - commit with message
113CB3CC_222=git reset --soft HEAD~1{Enter}                                                                     ; Git command - revert all commits
113CB3CC_65={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

; ================================================== COMPLEX MACROS ===========================================================================================================================
; -------------------------------------------------- 4x3 knobs macropad (HOME) ----------------------------------------------------------------------------------------------------
; else if (wrappedKey = "144F1566_68") {
; 	Run, D:\Repositories\git_pc_stats\start_raspi.bat
; }
; else if (wrappedKey = "144F1566_33") {
; 	Run, D:\Repositories\git_pc_stats\shutdown_raspi.bat
; } 
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
if (wrappedKey = "113CB3CC_67") {                                              ; Password macro index 0
	Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 0
	sleep, 500
	FileRead, decryptedPassword, D:\Temp\pass.txt
	FileDelete, D:\Temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "113CB3CC_90") {                                         ; Password macro index 1
	Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 1
	sleep, 500
	FileRead, decryptedPassword, D:\Temp\pass.txt
	FileDelete, D:\Temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "113CB3CC_66") {                                         ; Password macro index 2
	Run, D:\Repositories\git-macros-lua-ahk\host2\decrypt_password.bat 2
	sleep, 500
	FileRead, decryptedPassword, D:\Temp\pass.txt
	FileDelete, D:\Temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "113CB3CC_82") {                                         ; Git bash
	Run, D:\Repositories\git-bash.lnk
}
else if (wrappedKey = "113CB3CC_188") {                                         ; Send timestamp
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} 
else if (wrappedKey = "113CB3CC_86") {                                          ; Open latest screenshot
	Run,  D:\Repositories\git-macros-lua-ahk\host2\get_latest_screenshot.bat
} 

; ================================================== HANDLE SIMPLE MACRO ===========================================================================================================================
else {
	Send, % %wrappedKey%
}

; ================================================== CLEANUP ===========================================================================================================================
FileDelete, D:\Temp\lua_keypress.txt
return