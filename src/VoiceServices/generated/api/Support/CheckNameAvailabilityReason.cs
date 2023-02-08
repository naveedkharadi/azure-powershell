// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support
{

    /// <summary>Possible reasons for a name not being available.</summary>
    public partial struct CheckNameAvailabilityReason :
        System.IEquatable<CheckNameAvailabilityReason>
    {
        public static Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason AlreadyExists = @"AlreadyExists";

        public static Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason Invalid = @"Invalid";

        /// <summary>
        /// the value for an instance of the <see cref="CheckNameAvailabilityReason" /> Enum.
        /// </summary>
        private string _value { get; set; }

        /// <summary>
        /// Creates an instance of the <see cref="CheckNameAvailabilityReason"/> Enum class.
        /// </summary>
        /// <param name="underlyingValue">the value to create an instance for.</param>
        private CheckNameAvailabilityReason(string underlyingValue)
        {
            this._value = underlyingValue;
        }

        /// <summary>Conversion from arbitrary object to CheckNameAvailabilityReason</summary>
        /// <param name="value">the value to convert to an instance of <see cref="CheckNameAvailabilityReason" />.</param>
        internal static object CreateFrom(object value)
        {
            return new CheckNameAvailabilityReason(global::System.Convert.ToString(value));
        }

        /// <summary>Compares values of enum type CheckNameAvailabilityReason</summary>
        /// <param name="e">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public bool Equals(Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e)
        {
            return _value.Equals(e._value);
        }

        /// <summary>Compares values of enum type CheckNameAvailabilityReason (override for Object)</summary>
        /// <param name="obj">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public override bool Equals(object obj)
        {
            return obj is CheckNameAvailabilityReason && Equals((CheckNameAvailabilityReason)obj);
        }

        /// <summary>Returns hashCode for enum CheckNameAvailabilityReason</summary>
        /// <returns>The hashCode of the value</returns>
        public override int GetHashCode()
        {
            return this._value.GetHashCode();
        }

        /// <summary>Returns string representation for CheckNameAvailabilityReason</summary>
        /// <returns>A string for this value.</returns>
        public override string ToString()
        {
            return this._value;
        }

        /// <summary>Implicit operator to convert string to CheckNameAvailabilityReason</summary>
        /// <param name="value">the value to convert to an instance of <see cref="CheckNameAvailabilityReason" />.</param>

        public static implicit operator CheckNameAvailabilityReason(string value)
        {
            return new CheckNameAvailabilityReason(value);
        }

        /// <summary>Implicit operator to convert CheckNameAvailabilityReason to string</summary>
        /// <param name="e">the value to convert to an instance of <see cref="CheckNameAvailabilityReason" />.</param>

        public static implicit operator string(Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e)
        {
            return e._value;
        }

        /// <summary>Overriding != operator for enum CheckNameAvailabilityReason</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are not equal to the same value</returns>
        public static bool operator !=(Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e1, Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e2)
        {
            return !e2.Equals(e1);
        }

        /// <summary>Overriding == operator for enum CheckNameAvailabilityReason</summary>
        /// <param name="e1">the value to compare against <paramref name="e2" /></param>
        /// <param name="e2">the value to compare against <paramref name="e1" /></param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public static bool operator ==(Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e1, Microsoft.Azure.PowerShell.Cmdlets.VoiceServices.Support.CheckNameAvailabilityReason e2)
        {
            return e2.Equals(e1);
        }
    }
}