; ---------------------------------------------- HELPER FUNCTIONS ----------------------------------------------

makeRestCall(url, method, data)
{
    whr := ComObject("WinHttp.WinHttpRequest.5.1")
    whr.Open(method, url, true)
    whr.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")
    whr.Send(data)
    whr.WaitForResponse()
    return whr.ResponseText
}



; ---------------------------------------------- UTILITY MACROS ----------------------------------------------

^+v:: ; paste clipboard without formatting
{
    clipboard := A_Clipboard 
    Send clipboard
}

+Printscreen:: ; open latest screeshot in greenshot
{
    Run "D:\Repositories\macros_lua_ahk\host2\get_latest_screenshot.bat"
}

#b:: ; open git_bash in repositories folder
{
    Run "D:\Repositories\open_git_bash_here.lnk"
}

F22:: ; generate timestamp
{
    formattedTime := FormatTime(,"ddMMMyyyy_HHmmss")
    Send formattedTime
}

+^!Esc:: ; publish mqtt shutdown message
{
	Run A_ComSpec " /c D:\Repositories\home_hub\scripts\.venv\Scripts\python.exe D:\Repositories\home_hub\scripts\publish_aqirys_command.py"
}

; ---------------------------------------------- APPLICATIONS ----------------------------------------------

#c:: ; open calculator
{
    Run "calc"
}

#t:: ; open terminal
{
    Run "wt"
}

#n:: ; open notepad++
{
    Run "notepad++"
}



; ---------------------------------------------- MEDIA ----------------------------------------------

^Numpad0:: ; volume down
{
    Send "{Volume_Down}"
}

^NumpadSub:: ; volume mute
{
    Send "{Volume_Mute}"
}

^NumpadAdd:: ; volume up
{
    Send "{Volume_Up}"
}

^NumpadIns:: ; previous song
{
    Send "{Media_Prev}"
}

+^NumpadSub:: ; play/pause
{
    Send "{Media_Play_Pause}"
}

+^NumpadAdd:: ; next song
{
    Send "{Media_Next}"
}



; ---------------------------------------------- KONFIDANTEA ----------------------------------------------
decrypt(id)
{
    return makeRestCall("http://127.0.0.1:5010/decrypt", "POST", "id=" id)
}

^Numpad1::
{
    Send decrypt(1) "{Enter}"
}

^NumpadEnd::
{
    Send decrypt(2) "{Enter}"
}

^Numpad2::
{
    Send decrypt(3) "{Enter}"
}


; ---------------------------------------------- AFFINITY DESIGNER ----------------------------------------------
F13:: ; space horizontally
{
    Send "{Alt Down}l{Alt Up}m{Down 6}{Enter}" 
}

+F13:: ; distribute horizontally
{
    Send "{Alt Down}l{Alt Up}m{Down 8}{Enter}"
}

F14:: ; align top
{
    Send "{Alt Down}l{Alt Up}m{Down 3}{Enter}"
}

+F14:: ; flip horizontally
{
    Send "{Alt Down}l{Alt Up}t{Down 2}{Enter}"  
}

F15:: ; space vertically
{
    Send "{Alt Down}l{Alt Up}m{Down 7}{Enter}"
}

+F15:: ; distribute vertically
{
    Send "{Alt Down}l{Alt Up}m{Down 9}{Enter}"
}

F16:: ; align left
{
    Send "{Alt Down}l{Alt Up}m{Enter}"
}

+F16:: ; rotate left
{
    Send "{Alt Down}l{Alt Up}t{Enter}"
}

F17:: ; align middle
{
    Send "{Alt Down}l{Alt Up}m{Down 1}{Enter}"
}

+F17:: ; align center
{
    Send "{Alt Down}l{Alt Up}m{Down 4}{Enter}"
}

F18:: ; align right
{
    Send "{Alt Down}l{Alt Up}m{Down 2}{Enter}"
}

+F18:: ; rotate right
{
    Send "{Alt Down}l{Alt Up}t{Down 1}{Enter}"
}

F20:: ; align bottom
{
    Send "{Alt Down}l{Alt Up}m{Down 5}{Enter}"
}

+F20:: ; flip vertically
{
    Send "{Alt Down}l{Alt Up}t{Down 3}{Enter}"
}