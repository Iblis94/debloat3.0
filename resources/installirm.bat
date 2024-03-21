cd "$env:USERPROFILE\AppData\Local\Temp"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/IRM.bat" -OutFile "IRM.bat"

Start-Process -FilePath ".\IRM.bat"
