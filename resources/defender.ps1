    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/Windows_defender_manager/defender.bat" -Destination defender.bat
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/PowerRun.exe" -Destination PowerRun.exe
    Start-Process defender.bat