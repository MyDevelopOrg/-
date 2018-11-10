FileAppend,, %A_ScriptDir%\accounts.txt
FileCreateDir, %A_ScriptDir%\Accounts

FileRead, accounts, %A_ScriptDir%\accounts.txt
Gui, Add, ListBox, x2 y9 w110 h360 vAcc, %accounts%
Gui, Font, S8 CDefault, Verdana
Gui, Add, Button, x112 y9 w100 h60 gInfo, Управление аккаунтом
Gui, Add, Button, x212 y9 w70 h60 gAccounts, Добавить аккаунты
Gui, Add, Button, x112 y69 w170 h30 gMenu, Информация об аккаунте
Gui, Show, x127 y87 h379 w300, Управление аккаунтами
Return

GuiClose:
ExitApp

Accounts:
InputBox, acc, Аккаунты, Введите аккаунты разделяя их символом |`nПример Акк1|Акк2|Акк3
FileAppend, %acc%|, %A_ScriptDir%\accounts.txt
reload
return

info:
gui, submit
InputBox, settings, Тест, Управление аккаунтом. Введите цифу для выбора`n1 - Добавить бронзу`n2 - Добавить серу`n3 - Добавить голду
if (settings == 1)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
		count_Bronze := count_Bronze + 1
		IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Bronze
		MsgBox, % "Добавлено!"
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
		MsgBox, % "Аккаунт был создан`nРулетка добавлена!"
	}
if (settings == 2)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Silver, %A_scriptDir%\accounts\%acc%.ini, Roulette, Silver
		count_Silver := count_Silver + 1
		IniWrite, %count_Silver%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Silver
		MsgBox, % "Добавлено!"
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
		MsgBox, % "Аккаунт был создан`nРулетка добавлена!"
	}
if (settings == 3)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Gold, %A_scriptDir%\accounts\%acc%.ini, Roulette, Gold
		count_Gold := count_Gold + 1
		IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Gold
		MsgBox, % "Добавлено!"
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
		MsgBox, % "Аккаунт был создан`nРулетка добавлена!"
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
Информация об аккаунте: %acc%

Бронзовых рулеток: %count_Bronze%
Серебряных рулеток: %count_Silver%
Золотых рулеток: %count_Gold%
)
MsgBox, % text
gui, show
return