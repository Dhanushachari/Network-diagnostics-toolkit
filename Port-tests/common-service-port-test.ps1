# Purpose: Test connectivity for common service ports
# Environment: Windows PowerShell
# Author: Dhanush Achari

param(
    [string]$TargetHost = "google.com"
)

Write-Host "Testing common service ports on $TargetHost..." -ForegroundColor Cyan

$ports = @(80, 443, 3389, 53)

foreach ($port in $ports) {

    Write-Host ""
    Write-Host "Testing port $port"

    $result = Test-NetConnection -ComputerName $TargetHost -Port $port

    if ($result.TcpTestSucceeded) {

        Write-Host "Port $port is open." -ForegroundColor Green

    } else {

        Write-Host "Port $port is not reachable." -ForegroundColor Red

    }

}

Write-Host ""
Write-Host "Port scanning completed."
