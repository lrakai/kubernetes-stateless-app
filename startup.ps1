$Region = "WestUS2"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name k8s-lab -Location $Region
New-AzureRmResourceGroupDeployment -ResourceGroupName k8s-lab -Name k8s-resources -TemplateFile .\infrastructure\arm-template.json
Get-AzureRmPublicIpAddress -Name ca-lab-vm-ip -ResourceGroupName k8s-lab | Select -ExpandProperty IpAddress