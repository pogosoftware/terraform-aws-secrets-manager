resource "aws_secretsmanager_secret" "this" {
  count = var.create ? 1 : 0

  name                           = local.name
  name_prefix                    = local.name_prefix
  description                    = var.description
  kms_key_id                     = var.kms_key_id
  recovery_window_in_days        = var.recovery_window_in_days
  force_overwrite_replica_secret = var.force_overwrite_replica_secret

  dynamic "replica" {
    for_each = var.replica

    content {
      kms_key_id = lookup(each.value, "kms_key_id", null)
      region     = each.value.region
    }
  }

  tags = merge({ "Name" = var.name }, var.tags)
}
