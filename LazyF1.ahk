;
; [F1]‚Í‚µ‚Î‚ç‚­‰Ÿ‚µ‘±‚¯‚È‚¢‚Æ”½‰ž‚µ‚È‚¢‚æ‚¤‚É‚·‚é
;
; 2010/04/19 opa
;

#Persistent
#NoEnv
#SingleInstance Force
#HotkeyInterval 1000
#MaxHotkeysPerInterval 64
#InstallKeybdHook

Auto-Execute:
	SetWorkingDir, %A_ScriptDir%
	Menu, Tray, Icon, , , 1
	exit

$*F1::
	if(F1on == 0){
		F1on := 1
		SetTimer, F1timer, 1000
	}
	return
$*F1 Up::
	F1on := 0
	SetTimer, F1timer, Off
	return
F1timer:
	F1on := 2
	SetTimer, F1timer, Off
	Send, {Blind}{F1}
	return

