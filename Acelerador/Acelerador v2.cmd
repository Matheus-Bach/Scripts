@echo off

:ini
cls
title.     Acelerador Ultra Gamer
color 0a
mode 50,16
echo.
echo               Acelerador Ultra Gamer
echo               (criado por MB_Player)        
echo ออออออออออออออออออออออออออออออออออออออออออออออออออ
echo          1 ^<- Fechar Servi็os desnecessแrios
echo.
echo          2 ^<- Reabrir os Servi็os
echo.
echo          3 ^<- Abrir um Jogo
echo.

echo ออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                                      v. 1.0 alpha

set /p s= .       Digite  ^>ฤ 
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%s%" == "1" goto fsd
if "%s%" == "2" goto rs
if "%s%" == "3" goto aj
if "%s%" == "ajuda" goto ajuda
echo msgbox "Erro ( %s% ) Nใo ้ um comando valido Digite de 1 A 7",vbsystemmodal,"O valor ( %s% )  nใo ้ reconhecido pelo programa, use um valor de 1 a 7 ou digite ajuda para obter mais informa็๕es sobre o programa" > %tmp%\pin.vbs
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
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p pe2= .  Arraste aqui o seu jogo ^>ฤ 
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
cmd.exe start /c %pe2% /REALTIME
goto fsd

:ajuda
cls
