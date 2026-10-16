$draiveri = Get-CimInstance -ClassName Win32_PnPSignedDriver |
Where-Object {
    $_.DriverProviderName -notlike "*Microsoft*"
}

$draiveri |
Select-Object `
DeviceName,
DriverProviderName,
DriverVersion |
Export-Csv `
-Path ".\draiveri.csv" `
-NoTypeInformation `
-Encoding UTF8

Write-Output "CSV faila rindu skaits: $($draiveri.Count)"
