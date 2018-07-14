@echo off
cls
@echo off
net stop MpsSvc
taskkill /f /t /im FirewallControlPanel.exe
if %errorlevel%==1 tskill FirewallControlPanel
netsh firewall set opmode mode=disable
