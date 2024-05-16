    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/remove_edge.bat" -Destination remove_edge.bat
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/PowerRun.exe" -Destination PowerRun.exe
    Start-Process remove_edge.bat