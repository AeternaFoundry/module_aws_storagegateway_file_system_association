variable "storagegateway_file_system_associations" {
  description = <<EOT
Map of storagegateway_file_system_associations, attributes below
Required:
    - gateway_arn
    - location_arn
    - password
    - username
Optional:
    - audit_destination_arn
    - region
    - tags
    - tags_all
    - cache_attributes (block):
        - cache_stale_timeout_in_seconds (optional)
EOT

  type = map(object({
    gateway_arn           = string
    location_arn          = string
    password              = string
    username              = string
    audit_destination_arn = optional(string)
    region                = optional(string)
    tags                  = optional(map(string))
    tags_all              = optional(map(string))
    cache_attributes = optional(object({
      cache_stale_timeout_in_seconds = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storagegateway_file_system_associations : (
        v.cache_attributes == null || (v.cache_attributes.cache_stale_timeout_in_seconds == null || ((contains([0], v.cache_attributes.cache_stale_timeout_in_seconds)) || (v.cache_attributes.cache_stale_timeout_in_seconds >= 300 && v.cache_attributes.cache_stale_timeout_in_seconds <= 2592000)))
      )
    ])
    error_message = "any of: must be one of: 0; must be between 300 and 2592000"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

