$running = 0
$stopped = 0

foreach ($service in Get-Service) {
    if ($service.Status -eq "Running") {
        $running++
    }
    else {
        $stopped++
    }
}

$total = $running + $stopped

Write-Output "Darbojas: $running"
Write-Output "Apturēti: $stopped"
Write-Output "Kopā: $total"
