# Ping Sweep Script
# Scans a network range to find reachable hosts

$network = "192.168.1"
$rangeStart = 1
$rangeEnd = 50

Write-Host "Starting Ping Sweep..." -ForegroundColor Cyan

for ($i = $rangeStart; $i -le $rangeEnd; $i++) {

    $ip = "$network.$i"

    $result = Test-Connection -ComputerName $ip -Count 1 -Quiet -ErrorAction SilentlyContinue

    if ($result) {
        Write-Host "$ip is reachable" -ForegroundColor Green
    }
    else {
        Write-Host "$ip is not reachable" -ForegroundColor Red
    }

}

Write-Host "Ping sweep completed."
