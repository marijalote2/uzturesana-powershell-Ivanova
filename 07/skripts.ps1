$robeza = 10
 
Get-CimInstance -ClassName Win32_LogicalDisk |
Where-Object {
$_.DriveType -eq 3
} |
ForEach-Object {
 
$kopa = [Math]::Round($_.Size / 1GB,2)
$brivi = [Math]::Round($_.FreeSpace / 1GB,2)
 
Write-Output "Disks: $($_.DeviceID)"
Write-Output "Kopejais izmers: $kopa GB"
Write-Output "Briva vieta: $brivi GB"
 
if ($brivi -lt $robeza)
{
Write-Output "BRIDINAJUMS: Maz brivas vietas!"
}
 
Write-Output ""
}
