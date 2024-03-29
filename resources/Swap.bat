@echo off

rem Ask for admin privileges
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

setlocal enabledelayedexpansion

:menu
cls
echo Gestione dello swap su Windows
echo --------------------------------
echo.

echo Scegli un'opzione:
echo 1. Disattiva lo swap
echo 2. Imposta dimensioni minime e massime personalizzate
echo 3. Esci

choice /c 123 /n /m "Scelta: "
set scelta=!errorlevel!

if "!scelta!"=="1" goto disattiva_swap
if "!scelta!"=="2" goto impostazioni_personalizzate
if "!scelta!"=="3" goto fine

echo Scelta non valida. Riprova.
pause
goto menu

:disattiva_swap
echo Disattivazione dello swap...
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "" /f
echo Lo swap è stato disattivato.
pause
goto fine

:impostazioni_personalizzate
set /p dimensione_minima="Inserisci la dimensione minima del file di paging in MB: "
set /p dimensione_massima="Inserisci la dimensione massima del file di paging in MB: "
echo Impostazione delle dimensioni personalizzate...
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys !dimensione_minima! !dimensione_massima!" /f
echo Dimensioni personalizzate impostate: Minimo=!dimensione_minima! MB, Massimo=!dimensione_massima! MB.
pause
goto fine

:fine
endlocal
