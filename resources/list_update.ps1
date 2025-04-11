Add-Type -AssemblyName System.Windows.Forms

function Select-CabFile {
    $FileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $FileDialog.Filter = "CAB files (*.cab)|*.cab|All files (*.*)|*.*"
    $FileDialog.Title = "Select the wsusscn2.cab file"

    if ($FileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        return $FileDialog.FileName
    } else {
        Write-Output "No file selected. Exiting."
        exit
    }
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Wsusscn2FilePath = Join-Path $ScriptDir "wsusscn2.cab"

if (-Not (Test-Path $Wsusscn2FilePath)) {
    Write-Output "Please select the wsusscn2.cab file you just downloaded."
    $Wsusscn2FilePath = Select-CabFile
} else {
    Write-Output "wsusscn2.cab found..."
}

If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    $ScriptPath = $MyInvocation.MyCommand.Definition
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$ScriptPath`"" -Verb RunAs
    Exit
}

$UpdateSession = New-Object -ComObject Microsoft.Update.Session  

$UpdateServiceManager  = New-Object -ComObject Microsoft.Update.ServiceManager  

$UpdateService = $UpdateServiceManager.AddScanPackageService("Offline Sync Service", $Wsusscn2FilePath, 1)  

$UpdateSearcher = $UpdateSession.CreateUpdateSearcher()   

Write-Output "Searching for updates... `r`n"  

$UpdateSearcher.ServerSelection = 3 

$UpdateSearcher.IncludePotentiallySupersededUpdates = $true

$UpdateSearcher.ServiceID = $UpdateService.ServiceID.ToString()  

$SearchResult = $UpdateSearcher.Search("IsInstalled=0")
Write-Output "$($SearchResult)"
$Updates = $SearchResult.Updates  

if($Updates.Count -eq 0){  
    Write-Output "There are no applicable updates."  
    return $null  
}  

Write-Output "List of applicable items on the machine when using wsusscn2.cab: `r`n"  

$i = 0  
foreach($Update in $Updates){   
    Write-Output "$($i)> $($Update.Title)"  
    $i++  
}

Read-Host -Prompt "Press Enter to exit"

