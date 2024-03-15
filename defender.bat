    Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/Windows_defender_manager/defender.bat" -Destination 'C:\Users\Public\Desktop\defender.bat'
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/PowerRun.exe" -Destination 'C:\Users\Public\Desktop\PowerRun.exe'
    Start-Process -FilePath "C:\Users\Public\Desktop\defender.bat"
