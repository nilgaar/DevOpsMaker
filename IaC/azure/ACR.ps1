# Variables
$templateFile = "./templates/ACR.json"
$resourceGroupName = "showcaseDevOpsMaker"
$registryName = "devopsmaker"
$registrySku = "Basic"  # Can be Basic, Standard, or Premium
$zoneRedundancy = "disabled"  # Can be enabled or disabled
$registryLocation = "spaincentral"
$registryApiVersion = "2022-02-01-preview"
$tags = @{}
$publicNetworkAccess = "Enabled"  # Can be Enabled or Disabled


# Deploy the ARM template
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $templateFile -registryName $registryName -registrySku $registrySku -zoneRedundancy $zoneRedundancy -registryLocation $registryLocation -registryApiVersion $registryApiVersion -tags $tags -publicNetworkAccess $publicNetworkAccess