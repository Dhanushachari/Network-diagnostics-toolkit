# Purpose: Test connectivity to a specific port on a remote host
# Environment: Windows PowerShell
# Author: Dhanush Achari

param(
    [string]$TargetHost = "google.com",
    [int]$Port = 80
)

Write-Host "Testing port connectivity..." -ForegroundColor Cyan
Write-Host "Target Host: $TargetHost"
Write-Host "Port: $Port"
Write-Host ""

$result = Test-NetConnection -ComputerName $TargetHost -Port $Port

if ($result.TcpTestSucceeded) {

    Write-Host "Connection to $TargetHost on port $Port is successful." -ForegroundColor Green

} else {

    Write-Host "Connection failed. Port may be blocked or service may be down." -ForegroundColor Red

}

Write-Host ""
Write-Host "Port test completed."
