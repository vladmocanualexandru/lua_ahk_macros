# lua_ahk_macros

## Flow

1. (setup) Get ids for macropad devices (unique but fixed for the same host and usb port)
```
run identify_device.bat
edit hostX/listeners.lua
```
2. (start) Use Lua to listen for key codes from identified devices
```
run hostX/run_lua.bat
```
3. (ongoing) For every key press, Lua saves the unique code into
```
D:\Temp\lua_keypress.txt
```
4. (ongoing) Lua sends F24 key
5. (setup) Configure macros AHK file to target registered device ids and run desired macros
```
edit hostX/macros.ahk
```
6. (start) Use AutoHotkey to "convert" Lua key codes into macros
```
run hostX/macros.ahk
``` 
7. (ongoing) AHK listens for F24 key; once identified, reads unique key code from 
```
D:\Temp\lua_keypress.txt
```
8. (ongoing) according to configuration, runs macros
9. (ongoing) once macro is executed, AHK deletes Lua keypress file

