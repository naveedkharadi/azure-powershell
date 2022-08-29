// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Models.Api20210901
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Extensions;

    /// <summary>SSO details from the Dynatrace partner</summary>
    public partial class SsoDetailsResponse :
        Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Models.Api20210901.ISsoDetailsResponse,
        Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Models.Api20210901.ISsoDetailsResponseInternal
    {

        /// <summary>Backing field for <see cref="AadDomain" /> property.</summary>
        private string[] _aadDomain;

        /// <summary>array of Aad(azure active directory) domains</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Origin(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.PropertyOrigin.Owned)]
        public string[] AadDomain { get => this._aadDomain; set => this._aadDomain = value; }

        /// <summary>Backing field for <see cref="AdminUser" /> property.</summary>
        private string[] _adminUser;

        /// <summary>Array of admin user emails.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Origin(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.PropertyOrigin.Owned)]
        public string[] AdminUser { get => this._adminUser; set => this._adminUser = value; }

        /// <summary>Backing field for <see cref="IsSsoEnabled" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Support.SsoStatus? _isSsoEnabled;

        /// <summary>Whether the SSO is enabled for this resource or not.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Origin(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Support.SsoStatus? IsSsoEnabled { get => this._isSsoEnabled; set => this._isSsoEnabled = value; }

        /// <summary>Backing field for <see cref="MetadataUrl" /> property.</summary>
        private string _metadataUrl;

        /// <summary>URL for Azure AD metadata</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Origin(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.PropertyOrigin.Owned)]
        public string MetadataUrl { get => this._metadataUrl; set => this._metadataUrl = value; }

        /// <summary>Backing field for <see cref="SingleSignOnUrl" /> property.</summary>
        private string _singleSignOnUrl;

        /// <summary>The login URL specific to this Dynatrace Environment</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Origin(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.PropertyOrigin.Owned)]
        public string SingleSignOnUrl { get => this._singleSignOnUrl; set => this._singleSignOnUrl = value; }

        /// <summary>Creates an new <see cref="SsoDetailsResponse" /> instance.</summary>
        public SsoDetailsResponse()
        {

        }
    }
    /// SSO details from the Dynatrace partner
    public partial interface ISsoDetailsResponse :
        Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.IJsonSerializable
    {
        /// <summary>array of Aad(azure active directory) domains</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"array of Aad(azure active directory) domains",
        SerializedName = @"aadDomains",
        PossibleTypes = new [] { typeof(string) })]
        string[] AadDomain { get; set; }
        /// <summary>Array of admin user emails.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Array of admin user emails.",
        SerializedName = @"adminUsers",
        PossibleTypes = new [] { typeof(string) })]
        string[] AdminUser { get; set; }
        /// <summary>Whether the SSO is enabled for this resource or not.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Whether the SSO is enabled for this resource or not.",
        SerializedName = @"isSsoEnabled",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Support.SsoStatus) })]
        Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Support.SsoStatus? IsSsoEnabled { get; set; }
        /// <summary>URL for Azure AD metadata</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"URL for Azure AD metadata",
        SerializedName = @"metadataUrl",
        PossibleTypes = new [] { typeof(string) })]
        string MetadataUrl { get; set; }
        /// <summary>The login URL specific to this Dynatrace Environment</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The login URL specific to this Dynatrace Environment",
        SerializedName = @"singleSignOnUrl",
        PossibleTypes = new [] { typeof(string) })]
        string SingleSignOnUrl { get; set; }

    }
    /// SSO details from the Dynatrace partner
    internal partial interface ISsoDetailsResponseInternal

    {
        /// <summary>array of Aad(azure active directory) domains</summary>
        string[] AadDomain { get; set; }
        /// <summary>Array of admin user emails.</summary>
        string[] AdminUser { get; set; }
        /// <summary>Whether the SSO is enabled for this resource or not.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DynatraceObservability.Support.SsoStatus? IsSsoEnabled { get; set; }
        /// <summary>URL for Azure AD metadata</summary>
        string MetadataUrl { get; set; }
        /// <summary>The login URL specific to this Dynatrace Environment</summary>
        string SingleSignOnUrl { get; set; }

    }
}