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

^Numpad1::
Send % decrypt(8)
Send, {Enter}
Return

^NumpadEnd::
Send % decrypt(2)
Send, {Enter}
Return

^Numpad2::
Send % decrypt(3)
Send, {Enter}
Return

^NumpadDown::
Send % decrypt(4)
Send, {Enter}
Return

^Numpad3::
Send % decrypt(5)
Send, {Enter}
Return

^NumpadPgdn::
Send % decrypt(6)
Send, {Enter}
Return

^Numpad4::
Send % decrypt(7)
Send, {Enter}
Return

^Numpad0::
Send, {Volume_Down}{Volume_Down}
return

^NumpadIns::
Send, {Media_Prev}
return

^NumpadSub::
Send, {Volume_Mute}
return

+^NumpadSub::
Send, {Media_Play_Pause}
return

^NumpadAdd::
Send, {Volume_Up}{Volume_Up}
return

+^NumpadAdd::
Send, {Media_Next}
return

F13::
Send, {Alt Down}l{Alt Up}m{Down 6}{Enter} 
Return

+F13::
Send, {Alt Down}l{Alt Up}m{Down 8}{Enter}
Return

F14::
Send, {Alt Down}l{Alt Up}m{Down 3}{Enter}  
Return

+F14::
Send, {Alt Down}l{Alt Up}t{Down 2}{Enter}   
Return

F15::
Send, {Alt Down}l{Alt Up}m{Down 7}{Enter}
Return

+F15::
Send, {Alt Down}l{Alt Up}m{Down 9}{Enter} 
Return

F16::
Send, {Alt Down}l{Alt Up}m{Enter}
Return

+F16::
Send, {Alt Down}l{Alt Up}t{Enter}
Return

F17::
Send, {Alt Down}l{Alt Up}m{Down 1}{Enter}
Return

+F17::
Send, {Alt Down}l{Alt Up}m{Down 4}{Enter}
Return

F18::
Send, {Alt Down}l{Alt Up}m{Down 2}{Enter}
Return

+F18::
Send, {Alt Down}l{Alt Up}t{Down 1}{Enter}
Return

F20::
Send, {Alt Down}l{Alt Up}m{Down 5}{Enter}
Return

+F20::
Send, {Alt Down}l{Alt Up}t{Down 3}{Enter}
Return

F22::
FormatTime, CurrentDateTime,, ddMMMyyyy_HHmmss
SendInput %CurrentDateTime%
Return

