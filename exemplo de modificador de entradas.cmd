del saida.txt /q
for /F "TOKENS=1,2 DELIMS=(valor inicial sem parenteses)" %%A in (entrada.ext) do echo %%A"valor final sem aspas"%%B >> saida.ext
del entrada.ext /q
rename saida.ext entrada.ext
