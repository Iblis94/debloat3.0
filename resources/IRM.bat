@echo off

cd /d %~dp0

:MainMenu
cls
mode 67, 34
title Windows Italia Scripts
cls
echo ___________________________________________________________________
echo.
echo 	              WINDOWS ITALIA SCRIPTS     
echo ___________________________________________________________________
echo.
echo.
echo 		            [1] Debloat
echo.
echo          Script per eliminare bloatware e alleggerire il PC
echo	        Potrai scegliere tra Preset ottimizzati per Windows
echo	      oppure selezionare manualmente cosa disattivare/attivare
echo.
echo.
echo 			     [2] Script
echo.
echo	          Utilizza questi script per rendere il tuo OS piu'
echo	      performante e potrai anche disattivare Windows Defender 
echo                     e rimuovere Microsoft Edge
echo.
echo.
echo 			  [3] ISO Pronte
echo.
echo            Download Diretto delle ISO di Windows 10 e 11. 
echo     Disponibili in versione PRO, sia con che senza Microsoft Edge
echo	        e Microsoft Defender, gia' pronte e debloated per te
echo.
echo.
echo.
echo				     [0] EXIT
echo.
echo.
echo	- - - - - - - Digita il numero desiderato [1,2,3,4,0] - - - - - - -
choice /C:12340 /N
set _erl=%errorlevel%
if %_erl%==1 goto :Debloat
if %_erl%==2 goto :Script
if %_erl%==3 goto :Iso_Pronte
if %_erl%==5 exit /b

goto :MainMenu

:Debloat
cls
echo "Downloading"
powershell -command "irm -Uri "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/installstock.ps1" | iex"
exit

:Script
cls
powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-Command irm https://raw.githubusercontent.com/daboynb/windows_scripts/refs/heads/main/utilities/utilities_gui.ps1 | iex'"

exit


:Iso_Pronte
start "" "https://t.me/WindowsItalyISO"
exit

timeout 04
exit









