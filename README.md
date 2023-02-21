## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2_instance"></a> [ec2\_instance](#module\_ec2\_instance) | ./modules/ec2 | n/a |
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ./modules/ecr | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_key"></a> [access\_key](#input\_access\_key) | n/a | `string` | `"AKIA5YYWHVSYWKX2D4BY"` | no |
| <a name="input_ami"></a> [ami](#input\_ami) | AMI to use for the instance | `string` | `""` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | AZ to start the instance in | `string` | `""` | no |
| <a name="input_ecr_repo_name"></a> [ecr\_repo\_name](#input\_ecr\_repo\_name) | Name of the repository. | `string` | `""` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | The tag mutability setting for the repository. | `string` | `""` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance. | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to launch servers. | `string` | `"us-east-2"` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false). | `bool` | `"true"` | no |
| <a name="input_secret_key"></a> [secret\_key](#input\_secret\_key) | AWS SECRET\_KEY | `string` | `"hhkPVLKcrp08V4DmnqQZhQQ8Wiye38cE/J5ZV04c"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of security group IDs to associate with. | `list(string)` | `null` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | VPC Subnet ID to launch in. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tag-name | `map(string)` | <pre>{<br>  "env": "elitepro"<br>}</pre> | no |

## Outputs

No outputs.
