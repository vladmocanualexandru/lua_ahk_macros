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

F22:: ; print screen
{
	Send "{PrintScreen}"
}

+F22:: ; open latest screeshot in greenshot
{
    Run "D:\Repositories\macros_lua_ahk\host2\get_latest_screenshot.bat"
}

#b:: ; open git_bash in repositories folder
{
    Run "D:\Repositories\open_git_bash_here.lnk"
}

F17:: ; generate timestamp
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



; ---------------------------------------------- KONFIDANTEA ----------------------------------------------
decrypt(id)
{
    return makeRestCall("http://127.0.0.1:5010/decrypt", "POST", "id=" id)
}

F13::
{
    Send decrypt(1) "{Enter}"
}

F14::
{
    Send decrypt(2) "{Enter}"
}

F15::
{
    Send decrypt(3) "{Enter}"
}

