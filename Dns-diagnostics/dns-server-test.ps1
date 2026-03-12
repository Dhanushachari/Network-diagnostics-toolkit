# DNS Server Connectivity Test
# Tests connectivity to configured DNS servers

Write-Host "Checking configured DNS servers..." -ForegroundColor Cyan

$dnsServers = Get-DnsClientServerAddress |
Select-Object -ExpandProperty ServerAddresses

foreach ($server in $dnsServers) {

    Write-Host ""
    Write-Host "Testing DNS Server: $server"

    $result = Test-NetConnection -ComputerName $server -Port 53

    if ($result.TcpTestSucceeded) {

        Write-Host "DNS server $server is reachable on port 53" -ForegroundColor Green

    }
    else {

        Write-Host "DNS server $server is NOT reachable" -ForegroundColor Red

    }

}
