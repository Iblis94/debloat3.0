    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/windows_defender_manager/PowerRun.exe" -Destination PowerRun.exe
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/windows_defender_manager/defender.bat" -Destination defender.bat
    Start-Process defender.bat
