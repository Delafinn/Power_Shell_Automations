$computername = Read-Host "Enter the computer name"
$username = Read-Host "Enter your username"
psexec \\$computername -h - u $username powershell
