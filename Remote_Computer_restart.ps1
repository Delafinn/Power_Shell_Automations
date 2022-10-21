$computername = Read-Host "Enter the computername.."

shutdown /r /m \\$computername /t 10 /c "The IT department has initiated a remote restart on your computer..."
