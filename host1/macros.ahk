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

4504C20_48={Media_Prev}                                                                                       ; Media keys - previous
4504C20_187={Media_Next}                                                                                      ; Media keys - next
4504C20_189={Media_Play_Pause}                                                                                ; Media keys - play/pause
4504C20_52={Volume_Down}{Volume_Down}                                                                         ; Media keys - volume down (fast)
4504C20_54={Volume_Up}{Volume_Up}                                                                             ; Media keys - volume up (fast)
4504C20_53={Volume_Mute}                                                                                      ; Media keys - toggle mute
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
4504C20_89=git fetch{Enter}                                                                                   ; Git command - fetch
4504C20_221=git pull{Enter}                                                                                   ; Git command - pull
4504C20_220=git push{Enter}                                                                                   ; Git command - push
4504C20_84=git status{Enter}                                                                                  ; Git command - check status
4504C20_70=git add .{Enter}                                                                                   ; Git command - add all
4504C20_186=git reset{Enter}                                                                                  ; Git command - revert "add all"
4504C20_71=git commit -a -m ""{Left}                                                                          ; Git command - commit with message
4504C20_222=git reset --soft HEAD~1{Enter}                                                                    ; Git command - revert all commits
4504C20_90={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                  ; Paint.net - crop

; -------------------------------------------------- 4x6 macropad (WORK) ----------------------------------------------------------------------------------------------------

20222B1_48={Media_Prev}                                                                                        ; Media keys - previous
20222B1_187={Media_Next}                                                                                       ; Media keys - next
20222B1_189={Media_Play_Pause}                                                                                 ; Media keys - play/pause
20222B1_52={Volume_Down}{Volume_Down}                                                                          ; Media keys - volume down (fast)
20222B1_54={Volume_Up}{Volume_Up}                                                                              ; Media keys - volume up (fast)
20222B1_53={Volume_Mute}                                                                                       ; Media keys - toggle mute
20222B1_49={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                 ; Affinity Designer - space horizontally
20222B1_55={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                 ; Affinity Designer - distribute horizontally
20222B1_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                 ; Affinity Designer - align top
20222B1_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                 ; Affinity Designer - flip horizontal
20222B1_51={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                 ; Affinity Designer - space vertically
20222B1_57={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                 ; Affinity Designer - distribute vertically
20222B1_81={Alt Down}l{Alt Up}m{Enter}                                                                         ; Affinity Designer - align left
20222B1_85={Alt Down}l{Alt Up}t{Enter}                                                                         ; Affinity Designer - rotate left
20222B1_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                 ; Affinity Designer - align center
20222B1_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                 ; Affinity Designer - align middle
20222B1_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                 ; Affinity Designer - align right
20222B1_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                 ; Affinity Designer - rotate right
20222B1_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                 ; Affinity Designer - align bottom
20222B1_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                 ; Affinity Designer - flip vertical
20222B1_89=git fetch{Enter}                                                                                    ; Git command - fetch
20222B1_221=git pull{Enter}                                                                                    ; Git command - pull
20222B1_220=git push{Enter}                                                                                    ; Git command - push
20222B1_84=git status{Enter}                                                                                   ; Git command - check status
20222B1_70=git add .{Enter}                                                                                    ; Git command - add all
20222B1_186=git reset{Enter}                                                                                   ; Git command - revert "add all"
20222B1_71=git commit -a -m ""{Left}                                                                           ; Git command - commit with message
20222B1_222=git reset --soft HEAD~1{Enter}                                                                     ; Git command - revert all commits
20222B1_90={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

; ================================================== COMPLEX MACROS ===========================================================================================================================
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
if (wrappedKey = "4504C20_86" or wrappedKey="20222B1_86") {                                              ; Password macro index 0
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_67" or wrappedKey="20222B1_67") {                                         ; Password macro index 1
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_77" or wrappedKey="20222B1_77") {                                         ; Password macro index 2
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_82" or wrappedKey="20222B1_82") {                                         ; Git bash
	Run, D:\Repositories\git-bash.lnk
}
else if (wrappedKey = "4504C20_68" or wrappedKey="20222B1_68") {                                         ; Open HR tool #1
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
	sleep, 500
	FileRead, url, D:\temp\pass.txt

	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 3
	sleep, 500
	FileRead, url, D:\temp\pass.txt
	
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 4
	sleep, 500
	FileRead, gid, D:\temp\pass.txt
	
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 5
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt

	FileDelete, D:\temp\pass.txt

	Send, %url%{Enter}
	
	sleep, 2500
	Send, {Shift Down}{Tab}{Shift Up}{Space}
	
	Send, %gid%	
	Send, {Tab}
	
	Send, %decryptedPassword%	
	Send, {Enter}
} 
else if (wrappedKey = "4504C20_76" or wrappedKey="20222B1_76") {                                         ; Open HR tool #2

	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 6
	sleep, 500
	FileRead, url, D:\temp\pass.txt

	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 6
	sleep, 500
	FileRead, url, D:\temp\pass.txt

	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 7
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	
	FileDelete, D:\temp\pass.txt

	Send, %url%{Enter}

	sleep, 2500
	
	Send, %decryptedPassword%	
	Send, {Enter}
}
else if (wrappedKey = "4504C20_188" or wrappedKey="20222B1_188") {                                         ; Password macro index 9
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 9
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_88" or wrappedKey="20222B1_88") {                                         ; Send timestamp
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} 
else if (wrappedKey = "4504C20_65" or wrappedKey="20222B1_65") {                                          ; Open latest screenshot in Greenshot
	Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
} 
else if (wrappedKey = "4504C20_74" or wrappedKey="20222B1_74") {                                          ; Open clipboard in paint.net
	Run, PaintDotNet
	sleep, 2000
	Send, {CtrlDown}v{CtrlUp}
}
else if (wrappedKey = "4504C20_66" or wrappedKey="20222B1_66") {                                         ; Save current image to desktop as jpg90
	Send, {Control Down}{Shift Down}s{Shift Up}{Control Up}{asc 0037}USERPROFILE{asc 0037}\Desktop\
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
	Send, {Tab}pj{Enter}{Tab 4}90{Enter}
} 

; ================================================== HANDLE SIMPLE MACRO ===========================================================================================================================
else {
	Send, % %wrappedKey%
}

; ================================================== CLEANUP ===========================================================================================================================
FileDelete, D:\Temp\lua_keypress.txt
return