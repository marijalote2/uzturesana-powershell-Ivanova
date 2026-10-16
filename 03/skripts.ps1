$darbojas = 0
$aptureti = 0
 
foreach ($serviss in Get-Service)
{
if ($serviss.Status -eq "Running")
{
$darbojas++
}
elseif ($serviss.Status -eq "Stopped")
{
$aptureti++
}
}
 
$kopa = (Get-Service).Count
 
Write-Output "Darbojas: $darbojas"
Write-Output "Aptureti: $aptureti"
Write-Output "Kopa: $kopa"
