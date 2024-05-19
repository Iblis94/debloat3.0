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
powershell -command "irm -Uri "https://shorturl.at/auHS4" | iex"
exit

:Custom_iso
cls
echo "Downloading"
powershell -command "$wc = New-Object net.webclient; $msu_url = 'https://raw.githubusercontent.com/daboynb/windows_scripts/main/windows_custom_iso_maker/downloader.ps1'; $local_msu_url = \"$env:APPDATA\downloader.ps1\"; $wc.DownloadFile($msu_url, $local_msu_url);"
powershell -command "PowerShell -ExecutionPolicy Bypass -File \"$env:APPDATA\downloader.ps1\""
exit

:Iso_Pronte
cls
echo ___________________________________________________________________
echo.
echo 	         WINDOWS ITALIA SCRIPTS - Custom ISO   
echo ___________________________________________________________________
echo.
echo	     ATTENZIONE! Nel Link Onedrive che si aprira' e' presente 
echo       una versione di RUFUS modificata perche' le Custom ISO
echo	      non sono compatibili con la versione ufficiale di Rufus
echo	          e' necessario usare quella per flashare la ISO
echo.
echo.
echo 		          [1] Windows 10
echo.
echo.
echo 			  [2] Windows 11
echo.
echo.
echo 			  [3] Vecchie ISO
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo 			   [0] Indietro 
echo.
echo	- - - - - - - - Digita il numero desiderato [1,2,3,0] - - - - - - -
choice /c:1230 /N
set _erl=%errorlevel%

if %_erl%==1 goto :win10
if %_erl%==2 goto :win11
if %_erl%==3 goto :others
if %_erl%==4 goto :MainMenu
goto :Iso_Pronte

:win10
start "" "https://1drv.ms/f/s!AkZ4mtahaej6kU-wvypG4C8J9bW3?e=zcwf9q"
exit

:win11
start "" "https://1drv.ms/u/s!AkZ4mtahaej6kU4iHTUTlb-pYoJm?e=tKE5xl"
exit

:others
start "" "https://1drv.ms/f/s!AkZ4mtahaej6kH4_Zk8nXVIxkiJL?e=f6z05c"
exit

:Script
cls
echo "Downloading"
IF exist "C:\Users\%USERNAME%\Desktop" (
  set "path_to_use=C:\Users\%USERNAME%\Desktop"
)

IF exist "C:\Users\%USERNAME%\OneDrive\Desktop" (
  set "path_to_use=C:\Users\%USERNAME%\OneDrive\Desktop"
)

IF exist "%path_to_use%\windows_scripts-main" (
  rmdir /s /q "%path_to_use%\windows_scripts-main"
)

powershell -command "$wc = New-Object net.webclient; $wc.DownloadFile('https://github.com/daboynb/windows_scripts/archive/refs/heads/main.zip', '%path_to_use%\main.zip'.Replace('path_to_use', '%path_to_use%'))"
powershell -command "Expand-Archive -Path '%path_to_use%\main.zip' -DestinationPath '%path_to_use%' -Force"

del /f "%path_to_use%\main.zip"

echo "The downloaded folder is located on %path_to_use%"

timeout 04
exit