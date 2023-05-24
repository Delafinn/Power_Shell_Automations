$computers = "Computer1", "Computer2", "Computer3"  # Replace with the actual computer names or IP addresses

foreach ($computer in $computers) {
    $pingResult = Test-Connection -ComputerName $computer -Count 1 -Quiet
    
    if ($pingResult) {
        Write-Host "$computer is up" -ForegroundColor Green
    } else {
        Write-Host "$computer is down" -ForegroundColor Red
    }
}
