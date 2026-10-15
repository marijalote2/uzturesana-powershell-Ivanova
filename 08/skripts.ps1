$time1 = Measure-Command { Get-Service -Name "Spooler" }
$time2 = Measure-Command { Get-CimInstance Win32_Service -Filter "Name='Spooler'" }

Write-Output "Get-Service laiks (ms): $($time1.TotalMilliseconds)"
Write-Output "Get-CimInstance laiks (ms): $($time2.TotalMilliseconds)"
