$robezaGB = 10

$disks = Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }

foreach ($disk in $disks) {
    $freeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    $totalGB = [math]::Round($disk.Size / 1GB, 2)

    Write-Output "Disks: $($disk.DeviceID)"
    Write-Output "Kopējais izmērs (GB): $totalGB"
    Write-Output "Brīvā vieta (GB): $freeGB"

    if ($freeGB -lt $robezaGB) {
        Write-Output "BRĪDINĀJUMS: Brīvā vieta mazāka par $robezaGB GB!"
    }

    Write-Output ""
}
