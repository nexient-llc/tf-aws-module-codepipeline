# Complete CodePipeline Example
This example demonstrates creating a CodePipeline pipeline. It includes 2 stages. First stage is a source S3 bucket that triggers the pipeline with an event bridge notification. The second stage is a manual approval stage.


## Provider requirements
Make sure a `provider.tf` file is created with the below contents inside the `examples/with_tls_enforced` directory
```shell
provider "aws" {
  profile = "<profile_name>"
  region  = "<aws_region>"
}
# Used to create a random integer postfix for aws resources
provider "random" {}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_codepipeline"></a> [codepipeline](#module\_codepipeline) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the pipeline | `string` | n/a | yes |
| <a name="input_create_s3_source"></a> [create\_s3\_source](#input\_create\_s3\_source) | Create S3 source bucket for CodePipeline. | `string` | `false` | no |
| <a name="input_source_s3_bucket"></a> [source\_s3\_bucket](#input\_source\_s3\_bucket) | Name of the S3 source bucket. | `string` | `null` | no |
| <a name="input_stages"></a> [stages](#input\_stages) | One or more stage blocks. | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | An arbitrary map of tags that can be added to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The codepipeline ID |
| <a name="output_arn"></a> [arn](#output\_arn) | The codepipeline ARN |
| <a name="output_source_s3_bucket_arn"></a> [source\_s3\_bucket\_arn](#output\_source\_s3\_bucket\_arn) | The codepipeline source s3 bucket ARN |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
