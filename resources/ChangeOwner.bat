@echo off

rem Ask for admin privileges
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )


setlocal

REM Definizione delle costanti per il percorso del registro di sistema
set "REG_KEY=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
set "REG_DEFAULT_USERNAME=RegisteredOwner"
set "REG_DEFAULT_PASSWORD=RegisteredOrganization"
set "REG_AUTO_ADMIN_LOGON=AutoAdminLogon"

REM Richiesta di inserimento del nome utente e della password
set /p USERNAME=Inserisci il Nome del Proprietario del PC: 
set /p PASSWORD=Inserisci il Nome della tua Organizzazione (o lascia in bianco): 

REM Creazione o modifica delle chiavi nel registro di sistema
reg add "%REG_KEY%" /v "%REG_DEFAULT_USERNAME%" /t REG_SZ /d "%USERNAME%" /f
reg add "%REG_KEY%" /v "%REG_DEFAULT_PASSWORD%" /t REG_SZ /d "%PASSWORD%" /f
reg add "%REG_KEY%" /v "%REG_AUTO_ADMIN_LOGON%" /t REG_SZ /d "1" /f

echo Configurazione completata.

endlocal
