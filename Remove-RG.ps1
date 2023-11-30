# Set the resource group name
$resourceGroupName = 'RG'

# Check if the resource group exists
if (Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue) {
    # Delete the resource group
    Remove-AzResourceGroup -Name $resourceGroupName -Force -Verbose
    Write-Host "Resource group '$resourceGroupName' deleted successfully."
} else {
    Write-Host "Resource group '$resourceGroupName' not found."
}
