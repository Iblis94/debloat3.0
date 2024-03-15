cd "$env:USERPROFILE\AppData\Local\Temp"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/install.bat" -OutFile "install.bat"

Start-Process -FilePath ".\install.bat"
