output "core_firmware_bundles_lookup_id" {
  description = "Map of id values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_firmware_bundles_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_firmware_bundles_lookup_filter" {
  description = "Map of filter values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_firmware_bundles_lookup_firmware_bundles_collection" {
  description = "Map of firmware_bundles_collection values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no firmware_bundles_collection are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.firmware_bundles_collection if v.firmware_bundles_collection != null && length(v.firmware_bundles_collection) > 0 }
}
output "core_firmware_bundles_lookup_is_default_bundle" {
  description = "Map of is_default_bundle values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no is_default_bundle are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.is_default_bundle if v.is_default_bundle != null }
}
output "core_firmware_bundles_lookup_lifecycle_state" {
  description = "Map of lifecycle_state values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no lifecycle_state are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.lifecycle_state if v.lifecycle_state != null && length(v.lifecycle_state) > 0 }
}
output "core_firmware_bundles_lookup_platform" {
  description = "Map of platform values across all core_firmware_bundles_lookup, keyed the same as var.core_firmware_bundles_lookup except keys with no platform are omitted"
  value       = { for k, v in data.oci_core_firmware_bundles.core_firmware_bundles_lookup : k => v.platform if v.platform != null && length(v.platform) > 0 }
}

