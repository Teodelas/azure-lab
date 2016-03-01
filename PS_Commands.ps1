#Exercise 3
Get-AzureRmResource | where -Property ResourceType -eq ‘Microsoft.Compute/virtualmachines’

#Exercise 3
Get-AzureRmResource | where -Property ResourceType -eq ‘Microsoft.Compute/virtualmachines’ | Stop-AzureRmVM

#Exercise 3
Set-AzureRmResourceGroup -Name RGDemo -Tag @{Name="CostCenter";Value="0001"}

#Exercise 4
$rgname = "DemoRG"
get-AzureRmPolicyAssignment | Remove-AzureRmPolicyAssignment -Scope "/subscriptions/$subscriptionid/resourceGroups/$rgname"

#Exercise 5
Get-AzureRmLog -ResourceProvider Microsoft.Network -StartTime (Get-Date).AddDays(-1)
