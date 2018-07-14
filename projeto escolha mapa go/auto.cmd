@echo off
color 70
title Sistema BAN-MAP by Matheus Bach
mode 50,11
:reset
del /F /Q mapas
md mapas
md mapas\de_dust2
md mapas\mirage
md mapas\overpass
md mapas\cobblestone
md mapas\cache
cls
echo.
echo .   MAPAS RESTANTES:
echo.
dir /B mapas
echo.
set /p ban= . Mapa a ser Banido:
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%ban%" == "reset" goto reset
if "%ban%" == "exit" exit
::if NOT EXIST mapas\%ban% rd /S /Q mapas\%ban%
rd /S /Q mapas\%ban%
cls
echo msgbox "O mapa %ban% acabou de ser banido",vbsystemmodal,"4 mapas restantes" > %tmp%\pin.vbs
start %tmp%\pin.vbs
del /F /Q pin.vbs
cls
echo.
echo .   MAPAS RESTANTES:
echo.
dir /B mapas
echo.
set /p ban= . Mapa a ser Banido:
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%ban%" == "reset" goto reset
if "%ban%" == "exit" exit
::if NOT EXIST mapas\%ban% rd /S /Q mapas\%ban%
rd /S /Q mapas\%ban%
cls
echo msgbox "O mapa %ban% acabou de ser banido",vbsystemmodal,"3 mapas restantes" > %tmp%\pin.vbs
start %tmp%\pin.vbs
del /F /Q pin.vbs
cls
echo.
echo .   MAPAS RESTANTES:
echo.
dir /B mapas
echo.
set /p ban= . Mapa a ser Banido:
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%ban%" == "reset" goto reset
if "%ban%" == "exit" exit
::if NOT EXIST mapas\%ban% rd /S /Q mapas\%ban%
rd /S /Q mapas\%ban%
cls
echo msgbox "O mapa %ban% acabou de ser banido",vbsystemmodal,"2 mapas restantes" > %tmp%\pin.vbs
start %tmp%\pin.vbs
del /F /Q pin.vbs
cls
echo.
echo .   MAPAS RESTANTES:
echo.
dir /B mapas
echo.
set /p ban= . Mapa a ser Banido:
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%ban%" == "reset" goto reset
if "%ban%" == "exit" exit
rd /S /Q mapas\%ban%
if EXIST mapas\de_dust2 set ban=de_dust2
if EXIST mapas\overpass set ban=overpass
if EXIST mapas\mirage set ban=mirage
if EXIST mapas\cache set ban=cache
if EXIST mapas\cobblestone set ban=cobblestone
cls
echo msgbox "O mapa %ban% foi o escolhido!",vbsystemmodal,"QUE COMECE O JOGO!" > %tmp%\pin.vbs
start %tmp%\pin.vbs
del /F /Q pin.vbs
cls
echo.
echo 	Tecle algo para resetar o Programa
pause>nul
goto reset