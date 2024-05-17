    Import-Module BitsTransfer
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/remove_edge_current/remove_edge.bat" -Destination remove_edge.bat
    Start-BitsTransfer -Source "https://raw.githubusercontent.com/daboynb/windows_scripts/main/remove_edge_current/remove_edge.ps1" -Destination remove_edge.ps1
    Start-Process remove_edge.bat
