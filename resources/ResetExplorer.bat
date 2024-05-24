@echo off

ie4uinit -show
taskkill /IM explorer.exe /F
timeout /t 2
@reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v "PastIconsStream" /f
@reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v "IconStreams" /f
timeout /t 2
start explorer.exe
shutdown -r -f -t 5
