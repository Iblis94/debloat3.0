@echo off

if not exist "%~dp0wsusscn2.cab" (
    echo Downloading wsusscn2.cab...
    curl.exe -L https://wsusscn2.cab -o "%~dp0wsusscn2.cab"
) else (
    echo wsusscn2.cab found.
)

if not exist "%~dp0list_update.ps1" (
    echo Downloading list_update.ps1...
    curl.exe -L https://raw.githubusercontent.com/Iblis94/debloat3.0/refs/heads/main/resources/list_update.ps1 -o "%~dp0list_update.ps1"
) else (
    echo list_update.ps1 found.
)

PowerShell -ExecutionPolicy Unrestricted -File "%~dp0list_update.ps1"
