#
# Module manifest for module 'Az.ServiceBus'
#
# Generated by: Microsoft Corporation
#
# Generated on: 11/29/2022
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '2.0.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'ced192ca-b6cd-4848-90dc-b83a5970befc'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Service Bus service cmdlets for Azure Resource Manager in Windows PowerShell and PowerShell Core.

For more information on Service Bus, please visit the following: https://docs.microsoft.com/azure/service-bus/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.10.2'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'Microsoft.Azure.Management.ServiceBus.dll', 
               'ServiceBus.Autorest\bin\Az.ServiceBus.private.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'ServiceBus.format.ps1xml', 
               'ServiceBus.Autorest\Az.ServiceBus.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('Microsoft.Azure.PowerShell.Cmdlets.ServiceBus.dll', 
               'ServiceBus.Autorest\Az.ServiceBus.psm1')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Approve-AzServiceBusPrivateEndpointConnection', 
               'Complete-AzServiceBusMigration', 
               'Deny-AzServiceBusPrivateEndpointConnection', 
               'Get-AzServiceBusAuthorizationRule', 
               'Get-AzServiceBusGeoDRConfiguration', 'Get-AzServiceBusKey', 
               'Get-AzServiceBusMigration', 'Get-AzServiceBusNetworkRuleSet', 
               'Get-AzServiceBusPrivateEndpointConnection', 
               'Get-AzServiceBusPrivateLink', 'Get-AzServiceBusQueue', 
               'Get-AzServiceBusRule', 'Get-AzServiceBusSubscription', 
               'Get-AzServiceBusTopic', 'New-AzServiceBusAuthorizationRule', 
               'New-AzServiceBusGeoDRConfiguration', 
               'New-AzServiceBusIPRuleConfig', 'New-AzServiceBusKey', 
               'New-AzServiceBusQueue', 'New-AzServiceBusRule', 
               'New-AzServiceBusSubscription', 'New-AzServiceBusTopic', 
               'New-AzServiceBusVirtualNetworkRuleConfig', 
               'Remove-AzServiceBusAuthorizationRule', 
               'Remove-AzServiceBusGeoDRConfiguration', 
               'Remove-AzServiceBusMigration', 
               'Remove-AzServiceBusPrivateEndpointConnection', 
               'Remove-AzServiceBusQueue', 'Remove-AzServiceBusRule', 
               'Remove-AzServiceBusSubscription', 'Remove-AzServiceBusTopic', 
               'Set-AzServiceBusAuthorizationRule', 
               'Set-AzServiceBusGeoDRConfigurationBreakPair', 
               'Set-AzServiceBusGeoDRConfigurationFailOver', 
               'Set-AzServiceBusNetworkRuleSet', 'Set-AzServiceBusQueue', 
               'Set-AzServiceBusRule', 'Set-AzServiceBusSubscription', 
               'Set-AzServiceBusTopic', 'Start-AzServiceBusMigration', 
               'Stop-AzServiceBusMigration', 'Test-AzServiceBusName', 
               'Get-AzServiceBusNamespaceV2', 
               'New-AzServiceBusKeyVaultPropertiesObject', 
               'New-AzServiceBusNamespaceV2', 'Remove-AzServiceBusNamespaceV2', 
               'Set-AzServiceBusNamespaceV2'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'New-AzServiceBusNamespace', 'Get-AzServiceBusNamespace', 
               'Set-AzServiceBusNamespace', 'Remove-AzServiceBusNamespace', 
               'Get-AzServiceBusOperation', 'Remove-AzServiceBusIPRule', 
               'Add-AzServiceBusIPRule', 'Remove-AzServiceBusVirtualNetworkRule', 
               'Add-AzServiceBusVirtualNetworkRule', 
               'Remove-AzServiceBusNetworkRuleSet', 
               'New-AzServiceBusAuthorizationRuleSASToken', 
               'Test-AzServiceBusNameAvailability', 
               'New-AzServiceBusEncryptionConfig'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure', 'ResourceManager', 'ARM', 'ServiceBus'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Most cmdlets in Az.ServiceBus module have been migrated to a new format and would witness breaking changes. Please refer our migration guide https://go.microsoft.com/fwlink/?linkid=2204584 to know breaking changes in detail.'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

