$computername = Read-Host "Please enter the computer name."

$pid_num = Read-Host "Please enter the PID of the task you want to kill."

taskkill /s $computername /pid $pid_num
