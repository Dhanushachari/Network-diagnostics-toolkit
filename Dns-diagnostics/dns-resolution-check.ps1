# DNS Resolution Check Script
# Checks whether a hostname resolves correctly using DNS

param(
    [string]$Hostname = "google.com"
)

Write-Host "Checking DNS resolution for $Hostname..." -ForegroundColor Cyan

try {

    $result = Resolve-DnsName -Name $Hostname -ErrorAction Stop

    Write-Host "DNS Resolution Successful" -ForegroundColor Green

    $result | Select-Object Name, IPAddress

}
catch {

    Write-Host "DNS Resolution Failed for $Hostname" -ForegroundColor Red

}
