##########################################################################
### secret
##########################################################################
variable "name" {
  default     = null
  description = "Required if `create_secret` is `true`. Friendly name of the new secret"
  type        = string
}

variable "create_secret" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "description" {
  default     = null
  description = "Description of the secret"
  type        = string
}

variable "kms_key_id" {
  default     = null
  description = "ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time."
  type        = string
}

variable "recovery_window_in_days" {
  default     = 30
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from `7` to `30` days. The default value is `30`"
  type        = number
}

variable "replica" {
  default     = {}
  description = "Configuration block to support secret replication"
  type        = map(any)
}

variable "force_overwrite_replica_secret" {
  default     = null
  description = "Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region"
  type        = bool
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "use_name_prefix" {
  default     = true
  description = "Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix"
  type        = bool
}

##########################################################################
### secret_policy
##########################################################################
variable "create_secret_policy" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "policy" {
  description = "Required if `create_secret_policy` is `true`. Valid JSON document representing a resource policy"
  type        = string
}

##########################################################################
### secret_rotation
##########################################################################
variable "create_secret_rotation" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "rotation_lambda_arn" {
  description = "Required if `create_secret_rotation` is `true`. Specifies the ARN of the Lambda function that can rotate the secret"
  type        = string
}

variable "rotation_rules" {
  description = "Required if `create_secret_rotation` is `true`. A structure that defines the rotation configuration for this secret"
  type = map(object({
    automatically_after_days = number
  }))
}
