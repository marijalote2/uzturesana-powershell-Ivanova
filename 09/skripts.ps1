$procs = Get-WmiObject Win32_Process

foreach ($p in $procs) {
    $owner = $p.GetOwner()

    if ($owner) {
        Write-Output "Process: $($p.Name) — Lietotājs: $($owner.User)"
    }
    else {
        Write-Output "Process: $($p.Name) — Lietotāju nevar iegūt (nepietiekamas tiesības)"
    }
}
