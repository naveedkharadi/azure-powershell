﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.Common.Authentication;
using Microsoft.Azure.Commands.Common.Authentication.Abstractions;
using Microsoft.Azure.Management.Sql;
using System.Collections.Generic;
using System.Linq;

namespace Microsoft.Azure.Commands.Sql.ServerConfigurationOptions.Services
{
    /// <summary>
    /// This class is responsible for all the REST communication with the server configuration options REST endpoints
    /// </summary>
    class ServerConfigurationOptionsCommunicator
    {
        /// <summary>
        /// The Sql client to be used by this end points communicator
        /// </summary>
        private static SqlManagementClient SqlClient { get; set; }

        /// <summary>
        /// Gets or set the Azure subscription
        /// </summary>
        private static IAzureSubscription Subscription { get; set; }

        /// <summary>
        /// Gets or sets the Azure profile
        /// </summary>
        public IAzureContext Context { get; set; }

        /// <summary>
        /// Creates a communicator for server configuration options
        /// </summary>
        /// <param name="context">The current azure context</param>
        public ServerConfigurationOptionsCommunicator(IAzureContext context)
        {
            Context = context;
            if (context?.Subscription != Subscription)
            {
                Subscription = context?.Subscription;
                SqlClient = null;
            }
        }

        /// <summary>
        /// Sets a value for server configuration option
        /// </summary>
        public Management.Sql.Models.ServerConfigurationOption CreateOrUpdate(string resourceGroupName, string instanceName, Management.Sql.Models.ServerConfigurationOption parameters)
        {
            // configurationOption name can only be 'allowPolybaseExport' at the moment, and it's pinned by the SDK as well
            return GetCurrentSqlClient().ServerConfigurationOptions.CreateOrUpdate(resourceGroupName, instanceName, parameters);
        }
        /// <summary>
        /// Gets the server configuration option
        /// </summary>
        public Management.Sql.Models.ServerConfigurationOption Get(string resourceGroupName, string instanceName)
        {
            // configurationOption name can only be 'allowPolybaseExport' at the moment, and it's pinned by the SDK as well
            return GetCurrentSqlClient().ServerConfigurationOptions.Get(resourceGroupName, instanceName);
        }

        /// <summary>
        /// Lists server configuration options on a managed instance
        /// </summary>
        public IList<Management.Sql.Models.ServerConfigurationOption> List(string resourceGroupName, string instanceName)
        {
            return GetCurrentSqlClient().ServerConfigurationOptions.ListByManagedInstance(resourceGroupName, instanceName).ToList();
        }

        /// <summary>
        /// Retrieve the SQL Management client for the currently selected subscription, adding the session and request
        /// id tracing headers for the current cmdlet invocation.
        /// </summary>
        /// <returns>The SQL Management client for the currently selected subscription.</returns>
        private SqlManagementClient GetCurrentSqlClient()
        {
            // Get the SQL management client for the current subscription
            if (SqlClient == null)
            {
                SqlClient = AzureSession.Instance.ClientFactory.CreateArmClient<SqlManagementClient>(Context, AzureEnvironment.Endpoint.ResourceManager);
            }
            return SqlClient;
        }
    }
}
