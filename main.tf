data "oci_core_firmware_bundles" "core_firmware_bundles_lookup" {
  for_each = var.core_firmware_bundles_lookup

  platform          = each.value.platform
  compartment_id    = each.value.compartment_id
  is_default_bundle = each.value.is_default_bundle
  lifecycle_state   = each.value.lifecycle_state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

