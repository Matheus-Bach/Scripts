set wssuspenderz = CreateObject("Wscript.Shell")
msgbox "Seu pc vai suspender em z segundos depois de clicar em OK",vbsystemmodal,"CLIQUE EM OK PARA AGENDAR O PEDIDO!"
wscript.sleep(z000)
wssuspenderz.Run "rundll32.exe PowrProf.dll,SetSuspendState 0,1,0"