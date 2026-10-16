$operetajsistema = Get-CimInstance -ClassName Win32_OperatingSystem
$procesuSkaits = (Get-Process).Count

Write-Output "Datora nosaukums: $env:COMPUTERNAME"
Write-Output "Operetajsistema: $($operetajsistema.Caption)"
Write-Output "Buvejuma numurs: $($operetajsistema.BuildNumber)"
Write-Output "PowerShell versija: $($PSVersionTable.PSVersion)"
Write-Output "Datums un laiks: $(Get-Date)"
Write-Output "Procesu skaits: $procesuSkaits"
