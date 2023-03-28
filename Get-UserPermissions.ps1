#prompt the user to enter the username of the user for whom you want to retrieve group membership information 

$username = Read-Host "Provide the username of the user you want permissions from."

$output = Get-ADPrincipalGroupMembership -Identity $username | Select-Object Name

# Use the Get-ADPrincipalGroupMembership cmdlet to retrieve the group membership information for the specified user and select the Name property of the returned objects
Write-Output $output
