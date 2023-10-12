# Sign in to Azure (You may need to run Connect-AzAccount if you're not already signed in)
# Connect-AzAccount

# Define the Service Principal's Application ID
$servicePrincipalAppId = "6d4f75f7-1338-49a9-8977-b8ecc7c6d777"

# Define the User's Object ID
$userObjectId = "1413eb82-af59-4be9-a2da-278710d9fbe7"

# Add the User as a Member to the Service Principal
Add-AzureADServicePrincipalOwner -ObjectId $servicePrincipalAppId -RefObjectId $userObjectId

# Output a message indicating the user has been added
Write-Output "User with Object ID '$userObjectId' has been added to the Service Principal with App ID '$servicePrincipalAppId'."

