$ComputerName = Read-Host "Enter the name of the remote computer"

$ScriptBlock = {
    Start-Process "C:\Program Files\Microsoft\MDOP MBAM\MBAMClientUI.exe"
}

Invoke-Command -ComputerName $ComputerName -ScriptBlock $ScriptBlock
