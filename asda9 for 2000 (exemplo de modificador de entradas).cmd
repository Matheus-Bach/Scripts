del saida.txt /q
for /F "TOKENS=1,2 DELIMS=9" %%A in (C:\Users\USUARIO\Desktop\cd2.vbs) do echo %%A20000%%B >> C:\Users\USUARIO\Desktop\cd3.vbs
del C:\Users\USUARIO\Desktop\cd2.vbs /q
rename C:\Users\USUARIO\Desktop\cd3.vbs C:\Users\USUARIO\Desktop\cd2.vbs