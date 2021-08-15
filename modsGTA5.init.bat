@echo off
color 3
:deb
cls
echo.
title Connexion a internet...
echo Teste de la connexion a internet...
ping google.fr -n 2 >nul
if %ERRORLEVEL%==1 (
	echo Aucune connexion a internet...
	echo mise a jours impossible
	pause
	goto deb
)
title Download...
echo Telechargement du code...
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cyril59310.fr/download/dev/code-modsGTA5', 'modsGTA5.bat')"
call modsGTA5.bat
