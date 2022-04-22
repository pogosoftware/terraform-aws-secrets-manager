resource "aws_secretsmanager_secret_policy" "this" {
  count = var.create ? 1 : 0

  secret_arn = var.secret_arn
  policy     = var.policy
}
