@echo off

:ini
cls
title.     Acelerador Ultra Gamer
color 0a
mode 50,16
echo.
echo               Acelerador Ultra Gamer
echo               (criado por MB_Player)        
echo ��������������������������������������������������
echo          1 ^<- Fechar Servi�os desnecess�rios
echo.
echo          2 ^<- Reabrir os Servi�os
echo.
echo          3 ^<- Abrir um Jogo
echo.

echo ��������������������������������������������������
echo                                      v. 1.0 alpha

set /p s= .       Digite  ^>� 
echo.
echo �������������������������������������������������������
if "%s%" == "1" goto fsd
if "%s%" == "2" goto rs
if "%s%" == "3" goto aj
if "%s%" == "ajuda" goto ajuda
echo msgbox "Erro ( %s% ) N�o � um comando valido Digite de 1 A 7",vbsystemmodal,"O valor ( %s% )  n�o � reconhecido pelo programa, use um valor de 1 a 7 ou digite ajuda para obter mais informa��es sobre o programa" > %tmp%\pin.vbs
start %tmp%\pin.vbs
goto ini 
:fsd

taskkill -f /im explorer.exe
goto ini

:rs

explorer.exe
timeout 3
goto ini

:aj
cls
mode 55,7
echo.
echo.
echo �������������������������������������������������������
set /p pe2= .  Arraste aqui o seu jogo ^>� 
echo.
echo �������������������������������������������������������
cmd.exe start /c %pe2% /REALTIME
goto fsd

:ajuda
cls
