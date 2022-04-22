##########################################################################
### REQUIRED
##########################################################################
variable "secret_arn" {
  description = "Secret ARN"
  type        = string
}

variable "policy" {
  description = "Valid JSON document representing a resource policy"
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
