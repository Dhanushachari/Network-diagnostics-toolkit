# Latency Test Script
# Measures response time to a remote server

$target = "8.8.8.8"

Write-Host "Testing latency to $target..." -ForegroundColor Cyan

$result = Test-Connection -ComputerName $target -Count 4

$result | Select-Object Address, ResponseTime

$average = ($result.ResponseTime | Measure-Object -Average).Average

Write-Host ""
Write-Host "Average Latency: $average ms" -ForegroundColor Yellow
