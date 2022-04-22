##########################################################################
### secret
##########################################################################
output "secret_id" {
  description = "The ID of the secret"
  value       = try(module.secret.this[0].id, "")
}

output "secret_arn" {
  description = "The ARN of the secret"
  value       = try(module.secret.this[0].arn, "")
}

output "secret_replica" {
  description = "Attributes of a replica"
  value       = try(module.secret.this[0].replica, "")
}

##########################################################################
### secret_policy
##########################################################################
output "secret_policy_id" {
  description = "The ID of the secret policy"
  value       = try(module.secret_policy.this[0].id, "")
}

##########################################################################
### secret_rotation
##########################################################################
output "secret_rotation_id" {
  description = "Amazon Resource Name (ARN) of the secret"
  value       = try(module.secret_rotation.this[0].id, "")
}

output "secret_rotation_enabled" {
  description = "Specifies whether automatic rotation is enabled for this secret"
  value       = try(module.secret_rotation.this[0].rotation_enabled, "")
}
