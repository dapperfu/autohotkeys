; https://awesomewm.org/doc/api/documentation/90-FAQ.md.html#Usage
; Default binding to open a terminal is "Mod4 + Enter" (where Mod4 is usually the "Windows" key).
; You can also click on the desktop background with the right button, to open the awesome menu.

; Windows 10 provides keystrokes Alt-F-P to "Open command prompt here" but for some reason it severely lags.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Enter::
	WinGetTitle,activeWinTitle,A
	WinGetClass,activeWinClass,A
	if (activeWinClass = "CabinetWClass" or activeWinClass = "ExploreWClass")
		Run,%ComSpec%,%activeWinTitle%
	else
		; change "C:\Temp" to whatever default directory you want
		Run,%ComSpec%,C:\Temp
Return