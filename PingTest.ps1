$computers = "Computer1", "Computer2", "Computer3"  # Replace with the actual computer names or IP addresses

# $csvFilePath = "C:\path\to\computers.csv"  Replace with the path to your CSV file

$computers = Import-Csv -Path $csvFilePath | Select-Object -ExpandProperty ComputerName

foreach ($computer in $computers) {
    if (Test-Connection -ComputerName $computer -Count 1 -ErrorAction SilentlyContinue) {
        Write-Host "$computer is up" -ForegroundColor Green
    } else {
        Write-Host "$computer is down" -ForegroundColor Red
    }
}
