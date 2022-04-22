# Module: aws_secretsmanager_secret_rotation

Provides a resource to manage AWS Secrets Manager secret rotation. To manage a secret, see the [`aws_secretsmanager_secret` resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret). To manage a secret value, see the [`aws_secretsmanager_secret_version` resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret_rotation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_rotation) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_rotation_lambda_arn"></a> [rotation\_lambda\_arn](#input\_rotation\_lambda\_arn) | Specifies the ARN of the Lambda function that can rotate the secret | `string` | n/a | yes |
| <a name="input_rotation_rules"></a> [rotation\_rules](#input\_rotation\_rules) | A structure that defines the rotation configuration for this secret | <pre>map(object({<br>    automatically_after_days = number<br>  }))</pre> | n/a | yes |
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Amazon Resource Name (ARN) of the secret |
| <a name="output_rotation_enabled"></a> [rotation\_enabled](#output\_rotation\_enabled) | Specifies whether automatic rotation is enabled for this secret |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->