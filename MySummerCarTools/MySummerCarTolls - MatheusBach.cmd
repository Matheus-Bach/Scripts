@echo off
:inicio
title MySummerCarTools - V.1,0
color 17
mode 59, 17
cls
cls
ECHO.
echo                   My Summer Car Tools
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
echo.
echo    Escolha o item desejado:
echo.
echo  [1] Criar backup do savegame atual
echo  [2] Desamassar veiculos
echo  [3] Abrir MSCeditor
echo  [4] Restaurar backup
echo  [5] Injetar Savegame top
echo  [6] Ajuda/Sobre
echo  [7] Sair
echo                          V.1,0 - By MatheusBach (MB_Player)
set /p option= Oque deseja fazer? 
echo.
if "%option%" == "1" goto backup
if "%option%" == "2" goto desamassar
if "%option%" == "3" goto msceditor
if "%option%" == "4" goto rbackup
if "%option%" == "5" goto inject
if "%option%" == "6" goto sobre
if "%option%" == "7" del %tmp%\mensagem.vbs& exit
echo msgbox "Apenas sใo aceitos n๚meros de 1 a 6 como op็ใo vแlida, tente novamente!",vbsystemmodal,"Oops! Op็ใo errada!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
cls
:backup
cls
title Criar Backup do savegame atual
echo.
echo  Essa ferramenta te possibilita criar um Backup completo
echo  do savegame atual, podendo depois restaurar
echo  por esse mesmo aplicativo.
echo.
echo   Para realizar o Backup de um nome para ele.
echo   DICA: Use nomes curtos e nunca use caracteres especiais.
echo.
set /p nomedobackup= Nome para o Backup: 
cd "C:\Users\%username%\Desktop"
md "BackupMySummerCar"
cd "BackupMySummerCar"
md "%nomedobackup%"
cd "%nomedobackup%"
md "My Summer Car"
copy  "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car\*.*" "C:\Users\%username%\Desktop\BackupMySummerCar\%nomedobackup%\My Summer Car"
echo "%nomedobackup%">>"C:\Users\%username%\Desktop\BackupMySummerCar\listabackup.txt"
echo msgbox "Backup criado com o nome %nomedobackup%",vbsystemmodal, "Sucesso na Opera็ใo" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
:desamassar
cls
title Desamassar todos os veiculos
echo.
echo  Essa ferramenta te possibilita desamassar todos os 
echo  veiculos do seu savegame com apenas um comando.
echo.
echo    Deseja mesmo desamassar os veiculos? (s/n) = (sim/nao)
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
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
echo msgbox "Use [s] para desamassar ou [n] para retornar para a tela principal.",vbsystemmodal,"Nenhuma op็ใo vแlida selecionada!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto desamassar
:off
del "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car\meshsave.txt"
copy meshsave.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy meshsave.txf "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
echo msgbox "Sucesso!",vbsystemmodal, " " > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
:msceditor
mode 24, 3
cls
echo.
echo  Abrindo MSCeditor.exe
start explorer.exe MSCeditor.exe
goto inicio
:rbackup
mode 70,12
cd "C:\Users\%username%\Desktop\BackupMySummerCar"
cls
title Restaurar Backup Criado
echo.
echo  Essa ferramenta te permite restaurar um backup ja criado pelo
echo  MySummerCarTools, para isso, digite o nome do seu Backup abaixo
echo.
echo  ATENCAO!!! SEU SAVEGAME ATUAL SERA PERDIDO!
echo.
echo  Dica: caso se esqueceu o nome do seu savegame, consulte-o na
echo  lista de backups digitando "list" sem aspas
set /p savegame=  Digite o nome de seu savegame ou "list" e tecle [ENTER] para confirmar: 
if "%savegame%" == "list" start notepad.exe "C:\Users\%username%\Desktop\BackupMySummerCar\listabackup.txt"& goto rbackup
if exist "%savegame%" goto restaur
echo msgbox "Nenhum savegame encontrado com esse nome, certifique-se na lista que o nome esteja correto",vbsystemmodal,"Savegame nใo encontrado!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs& goto rbackup
:restaur
cls
title Restaurando...
mode 20,3
echo.
echo  Restaurando...
del /F  /Q "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car\*.*"
copy  /Y "C:\Users\%username%\Desktop\BackupMySummerCar\%savegame%\My Summer Car\*.*" "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
echo msgbox "Sucesso ao restaurar backup %savegame%!",vbsystemmodal, " " > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
:inject
cls
cls
title Injetar Savegame Com Muito Dinheiro
echo.
echo  Essa ferramenta possibilita colocar um savegame
echo  com muito dinheiro e u caro quase pronto
echo.
echo  ATENCAO!!! SEU SAVEGAME ATUAL SERA PERDIDO!
echo.
echo     Deseja mesmo substituir seu savegame? (s/n) = (sim/nao)
ECHO  อออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
set /p inject=   
if "%inject%" == "s" goto okinject
if "%inject%" == "sim" goto okinject
if "%inject%" == "n" goto inicio
if "%inject%" == "nao" goto inicio
if "%inject%" == "nใo" goto inicio
if "%inject%" == "S" goto okinject
if "%inject%" == "SIM" goto okinject
if "%inject%" == "N" goto inicio
if "%inject%" == "NAO" goto inicio
if "%inject%" == "NรO" goto inicio
echo msgbox "Use [s] para substituir ou [n] para retornar para a tela principal.",vbsystemmodal,"Nenhuma op็ใo vแlida selecionada!" > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inject
:okinject
del /F  /Q "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car\*.*"
copy  /Y trophies.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy  /Y options.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy  /Y meshsave.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy  /Y items.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy  /Y graveyard.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
copy  /Y defaultES2File.txt "C:\Users\%username%\AppData\LocalLow\Amistech\My Summer Car"
echo msgbox "Sucesso!",vbsystemmodal, " " > %tmp%\mensagem.vbs& start %tmp%\mensagem.vbs
goto inicio
pause>null
exit