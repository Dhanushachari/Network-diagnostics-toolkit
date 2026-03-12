# Script: check-ip-config.ps1
# Purpose: Display IP configuration details for troubleshooting network issues
# Environment: Windows PowerShell
# Author: Dhanush Achari

Write-Host "Checking IP Configuration..." -ForegroundColor Cyan

$ipInfo = Get-NetIPConfiguration

foreach ($adapter in $ipInfo) {

    Write-Host ""
    Write-Host "Network Adapter:" $adapter.InterfaceAlias -ForegroundColor Yellow

    Write-Host "IPv4 Address:" $adapter.IPv4Address.IPAddress
    Write-Host "Subnet Mask:" $adapter.IPv4Address.PrefixLength
    Write-Host "Default Gateway:" $adapter.IPv4DefaultGateway.NextHop
    Write-Host "DNS Server:" ($adapter.DnsServer.ServerAddresses -join ", ")

}

Write-Host ""
Write-Host "IP configuration check completed."
