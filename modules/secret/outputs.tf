output "id" {
  description = "The ID of the secret"
  value       = try(aws_secretsmanager_secret.this[0].id, "")
}

output "name" {
  description = "The name of the secret"
  value       = try(aws_secretsmanager_secret.this[0].name, "")
}

output "arn" {
  description = "The ARN of the secret"
  value       = try(aws_secretsmanager_secret.this[0].arn, "")
}

output "replica" {
  description = "Attributes of a replica"
  value       = try(aws_secretsmanager_secret.this[0].replica, "")
}
