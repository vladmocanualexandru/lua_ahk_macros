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


+F22::
+PrintScreen:: ; open latest screeshot in greenshot
{
    Run "D:\Repositories\personal\macros\host1\get_latest_screenshot.bat"
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

; ---------------------------------------------- BASH -----------------------------------------------------

^Enter:: ; list contents of current folder
{
	Send "ls -ahl {Enter}"
}

^Up:: ; navigate to parent folder
{
	Send "cd .. {Enter}"
}

; ---------------------------------------------- KONFIDANTEA ----------------------------------------------
decrypt(id)
{
    return makeRestCall("http://127.0.0.1:5001/decrypt", "POST", "id=" id)
}

F13::
{
    Send decrypt(8) "{Enter}"
}

F14::
{
    Send decrypt(2) "{Enter}"
}

F15::
{
    Send decrypt(3) "{Enter}"
}

F16::
{
    Send decrypt(4) "{Enter}"
}

F21::
{
    Send decrypt(9) "{Enter}"
}

