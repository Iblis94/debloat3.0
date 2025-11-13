@echo off

cd /d %~dp0

:MainMenu
cls
mode 67, 38
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
echo	    Potrai scegliere tra Preset ottimizzati per Windows 10 e 11
echo	      oppure selezionare manualmente cosa disattivare/attivare
echo.
echo.
echo 			  [2] Custom ISO
echo.
echo	           Crea la tua ISO personalizzata senza Bloatware!
echo	      Potrai anche scegliere se disattivare Microsoft Defender 
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
echo                             [4] Script
echo.
echo	      Scarica tutti gli altri script, la lista completa qui:
echo    https://github.com/daboynb/windows_scripts/blob/main/README.md
echo.
echo.
echo				     [0] EXIT
echo.
echo	- - - - - - - Digita il numero desiderato [1,2,3,4,0] - - - - - - -
choice /C:12340 /N
set _erl=%errorlevel%
if %_erl%==1 goto :Debloat
if %_erl%==2 goto :Custom_iso
if %_erl%==3 goto :Iso_Pronte
if %_erl%==4 goto :Script
if %_erl%==5 exit /b

goto :MainMenu

:Debloat
cls
echo "Downloading"
powershell -command "irm -Uri "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/installstock.ps1" | iex"
exit

:Custom_iso
cls
echo "Downloading"
powershell -command "$wc = New-Object net.webclient; $msu_url = 'https://raw.githubusercontent.com/daboynb/windows_scripts/main/windows_custom_iso_maker/downloader.ps1'; $local_msu_url = \"$env:APPDATA\downloader.ps1\"; $wc.DownloadFile($msu_url, $local_msu_url);"
powershell -command "PowerShell -ExecutionPolicy Bypass -File \"$env:APPDATA\downloader.ps1\""
exit

:Iso_Pronte

start "" "https://t.me/WindowsItalyISO"
exit

:Script
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/daboynb/windows_scripts/refs/heads/main/utilities/utilities_gui.ps1' -OutFile $env:TEMP\utilities_gui.ps1; Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile','-ExecutionPolicy Bypass','-File','$env:TEMP\utilities_gui.ps1'"

exit

timeout 04
exit




