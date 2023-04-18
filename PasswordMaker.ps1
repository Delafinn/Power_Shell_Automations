# Define the possible characters to include in the password
$letters = 'abcdefghijklmnopqrstuvwxyz'
$capLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
$numbers = '0123456789'
$symbols = '!$%&*+'

# Combine the character sets into a single string
$charSet = $letters + $capLetters + $numbers + $symbols

# Prompt the user for the desired password length
$length = Read-Host "Enter password length"

# Generate a random set of characters from the character set
$randomChars = $charSet.ToCharArray() | Get-Random -Count $length

# Use a loop to select a character from the random set and build the password string
$password = ""
foreach ($char in $randomChars) {
    $password += $char
}

# Output the generated password
Write-Output $password
