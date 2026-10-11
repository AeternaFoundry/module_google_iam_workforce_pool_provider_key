resource "google_iam_workforce_pool_provider_key" "iam_workforce_pool_provider_keys" {
  for_each = var.iam_workforce_pool_provider_keys

  key_id            = each.value.key_id
  location          = each.value.location
  provider_id       = each.value.provider_id
  use               = each.value.use
  workforce_pool_id = each.value.workforce_pool_id
  deletion_policy   = each.value.deletion_policy

  key_data {
    key_spec = each.value.key_data.key_spec
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

