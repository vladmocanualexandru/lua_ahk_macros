#NoEnv

SendMode Input
#InstallKeybdHook
#UseHook On
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000

makeRestCall(url, method, data)
{
    whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    whr.Open(method, url, true)
    whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
    whr.Send(data)
    whr.WaitForResponse()
    return whr.ResponseText
}

decrypt(id)
{
    return makeRestCall("http://localhost:5001/decrypt", "POST", "id="+id)
}

^+v::                   ; Paste without formatting
Clipboard=%Clipboard%   ; will remove formatting
Sleep, 100              ; wait for Clipboard to update
Send ^v
return

PrintScreen::
Send, {PrintScreen}
Return

+PrintScreen::
Run,  D:\Repositories\personal\macros\host1\get_latest_screenshot.bat
Return

#b::
Run, D:\Repositories\open_git_bash_here.lnk
Return

#n::
Run, notepad++
Return

#c::
Run, calc
Return

#t::
Run, wt
Return

NumpadEnter::
Send, {CtrlDown}{AltDown}{Delete}{CtrlUp}{AltUp}
Return

F13::
Send % decrypt(1)
Send, {Enter}
Return

+F13::
Send % decrypt(2)
Send, {Enter}
Return

F14::
Send % decrypt(3)
Send, {Enter}
Return

+F14::
Send % decrypt(4)
Send, {Enter}
Return

F15::
Send % decrypt(5)
Send, {Enter}
Return

+F15::
Send % decrypt(6)
Send, {Enter}
Return

F16::
Send % decrypt(7)
Send, {Enter}
Return

F22::
Send, {Volume_Down}{Volume_Down}
return

+F22::
Send, {Media_Prev}
return

F24::
Send, {Volume_Up}{Volume_Up}
return

+F24::
Send, {Media_Next}
return

F23::
Send, {Volume_Mute}
return

+F23::
Send, {Media_Play_Pause}
return

NumpadDot::
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Return

Numpad7::
Send, {Alt Down}l{Alt Up}m{Down 6}{Enter} 
Return

NumpadHome::
Send, {Alt Down}l{Alt Up}m{Down 8}{Enter}
Return

Numpad8::
Send, {Alt Down}l{Alt Up}m{Down 3}{Enter}  
Return

NumpadUp::
Send, {Alt Down}l{Alt Up}t{Down 2}{Enter}   
Return

Numpad9::
Send, {Alt Down}l{Alt Up}m{Down 7}{Enter}
Return

NumpadPgup::
Send, {Alt Down}l{Alt Up}m{Down 9}{Enter} 
Return

Numpad4::
Send, {Alt Down}l{Alt Up}m{Enter}
Return

NumpadLeft::
Send, {Alt Down}l{Alt Up}t{Enter}
Return

Numpad5::
Send, {Alt Down}l{Alt Up}m{Down 1}{Enter}
Return

NumpadClear::
Send, {Alt Down}l{Alt Up}m{Down 4}{Enter}
Return

Numpad6::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

NumpadRight::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

Numpad2::
Send, {Alt Down}l{Alt Up}m{Down 5}{Enter}
Return

NumpadDown::
Send, {Alt Down}l{Alt Up}t{Down 3}{Enter}
Return