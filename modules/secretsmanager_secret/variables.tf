##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "Friendly name of the new secret"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create" {
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

variable "policy" {
  default     = null
  description = "Valid JSON document representing a resource policy"
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
