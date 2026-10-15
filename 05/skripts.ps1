$since = (Get-Date).AddHours(-48)

$errors = Get-EventLog -LogName System |
    Where-Object { $_.EntryType -eq "Error" -and $_.TimeGenerated -ge $since }

$count = $errors.Count

$topSource = $errors |
    Group-Object -Property Source |
    Sort-Object -Property Count -Descending |
    Select-Object -First 1

Write-Output "Kļūdu skaits pēdējās 48h: $count"
Write-Output "Biežākais avots: $($topSource.Name)"
Write-Output "Reizes: $($topSource.Count)"
