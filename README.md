# Terraform IAM NewRelic integration
This module will create AWS IAM entities to allow integration with NewRelic

[![lint](https://github.com/flaconi/terraform-aws-newrelic-integration/workflows/lint/badge.svg)](https://github.com/flaconi/terraform-aws-newrelic-integration/actions?query=workflow%3Alint)
[![test](https://github.com/flaconi/terraform-aws-newrelic-integration/workflows/test/badge.svg)](https://github.com/flaconi/terraform-aws-newrelic-integration/actions?query=workflow%3Atest)
[![Tag](https://img.shields.io/github/tag/flaconi/terraform-aws-newrelic-integration.svg)](https://github.com/flaconi/terraform-aws-newrelic-integration/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- TFDOCS_HEADER_START -->


<!-- TFDOCS_HEADER_END -->

<!-- TFDOCS_PROVIDER_START -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

<!-- TFDOCS_PROVIDER_END -->

<!-- TFDOCS_REQUIREMENTS_START -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

<!-- TFDOCS_REQUIREMENTS_END -->

 <!-- TFDOCS_INPUTS_START -->
## Required Inputs

The following input variables are required:

### <a name="input_newrelic_aws_account"></a> [newrelic\_aws\_account](#input\_newrelic\_aws\_account)

Description: n/a

Type: `string`

### <a name="input_newrelic_external_id"></a> [newrelic\_external\_id](#input\_newrelic\_external\_id)

Description: n/a

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_tags"></a> [tags](#input\_tags)

Description: A mapping of tags to assign to all resources

Type: `map(string)`

Default: `{}`

 <!-- TFDOCS_INPUTS_END -->

 <!-- TFDOCS_OUTPUTS_START -->
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | n/a |

<!-- TFDOCS_OUTPUTS_END -->

**[MIT License](LICENSE)**

Copyright (c) 2023 **[Flaconi GmbH](https://github.com/flaconi)**
