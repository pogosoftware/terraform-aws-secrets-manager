# terraform-aws-secrets-manager

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_secret"></a> [secret](#module\_secret) | ./modules/secret | n/a |
| <a name="module_secret_policy"></a> [secret\_policy](#module\_secret\_policy) | ./modules/secret_policy | n/a |
| <a name="module_secret_rotation"></a> [secret\_rotation](#module\_secret\_rotation) | ./modules/secret_rotation | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_secret"></a> [create\_secret](#input\_create\_secret) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_create_secret_policy"></a> [create\_secret\_policy](#input\_create\_secret\_policy) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_create_secret_rotation"></a> [create\_secret\_rotation](#input\_create\_secret\_rotation) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the secret | `string` | `null` | no |
| <a name="input_force_overwrite_replica_secret"></a> [force\_overwrite\_replica\_secret](#input\_force\_overwrite\_replica\_secret) | Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region | `bool` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Required if `create_secret` is `true`. Friendly name of the new secret | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | Required if `create_secret_policy` is `true`. Valid JSON document representing a resource policy | `string` | n/a | yes |
| <a name="input_recovery_window_in_days"></a> [recovery\_window\_in\_days](#input\_recovery\_window\_in\_days) | Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from `7` to `30` days. The default value is `30` | `number` | `30` | no |
| <a name="input_replica"></a> [replica](#input\_replica) | Configuration block to support secret replication | `map(any)` | `{}` | no |
| <a name="input_rotation_lambda_arn"></a> [rotation\_lambda\_arn](#input\_rotation\_lambda\_arn) | Required if `create_secret_rotation` is `true`. Specifies the ARN of the Lambda function that can rotate the secret | `string` | n/a | yes |
| <a name="input_rotation_rules"></a> [rotation\_rules](#input\_rotation\_rules) | Required if `create_secret_rotation` is `true`. A structure that defines the rotation configuration for this secret | <pre>map(object({<br>    automatically_after_days = number<br>  }))</pre> | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_use_name_prefix"></a> [use\_name\_prefix](#input\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret_arn"></a> [secret\_arn](#output\_secret\_arn) | The ARN of the secret |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | The ID of the secret |
| <a name="output_secret_policy_id"></a> [secret\_policy\_id](#output\_secret\_policy\_id) | The ID of the secret policy |
| <a name="output_secret_replica"></a> [secret\_replica](#output\_secret\_replica) | Attributes of a replica |
| <a name="output_secret_rotation_enabled"></a> [secret\_rotation\_enabled](#output\_secret\_rotation\_enabled) | Specifies whether automatic rotation is enabled for this secret |
| <a name="output_secret_rotation_id"></a> [secret\_rotation\_id](#output\_secret\_rotation\_id) | Amazon Resource Name (ARN) of the secret |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->