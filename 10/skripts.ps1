$procesi = (Get-Process).Count

$darbojas = (
    Get-Service |
    Where-Object {
        $_.Status -eq "Running"
    }
).Count

$aptureti = (
    Get-Service |
    Where-Object {
        $_.Status -eq "Stopped"
    }
).Count

$kludas = (
    Get-WinEvent -FilterHashtable @{
        LogName = "System"
        StartTime = (Get-Date).AddHours(-48)
    } |
    Where-Object {
        $_.LevelDisplayName -eq "Error"
    }
).Count

Write-Output "Procesi: $procesi"
Write-Output "Darbojas servisi: $darbojas"
Write-Output "Aptureti servisi: $aptureti"
Write-Output "Kludas pedejas 48 stundas: $kludas"

Get-CimInstance -ClassName Win32_LogicalDisk |
Where-Object {
    $_.DriveType -eq 3
} |
ForEach-Object {
    $brivaVieta = [Math]::Round($_.FreeSpace / 1GB,2)
    Write-Output "$($_.DeviceID) : $brivaVieta GB brivi"
}
