$servisi = Get-CimInstance -ClassName Win32_Service |
Where-Object {
    $_.StartMode -eq "Auto" -and $_.State -eq "Stopped"
}

if (($servisi | Measure-Object).Count -eq 0)
{
    Write-Output "Atrasti 0 servisi."
}
else
{
    foreach ($serviss in $servisi)
    {
        Start-Service -Name $serviss.Name -WhatIf
    }
}


$servisi = Get-CimInstance -ClassName Win32_Service |
Where-Object {
    $_.StartMode -eq "Auto" -and $_.State -eq "Stopped"
}

if (($servisi | Measure-Object).Count -eq 0)
{
    Write-Output "Atrasti 0 servisi."
}
else
{
    foreach ($serviss in $servisi)
    {
        Start-Service -Name $serviss.Name
        Write-Output "Palaists: $($serviss.Name)"
    }
}
