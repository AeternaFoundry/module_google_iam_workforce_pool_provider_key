variable "iam_workforce_pool_provider_keys" {
  description = <<EOT
Map of iam_workforce_pool_provider_keys, attributes below
Required:
    - key_id
    - location
    - provider_id
    - use
    - workforce_pool_id
    - key_data (block):
        - key_spec (required)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    key_id            = string
    location          = string
    provider_id       = string
    use               = string
    workforce_pool_id = string
    deletion_policy   = optional(string)
    key_data = object({
      key_spec = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_workforce_pool_provider_keys : (
        !startswith(v.key_id, "gcp-")
      )
    ])
    error_message = "[from ValidateWorkforcePoolProviderKeyId: must not start with \"gcp-\"]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

