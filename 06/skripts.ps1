$drivers = Get-WmiObject Win32_PnPSignedDriver |
    Where-Object { $_.Manufacturer -ne "Microsoft" }

$drivers | Export-Csv -Path "draiveri.csv" -NoTypeInformation

$rows = (Import-Csv -Path "draiveri.csv").Count
Write-Output "Rindu skaits CSV failā: $rows"
