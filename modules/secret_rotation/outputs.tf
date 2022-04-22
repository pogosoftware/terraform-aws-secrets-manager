output "id" {
  description = "Amazon Resource Name (ARN) of the secret"
  value       = try(aws_secretsmanager_secret_rotation.this[0].id, "")
}

output "rotation_enabled" {
  description = "Specifies whether automatic rotation is enabled for this secret"
  value       = try(aws_secretsmanager_secret_rotation.this[0].rotation_enabled, "")
}
