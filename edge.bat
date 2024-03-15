    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/remove_edge.bat" -Destination 'C:\Users\Public\Desktop\remove_edge.bat'
    Start-BitsTransfer -Source "https://github.com/daboynb/windows_scripts/raw/main/Remove%20Edge/PowerRun.exe" -Destination 'C:\Users\Public\Desktop\PowerRun.exe'
    Start-Process -FilePath "C:\Users\Public\Desktop\remove_edge.bat"
