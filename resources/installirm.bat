cd "$env:USERPROFILE\AppData\Local\Temp"

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Iblis94/debloat3.0/main/resources/IRM.cmd" -OutFile "IRM.cmd"

Start-Process -FilePath ".\IRM.cmd"
