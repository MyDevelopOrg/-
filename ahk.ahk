FileAppend,, %A_ScriptDir%\accounts.txt
FileCreateDir, %A_ScriptDir%\Accounts

FileRead, accounts, %A_ScriptDir%\accounts.txt
Gui, Add, ListBox, x2 y9 w110 h360 vAcc, %accounts%
Gui, Font, S8 CDefault, Verdana
Gui, Add, Button, x112 y9 w100 h60 gInfo, ���������� ���������
Gui, Add, Button, x212 y9 w70 h60 gAccounts, �������� ��������
Gui, Add, Button, x112 y69 w170 h30 gMenu, ���������� �� ��������
Gui, Show, x127 y87 h379 w300, ���������� ����������
Return

GuiClose:
ExitApp

Accounts:
InputBox, acc, ��������, ������� �������� �������� �� �������� |`n������ ���1|���2|���3
FileAppend, %acc%|, %A_ScriptDir%\accounts.txt
reload
return

info:
gui, submit
InputBox, settings, ����, ���������� ���������. ������� ���� ��� ������`n1 - �������� ������`n2 - �������� ����`n3 - �������� �����
if (settings == 1)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
		count_Bronze := count_Bronze + 1
		IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Bronze
		MsgBox, % "���������!"
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
)
		FileAppend, %iniAccount%, %A_ScriptDir%\Accounts\%acc%.ini
		IniRead, count_Bronze, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Bronze
		count_Bronze := count_Bronze+1
		IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%Acc%.ini, Roulette, Bronze
		MsgBox, % "������� ��� ������`n������� ���������!"
	}
if (settings == 2)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Silver, %A_scriptDir%\accounts\%acc%.ini, Roulette, Silver
		count_Silver := count_Silver + 1
		IniWrite, %count_Silver%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Silver
		MsgBox, % "���������!"
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
)
		FileAppend, %iniAccount%, %A_ScriptDir%\Accounts\%acc%.ini
		IniRead, count_Silver, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Silver
		count_Silver := count_Silver+1
		IniWrite, %count_Silver%, %A_ScriptDir%\Accounts\%Acc%.ini, Roulette, Silver
		MsgBox, % "������� ��� ������`n������� ���������!"
	}
if (settings == 3)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Gold, %A_scriptDir%\accounts\%acc%.ini, Roulette, Gold
		count_Gold := count_Gold + 1
		IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Gold
		MsgBox, % "���������!"
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
)
		FileAppend, %iniAccount%, %A_ScriptDir%\Accounts\%acc%.ini
		IniRead, count_Gold, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Gold
		count_Gold := count_Gold+1
		IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%Acc%.ini, Roulette, Gold
		MsgBox, % "������� ��� ������`n������� ���������!"
	}
gui,show
return

menu:
gui, submit

IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
IniRead, count_Silver, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Silver
IniRead, count_Gold, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Gold

text =
(
���������� �� ��������: %acc%

��������� �������: %count_Bronze%
���������� �������: %count_Silver%
������� �������: %count_Gold%
)
MsgBox, % text
gui, show
return