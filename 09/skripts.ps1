Get-CimInstance -ClassName Win32_Process |
ForEach-Object {

    try
    {
        $lietotajs = Invoke-CimMethod `
        -InputObject $_ `
        -MethodName GetOwner

        [PSCustomObject]@{
            Process = $_.Name
            Lietotajs = $lietotajs.User
        }
    }
    catch
    {
        Write-Output $_.Exception.Message
    }
}
