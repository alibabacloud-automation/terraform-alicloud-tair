# terraform-alicloud-tair

English | [简体中文](https://github.com/alibabacloud-automation/terraform-alicloud-tair/blob/main/README-CN.md)

Terraform module which creates [Tair (Redis OSS-Compatible)](https://www.alibabacloud.com/help/en/tair/) instance on Alibaba Cloud. This module provides similar functionality to Google Cloud Memorystore Redis, enabling you to provision a fully managed, in-memory data store that is compatible with open-source Redis.

## Usage

Create a basic Tair instance with default configuration:

```terraform
module "tair" {
  source  = "alibabacloud-automation/tair/alicloud"

  tair_instance_name = "my-tair-instance"
  instance_class     = "tair.rdb.2g"
  vpc_id             = "vpc-xxxxx"
  vswitch_id         = "vsw-xxxxx"
  password           = "YourSecurePassword123!"
}
```

## Examples

* [Basic Example](https://github.com/alibabacloud-automation/terraform-alicloud-tair/tree/main/examples/basic)
* [Advanced Example](https://github.com/alibabacloud-automation/terraform-alicloud-tair/tree/main/examples/advanced)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.206.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | >= 1.206.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_redis_tair_instance.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/redis_tair_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The engine version of the Tair instance. | `string` | `"5.0"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The instance class of the Tair instance, e.g. tair.rdb.2g. | `string` | `"tair.rdb.2g"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The storage type of the Tair instance. Valid values: tair\_rdb, tair\_scm, tair\_essd. | `string` | `"tair_rdb"` | no |
| <a name="input_password"></a> [password](#input\_password) | The password for connecting to the Tair instance. | `string` | `null` | no |
| <a name="input_payment_type"></a> [payment\_type](#input\_payment\_type) | The billing method of the Tair instance. Valid values: Subscription, PayAsYouGo. | `string` | `"PayAsYouGo"` | no |
| <a name="input_period"></a> [period](#input\_period) | The subscription duration in months. Valid when payment\_type is Subscription. | `number` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | The service port of the Tair instance. | `number` | `6379` | no |
| <a name="input_read_only_count"></a> [read\_only\_count](#input\_read\_only\_count) | The number of read-only nodes for the Tair instance. | `number` | `0` | no |
| <a name="input_security_ips"></a> [security\_ips](#input\_security\_ips) | The IP addresses in the whitelist for the Tair instance. | `list(string)` | <pre>[<br/>  "127.0.0.1"<br/>]</pre> | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The number of data shards for the Tair instance. Omit for standard architecture. Set to 2-32 for cluster architecture. | `number` | `null` | no |
| <a name="input_ssl_enabled"></a> [ssl\_enabled](#input\_ssl\_enabled) | Whether to enable SSL encryption. Valid values: Enable, Disable. | `string` | `"Disable"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the Tair instance. | `map(string)` | `{}` | no |
| <a name="input_tair_instance_name"></a> [tair\_instance\_name](#input\_tair\_instance\_name) | The name of the Tair instance. | `string` | `"tf-tair-instance"` | no |
| <a name="input_vpc_auth_mode"></a> [vpc\_auth\_mode](#input\_vpc\_auth\_mode) | The VPC authentication mode. Valid values: Open (password required), Close (password not required). | `string` | `"Open"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC where the Tair instance will be deployed. | `string` | n/a | yes |
| <a name="input_vswitch_id"></a> [vswitch\_id](#input\_vswitch\_id) | The ID of the vSwitch where the Tair instance will be deployed. | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The ID of the availability zone where the Tair instance will be created. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_architecture_type"></a> [architecture\_type](#output\_architecture\_type) | The architecture type of the Tair instance. |
| <a name="output_connection_domain"></a> [connection\_domain](#output\_connection\_domain) | The internal connection domain of the Tair instance. |
| <a name="output_create_time"></a> [create\_time](#output\_create\_time) | The creation time of the Tair instance. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Tair instance. |
| <a name="output_max_connections"></a> [max\_connections](#output\_max\_connections) | The maximum number of connections supported by the Tair instance. |
| <a name="output_network_type"></a> [network\_type](#output\_network\_type) | The network type of the Tair instance. |
| <a name="output_port"></a> [port](#output\_port) | The service port of the Tair instance. |
| <a name="output_region_id"></a> [region\_id](#output\_region\_id) | The region ID of the Tair instance. |
| <a name="output_status"></a> [status](#output\_status) | The status of the Tair instance. |
| <a name="output_tair_instance_id"></a> [tair\_instance\_id](#output\_tair\_instance\_id) | The instance ID of the Tair instance. |
<!-- END_TF_DOCS -->

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com).

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
