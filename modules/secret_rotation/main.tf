resource "aws_secretsmanager_secret_rotation" "this" {
  count = var.create ? 1 : 0

  secret_id           = var.secret_id
  rotation_lambda_arn = var.rotation_lambda_arn

  dynamic "rotation_rules" {
    for_each = var.rotation_rules

    content {
      automatically_after_days = each.value.automatically_after_days
    }
  }
}
