@echo off
:in
title \
color 1f
mode 20,7

:st
set /p w= Digite a senha =^> 
if "%w%" == "password" goto ig
goto st
cls
:ig
cls
echo.
echo  1 bloquear 
echo.
echo  2 desbloquear
 echo.
set /p s= Digite =^> 
if "%s%" == "1" goto 1
if "%s%" == "2" goto 2
echo 
echo msgbox "comando invalido %s% ",vbsystemmodal,"estou programando" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in
:1
color 0c
mode 110,7
cls
echo.
set /p s= arraste e solte aqui =^> 
icacls %s% /deny *S-1-1-0:(D,WDAC)
echo 
echo msgbox "foi bloqueado",vbsystemmodal,"estou programando" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in

:2
color 0a
mode 110,7
cls
echo.
set /p s= arraste e solte aqui =^> 
icacls %s% /grant *S-1-1-0:(D,WDAC)
echo 
echo msgbox "Desbloqueado",vbsystemmodal,"estou programando" > %tmp%\kk.vbs& start %tmp%\kk.vbs
goto in

PARA Windows Xp
Nega acesso
cacls %s% /e /p administradores:n

libera o acesso
cacls %s% /e /p administradores:f
