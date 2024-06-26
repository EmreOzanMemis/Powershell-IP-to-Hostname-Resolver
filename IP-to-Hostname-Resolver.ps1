function ResolveIPtoName($IP) {
    $ResolvingResults = ""
    $ResolvingResults = @()
    $IPList += @($IP)
    foreach ($IP in $IPList) {
        try {
            $ResolvingResults += [System.Net.Dns]::GetHostEntry($IP)
        }
        catch {
            Write-Host "$IP could not be Resolved" -BackgroundColor Black -ForegroundColor Red
        }
    } 
    $ResolvingResults | Select AddressList, HostName 
}
