@echo off
title Wipe Cache Windows Update

echo Arresto servizi...
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver

echo.
echo Eliminazione contenuto SoftwareDistribution...
rd /s /q "%windir%\SoftwareDistribution"

echo.
echo Avvio servizi...
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

echo.
echo Operazione completata.
pause
