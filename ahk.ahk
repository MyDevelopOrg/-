FileAppend,, %A_ScriptDir%\accounts.txt
FileCreateDir, %A_ScriptDir%\Accounts

FileRead, accounts, %A_ScriptDir%\accounts.txt
Gui, Add, ListBox, x2 y9 w110 h360 vAcc, %accounts%
Gui, Font, S8 CDefault, Verdana
Gui, Add, Button, x112 y9 w100 h60 gInfo, Управление аккаунтом
Gui, Add, Button, x212 y9 w70 h60 gAccounts, Добавить аккаунты
Gui, Add, Button, x112 y69 w170 h30 gMenu, Информация об аккаунте
Gui, Add, Edit, x112 y99 w170 h115 vMenu +ReadOnly, %text%
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
InputBox, settings, Тест, Управление аккаунтом. Введите цифу для выбора`n1 - Добавить бронзовую рулетку`n2 - Добавить серебряную рулетку`n3 - Добавить золотую рулетку`n4 - Указать сервер`n=================================`n11 - Убрать бронзовую рулетку`n22 - Убрать серебряную рулетку`n33 - Убрать золотую рулетку`n55 - Обнулить бронзовые рулетки`n56 - Обнулить серебряные рулетки`n57 - Обнулить золотые рулетки,,330,315
if (settings == 1)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
		count_Bronze := count_Bronze + 1
		IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Bronze
		MsgBox, 64, Успех, Рулетка добавлена, 0.5
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
[Server]
Number=
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
		MsgBox, 64, Успех, Рулетка добавлена, 0.5
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
[Server]
Number=
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
		MsgBox, 64, Успех, Рулетка добавлена, 0.5
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
[Server]
Number=
)
		FileAppend, %iniAccount%, %A_ScriptDir%\Accounts\%acc%.ini
		IniRead, count_Gold, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Gold
		count_Gold := count_Gold+1
		IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%Acc%.ini, Roulette, Gold
		MsgBox, % "Аккаунт был создан`nРулетка добавлена!"
	}
if (settings == 4)
	IfExist, %A_ScriptDir%\Accounts\%acc%.ini
	{
		serverList =
(
1 - Phoenix
2 - Tucson
3 - Scottdale
4 - Chandler
5 - Brainburg
6 - Saint Rose
7 - Mesa
8 - Red-Rock
)
		InputBox, number, Сервер, Укажите сервер:`n%serverList%,,200,260
		number := RegExReplace(number, "1", "Phoenix")
		number := RegExReplace(number, "2", "Tucson")
		number := RegExReplace(number, "3", "Scottdale")
		number := RegExReplace(number, "4", "Chandler")
		number := RegExReplace(number, "5", "Brainburg")
		number := RegExReplace(number, "6", "Saint Rose")
		number := RegExReplace(number, "7", "Mesa")
		number := RegExReplace(number, "8", "Red-Rock")
		IniWrite, %number%, %A_ScriptDir%\Accounts\%acc%.ini, Server, Number
	}
	else
	{
		iniAccount =
(
[Roulette]
Bronze=0
Silver=0
Gold=0
[Server]
Number=
)
		FileAppend, %iniAccount%, %A_ScriptDir%\Accounts\%acc%.ini
		serverList =
(
1 - Phoenix
2 - Tucson
3 - Scottdale
4 - Chandler
5 - Brainburg
6 - Saint Rose
7 - Mesa
8 - Red-Rock
)
		InputBox, number, Сервер, Укажите сервер:`n%serverList%,,200,260
		number := RegExReplace(number, "1", "Phoenix")
		number := RegExReplace(number, "2", "Tucson")
		number := RegExReplace(number, "3", "Scottdale")
		number := RegExReplace(number, "4", "Chandler")
		number := RegExReplace(number, "5", "Brainburg")
		number := RegExReplace(number, "6", "Saint Rose")
		number := RegExReplace(number, "7", "Mesa")
		number := RegExReplace(number, "8", "Red-Rock")
		IniWrite, %number%, %A_ScriptDir%\Accounts\%acc%.ini, Server, Number
		MsgBox, % "Аккаунт был создан`nСервер указан!"
	}
if (settings == 11) ; -1 bronze
{
	IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
	count_Bronze := count_Bronze - 1
	IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Bronze
	MsgBox, 64, Успех, Рулетка убрана, 0.5
}
if (settings == 22) ; -1 silver
{
	IniRead, count_Silver, %A_scriptDir%\accounts\%acc%.ini, Roulette, Silver
	count_Silver := count_Silver - 1
	IniWrite, %count_Silver%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Silver
	MsgBox, 64, Успех, Рулетка убрана, 0.5	
}
if (settings == 33) ; -1 gold
{
	IniRead, count_Gold, %A_scriptDir%\accounts\%acc%.ini, Roulette, Gold
	count_Gold := count_Gold + 1
	IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Gold
	MsgBox, 64, Успех, Рулетка добавлена, 0.5
}
if (settings == 55) ; clear bronze
{
	IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
	count_Bronze := 0
	IniWrite, %count_Bronze%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Bronze
	MsgBox, 64, Успех, Рулетка обнулена, 0.5
}
if (settings == 56) ; clear silver
{
	IniRead, count_Silver, %A_scriptDir%\accounts\%acc%.ini, Roulette, Silver
	count_Silver := 0
	IniWrite, %count_Silver%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Silver
	MsgBox, 64, Успех, Рулетка обнулена, 0.5	
}
if (settings == 57) ; clear gold
{
	IniRead, count_Gold, %A_scriptDir%\accounts\%acc%.ini, Roulette, Gold
	count_Gold := 0
	IniWrite, %count_Gold%, %A_ScriptDir%\Accounts\%acc%.ini, Roulette, Gold
	MsgBox, 64, Успех, Рулетка обнулена, 0.5
}
gui,show
return

menu:
gui, submit

IniRead, count_Bronze, %A_scriptDir%\accounts\%acc%.ini, Roulette, Bronze
IniRead, count_Silver, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Silver
IniRead, count_Gold, %A_scriptDir%\Accounts\%acc%.ini, Roulette, Gold
IniRead, server_Number, %A_scriptDir%\Accounts\%acc%.ini, Server, Number

text =
(
Аккаунт: %acc%

Бронзовых рулеток: %count_Bronze%
Серебряных рулеток: %count_Silver%
Золотых рулеток: %count_Gold%

Сервер: %server_Number%
)
GuiControl,, Menu, %text%
gui, show
return