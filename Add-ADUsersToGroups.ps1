# Define the AD groups and AD users to add
$groups = "Group1", "Group2", "Group3"
$users = "User1", "User2", "User3"

# Loop through each AD user and add them to each AD group
foreach ($user in $users) {
    foreach ($group in $groups) {
        Add-ADGroupMember -Identity $group -Members $user
    }
}
