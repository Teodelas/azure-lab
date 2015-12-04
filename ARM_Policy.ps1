$subscriptionid = "e45a..."
$rgname = "DemoRG"
New-AzureRmPolicyAssignment -Name namingPolicyAssignment -PolicyDefinition $policy -Scope "/subscriptions/$subscriptionid/resourceGroups/$rgname"

$policy = New-AzureRmPolicyDefinition -Name namingPolicyDefinition -Description "Policy to allow resource creation only with names that start with diaz" -Policy '{   "if" : {
                         "not" : {
                             "field" : "name",
                                 "like" : "<YOURPREFIX>*"
                             }
                           },
                             "then" : {
                                 "effect" : "deny"
                                 }
                        }'
