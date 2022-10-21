$computername = Read-Host "Enter the computer name"

tasklist /s $computername

Read-Host  "Press enter to exit..."
