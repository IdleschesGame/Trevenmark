@echo off
title Trevenmark Karten-Kopierer
echo ===================================================
echo   TREVENMARK - AUTOMATISCHES KARTEN-KOPIEREN
echo ===================================================
echo.

:: Verwendet das richtige Benutzerprofil (bnott)
set "SOURCE=%USERPROFILE%\AppData\Roaming\ModrinthApp\profiles\Trevenmark\bluemap\web"
set "TARGET=%~dp0map-static"

echo Kopiere aktuelle BlueMap-Daten von:
echo %SOURCE%
echo nach:
echo %TARGET%
echo.

:: Robocopy spiegelt den Ordner perfekt rüber
robocopy "%SOURCE%" "%TARGET%" /E /PURGE /R:1 /W:1

echo.
echo ===================================================
echo   FERTIG! Die Daten liegen jetzt im 'map-static' Ordner.
echo   Du kannst sie jetzt auf GitHub hochladen.
echo ===================================================
pause