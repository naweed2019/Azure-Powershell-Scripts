Install PoweShell 7
iex & { $(irm httpsaka.msinstall-powershell.ps1) } -UseMSI


Install AZ Modules 
Install-Module -Name Az -AllowClobber


Sign into Azure via PowerShell
Connect-AzAccount


Creating Resources in Azure 
Creating a Resource group 
New-AzResourceGroup -Name powershellgrp -Location EastUS   

Creating a VM
New-AzVm -ResourceGroupName powershellgrp -Name aznewvm -Location EastUS -VirtualNetworkName myNewVnet -SubnetName Default -SecurityGroupName mynewNSG -PublicIPAddressName myPublicIP -OpenPorts 80,3389

View VM's 
Get-AzVM

Stop VM's
Stop-AzVm -Name aznewvm -ResourceGroupName powershellgrp