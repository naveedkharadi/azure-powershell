// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.Management.Automation.Models
{
    using System.Linq;

    /// <summary>
    /// Group specific to the update configuration.
    /// </summary>
    public partial class TargetProperties
    {
        /// <summary>
        /// Initializes a new instance of the TargetProperties class.
        /// </summary>
        public TargetProperties()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the TargetProperties class.
        /// </summary>

        /// <param name="azureQueries">List of Azure queries in the software update configuration.
        /// </param>

        /// <param name="nonAzureQueries">List of non Azure queries in the software update configuration.
        /// </param>
        public TargetProperties(System.Collections.Generic.IList<AzureQueryProperties> azureQueries = default(System.Collections.Generic.IList<AzureQueryProperties>), System.Collections.Generic.IList<NonAzureQueryProperties> nonAzureQueries = default(System.Collections.Generic.IList<NonAzureQueryProperties>))

        {
            this.AzureQueries = azureQueries;
            this.NonAzureQueries = nonAzureQueries;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();


        /// <summary>
        /// Gets or sets list of Azure queries in the software update configuration.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "azureQueries")]
        public System.Collections.Generic.IList<AzureQueryProperties> AzureQueries {get; set; }

        /// <summary>
        /// Gets or sets list of non Azure queries in the software update
        /// configuration.
        /// </summary>
        [Newtonsoft.Json.JsonProperty(PropertyName = "nonAzureQueries")]
        public System.Collections.Generic.IList<NonAzureQueryProperties> NonAzureQueries {get; set; }
    }
}