#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

F24::
FileRead, wrappedKey, D:\Temp\lua_keypress.txt

; DEVICE1
DEVICE1_ID_1=a
DEVICE1_ID_2=b
DEVICE1_ID_3=c

; DEVICE2
DEVICE2_ID_11=z
DEVICE2_ID_22=x
DEVICE2_ID_33=y

If (wrappedKey = "DEVICE1_ID_4") {
	Send, def
}
else if (wrappedKey = "DEVICE2_ID_44") {
	Send, wvu
} else {
	Send, % %wrappedKey%
}

FileDelete, D:\Temp\lua_keypress.txt
return