@echo off 
del test.txt
del rarreg.key
title Ativador WinRAR Universal
color 24
mode
cls
Echo.
echo            Lembre-se de ter aberto como administrador!!
echo     Talvez algum antivirus venha a me acusar, se for o caso, desative-o
echo.        
echo           Tecle algo para iniciar o processo de crack.
echo.

pause>>null
del test.txt
echo RAR registration data>>test.txt
echo SiM>>test.txt
echo Local Site License>>test.txt
echo UID=ca5575bd41c33ec5a2de>>test.txt
echo 6412212250a2de7c818d537f99bcf0218861216f4ce0738e2ef7ad>>test.txt
echo 8bc2514534357f5541ed60694c88f20734f7fa6ad968865654a57b>>test.txt
echo 0f0edf295d607ce6fa6d6b3667401b413bdcbccca3152c8ab6abc5>>test.txt
echo 931818a35674a26f065261f8bce32dfbce601d1aa079a3c54f79c7>>test.txt
echo adeacb886214457e000e50d6ff5329a2f516ebba72708a35f704db>>test.txt
echo 3d30b1633de64c1bdc0c5c2b54710967dde4c9aab721b69460185e>>test.txt
echo a12e2906a44bc32601e8ef0028d453a1d8b40dd23b562696892555>>test.txt

rename test.txt rarreg.key
move rarreg.key "C:\Program Files\WinRAR"
move rarreg.key "D:\Program Files\WinRAR"
start WinRAR.exe
cls