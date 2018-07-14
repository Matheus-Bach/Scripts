@echo off
echo msgbox "Antes de Criar uma rede vo็๊ deve ligar seu Wifi",vbsystemmodal, "LIGUE A PLACA WIFI!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
:inicio
title Wifi Easy - V.2,0 - MatheusBach (MB_Player)
color 17
mode 59, 14
cls
cls
ECHO.
echo                Antes de tudo LIGUE SEU WIFI!!!
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    Escolha o item desejado:
echo  [1] Ligar em um passo
echo  [2] Desativar Rede
echo  [3] Criar rede personalizada
echo  [4] Ajuda/Sobre
echo  [5] Sair
echo                           WifiEasy   V. 2,0  {By MB_Player}
set /p option= Oque deseja fazer? 
if "%option%" == "1" goto 1
if "%option%" == "2" goto 2
if "%option%" == "3" goto 3
if "%option%" == "4" goto 4 
if "%option%" == "5" del %tmp%\mensagem.vbs& exit
echo msgbox "Apenas sใo aceitos n๚meros de 1 a 5 como op็ใo vแlida, tente novamente!",vbsystemmodal,"Oops! Op็ใo errada!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
cls
:1
mode 50,6
color 71
cls
TITLE CRIANDO REDE
echo.
echo             AGUARDE...    REDE SENDO CRIADA
echo.
@timeout 2
set nomedeuser=%username%
cls
netsh wlan set hostednetwork mode=allow ssid=%nomedeuser% key=12345678
cls
netsh wlan start hostednetwork
cls
echo.
echo  Rede Criada com Sucesso!
echo.
timeout 2
cls
echo msgbox "rede criada com o nome    %username%    e senha    12345678    ",vbsystemmodal,"Rede Ativa" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
cls
timeout 2
cls
echo.
echo   Retornando para a Tela inicial...
echo.
timeout 2
goto inicio
:2
mode 63,5
title Desativar Rede?
cls
ECHO.
echo   Tem certeza que deseja desligar a rede? (s/n) = (sim/nao)
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p off=   
if "%off%" == "s" goto off
if "%off%" == "sim" goto off
if "%off%" == "n" goto inicio
if "%off%" == "nao" goto inicio
if "%off%" == "nใo" goto inicio
if "%off%" == "S" goto off
if "%off%" == "SIM" goto off
if "%off%" == "N" goto inicio
if "%off%" == "NAO" goto inicio
if "%off%" == "NรO" goto inicio
echo msgbox "Use [s] para desligar ou [n] para retornar para a tela principal.",vbsystemmodal,"Nenhuma op็ใo vแlida selecionada!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto 2
:off
title DESATIVANDO
color 71
cls
ECHO.
echo                 DESLIGANDO REDE...........
timeout 2
netsh wlan stop hostednetwork
echo msgbox "Rede Desativada! ",vbsystemmodal,"DESLIGANDO..." > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
:3
color 17
title REDE PERSONALIZADA
mode 59, 13
cls
cls
ECHO.
echo    VAMOS FAZER SUA REDE COM NOME E SENHA PERSONALIZADOS
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    Para isso, digite oque se pede e tecle [ENTER]
echo.
set /p nome= Nome da sua rede: 
set /p senha= Senha da sua rede: 
ECHO.
echo   OK
echo.
netsh wlan set hostednetwork mode=allow ssid=%nome% key=%senha%
netsh wlan start hostednetwork
cls
echo msgbox "rede criada com o nome    %nome%    e senha    %senha%    ",vbsystemmodal,"Rede Ativa" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio