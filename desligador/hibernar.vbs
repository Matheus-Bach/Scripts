set wshibernarz = CreateObject("Wscript.Shell")
msgbox "Seu pc vai hibernar em z segundos depois de clicar em OK",vbsystemmodal,"CLIQUE EM OK PARA AGENDAR O PEDIDO!"
wscript.sleep(z000)
wshibernarz.Run "rundll32.exe PowrProf.dll,SetSuspendState"