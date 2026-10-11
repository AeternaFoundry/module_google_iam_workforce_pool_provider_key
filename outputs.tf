output "iam_workforce_pool_provider_keys_id" {
  description = "Map of id values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no id are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workforce_pool_provider_keys_deletion_policy" {
  description = "Map of deletion_policy values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "iam_workforce_pool_provider_keys_expire_time" {
  description = "Map of expire_time values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no expire_time are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "iam_workforce_pool_provider_keys_key_data" {
  description = "Map of key_data values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no key_data are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => one(v.key_data) if v.key_data != null && length(v.key_data) > 0 }
}
output "iam_workforce_pool_provider_keys_key_id" {
  description = "Map of key_id values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no key_id are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "iam_workforce_pool_provider_keys_location" {
  description = "Map of location values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no location are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.location if v.location != null && length(v.location) > 0 }
}
output "iam_workforce_pool_provider_keys_name" {
  description = "Map of name values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no name are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_workforce_pool_provider_keys_provider_id" {
  description = "Map of provider_id values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no provider_id are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.provider_id if v.provider_id != null && length(v.provider_id) > 0 }
}
output "iam_workforce_pool_provider_keys_state" {
  description = "Map of state values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no state are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iam_workforce_pool_provider_keys_use" {
  description = "Map of use values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no use are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.use if v.use != null && length(v.use) > 0 }
}
output "iam_workforce_pool_provider_keys_workforce_pool_id" {
  description = "Map of workforce_pool_id values across all iam_workforce_pool_provider_keys, keyed the same as var.iam_workforce_pool_provider_keys except keys with no workforce_pool_id are omitted"
  value       = { for k, v in google_iam_workforce_pool_provider_key.iam_workforce_pool_provider_keys : k => v.workforce_pool_id if v.workforce_pool_id != null && length(v.workforce_pool_id) > 0 }
}

