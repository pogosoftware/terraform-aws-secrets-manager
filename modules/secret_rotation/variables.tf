##########################################################################
### REQUIRED
##########################################################################
variable "secret_id" {
  description = "Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist"
  type        = string
}

variable "rotation_lambda_arn" {
  description = "Specifies the ARN of the Lambda function that can rotate the secret"
  type        = string
}

variable "rotation_rules" {
  description = "A structure that defines the rotation configuration for this secret"
  type = map(object({
    automatically_after_days = number
  }))
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}
