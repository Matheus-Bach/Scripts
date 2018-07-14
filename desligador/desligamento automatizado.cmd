@ echo off
echo
:loby
mode 67,35
title= Desligamento Automแtico
color 72
cls
echo.
echo                      Criado por MB Script
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo       Selecione o numero correspondente com oque deseja
echo.
echo.
echo        ช  1 ^<- Anular todos desligamentos programados
echo.
echo        ช  2 ^<- Desligar modo normal
echo.
echo        ช  3 ^<- Desligar modo "Hybrid"
echo.
echo        ช  4 ^<- Hibernar
echo.
echo        ช  5 ^<- Suspender (possivel hibernar por conta de bug)
echo.
echo        ช  6 ^<- Reiniciar Windows
echo.
echo        ช  7 ^<- Reiniciar Windows e aplicativos
echo.
echo        ช  8 ^<- Sair do Usuario (logoff)
echo.
echo        ช  9 ^<- Janela de Alternativas do Windows
echo.
echo        ช  10^<- Visitar canal do MB_Script
echo.
echo        ช  11^<- Sair
echo.
echo  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo                                                        v. 2,7

set /p v= .       Digite  ^>ฤ 
echo.
echo อออออออออออออออออออออออออออออออออออออออออออออออออออออออ
if "%v%" == "1" goto 1
if "%v%" == "2" goto 2
if "%v%" == "3" goto 3
if "%v%" == "4" goto 4
if "%v%" == "5" goto 5
if "%v%" == "6" goto 6
if "%v%" == "7" goto 7
if "%v%" == "8" goto 8
if "%v%" == "9" goto 9
if "%v%" == "10" goto 10
if "%v%" == "11" exit
echo msgbox "O valor ( %v% )  nใo ้ reconhecido pelo programa, use um valor de 1 a 11",vbsystemmodal,"Erro ( %v% ) Nใo ้ um comando valido Digite de 1 A 11" > %tmp%\pin.vbs
start %tmp%\pin.vbs
goto loby
:1
cls
shutdown -a
taskkill -f -im wscript.exe
goto loby
:2
mode 49,12
title  Desligar (modo normal)
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo   Digte o tempo para o desligamento em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p tdn= .       Digite  ^>ฤ 
shutdown -s -t %tdn%
goto loby
:3
mode 49,12
title  Desligar (modo "Hybrid")
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo   Digte o tempo para o desligamento em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p tdh= .       Digite  ^>ฤ 
shutdown -s /hybrid -t %tdh%
goto loby
:4
mode 49,12
title  Hibernar
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    Digte o tempo para hibernar em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p th= .       Digite  ^>ฤ 
del hibernartemp.vbs /q
for /F "TOKENS=1,2 DELIMS=z" %%A in (hibernar.vbs) do echo %%A%th%%%B >> hibernartemp.vbs
start hibernartemp.vbs
goto loby
:5
mode 49,12
title  Suspender
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    Digite o tempo para suspender em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p tsn= .       Digite  ^>ฤ 
del suspendertemp.vbs.vbs /q
for /F "TOKENS=1,2 DELIMS=z" %%A in (suspender.vbs) do echo %%A%tsn%%%B >> suspendertemp.vbs
start suspendertemp.vbs
goto loby
:6
mode 49,12
title  Reiniciar Normal
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  Digte o tempo para a reinicializa็ใo em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p trn= .       Digite  ^>ฤ 
shutdown -r -t %trn%

:7
mode 49,12
title  Reiniciar Windows e Apliativos
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  Digte o tempo para a reinicializa็ใo em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p trc= .       Digite  ^>ฤ 
shutdown -g -t %trc%

:8
mode 49,12
title  Fazer Logoff
cls
echo อออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo  Digte o tempo para o logoff em segundos
echo.
echo       1min  = 60s         30min = 1800s
echo       5min  = 300s        1h    = 3600s
echo       15min = 900s        5h    = 18000s
echo _________________________________________________
set /p tfl= .       Digite  ^>ฤ 
shutdown -l -t %tfl%

:9
cls
start WindowsWindowAlternativa.vbs
goto loby

:10
start https://www.youtube.com/channel/UCi4ooEvJ6oIPQJoLWEfMgUQ
mode 70,19
cls
echo.
echo       OBRIGADO POR ESCOLHER E USAR MEU PROGRAMA  :)
echo.
echo     Eu tentei abrir o meu canal pelo seu navegador
echo.
echo.
echo    Caso ocora um  erro, clique com o botao direito,
echo.
echo    clique em marcar, selecione o link abaixo,
echo.
echo    https://www.youtube.com/channel/UCi4ooEvJ6oIPQJoLWEfMgUQ
echo.
echo    de [Ctrl + C], depois entre em seu navegador e cole o endere็o
echo.
echo.
echo     Inscreva-se para me ajudar a desenvolver e trazer mais videos
echo.
set /p op็ใofinal= .       [Enter] para voltar ao inicio
goto loby

pause