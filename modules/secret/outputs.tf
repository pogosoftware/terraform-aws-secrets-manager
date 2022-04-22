output "id" {
  description = "The ID of the secret"
  value       = aws_secretsmanager_secret.this[0].id
}

output "arn" {
  description = "The ARN of the secret"
  value       = aws_secretsmanager_secret.this[0].arn
}

output "replica" {
  description = "Attributes of a replica"
  value       = aws_secretsmanager_secret.this[0].replica
}
