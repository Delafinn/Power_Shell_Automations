$ComputerName = Read-Host "Enter the name of the remote computer"
$Username = Read-Host "Enter the username for the remote computer"
$Password = Read-Host "Enter the password for the remote computer" -AsSecureString

$ScriptBlock = {
    Start-Process "C:\Program Files\Microsoft\MDOP MBAM\MBAMClientUI.exe"
}

$SecurePassword = $Password
$Credential = New-Object System.Management.Automation.PSCredential($Username, $SecurePassword)

Invoke-Command -ComputerName $ComputerName -Credential $Credential -ScriptBlock $ScriptBlock
