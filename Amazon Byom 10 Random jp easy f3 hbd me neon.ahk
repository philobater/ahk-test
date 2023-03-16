#SingleInstance, Force
#NoEnv
Suspend, on
Menu Tray, NoStandard
Menu Tray, Add, Exit, Exit
Exit()
{
    ExitApp
}
;#Warn
SendMode Input
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
continue := false
continue1 := false
continue2 := false
; Get the computer name and encrypt it
computerName := A_UserName A_ComputerName
encryptedComputerName := Encrypt(computerName)
skip := False
pass := False
; Encrypt the encrypted computer name to use as the password
password := Encrypt(encryptedComputerName)
; Read the password from file
FileReadLine, passwordFromFile, Password.txt, 1
if (passwordFromFile = password)
{
    skip := True
    pass := True
}
if (skip = false)
{
    Clipboard := encryptedComputerName
    InputBox, password1, Enter password, Please enter the password:, HIDE|0x20
    if (password = password1)
    {
        FileDelete, Password.txt
        pass := True
        FileAppend, %password1% , Password.txt
    }
    else
    {
        ExitApp
    }
}
if (pass := True)
{
	Suspend, off
Tick()
{
    static count := 30
	if (count <= 0)
	{
	SetTimer, Tick, Off
	tooltip1 := true
	send, {F14}
	SoundBeep
	count := 30
	}
    ToolTip % count--
	if (ToolTip1 = true)
		RemoveToolTip:
		ToolTip
		ToolTip1 := false
}
Tick2()
{
    static count := 30
	if (count <= 0)
	{
	SetTimer, Tick2, Off
	tooltip12 := true
	continue2 := true
	SoundBeep
	count := 30
	}
    ToolTip % count--
	if (ToolTip12 = true)
		RemoveToolTip2:
		ToolTip
		ToolTip12 := false
}

Pause::
SetTimer, Tick2, 1000
return
;
F9:: Reload
;

F10::
pause
return

;
F11:: continue := true
return

;
XButton1::
sendinput 123456
return

;
XButton2::
string := "abcdefghijklnopqrstuvxz"
loop, 15
{
Random, Var,1,36
sendinput, % SubStr(string, Var, 1)
}
return

;
NumpadSub:: continue1 := true
return

;
NumpadAdd::
send, !{Tab}
return

;
F14:: continue2 := true
return

;
F1::
Loop
{
	ImageSearch,x,y, 1083, 724, 1202, 766, *5 Cloudflare.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 1034, 366, 1228, 509, *5 Cloudflare_switch.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 1097, 496, 1293, 609, *5 Cloudflare_on.bmp
    if (ErrorLevel = 0)
    {
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 3" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 4" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 5" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 6" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 7" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 8" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 9" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 10" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 11" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 12" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 13" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 14" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 15" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 16" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 17" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 18" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 19" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 20" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 21" -incognito
		sleep, 1000
		Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Profile 22" -incognito
		break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 999, 727, 1185, 766, *5 End.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, 350, 750
		Loop
		{
			ImageSearch,x,y, 0, 58, 1364, 113, *5 amazon_japan.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				break
			}
		}
		MouseClick, left, 150, 750
		Loop
		{
			ImageSearch,x,y, 0, 58, 1364, 113, *5 amazon_japan.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				break
			}
		}
        break
    }
	ImageSearch,x,y, 999, 727, 1185, 766, *5 End_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, 350, 750
		Loop
		{
			ImageSearch,x,y, 0, 58, 1364, 113, *5 amazon_japan.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				break
			}
		}
		MouseClick, left, 150, 750
		Loop
		{
			ImageSearch,x,y, 0, 58, 1364, 113, *5 amazon_japan.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				break
			}
		}
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
return

F2::
send, ^a
send, ^c
sleep, 200
clip := clipboard
sendraw, +
send, 48%clip%
return

F3::
send, ^r
sleep, 200
click, 430, 750 ;4
sleep, 200
send, ^r
sleep, 200
click, 390, 750 ;3
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
send, {Enter}
sleep, 200
click, 390, 750 ;3
sleep, 200
send, {Enter}
sleep, 200
/*
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
*/
Loop
{
	ImageSearch,x,y, 0, 0, 255, 40, *5 Link.bmp
	if (ErrorLevel = 0)
	{
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
SetTimer, Tick, 1000
sleep, 200
click, 190, 50 ;link
sleep, 200
send, ^c
sleep, 200
click, 470, 750 ;5
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 550, 750 ;7
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 630, 750 ;9
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 715, 750 ;11
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 430, 750 ;4
sleep, 200
click, 190, 50 ;link
sleep, 200
send, ^c
sleep, 200
click, 510, 750 ;6
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 590, 750 ;8
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 670, 750 ;10
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 750, 750 ;12
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 430, 750 ;4
sleep, 200
click, 390, 750 ;3
sleep, 200
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}

F4::
click, 470, 750 ;5
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 510, 750 ;6
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
SetTimer, Tick, 1000
sleep, 200
click, 470, 750 ;5
sleep, 200
Loop
{
	ImageSearch,x,y, 0, 0, 255, 40, *5 Link.bmp
	if (ErrorLevel = 0)
	{
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
click, 190, 50 ;link
sleep, 200
send, ^c
sleep, 200
click, 790, 750 ;13
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 870, 750 ;15
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 950, 750 ;17
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 1030, 750 ;19
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 510, 750 ;6
sleep, 200
click, 190, 50 ;link
sleep, 200
send, ^c
sleep, 200
click, 830, 750 ;14
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 910, 750 ;16
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 990, 750 ;18
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 1070, 750 ;20
sleep, 200
send, ^v
sleep, 200
send, {Enter}
sleep, 200
click, 510, 750 ;6
sleep, 200
click, 470, 750 ;5
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}

F6::
click, 550, 750 ;7
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 590, 750 ;8
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 550, 750 ;7
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 630, 750 ;9
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 670, 750 ;10
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 630, 750 ;9
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 715, 750 ;11
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 750, 750 ;12
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 715, 750 ;11
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 790, 750 ;13
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 830, 750 ;14
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 790, 750 ;13
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 870, 750 ;15
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 910, 750 ;16
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 870, 750 ;15
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 950, 750 ;17
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 990, 750 ;18
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 950, 750 ;17
SetTimer, Tick, 1000
Loop
{
	if (continue2 = true)
	{
		continue2 := false
		break
	}
}
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}
click, 1030, 750 ;19
sleep, 200
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep, 200
click, 1070, 750 ;20
Loop
{
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	ImageSearch,x,y, 651, 373, 845, 490, *5 Change_alt.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
SetTimer, Tick2, 1000
sleep, 200
click, 1030, 750 ;19
Loop
{
	if (continue1 = true)
	{
		continue1 := false
		break
	}
}


;click, 1070, 750 ;20
;sleep, 200
click, 1030, 750 ;19
sleep, 200
click, 990, 750 ;18
sleep, 200
click, 950, 750 ;17
sleep, 200
click, 910, 750 ;16
sleep, 200
click, 870, 750 ;15
sleep, 200
click, 830, 750 ;14
sleep, 200
click, 790, 750 ;13
sleep, 200
click, 750, 750 ;12
sleep, 200
click, 715, 750 ;11
sleep, 200
click, 670, 750 ;10
sleep, 200
click, 630, 750 ;9
sleep, 200
click, 590, 750 ;8
sleep, 200
click, 550, 750 ;7
sleep, 200
click, 510, 750 ;6
sleep, 200
click, 470, 750 ;5
sleep, 200
click, 430, 750 ;4
sleep, 200
click, 390, 750 ;3
sleep, 200
click, 350, 750 ;2
sleep, 200
click, 150, 750 ;1
sleep, 200

F7::
Loop
{
	Loop
	{
		sleep, 1000
		ImageSearch,x,y, 504, 354, 849, 542, *5 Create_Your_account.bmp
		if (ErrorLevel = 0)
		{
			MouseClick, left, x+20, y+20
			break
		}
		ImageSearch,x,y, 504, 354, 849, 542, *5 Create_Your_account_alt.bmp
		if (ErrorLevel = 0)
		{
			MouseClick, left, x+20, y+20
			break
		}
		ImageSearch,x,y, 504, 354, 849, 542, *5 Create_Your_account_neon.bmp
		if (ErrorLevel = 0)
		{
			MouseClick, left, x+20, y+20
			break
		}
		ImageSearch,x,y, 504, 354, 849, 542, *5 Create_Your_account_neon_alt.bmp
		if (ErrorLevel = 0)
		{
			MouseClick, left, x+20, y+20
			break
		}
		if (continue = true)
		{
			continue := false
			break
		}
		SoundBeep
		Reload
		return
	}

Loop
{
    ImageSearch,x,y, 0, 58, 1364, 113, *5 Mail_Byom.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, Middle, x+10, y+10
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
	ImageSearch,x,y, 489, 156, 862, 274, *5 error.bmp
    if (ErrorLevel = 0)
    {
		Loop
		{
			ImageSearch,x,y, 501, 406, 862, 726, *5 EPass_alt.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				sendinput, 123456
				send, {tab}
				sendinput, 123456
				send, {Enter}
				sleep, 250
			}
		break
		}
		/*
		sleep, 200
		MouseClick, left,  532, 600
		sendinput, 123456
		MouseClick, left,  545, 700
		sendinput, 123456
		send, {Enter}
		sleep, 500
		*/
    }
	ImageSearch,x,y, 489, 156, 862, 274, *5 error_alt.bmp
    if (ErrorLevel = 0)
    {
		Loop
		{
			ImageSearch,x,y, 501, 406, 862, 726, *5 EPass.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				sendinput, 123456
				send, {tab}
				sendinput, 123456
				send, {Enter}
			}
		break
		}
		/*
		sleep, 200
		MouseClick, left,  532, 600
		sendinput, 123456
		MouseClick, left,  545, 700
		sendinput, 123456
		send, {Enter}
		sleep, 500
		*/
    }
	ImageSearch,x,y, 850, 457, 995, 533, *5 Add_email_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
    ImageSearch,x,y, 857, 460, 984, 570, *5 add_email.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 457, 995, 553, *5 Add_email_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 457, 995, 553, *5 Add_email_neon_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 474, 983, 553, *5 add_email_alternative.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep,200
Click, 361, 24 ;Mail Tab
Loop
{
	ImageSearch,x,y, 939, 97, 1254, 154, *5 Mail_Name.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		/*
		Loop, Read, Accounts-Byom.txt
		{
			total_lines = % A_Index +1
		}
		if total_lines < 1
		total_lines = 1
		FileReadLine, line, Mail_name.txt, 1
		Name = %line%
		send, %Name%%total_lines%
		*/
		string := "abcdefghijklnopqrstuvxz"
		loop, 15
		{
			Random, Var,1,36
			sendinput, % SubStr(string, Var, 1)
			FileAppend, % SubStr(string, Var, 1) , Temp.txt
		}
		FileRead, OutputVar, Temp.txt
		Email = % OutputVar "@byom.de"
		FileDelete, Temp.txt
		send, {Enter}
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
;Email = %Name%%total_lines%@byom.de
Click, 106, 23 ; Amazon Tab
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
    ImageSearch,x,y, 514, 335, 855, 379, *5 Confirm_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
send, %Email%
sleep, 200
send, {Enter}
/*
Loop
{
    ImageSearch,x,y, 515, 392, 850, 434, *5 Confirm_2.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
Click, 361, 24 ;Mail Tab
Loop
{
    ImageSearch,x,y, 513, 352, 864, 586, *5 Byom_refresh.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
		sleep, 200
        break
    }

if (continue = true)
{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 513, 352, 864, 586, *5 Byom_refresh.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
		sleep, 200
        break
    }
    ImageSearch,x,y, 513, 352, 864, 586, *5 Byom_refresh_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
		sleep, 200
        break
    }

if (continue = true)
{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 80, 314, 146, 366, *5 Amazon_otp_Byom.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  426, 324
        break
    }

if (continue = true)
{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 400, 470, 470, 510, *5 Amazon_otp_Byom2.bmp
    if (ErrorLevel = 0)
    {
        break
    }
    ImageSearch,x,y, 450, 470, 520, 510, *5 Amazon_otp_Byom2_alt.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
sleep,350
Click, 159, 550
Click, 159, 550
sleep,250
send, ^c
Click, 106, 23 ; Amazon Tab
Loop
{
    ImageSearch,x,y, 507, 357, 854, 408, *5 Confirm_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left, x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
send, ^v
sleep, 200
send, {Enter}
/*
Loop
{
    ImageSearch,x,y, 506, 404, 853, 452, *5 Confirm_2.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
	ImageSearch,x,y, 487, 384, 661, 472, *5 otp_error.bmp
	if (ErrorLevel = 0)
	{
		Loop
		{
			ImageSearch,x,y, 559, 462, 800, 553, *5 resend_otp.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				sleep, 200
				Click, 361, 24 ;Mail Tab
				sleep, 200
				send, {PgUp}
				Loop
				{
					ImageSearch,x,y, 502, 378, 831, 526, *5 Byom_refresh.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+20, y+20
						sleep, 200
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				Loop
				{
					ImageSearch,x,y, 72, 289, 186, 429, *5 otp_error_byom.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+50, y+20
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				Loop
				{
					ImageSearch,x,y, 400, 470, 470, 510, *5 Amazon_otp_Byom2.bmp
					if (ErrorLevel = 0)
					{
						break
					}
					ImageSearch,x,y, 450, 470, 520, 510, *5 Amazon_otp_Byom2_alt.bmp
					if (ErrorLevel = 0)
					{
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				sleep,350
				Click, 159, 550
				Click, 159, 550
				sleep,250
				send, ^c
				Click, 106, 23 ; Amazon Tab
				Loop
				{
					ImageSearch,x,y, 494, 354, 869, 522, *5 Confirm_1.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+20, y+20
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				send, ^v
				send, {Enter}
				break
			}
			if (continue = true)
			{
				continue := false
				break
			}
		}
	}
	if (continue = true)
	{
		continue := false
		break
	}
    ImageSearch,x,y, 384, 503, 651, 552, *5 Password.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
sendinput, 123456
sleep, 200
send, {Enter}
/*
Loop
{
    ImageSearch,x,y, 383, 557, 506, 602, *5 Password_save.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
	ImageSearch,x,y, 370, 233, 448, 324, *5 pass_error1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  432, 611
		sendinput, 123456
		MouseClick, left, 430, 667
		sleep, 3000
    }
    ImageSearch,x,y, 830, 554, 969, 607, *5 Number_removal.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 830, 554, 969, 607, *5 Number_removal_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 879, 562, 961, 601, *5 Number_removal_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
    ImageSearch,x,y, 635, 329, 701, 359, *5 Number_delete.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Click, 674, 345
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
    ImageSearch,x,y, 446, 441, 684, 491, *5 Number_removal_3.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
    ImageSearch,x,y, 446, 441, 684, 491, *5 Number_removal_3_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 635, 329, 701, 359, *5 Number_delete_1.bmp
    if (ErrorLevel = 0)
    {
		Click, 674, 345
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
/*
Loop
{
    ImageSearch,x,y, 819, 616, 975, 716, *5 password_change_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 877, 668, 965, 714, *5 password_change_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 378, 547, 516, 609, *5 password_change_2.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Click, 479, 388
sendinput, 123456
Click, 468, 454
sleep,200
sendinput, %AlternateClipboard%
Click, 471, 531
sleep,200
sendinput, %AlternateClipboard%
Loop
{
    ImageSearch,x,y, 378, 547, 516, 609, *5 password_change_2.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
FileAppend, %Email%`n, Accounts-Byom.txt
Loop
{
	ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
	if(ErrorLevel = 0)
	{
		send, ^r
		Loop
		{
			ImageSearch,x,y, 688, 152, 851, 267, Amazon_bitch2.bmp
			if(ErrorLevel = 0)
			{
				send, {Enter}
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 0)
			{
				break
			}
		}
		Loop
		{
			ImageSearch,x,y, 501, 191, 564, 252, Amazon_bitch.bmp
			if(ErrorLevel = 1)
			{
				break
			}
		}
	}
    ImageSearch,x,y, 378, 252, 437, 304, *5 close.bmp
    if (ErrorLevel = 0)
    {
		sleep, 200
		Click, 1337, 8
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}

}

F8::
Loop
{
    ImageSearch,x,y, 0, 58, 1364, 113, *5 Mail_Byom.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, Middle, x+10, y+10
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Loop
{
	ImageSearch,x,y, 489, 156, 862, 274, *5 error.bmp
    if (ErrorLevel = 0)
    {
		sleep, 200
		MouseClick, left,  532, 505
		sendinput, 123456
		MouseClick, left,  545, 595
		sendinput, 123456
		send, {Enter}
		sleep, 500
    }
    ImageSearch,x,y, 857, 460, 984, 570, *5 add_email.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 457, 995, 553, *5 Add_email_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 457, 995, 553, *5 Add_email_neon_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 807, 474, 983, 553, *5 add_email_alternative.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
sleep,200
Click, 361, 24 ;Mail Tab
Loop
{
	ImageSearch,x,y, 939, 97, 1254, 154, *5 Mail_Name.bmp
	if (ErrorLevel = 0)
	{
		MouseClick, left, x+20, y+20
		/*
		Loop, Read, Accounts-Byom.txt
		{
			total_lines = % A_Index +1
		}
		if total_lines < 1
		total_lines = 1
		FileReadLine, line, Mail_name.txt, 1
		Name = %line%
		send, %Name%%total_lines%
		*/
		string := "abcdefghijklnopqrstuvxz"
		loop, 15
		{
			Random, Var,1,36
			sendinput, % SubStr(string, Var, 1)
			FileAppend, % SubStr(string, Var, 1) , Temp.txt
		}
		FileRead, OutputVar, Temp.txt
		Email = % OutputVar "@byom.de"
		FileDelete, Temp.txt
		send, {Enter}
		break
	}
	if (continue = true)
	{
		continue := false
		break
	}
}
;Email = %Name%%total_lines%@byom.de
Click, 106, 23 ; Amazon Tab
Loop
{
    ImageSearch,x,y, 514, 335, 855, 379, *5 Confirm_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
send, %Email%
sleep, 200
send, {Enter}
/*
Loop
{
    ImageSearch,x,y, 515, 392, 850, 434, *5 Confirm_2.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
Click, 361, 24 ;Mail Tab
Loop
{
    ImageSearch,x,y, 80, 314, 146, 366, *5 Amazon_otp_Byom.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  426, 324
        break
    }

if (continue = true)
{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 400, 470, 470, 510, *5 Amazon_otp_Byom2.bmp
    if (ErrorLevel = 0)
    {
        break
    }
    ImageSearch,x,y, 450, 470, 520, 510, *5 Amazon_otp_Byom2_alt.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
sleep,350
Click, 159, 554
Click, 159, 554
sleep,250
send, ^c
Click, 106, 23 ; Amazon Tab
Loop
{
    ImageSearch,x,y, 507, 357, 854, 408, *5 Confirm_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
send, ^v
sleep, 200
send, {Enter}

Loop
{
	ImageSearch,x,y, 487, 384, 661, 472, *5 otp_error.bmp
	if (ErrorLevel = 0)
	{
		Loop
		{
			ImageSearch,x,y, 559, 462, 800, 553, *5 resend_otp.bmp
			if (ErrorLevel = 0)
			{
				MouseClick, left, x+20, y+20
				sleep, 200
				Click, 361, 24 ;Mail Tab
				sleep, 200
				send, {PgUp}
				Loop
				{
					ImageSearch,x,y, 502, 378, 831, 526, *5 Byom_refresh.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+20, y+20
						sleep, 200
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				Loop
				{
					ImageSearch,x,y, 72, 289, 186, 429, *5 otp_error_byom.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+50, y+20
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				Loop
				{
					ImageSearch,x,y, 400, 470, 470, 510, *5 Amazon_otp_Byom2.bmp
					if (ErrorLevel = 0)
					{
						break
					}
					ImageSearch,x,y, 450, 470, 520, 510, *5 Amazon_otp_Byom2_alt.bmp
					if (ErrorLevel = 0)
					{
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				sleep,350
				Click, 159, 550
				Click, 159, 550
				sleep,250
				send, ^c
				Click, 106, 23 ; Amazon Tab
				Loop
				{
					ImageSearch,x,y, 494, 354, 869, 522, *5 Confirm_1.bmp
					if (ErrorLevel = 0)
					{
						MouseClick, left, x+20, y+20
						break
					}
					if (continue = true)
					{
						continue := false
						break
					}
				}
				send, ^v
				send, {Enter}
				break
			}
			if (continue = true)
			{
				continue := false
				break
			}
		}
	}
	if (continue = true)
	{
		continue := false
		break
	}
    ImageSearch,x,y, 384, 503, 651, 552, *5 Password.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
sendinput, 123456
sleep, 200
send, {Enter}

Loop
{
	ImageSearch,x,y, 370, 233, 448, 324, *5 pass_error1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  432, 611
		sendinput, 123456
		MouseClick, left, 430, 667
		sleep, 3000
    }
    ImageSearch,x,y, 830, 554, 969, 607, *5 Number_removal.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 830, 554, 969, 607, *5 Number_removal_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 879, 562, 961, 601, *5 Number_removal_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 635, 329, 701, 359, *5 Number_delete.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Click, 674, 345
Loop
{
    ImageSearch,x,y, 446, 441, 684, 491, *5 Number_removal_3.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
    ImageSearch,x,y, 446, 441, 684, 491, *5 Number_removal_3_neon.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 635, 329, 701, 359, *5 Number_delete_1.bmp
    if (ErrorLevel = 0)
    {
		Click, 674, 345
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
/*
Loop
{
    ImageSearch,x,y, 819, 616, 975, 716, *5 password_change_1.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	ImageSearch,x,y, 877, 668, 965, 714, *5 password_change_alt.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Loop
{
    ImageSearch,x,y, 378, 547, 516, 609, *5 password_change_2.bmp
    if (ErrorLevel = 0)
    {
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
Click, 479, 388
sendinput, 123456
Click, 468, 454
sleep,200
sendinput, %AlternateClipboard%
Click, 471, 531
sleep,200
sendinput, %AlternateClipboard%
Loop
{
    ImageSearch,x,y, 378, 547, 516, 609, *5 password_change_2.bmp
    if (ErrorLevel = 0)
    {
		MouseClick, left,  x+20, y+20
        break
    }
	if (continue = true)
	{


		continue := false
		break
	}
}
*/
FileAppend, %Email%`n, Accounts-Byom.txt
Loop
{
    ImageSearch,x,y, 378, 252, 437, 304, *5 close.bmp
    if (ErrorLevel = 0)
    {
		sleep, 200
		Click, 1337, 8
        break
    }
	if (continue = true)
	{
		continue := false
		break
	}
}
Reload
return

}
; Function to encrypt a string
Encrypt(plaintext)
{
    encrypted := ""
    Loop, Parse, plaintext
    {
        charCode := Asc(A_LoopField)
        if (charCode >= 33 && charCode <= 126 && A_LoopField != "`")
        {
            encryptedChar := Chr(Mod(charCode + 21 - 33, 94) + 33)
        }
        else
        {
            encryptedChar := ""
        }
        encrypted .= encryptedChar
    }
    return encrypted
}
