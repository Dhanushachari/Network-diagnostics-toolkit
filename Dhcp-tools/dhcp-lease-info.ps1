# Purpose: Display DHCP lease information and network adapter status
# Environment: Windows PowerShell
# Author: Dhanush Achari

Write-Host "Checking DHCP Lease Information..." -ForegroundColor Cyan

$adapters = Get-NetIPConfiguration | Where-Object {$_.IPv4Address -ne $null}

foreach ($adapter in $adapters) {

    Write-Host ""
    Write-Host "Adapter:" $adapter.InterfaceAlias -ForegroundColor Yellow

    Write-Host "IPv4 Address:" $adapter.IPv4Address.IPAddress
    Write-Host "DHCP Enabled:" $adapter.NetAdapter.DhcpEnabled
    Write-Host "Default Gateway:" $adapter.IPv4DefaultGateway.NextHop

}

Write-Host ""
Write-Host "DHCP lease check completed."
