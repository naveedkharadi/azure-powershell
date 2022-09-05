// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501
{
    using Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.PowerShell;

    /// <summary>All key-value properties.</summary>
    [System.ComponentModel.TypeConverter(typeof(KeyValuePropertiesTypeConverter))]
    public partial class KeyValueProperties
    {

        /// <summary>
        /// <c>AfterDeserializeDictionary</c> will be called after the deserialization has finished, allowing customization of the
        /// object before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>

        partial void AfterDeserializeDictionary(global::System.Collections.IDictionary content);

        /// <summary>
        /// <c>AfterDeserializePSObject</c> will be called after the deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>

        partial void AfterDeserializePSObject(global::System.Management.Automation.PSObject content);

        /// <summary>
        /// <c>BeforeDeserializeDictionary</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializeDictionary(global::System.Collections.IDictionary content, ref bool returnNow);

        /// <summary>
        /// <c>BeforeDeserializePSObject</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializePSObject(global::System.Management.Automation.PSObject content, ref bool returnNow);

        /// <summary>
        /// <c>OverrideToString</c> will be called if it is implemented. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="stringResult">/// instance serialized to a string, normally it is a Json</param>
        /// <param name="returnNow">/// set returnNow to true if you provide a customized OverrideToString function</param>

        partial void OverrideToString(ref string stringResult, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValueProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValueProperties"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValueProperties DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new KeyValueProperties(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValueProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValueProperties"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValueProperties DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new KeyValueProperties(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="KeyValueProperties" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="KeyValueProperties" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValueProperties FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValueProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal KeyValueProperties(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Key"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Key = (string) content.GetValueForProperty("Key",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Key, global::System.Convert.ToString);
            }
            if (content.Contains("Label"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Label = (string) content.GetValueForProperty("Label",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Label, global::System.Convert.ToString);
            }
            if (content.Contains("Value"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Value = (string) content.GetValueForProperty("Value",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Value, global::System.Convert.ToString);
            }
            if (content.Contains("ContentType"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ContentType = (string) content.GetValueForProperty("ContentType",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ContentType, global::System.Convert.ToString);
            }
            if (content.Contains("ETag"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ETag = (string) content.GetValueForProperty("ETag",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ETag, global::System.Convert.ToString);
            }
            if (content.Contains("LastModified"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).LastModified = (global::System.DateTime?) content.GetValueForProperty("LastModified",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).LastModified, (v) => v is global::System.DateTime _v ? _v : global::System.Xml.XmlConvert.ToDateTime( v.ToString() , global::System.Xml.XmlDateTimeSerializationMode.Unspecified));
            }
            if (content.Contains("Locked"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Locked = (bool?) content.GetValueForProperty("Locked",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Locked, (__y)=> (bool) global::System.Convert.ChangeType(__y, typeof(bool)));
            }
            if (content.Contains("Tag"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Tag = (Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesTags) content.GetValueForProperty("Tag",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Tag, Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValuePropertiesTagsTypeConverter.ConvertFrom);
            }
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValueProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal KeyValueProperties(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            if (content.Contains("Key"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Key = (string) content.GetValueForProperty("Key",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Key, global::System.Convert.ToString);
            }
            if (content.Contains("Label"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Label = (string) content.GetValueForProperty("Label",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Label, global::System.Convert.ToString);
            }
            if (content.Contains("Value"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Value = (string) content.GetValueForProperty("Value",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Value, global::System.Convert.ToString);
            }
            if (content.Contains("ContentType"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ContentType = (string) content.GetValueForProperty("ContentType",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ContentType, global::System.Convert.ToString);
            }
            if (content.Contains("ETag"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ETag = (string) content.GetValueForProperty("ETag",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).ETag, global::System.Convert.ToString);
            }
            if (content.Contains("LastModified"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).LastModified = (global::System.DateTime?) content.GetValueForProperty("LastModified",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).LastModified, (v) => v is global::System.DateTime _v ? _v : global::System.Xml.XmlConvert.ToDateTime( v.ToString() , global::System.Xml.XmlDateTimeSerializationMode.Unspecified));
            }
            if (content.Contains("Locked"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Locked = (bool?) content.GetValueForProperty("Locked",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Locked, (__y)=> (bool) global::System.Convert.ChangeType(__y, typeof(bool)));
            }
            if (content.Contains("Tag"))
            {
                ((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Tag = (Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesTags) content.GetValueForProperty("Tag",((Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IKeyValuePropertiesInternal)this).Tag, Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.KeyValuePropertiesTagsTypeConverter.ConvertFrom);
            }
            AfterDeserializePSObject(content);
        }

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.SerializationMode.IncludeAll)?.ToString();

        public override string ToString()
        {
            var returnNow = false;
            var result = global::System.String.Empty;
            OverrideToString(ref result, ref returnNow);
            if (returnNow)
            {
                return result;
            }
            return ToJsonString();
        }
    }
    /// All key-value properties.
    [System.ComponentModel.TypeConverter(typeof(KeyValuePropertiesTypeConverter))]
    public partial interface IKeyValueProperties

    {

    }
}