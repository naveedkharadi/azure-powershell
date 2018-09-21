#
# Module manifest for module 'PSGet_AzureRM.Websites'
#
# Generated by: Microsoft Corporation
#
# Generated on: 4/3/2017
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '0.2.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = '80c60f49-dd83-4f4e-92ad-5f3449de36e3'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Websites service cmdlets for Azure Resource Manager in PowerShell and PowerShell Core'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Profile'; ModuleVersion = '0.2.0'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = '.\Microsoft.Azure.Management.Websites.dll', 
    '.\Microsoft.Azure.PowerShell.Strategies.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.Commands.Websites.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzAppServicePlan', 'Set-AzAppServicePlan', 
    'New-AzAppServicePlan', 'Remove-AzAppServicePlan', 
    'Get-AzWebAppSlot', 'Get-AzWebAppSlotConfigName', 
    'Get-AzWebAppSlotMetrics', 
    'Get-AzWebAppSlotPublishingProfile', 'New-AzWebAppSlot', 
    'Remove-AzWebAppSlot', 
    'Reset-AzWebAppSlotPublishingProfile', 
    'Restart-AzWebAppSlot', 'Set-AzWebAppSlot', 
    'Set-AzWebAppSlotConfigName', 'Start-AzWebAppSlot', 
    'Stop-AzWebAppSlot', 'Switch-AzWebAppSlot', 
    'New-AzWebAppDatabaseBackupSetting', 
    'Restore-AzWebAppBackup', 'Get-AzAppServicePlanMetrics', 
    'Get-AzWebAppCertificate', 'Get-AzWebAppSSLBinding', 
    'New-AzWebAppSSLBinding', 'Remove-AzWebAppSSLBinding', 
    'Edit-AzWebAppBackupConfiguration', 'Get-AzWebAppBackup', 
    'Get-AzWebAppBackupConfiguration', 
    'Get-AzWebAppBackupList', 'Get-AzWebAppMetrics', 
    'Get-AzWebAppPublishingProfile', 'Get-AzWebApp', 
    'New-AzWebAppBackup', 'Remove-AzWebApp', 
    'New-AzWebApp', 'Remove-AzWebAppBackup', 
    'Reset-AzWebAppPublishingProfile', 'Restart-AzWebApp', 
    'Set-AzWebApp', 'Start-AzWebApp', 'Stop-AzWebApp', 
    'Get-AzWebAppSnapshot', 'Restore-AzWebAppSnapshot',
    'Get-AzDeletedWebApp', 'Restore-AzDeletedWebApp',
    'Enter-AzWebAppContainerPSSession', 'Get-AzWebAppContainerContinuousDeploymentUrl',
    'New-AzWebAppContainerPSSession'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Swap-AzWebAppSlot'

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
        Tags = 'Azure', 'ResourceManager', 'ARM', 'Websites', 'Website', 'AppService'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = 'Initial Release with PowerShell and PowerShell Core Support'

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

