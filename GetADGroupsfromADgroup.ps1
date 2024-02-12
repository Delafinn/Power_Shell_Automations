# gets the permissions related to a AD group



$username1 = Read-Host "Enter the ADgroup we are grabbing the permissions for."

Write-Host "got it."
Start-Sleep .5
Write-Host "Working!!!"

$userpermissions = (Get-ADGroup -Identity "$username1" -Properties MemberOf).MemberOf | Get-ADGroup | Select-Object Name

$userpermissions

Read-Host "Press enter and please copy the below permissions."

Read-Host "Please copy the above permissions and press ente"