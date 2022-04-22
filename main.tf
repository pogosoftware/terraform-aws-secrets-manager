module "secret" {
  source = "./modules/secret"

  create = var.create_secret

  name                           = var.name
  use_name_prefix                = var.use_name_prefix
  description                    = var.description
  kms_key_id                     = var.kms_key_id
  recovery_window_in_days        = var.recovery_window_in_days
  replica                        = var.replica
  force_overwrite_replica_secret = var.force_overwrite_replica_secret

  tags = var.tags
}

module "secret_policy" {
  source = "./modules/secret_policy"

  create = var.create_secret_policy

  secret_arn = module.secret.arn
  policy     = var.policy
}

module "secret_rotation" {
  source = "./modules/secret_rotation"

  create = var.create_secret_rotation

  secret_id           = module.secret.id
  rotation_lambda_arn = var.rotation_lambda_arn
  rotation_rules      = var.rotation_rules
}
