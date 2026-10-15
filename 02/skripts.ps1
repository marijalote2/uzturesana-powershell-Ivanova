$procs = Get-Process

$procs |
    Sort-Object -Property WorkingSet -Ascending |
    Select-Object -Last 10 -Property `
        @{Name="Nosaukums";Expression={$_.Name}},
        @{Name="Id";Expression={$_.Id}},
        @{Name="Atmiņa_MB";Expression={[math]::Round($_.WorkingSet/1MB,1)}} |
    Format-Table -AutoSize
