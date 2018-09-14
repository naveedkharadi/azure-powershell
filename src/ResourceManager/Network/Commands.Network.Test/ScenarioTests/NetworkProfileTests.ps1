﻿# <auto-generated>
# Copyright (c) Microsoft and contributors.  All rights reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# 
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# 
# Warning: This code was generated by a tool.
# 
# Changes to this file may cause incorrect behavior and will be lost if the
# code is regenerated.
# 
# For documentation on code generator please visit
#   https://aka.ms/nrp-code-generation
# Please contact wanrpdev@microsoft.com if you need to make changes to this file.
# </auto-generated>

function Check-CmdletReturnType
{
    param($cmdletName, $cmdletReturn)

    $cmdletData = Get-Command $cmdletName;
    Assert-NotNull $cmdletData;
    [array]$cmdletReturnTypes = $cmdletData.OutputType.Name | Foreach-Object { return ($_ -replace "Microsoft.Azure.Commands.Network.Models.","") };
    [array]$cmdletReturnTypes = $cmdletReturnTypes | Foreach-Object { return ($_ -replace "System.","") };
    $realReturnType = $cmdletReturn.GetType().Name -replace "Microsoft.Azure.Commands.Network.Models.","";
    return $cmdletReturnTypes -contains $realReturnType;
}

<#
.SYNOPSIS
Test creating new NetworkProfile using minimal set of parameters
#>
function Test-NetworkProfileCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $npName = Get-ResourceName;
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";
    # Dependency parameters
    $containerNicConfigName = "cnic1";

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create required dependencies
        $containerNicConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName;

        # Create NetworkProfile
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName -Location $location -ContainerNetworkInterfaceConfiguration $containerNicConfig;
        Assert-NotNull $vNetworkProfile;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfile" $vNetworkProfile };
        Assert-Null $vNetworkProfile.ContainerNetworkInterfaces;
        Assert-NotNull $vNetworkProfile.ContainerNetworkInterfaceConfigurations;
        Assert-True { $vNetworkProfile.ContainerNetworkInterfaceConfigurations.Length -gt 0 };
        Assert-AreEqual $npName $vNetworkProfile.Name;

        # Get NetworkProfile
        $vNetworkProfile = Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName;
        Assert-NotNull $vNetworkProfile;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfile" $vNetworkProfile };
        Assert-AreEqual $npName $vNetworkProfile.Name;

        # Remove NetworkProfile
        $removeNetworkProfile = Remove-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName -Force;

        # Get NetworkProfile should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName } "${npName} not found";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new NetworkProfile
#>
function Test-NetworkProfileCRUDAllParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $npName = Get-ResourceName;
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";
    # Dependency parameters
    $containerNicConfigName = "cnic1";

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;
           
        # Create required dependencies
        $containerNicConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName;

        # Create NetworkProfile
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName -Location $location -ContainerNetworkInterfaceConfiguration $containerNicConfig;
        Assert-NotNull $vNetworkProfile;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfile" $vNetworkProfile };
        Assert-Null $vNetworkProfile.ContainerNetworkInterfaces;
        Assert-NotNull $vNetworkProfile.ContainerNetworkInterfaceConfigurations;
        Assert-True { $vNetworkProfile.ContainerNetworkInterfaceConfigurations.Length -gt 0 };
        Assert-AreEqual $npName $vNetworkProfile.Name;

        # Get NetworkProfile
        $vNetworkProfile = Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName;
        Assert-NotNull $vNetworkProfile;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfile" $vNetworkProfile };
        Assert-AreEqual $npName $vNetworkProfile.Name;

        # Get Container nic config
        $containerNicConfig = $vNetworkProfile | Get-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName
        Assert-NotNull $vNetworkProfile
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vNetworkProfile };
        Assert-AreEqual $containerNicConfigName $containerNicConfig.Name

        # Remove NetworkProfile
        $removeNetworkProfile = Remove-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName -Force;

        # Get NetworkProfile should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $npName } "${npName} not found";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ContainerNetworkInterface using minimal set of parameters
#>
function Test-ContainerNetworkInterfaceCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $networkProfileName = "np1"
    $containerNicName = Get-ResourceName;
    $containerNicNameAdd = "${containerNicName}Add";
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create ContainerNetworkInterface
        $vContainerNetworkInterfaceConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicName;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -ContainerNetworkInterface $vContainerNetworkInterfaceConfig -Location $location;
        Assert-NotNull $vNetworkProfile;
        Assert-AreEqual $containerNicName $vContainerNetworkInterfaceConfig.Name;

        # Get ContainerNetworkInterface
        $vContainerNetworkInterfaceConfig = Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicName;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicName $vContainerNetworkInterfaceConfig.Name;

        # Add ContainerNetworkInterface
        $vNetworkProfile = Add-AzureRmNetworkProfileContainerNicConfig -Name $containerNicNameAdd -NetworkProfile $vNetworkProfile;
        Assert-NotNull $vNetworkProfile;
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get ContainerNetworkInterface
        $vContainerNetworkInterfaceConfig = Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicNameAdd;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicNameAdd $vContainerNetworkInterfaceConfig.Name;

        # Remove ContainerNetworkInterface
        Remove-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicNameAdd;
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get ContainerNetworkInterface should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicNameAdd } "Sequence contains no matching element";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

<#
.SYNOPSIS
Test creating new ContainerNetworkInterfaceConfig using minimal set of parameters
#>
function Test-ContainerNetworkInterfaceConfigCRUDMinimalParameters
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $networkProfileName = "np1"
    $containerNicConfig = Get-ResourceName;
    $containerNicConfigAdd = "${containerNicConfig}Add";
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfig;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Location $location;
        Assert-NotNull $vNetworkProfile;
        Assert-AreEqual $containerNicConfig $vContainerNetworkInterfaceConfig.Name;

        # Get ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfig;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicConfig $vContainerNetworkInterfaceConfig.Name;

        # Add ContainerNetworkInterfaceConfig
        $vNetworkProfile = Add-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigAdd -NetworkProfile $vNetworkProfile;
        Assert-NotNull $vNetworkProfile;
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigAdd;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicConfigAdd $vContainerNetworkInterfaceConfig.Name;

        # Remove ContainerNetworkInterfaceConfig
        Remove-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigAdd;
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get ContainerNetworkInterfaceConfig should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigAdd } "Sequence contains no matching element";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

function Test-ContainerNetworkInterfaceConfigCRUD
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $networkProfileName = "np1"
    $containerNicConfigName = Get-ResourceName;
    $ipConfigProfileName = "ipconfigprofile1"
    $ipConfigProfileNameAdd = "${ipConfigProfileName}Add"
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";
    $vnetName = "vnet1"
    $subnetName = "subnet1"
    $subnetNameAdd = "${subnetName}Add"

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create virtual network and subnet
        $subnet = New-AzureRmVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix 10.0.1.0/24
        $subnetAdd = New-AzureRmVirtualNetworkSubnetConfig -Name $subnetNameAdd -AddressPrefix 10.0.2.0/24
        $response = New-AzureRmVirtualNetwork -Name $vnetName -ResourceGroupName $rgname -Location $location -AddressPrefix 10.0.0.0/16 -Subnet @($subnet, $subnetAdd)

        $subnet = $response.Subnets[0]
        $subnetAdd = $response.Subnets[1]

        Assert-AreEqual $subnet.Name $subnetName
        Assert-AreEqual $subnetAdd.Name $subnetNameAdd

        # Create IPConfigurationProfile
        $ipConfigProfile = New-AzureRmNetworkProfileContainerNicConfigIpConfig -Name $ipConfigProfileName -Subnet $subnet
        Assert-NotNull $ipConfigProfile
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };
        Assert-AreEqual $ipConfigProfile.Name $ipConfigProfileName

        # Create ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName -IPConfiguration $ipConfigProfile;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $vContainerNetworkInterfaceConfig.Name $containerNicConfigName

        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Location $location;
        Assert-NotNull $vNetworkProfile;
        Assert-AreEqual $vNetworkProfile.Name $networkProfileName;

        # Get ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = $vNetworkProfile | Get-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicConfigName $vContainerNetworkInterfaceConfig.Name;

        # Get IPConfigurationProfile 
        $ipConfigProfile = Get-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileName;
        Assert-NotNull $ipConfigProfile;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };
        Assert-AreEqual $ipConfigProfileName $ipConfigProfile.Name;

        # Add IPConfigurationProfile
        $vContainerNetworkInterfaceConfig = $vContainerNetworkInterfaceConfig | Add-AzureRmNetworkProfileContainerNicConfigIpConfig -Name $ipConfigProfileNameAdd -Subnet $subnet;
        Assert-NotNull $vContainerNetworkInterfaceConfig
        Assert-True { $vContainerNetworkInterfaceConfig.IpConfigurations.Length -gt 1 }
        Assert-AreEqual  $vContainerNetworkInterfaceConfig.IpConfigurations[0].Name $ipConfigProfileName
        Assert-AreEqual  $vContainerNetworkInterfaceConfig.IpConfigurations[1].Name $ipConfigProfileNameAdd
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile

        # Remove by setting
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName -IpConfiguration $vContainerNetworkInterfaceConfig.IpConfigurations[0]
        Assert-NotNull $vNetworkProfile;
        Assert-True { Check-CmdletReturnType "Set-AzureRmNetworkProfileContainerNicConfig" $vNetworkProfile }
        Assert-True { $vNetworkProfile.ContainerNetworkInterfaceConfigurations.Length -eq 1 }
        Assert-AreEqual $vNetworkProfile.ContainerNetworkInterfaceConfigurations[0].Name $containerNicConfigName
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get IPConfigurationProfile
        $vContainerNetworkInterfaceConfig = $vNetworkProfile | Get-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName
        $ipConfigProfile = Get-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileName;
        Assert-NotNull $ipConfigProfile;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };
        Assert-AreEqual $ipConfigProfileName $ipConfigProfileName;
        Assert-True { $vContainerNetworkInterfaceConfig.IpConfigurations.Length -eq 1 }

        # Remove IPConfigurationProfile
        Remove-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileNameAdd

        # Get IPConfigurationProfile should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileNameAdd } "Sequence contains no matching element";

        # Remove ContainerNetworkInterfaceConfig
        Remove-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigName;
        $vNetworkProfile | Set-AzureRmNetworkProfile;

        # Get ContainerNetworkInterfaceConfig should fail
        Assert-ThrowsContains { Get-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigName } "Sequence contains no matching element";
    }
    finally
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}

function Test-ContainerNetworkInterfaceConfigCRUDSet
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = Get-ProviderLocation ResourceManagement;
    $networkProfileName = "np1"
    $containerNicConfigName = Get-ResourceName;
    $ipConfigProfileName = "ipconfigprofile1"
    $ipConfigProfileNameAdd = "${ipConfigProfileName}Add"
    $location = Get-ProviderLocation "Microsoft.Network/NetworkProfiles";
    $vnetName = "vnet1"
    $subnetName = "subnet1"

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create virtual network and subnet
        $subnet = New-AzureRmVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix 10.0.1.0/24
        $response = New-AzureRmVirtualNetwork -Name $vnetName -ResourceGroupName $rgname -Location $location -AddressPrefix 10.0.0.0/16 -Subnet $subnet 
        $subnet = $response.Subnets[0]

        # Create ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };

        # Add ContainerNetworkInterfaceConfigIpConfig
        $vContainerNetworkInterfaceConfig | Add-AzureRmNetworkProfileContainerNicConfigIpConfig -Name $ipConfigProfileName -Subnet $subnet
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Add-AzureRmNetworkProfileContainerNicConfigIpConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $ipConfigProfileName $vContainerNetworkInterfaceConfig.IpConfigurations[0].Name;

        # Get ip config profile
        $ipConfigProfile = Get-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileName;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };
        Assert-AreEqual $ipConfigProfile.Name $vContainerNetworkInterfaceConfig.IPConfigurations[0].Name;

        # Create NetworkProfile
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Location $location;
        Assert-NotNull $vNetworkProfile;
        Assert-AreEqual $vNetworkProfile.ContainerNetworkInterfaceConfigurations[0].Name $vContainerNetworkInterfaceConfig.Name;

        # Get ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = $vNetworkProfile | Get-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        Assert-AreEqual $containerNicConfigName $vContainerNetworkInterfaceConfig.Name;

        # Get IPConfigurationProfile 
        $ipConfigProfile = Get-AzureRmNetworkProfileContainerNicConfigIpConfig -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Name $ipConfigProfileName;
        Assert-NotNull $ipConfigProfile;
        Assert-True { Check-CmdletReturnType "Get-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };
        Assert-AreEqual $ipConfigProfileName $ipConfigProfile.Name;
    }
    finally 
    {
        # Cleanup
        Clean-ResourceGroup $rgname;
    }
}


function Test-NetworkProfileEndToEndWithContainerNics
{
    # Setup
    $rgname = Get-ResourceGroupName;
    $rglocation = "westus";
    $networkProfileName = Get-ResourceName;
    $containerNicConfigName = "cni1"
    $ipConfigProfileName = "ipconfigprofile1"
    $location = "westus";

    $vnetName = "vnet1"
    $subnetName = "subnet1"
    $containerGroupName = "cg1"

    try
    {
        $resourceGroup = New-AzureRmResourceGroup -Name $rgname -Location $rglocation;

        # Create Virtual Network and Subnet
        $subnet = New-AzureRmVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix 10.0.1.0/24
        $response = New-AzureRmVirtualNetwork -Name $vnetName -ResourceGroupName $rgname -Location $location -AddressPrefix 10.0.0.0/16 -Subnet $subnet 
        $subnet = $response.Subnets[0]

        # Create IPConfigurationProfile
        $ipConfigProfile = New-AzureRmNetworkProfileContainerNicConfigIpConfig -Name $ipConfigProfileName -Subnet $subnet
        Assert-NotNull $ipConfigProfile
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfigIpConfig" $ipConfigProfile };

        # Create ContainerNetworkInterfaceConfig
        $vContainerNetworkInterfaceConfig = New-AzureRmNetworkProfileContainerNicConfig -Name $containerNicConfigName -IPConfiguration $ipConfigProfile;
        Assert-NotNull $vContainerNetworkInterfaceConfig;
        Assert-True { Check-CmdletReturnType "New-AzureRmNetworkProfileContainerNicConfig" $vContainerNetworkInterfaceConfig };
        $vNetworkProfile = New-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -ContainerNetworkInterfaceConfiguration $vContainerNetworkInterfaceConfig -Location $location;
        Assert-NotNull $vNetworkProfile;
        Assert-AreEqual $containerNicConfigName $vContainerNetworkInterfaceConfig.Name;

        # Create container group
        $containerGroup = New-AzureRmContainerGroup -ResourceGroupName  $rgname -Name $containerGroupName -Image "nginx" -OsType "Linux" -RestartPolicy "Never" -DnsNameLabel "cg1.westus.azurecontainer.io" -Port @(8000, 8001) -Cpu 1 -Memory 1.5
        Assert-NotNull $containerGroup

        # Get Network Profile
        $retrievedNetworkProfile = Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $rname
        $retrievedContainerNics = $retrievedNetworkProfile.ContainerNetworkInterfaces
        
        # Validate profile against expected
        Assert-NotNull $retrievedContainerNics
        Assert-AreEqual $retrievedContainerNics.Count 1

        $retrievedContainerNic = $retrievedContainerNics[0]
        Assert-AreEqual $retrievedContainerNic.ContainerNetworkInterfaceConfiguration.Name $containerNicConfigName
        Assert-AreEqual $retrievedContainerNic.Container.Name $containerGroupName

        # Remove container group
        $containerGroup | Remove-AzureRmContainerGroup

        # Get Network Profile
        $retrievedNetworkProfile = Get-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $rname
        # Validate profile against expected
        Assert-Null $retrievedNetworkProfile.ContainerNetworkInterfaces

        Remove-AzureRmNetworkProfileContainerNicConfig -NetworkProfile $vNetworkProfile -Name $containerNicConfigName;
        $vNetworkProfile = $vNetworkProfile | Set-AzureRmNetworkProfile;

        $removeNetworkProfile = Remove-AzureRmNetworkProfile -ResourceGroupName $rgname -Name $networkProfileName -Force;
    }
    finally
    {
        Clean-ResourceGroup $rgname
    }
}
