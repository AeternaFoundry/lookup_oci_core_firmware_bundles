variable "core_firmware_bundles_lookup" {
  description = <<EOT
Map of core_firmware_bundles_lookup, attributes below
Required:
    - platform
Optional:
    - compartment_id
    - is_default_bundle
    - lifecycle_state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    platform          = string
    compartment_id    = optional(string)
    is_default_bundle = optional(bool)
    lifecycle_state   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

