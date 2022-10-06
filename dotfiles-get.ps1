Copy-Item ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -Destination . -Force
Copy-Item ~\.gitconfig -Destination . -Force
Copy-Item $Env:APPDATA\Notepad++\config.xml -Destination . -Force
Copy-Item $Env:APPDATA\Notepad++\userDefineLangs -Destination . -Force
