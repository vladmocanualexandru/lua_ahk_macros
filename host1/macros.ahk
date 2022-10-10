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
4504C20_65={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                ; Affinity Designer - space horizontally
4504C20_74={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                ; Affinity Designer - distribute horizontally
4504C20_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                ; Affinity Designer - align top
4504C20_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                ; Affinity Designer - flip horizontal
4504C20_68={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                ; Affinity Designer - space vertically
4504C20_76={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                ; Affinity Designer - distribute vertically
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
4504C20_88={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                  ; Paint.net - crop

; -------------------------------------------------- 4x6 macropad (WORK) ----------------------------------------------------------------------------------------------------

2E5C4E71_48={Media_Prev}                                                                                        ; Media keys - previous
2E5C4E71_187={Media_Next}                                                                                       ; Media keys - next
2E5C4E71_189={Media_Play_Pause}                                                                                 ; Media keys - play/pause
2E5C4E71_52={Volume_Down}{Volume_Down}                                                                          ; Media keys - volume down (fast)
2E5C4E71_54={Volume_Up}{Volume_Up}                                                                              ; Media keys - volume up (fast)
2E5C4E71_53={Volume_Mute}                                                                                       ; Media keys - toggle mute
2E5C4E71_65={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                 ; Affinity Designer - space horizontally
2E5C4E71_74={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                 ; Affinity Designer - distribute horizontally
2E5C4E71_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                 ; Affinity Designer - align top
2E5C4E71_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                 ; Affinity Designer - flip horizontal
2E5C4E71_68={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                 ; Affinity Designer - space vertically
2E5C4E71_76={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                 ; Affinity Designer - distribute vertically
2E5C4E71_81={Alt Down}l{Alt Up}m{Enter}                                                                         ; Affinity Designer - align left
2E5C4E71_85={Alt Down}l{Alt Up}t{Enter}                                                                         ; Affinity Designer - rotate left
2E5C4E71_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                 ; Affinity Designer - align center
2E5C4E71_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                 ; Affinity Designer - align middle
2E5C4E71_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                 ; Affinity Designer - align right
2E5C4E71_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                 ; Affinity Designer - rotate right
2E5C4E71_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                 ; Affinity Designer - align bottom
2E5C4E71_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                 ; Affinity Designer - flip vertical
2E5C4E71_89=git fetch{Enter}                                                                                    ; Git command - fetch
2E5C4E71_221=git pull{Enter}                                                                                    ; Git command - pull
2E5C4E71_220=git push{Enter}                                                                                    ; Git command - push
2E5C4E71_84=git status{Enter}                                                                                   ; Git command - check status
2E5C4E71_70=git add .{Enter}                                                                                    ; Git command - add all
2E5C4E71_186=git reset{Enter}                                                                                   ; Git command - revert "add all"
2E5C4E71_71=git commit -a -m ""{Left}                                                                           ; Git command - commit with message
2E5C4E71_222=git reset --soft HEAD~1{Enter}                                                                     ; Git command - revert all commits
2E5C4E71_88={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

; ================================================== COMPLEX MACROS ===========================================================================================================================
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
if (wrappedKey = "4504C20_86" or wrappedKey="2E5C4E71_86") {                                              ; Password macro index 0
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_67" or wrappedKey="2E5C4E71_67") {                                         ; Password macro index 1
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_77" or wrappedKey="2E5C4E71_77") {                                         ; Password macro index 2
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_82" or wrappedKey="2E5C4E71_82") {                                         ; Git bash
	Run, D:\Repositories\git-bash.lnk
}
else if (wrappedKey = "4504C20_49" or wrappedKey="2E5C4E71_49") {                                         ; Open HR tool #1
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
else if (wrappedKey = "4504C20_55" or wrappedKey="2E5C4E71_55") {                                         ; Open HR tool #2

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
else if (wrappedKey = "4504C20_188" or wrappedKey="2E5C4E71_188") {                                         ; Password macro index 9
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 9
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "4504C20_66" or wrappedKey="2E5C4E71_66") {                                         ; Send timestamp
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} 
else if (wrappedKey = "4504C20_90" or wrappedKey="2E5C4E71_90") {                                          ; Open latest screenshot
	Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
} 

; ================================================== HANDLE SIMPLE MACRO ===========================================================================================================================
else {
	Send, % %wrappedKey%
}

; ================================================== CLEANUP ===========================================================================================================================
FileDelete, D:\Temp\lua_keypress.txt
return