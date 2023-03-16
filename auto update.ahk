#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Name = Test.exe
Url = 

UrlDownloadToFile, %Url%, Update.txt
FileRead, text, %A_Workingdir%\Update.txt
if InStr(text, "Update") ;Change "Pinda" to a new word after you are going to push a update change your txt file to text="YourWord"
{
	Gui, Update:Add, Text, x5 y40 w145 h25, You are currently running an outaded version       ;Announces the current version the user is using.
	Gui, Update:Add, Text, x5 y85 w125 h15, Would you like to update?         ;Text asking if the user wants to update to the newer version
	Gui, Update:Add, Button, x85 y180 w43 h23 gYes, Yes                        ;If pressed it will go to the Yes sub to download the newest version available;
	Gui, Update:Add, Button, x135 y180 w43 h23 gHome, No                     ;Will skip the update and go to the main functions
	Gui, Update:Show, w192 h204, Update?                                     ;Update window title.
}
else
{
	Gosub Home
}
return

Home:
{
	Gui, Gui:Add, Text, x10 y50 w145 h15, Text
	Gui, Gui:Add, Text, x10 y90 w165 h25, Text
	Gui, Gui:Show, w229 h196, 
}
return

GuiGuiClose:
ExitApp



Yes:
UrlDownloadToFile, %Url%, updated.ahk
gosub Run
return


Run:
Run, %Name%