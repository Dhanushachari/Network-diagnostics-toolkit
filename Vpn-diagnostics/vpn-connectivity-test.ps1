# Purpose: Test connectivity to a VPN gateway
# Environment: Windows PowerShell
# Author: Dhanush Achari

param(
    [string]$VpnServer = "vpn.company.com"
)

Write-Host "Testing VPN server connectivity..." -ForegroundColor Cyan
Write-Host "Target VPN Server: $VpnServer"
Write-Host ""

$result = Test-NetConnection -ComputerName $VpnServer -Port 443

if ($result.TcpTestSucceeded) {

    Write-Host "VPN server is reachable on port 443 (HTTPS/VPN)" -ForegroundColor Green

} else {

    Write-Host "VPN server is NOT reachable. Possible firewall or network issue." -ForegroundColor Red

}

Write-Host ""
Write-Host "VPN connectivity test completed."
