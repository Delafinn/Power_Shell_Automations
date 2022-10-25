$computername = Read-Host "Please enter the name of the computer you wish to update."

Invoke-GPUpdate -Computer $computername -Force
