

```hcl
module "ec2_instance" {
  source      = "github.com/devops-adeel/terraform-aws-ec2?ref=v0.1.0"
  application = "foo"
  api_name    = "bar"
  hcp_bucket  = "bucket_1234"
}
```
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.54.0 |
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.53.0 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.54.0 |
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | 0.53.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_name"></a> [api\_name](#input\_api\_name) | The name of the application to be used as common-name | `string` | n/a | yes |
| <a name="input_application"></a> [application](#input\_application) | The name of the application to be used as domain-name | `string` | n/a | yes |
| <a name="input_hcp_bucket"></a> [hcp\_bucket](#input\_hcp\_bucket) | Bucket name where HCP Packer image is referenced | `string` | n/a | yes |

## Outputs

No outputs.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_tag.default](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/ec2_tag) | resource |
| [aws_instance.default](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/instance) | resource |
| [aws_route53_record.default](https://registry.terraform.io/providers/hashicorp/aws/4.54.0/docs/resources/route53_record) | resource |
| [hcp_packer_image.default](https://registry.terraform.io/providers/hashicorp/hcp/0.53.0/docs/data-sources/packer_image) | data source |
| [hcp_packer_iteration.default](https://registry.terraform.io/providers/hashicorp/hcp/0.53.0/docs/data-sources/packer_iteration) | data source |


