# ================================================================
# SESSION 13: THE AUTOMATED ONBOARDING
# Operator Deployment Script
# ================================================================

Write-Host "[*] Beginning Engineering Onboarding..."

#INSTRUCTION 1: Create a loop (for 1 to 5)
#YOUR CODE HERE:
for ( $i = 1; $i -le 5; $i++ ) {
# INSTRUCTION 2: Inside the loop, use New-ADUser to create Eng_User1 through Eng_User5
# Ensure you set the -path to your new Engineering OU, and require a password change.
# YOUR CODE HERE:
    $username = "Eng_User$i"
    $password = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force

    New-ADUser `
        -Name $username `
        -SamAccountName $username `
        -AccountPassword $password `
        -Enabled $true `
        -Path "OU=Engineering,DC=titan,DC=local" `
        -ChangePasswordAtLogon $true
}

Write-Host "[+] All engineers onboarded successfully."
