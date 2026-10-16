$getServiceLaiks = Measure-Command {
Get-Service -Name "Spooler"
}
 
$getCimLaiks = Measure-Command {
Get-CimInstance -ClassName Win32_Service |
Where-Object {
$_.Name -eq "Spooler"
}
}
 
Write-Output "Get-Service:"
Write-Output "$($getServiceLaiks.TotalMilliseconds) ms"
 
Write-Output "Get-CimInstance:"
Write-Output "$($getCimLaiks.TotalMilliseconds) ms"
