$computer = $env:COMPUTERNAME
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$psver = $PSVersionTable.PSVersion
$now = Get-Date
$procCount = (Get-Process | Measure-Object).Count

Write-Output "Datora nosaukums: $computer"
Write-Output "Operētājsistēma: $($os.Caption)"
Write-Output "Būvējuma numurs: $($os.BuildNumber)"
Write-Output "PowerShell versija: $psver"
Write-Output "Datums un laiks: $now"
Write-Output "Procesu skaits: $procCount"
