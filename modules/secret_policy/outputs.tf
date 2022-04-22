output "id" {
  description = "The ID of the secret policy"
  value       = aws_secretsmanager_secret_policy.this[0].id
}
