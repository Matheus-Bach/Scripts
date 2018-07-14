del hibernartemp.vbs /q
for /F "TOKENS=1,2 DELIMS=z" %%A in (hibernar.vbs) do echo %%A%tempo%%%B >> hibernartemp.vbs
start hibernartemp.vbs