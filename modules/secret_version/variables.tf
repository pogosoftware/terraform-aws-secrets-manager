##########################################################################
### REQUIRED
##########################################################################
variable "secret_id" {
  description = "Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "secret_string" {
  default     = null
  description = "Specifies text data that you want to encrypt and store in this version of the secret. This is required if secret_binary is not set"
  type        = string
}

variable "secret_binary" {
  default     = null
  description = "Specifies binary data that you want to encrypt and store in this version of the secret. This is required if secret_string is not set. Needs to be encoded to base64"
  type        = string
}

variable "version_stages" {
  default     = []
  description = "Specifies a list of staging labels that are attached to this version of the secret. A staging label must be unique to a single version of the secret. If you specify a staging label that's already associated with a different version of the same secret then that staging label is automatically removed from the other version and attached to this version. If you do not specify a value, then AWS Secrets Manager automatically moves the staging label `AWSCURRENT` to this new version on creation."
  type        = list(string)
}
