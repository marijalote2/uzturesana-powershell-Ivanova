$procCount = (Get-Process | Measure-Object).Count

$running = 0
$stopped = 0
foreach ($service in Get-Service) {
    if ($service.Status -eq "Running") { $running++ }
    else { $stopped++ }
}
$totalServices = $running + $stopped

$since = (Get-Date).AddHours(-48)
$errors = Get-EventLog -LogName System |
    Where-Object { $_.EntryType -eq "Error" -and $_.TimeGenerated -ge $since }
$errorCount = $errors.Count

$disks = Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }
foreach ($disk in $disks) {
    $freeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    Write-Output "Disks $($disk.DeviceID) — Brīvā vieta: $freeGB GB"
}

Write-Output "Procesu skaits: $procCount"
Write-Output "Servisi — darbojas: $running, apturēti: $stopped, kopā: $totalServices"
Write-Output "Kļūdas pēdējās 48h: $errorCount"
