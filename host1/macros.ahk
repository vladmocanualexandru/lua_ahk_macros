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

; Pause::                                        ; Open file in notepad++
; Clipboard =
; Send ^c
; ClipWait
; Run notepad++ "%clipboard%"
; return

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
; -------------------------------------------------- 4x3 knobs macropad (HOME) ----------------------------------------------------------------------------------------------------
5018BD5_57={Down}                                                                                               ; Affinity Designer - less by 1
5018BD5_56={Up}                                                                                                 ; Affinity Designer - more by 1
5018BD5_54={Shift Down}{Down}{Shift Up}                                                                         ; Affinity Designer - less by 10
5018BD5_53={Shift Down}{Up}{Shift Up}                                                                           ; Affinity Designer - more by 10
5018BD5_67={Control Down}{Shift Down}]{Shift Up}{Control Up}                                                    ; Affinity Designer - move layer to top
5018BD5_68={Control Down}]{Control Up}                                                                          ; Affinity Designer - move layer up
5018BD5_69={Control Down}[{Control Up}                                                                          ; Affinity Designer - move layer down
5018BD5_51={Control Down}{Shift Down}[{Shift Up}{Control Up}                                                    ; Affinity Designer - move layer to bottom
5018BD5_88={Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}33{Enter}                                    ; Paint.net - resize to 33%
5018BD5_83={Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}50{Enter}                                    ; Paint.net - resize to 50%
5018BD5_87={Control Down}{Shift Down}r{Shift Up}{Control Up}{Tab 7}m{Shift Down}{Tab 10}{Shift Up}200{Enter}    ; Paint.net - resize canvas to 200%
5018BD5_50={Control Down}{Shift Down}r{Shift Up}{Control Up}{Tab 7}m{Shift Down}{Tab 10}{Shift Up}1000{Enter}   ; Paint.net - resize canvas to 1000%

; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------

110347CD_48={Media_Prev}                                                                                        ; Media keys - previous
110347CD_187={Media_Next}                                                                                       ; Media keys - next
110347CD_189={Media_Play_Pause}                                                                                 ; Media keys - play/pause
110347CD_52={Volume_Down}{Volume_Down}                                                                          ; Media keys - volume down (fast)
110347CD_54={Volume_Up}{Volume_Up}                                                                              ; Media keys - volume up (fast)
110347CD_53={Volume_Mute}                                                                                       ; Media keys - toggle mute
110347CD_49={Alt Down}l{Alt Up}m{Down 6}{Enter}                                                                 ; Affinity Designer - space horizontally
110347CD_55={Alt Down}l{Alt Up}m{Down 8}{Enter}                                                                 ; Affinity Designer - distribute horizontally
110347CD_50={Alt Down}l{Alt Up}m{Down 3}{Enter}                                                                 ; Affinity Designer - align top
110347CD_56={Alt Down}l{Alt Up}t{Down 2}{Enter}                                                                 ; Affinity Designer - flip horizontal
110347CD_51={Alt Down}l{Alt Up}m{Down 7}{Enter}                                                                 ; Affinity Designer - space vertically
110347CD_57={Alt Down}l{Alt Up}m{Down 9}{Enter}                                                                 ; Affinity Designer - distribute vertically
110347CD_81={Alt Down}l{Alt Up}m{Enter}                                                                         ; Affinity Designer - align left
110347CD_85={Alt Down}l{Alt Up}t{Enter}                                                                         ; Affinity Designer - rotate left
110347CD_87={Alt Down}l{Alt Up}m{Down 1}{Enter}                                                                 ; Affinity Designer - align center
110347CD_73={Alt Down}l{Alt Up}m{Down 4}{Enter}                                                                 ; Affinity Designer - align middle
110347CD_69={Alt Down}l{Alt Up}m{Down 2}{Enter}                                                                 ; Affinity Designer - align right
110347CD_79={Alt Down}l{Alt Up}t{Down 1}{Enter}                                                                 ; Affinity Designer - rotate right
110347CD_83={Alt Down}l{Alt Up}m{Down 5}{Enter}                                                                 ; Affinity Designer - align bottom
110347CD_75={Alt Down}l{Alt Up}t{Down 3}{Enter}                                                                 ; Affinity Designer - flip vertical
110347CD_89=git fetch{Enter}                                                                                    ; Git command - fetch
110347CD_221=git pull{Enter}                                                                                    ; Git command - pull
110347CD_220=git push{Enter}                                                                                    ; Git command - push
110347CD_84=git status{Enter}                                                                                   ; Git command - check status
110347CD_70=git add .{Enter}                                                                                    ; Git command - add all
110347CD_186=git reset{Enter}                                                                                   ; Git command - revert "add all"
110347CD_71=git commit -a -m ""{Left}                                                                           ; Git command - commit with message
110347CD_222=git reset --soft HEAD~1{Enter}                                                                     ; Git command - revert all commits
110347CD_65={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

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
20222B1_65={Control Down}{Shift Down}x{Shift Up}{Control Up}                                                   ; Paint.net - crop

; ================================================== COMPLEX MACROS ===========================================================================================================================
; -------------------------------------------------- 4x3 knobs macropad (HOME) ----------------------------------------------------------------------------------------------------
; else if (wrappedKey = "5018BD5_68") {
; 	Run, D:\Repositories\git_pc_stats\start_raspi.bat
; }
; else if (wrappedKey = "5018BD5_33") {
; 	Run, D:\Repositories\git_pc_stats\shutdown_raspi.bat
; } 
; -------------------------------------------------- 4x6 macropad (HOME) ----------------------------------------------------------------------------------------------------
if (wrappedKey = "110347CD_67" or wrappedKey="20222B1_67") {                                              ; Password macro index 0
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 0
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "110347CD_88" or wrappedKey="20222B1_88") {                                         ; Password macro index 1
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 1
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "110347CD_90" or wrappedKey="20222B1_90") {                                         ; Password macro index 2
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 2
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "110347CD_82" or wrappedKey="20222B1_82") {                                         ; Git bash
	Run, D:\Repositories\git-bash.lnk
}
else if (wrappedKey = "110347CD_68" or wrappedKey="20222B1_68") {                                         ; Open HR tool #1
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
else if (wrappedKey = "110347CD_76" or wrappedKey="20222B1_76") {                                         ; Open HR tool #2

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
else if (wrappedKey = "110347CD_78" or wrappedKey="20222B1_78") {                                         ; Password macro index 8
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 8
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "110347CD_66" or wrappedKey="20222B1_66") {                                         ; Password macro index 9
	Run, D:\Repositories\git-macros-lua-ahk\host1\decrypt_password.bat 9
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "110347CD_188" or wrappedKey="20222B1_188") {                                         ; Send timestamp
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} 
else if (wrappedKey = "110347CD_86" or wrappedKey="20222B1_86") {                                          ; Open latest screenshot
	Run,  D:\Repositories\git-macros-lua-ahk\host1\get_latest_screenshot.bat
} 

; ================================================== HANDLE SIMPLE MACRO ===========================================================================================================================
else {
	Send, % %wrappedKey%
}

; ================================================== CLEANUP ===========================================================================================================================
FileDelete, D:\Temp\lua_keypress.txt
return