# Purpose: Retrieve the current public IP address
# Environment: Windows PowerShell
# Author: Dhanush Achari

Write-Host "Checking Public IP Address..." -ForegroundColor Cyan

try {

    $publicIP = Invoke-RestMethod -Uri "https://api.ipify.org"

    Write-Host ""
    Write-Host "Current Public IP Address:" $publicIP -ForegroundColor Yellow

}
catch {

    Write-Host "Unable to retrieve public IP address. Check internet connectivity." -ForegroundColor Red

}

Write-Host ""
Write-Host "Public IP check completed."
