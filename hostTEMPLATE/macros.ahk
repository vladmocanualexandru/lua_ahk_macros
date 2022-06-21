#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

^+v::
Run, notepad
sleep, 500
Send, {Control Down}vac{Control Up}
Send, {Alt Down}{F4}{Alt Up}n
sleep, 500
Send, {Control Down}v{Control Up}
return

^+`::
Run, D:\Repositories\git-bash.lnk
return

Pause::
Run, D:\Repositories\git-bash.lnk
return

Launch_App2:: 
; Send, MEDIAKEY_APP2
Send {Control Down}{Shift Down}r{Shift Up}{Control Up}{Tab 7}m{Shift Down}{Tab 10}{Shift Up}200{Enter}
return

Launch_Mail::
; Send, MEDIAKEY_MAIL
Send {Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}33{Enter}
return

Browser_Home::
; Send, MEDIAKEY_HOME
Send, {Control Down}{Shift Down}x{Shift Up}{Control Up}
return

F24::
FileRead, wrappedKey, D:\Temp\lua_keypress.txt

; 22221 #1 keypad
29B40438_8={Alt Down}l{Alt Up}m{Down 3}{Enter}
29B40438_9={Control Down}r{Control Up}{Shift Down}{Tab 3}{Shift Up}50{Enter}
29B40438_12={Alt Down}l{Alt Up}m{Down 8}{Enter}
29B40438_13=
29B40438_32=
29B40438_33={Alt Down}l{Alt Up}m{Down 7}{Enter}
29B40438_34=
29B40438_35={Control Down}[{Control Up}
29B40438_36={Control Down}{Shift Down}]{Shift Up}{Control Up}
29B40438_37={Control Down}]{Control Up}
29B40438_38={Alt Down}l{Alt Up}m{Down 6}{Enter}
29B40438_39={Alt Down}l{Alt Up}m{Down 9}{Enter}
29B40438_40=
29B40438_45={Control Down}{Shift Down}[{Shift Up}{Control Up}
29B40438_46=
29B40438_106={Alt Down}l{Alt Up}m{Down 2}{Enter}
29B40438_107={Alt Down}l{Alt Up}m{Down 5}{Enter}
29B40438_109={Alt Down}l{Alt Up}m{Down 4}{Enter}
29B40438_111={Alt Down}l{Alt Up}m{Down 1}{Enter}
29B40438_144={Alt Down}l{Alt Up}m{Enter}

29B40438_96=%29B40438_45%
29B40438_97=%29B40438_35%
29B40438_98=%29B40438_40%
29B40438_99=%29B40438_34%
29B40438_100=%29B40438_37%
29B40438_101=%29B40438_12%
29B40438_102=%29B40438_39%
29B40438_103=%29B40438_36%
29B40438_104=%29B40438_38%
29B40438_105=%29B40438_33%
29B40438_110=%29B40438_46%

; 4x3 knobs macropad
5018BD5_49={Control Down}{Shift Down}x{Shift Up}{Control Up}
5018BD5_81=git status{Enter}
5018BD5_87=git add .{Enter}
5018BD5_69=git commit -a -m ""{Left}
5018BD5_65=git pull{Enter}
5018BD5_68=git push{Enter}
5018BD5_54={Media_Prev}
5018BD5_53={Media_Next}
5018BD5_52={Media_Play_Pause}
5018BD5_57={Volume_Down}{Volume_Down}
5018BD5_56={Volume_Up}{Volume_Up}
5018BD5_55={Volume_Mute}

; 4x6 macropad
110347CD_35=1
110347CD_40=2
110347CD_34=3
110347CD_37=4
110347CD_12=5
110347CD_39=6
110347CD_36=7
110347CD_38=8
110347CD_33=9
110347CD_45=0
110347CD_46=.

If (wrappedKey = "29B40438_34" or wrappedKey = "29B40438_99") {
	Run, D:\Repositories\git_pc_stats\start_raspi.bat
}
else if (wrappedKey = "5018BD5_67") {
	Run, D:\Repositories\git-macros-lua-ahk\decrypt_password_0.bat
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "5018BD5_88") {
	Run, D:\Repositories\git-macros-lua-ahk\decrypt_password_1.bat
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "5018BD5_90") {
	Run, D:\Repositories\git-macros-lua-ahk\decrypt_password_2.bat
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%
	Send, {Enter}
}
else if (wrappedKey = "29B40438_46" or wrappedKey = "29B40438_110") {
	Run, D:\Repositories\git_pc_stats\shutdown_raspi.bat
} 
else if (wrappedKey = "29B40438_13" or wrappedKey = "5018BD5_83") {
	Run, msedge
	sleep, 2500
	Send, https://hrportal.siemens.ro/TrueHR2/login.aspx{Enter}
	sleep, 2500
	Send, {Shift Down}{Tab}{Shift Up}{Space}
	
	Run, D:\Repositories\git-macros-lua-ahk\decrypt_password_3.bat
	sleep, 500
	FileRead, gid, D:\temp\pass.txt
	Send, %gid%
	
	Send, {Tab}
	
	Run, D:\Repositories\git-macros-lua-ahk\decrypt_password_4.bat
	sleep, 500
	FileRead, decryptedPassword, D:\temp\pass.txt
	FileDelete, D:\temp\pass.txt
	Send, %decryptedPassword%	
	Send, {Enter}
} else if (wrappedKey =  "29B40438_40" or wrappedKey = "29B40438_98" or wrappedKey = "5018BD5_51") {
	FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
	SendInput %CurrentDateTime%
} else if (wrappedKey = "29B40438_32" or wrappedKey = "5018BD5_50") {
	Run,  D:\get_latest_screenshot.bat
} else {
	Send, % %wrappedKey%
}

FileDelete, D:\Temp\lua_keypress.txt
return