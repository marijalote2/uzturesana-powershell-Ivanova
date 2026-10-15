$services = Get-CimInstance Win32_Service |
    Where-Object { $_.StartMode -eq "Auto" -and $_.State -eq "Stopped" }

if ($services.Count -eq 0) {
    Write-Output "Automātisko, apturēto servisu skaits: 0"
}
else {
    $services | ForEach-Object {
        Start-Service -Name $_.Name -WhatIf
    } | Out-File -FilePath "whatif.txt"

    $services | ForEach-Object {
        Start-Service -Name $_.Name
    } | Out-File -FilePath "izvade.txt"
}
