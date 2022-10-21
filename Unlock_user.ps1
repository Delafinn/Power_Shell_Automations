$lockedoutuser = Read-Host "Please enter the username of the user who is locked out"

Unlock-ADAccount -Identity $lockedoutuser


Write-Host "The user should now be unlocked..."
Start-Sleep 5
Read-Host "press any key to exit...."
