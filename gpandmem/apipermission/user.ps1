# Sign in to Azure (You may need to run Connect-AzAccount if you're not already signed in)
# Connect-AzAccount

# Define the Service Principal's Application ID
$servicePrincipalAppId = "462b607f-685e-44f4-901f-836701db26f9"

# Define the User's Object ID
$userObjectId = "6d4f75f7-1338-49a9-8977-b8ecc7c6d777"

# Add the User as a Member to the Service Principal
Add-AzADServicePrincipalMember -ObjectId $servicePrincipalAppId -RefObjectId $userObjectId

# Output a message indicating the user has been added
Write-Output "User with Object ID '$userObjectId' has been added to the Service Principal with App ID '$servicePrincipalAppId'."
