
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for MigrationParameters.
.Description
Create an in-memory object for MigrationParameters.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20240201.MigrationParameters
.Link
https://learn.microsoft.com/powershell/module/Az.Cdn/new-AzFrontDoorCdnMigrationParametersObject
#>
function New-AzFrontDoorCdnMigrationParametersObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20240201.MigrationParameters')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Resource ID.")]
        [string]
        $ClassicResourceReferenceId,
        [Parameter(HelpMessage="Waf mapping for the migrated profile.")]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20240201.IMigrationWebApplicationFirewallMapping[]]
        $MigrationWebApplicationFirewallMapping,
        [Parameter(Mandatory, HelpMessage="Name of the new profile that need to be created.")]
        [string]
        $ProfileName,
        [Parameter(HelpMessage="Name of the pricing tier.")]
        [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.SkuName])]
        [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Support.SkuName]
        $SkuName
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.Cdn.Models.Api20240201.MigrationParameters]::New()

        if ($PSBoundParameters.ContainsKey('ClassicResourceReferenceId')) {
            $Object.ClassicResourceReferenceId = $ClassicResourceReferenceId
        }
        if ($PSBoundParameters.ContainsKey('MigrationWebApplicationFirewallMapping')) {
            $Object.MigrationWebApplicationFirewallMapping = $MigrationWebApplicationFirewallMapping
        }
        if ($PSBoundParameters.ContainsKey('ProfileName')) {
            $Object.ProfileName = $ProfileName
        }
        if ($PSBoundParameters.ContainsKey('SkuName')) {
            $Object.SkuName = $SkuName
        }
        return $Object
    }
}

