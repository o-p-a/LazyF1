;
; [F1]�͂��΂炭���������Ȃ��Ɣ������Ȃ��悤�ɂ���
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
	Menu, Tray, Tip, LazyF1
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

