$sakumaLaiks = (Get-Date).AddHours(-48)

$kludas = Get-WinEvent -FilterHashtable @{
    LogName = "System"
    StartTime = $sakumaLaiks
} |
Where-Object {
    $_.LevelDisplayName -eq "Error"
}

$kluduSkaits = ($kludas | Measure-Object).Count

$biezakaisAvots = $kludas |
Group-Object -Property ProviderName |
Sort-Object -Property Count -Descending |
Select-Object -First 1

Write-Output "Kludu skaits: $kluduSkaits"
Write-Output "Biezakais avots: $($biezakaisAvots.Name)"
Write-Output "Reizu skaits: $($biezakaisAvots.Count)"
