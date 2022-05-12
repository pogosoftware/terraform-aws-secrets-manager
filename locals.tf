locals {
  secret_id = var.create_secret ? module.secret.id : var.secret_id
}
