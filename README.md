# terraform-aws-cloudfront

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.24 |
| aws | >= v2.70.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= v2.70.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| acm\_cert\_arn | n/a | `string` | n/a | yes |
| aliases | n/a | `list(string)` | n/a | yes |
| allowed\_methods | n/a | `list(string)` | <pre>[<br>  "DELETE",<br>  "GET",<br>  "HEAD",<br>  "OPTIONS",<br>  "PATCH",<br>  "POST",<br>  "PUT"<br>]</pre> | no |
| bucket\_regional\_domain\_name | n/a | `string` | n/a | yes |
| cached\_methods | n/a | `list(string)` | <pre>[<br>  "GET",<br>  "HEAD"<br>]</pre> | no |
| cf\_access\_identity\_path | n/a | `string` | `""` | no |
| cf\_default\_cert | n/a | `bool` | `true` | no |
| compress | n/a | `bool` | `true` | no |
| default\_ttl | n/a | `number` | `3600` | no |
| enabled | n/a | `bool` | `true` | no |
| environment | n/a | `string` | `"production"` | no |
| ipv6\_enabled | n/a | `bool` | `false` | no |
| max\_ttl | n/a | `number` | `86400` | no |
| min\_ttl | n/a | `number` | `0` | no |
| price\_class | n/a | `string` | `"PriceClass_All"` | no |
| restrict\_locations | n/a | `list(string)` | `[]` | no |
| restrict\_type | n/a | `string` | `"none"` | no |
| ssl\_method | n/a | `string` | `"sni-only"` | no |
| ssl\_protocol\_version | n/a | `string` | `"TLSv1.2_2019"` | no |
| viewer\_protocol\_policy | n/a | `string` | `"allow-all"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cf\_aliases | Extra CNAMEs of AWS CloudFront |
| cf\_arn | ARN of AWS CloudFront distribution |
| cf\_domain\_name | Domain name corresponding to the distribution |

