# terraform-alicloud-tair

[English](https://github.com/alibabacloud-automation/terraform-alicloud-tair/blob/main/README.md) | 简体中文

在阿里云上创建 [Tair（Redis OSS 兼容版）](https://www.alibabacloud.com/help/en/tair/) 实例的 Terraform 模块。本模块提供与 Google Cloud Memorystore Redis 类似的功能，支持创建完全托管的、兼容开源 Redis 的内存数据存储服务。

## 使用方法

创建一个基础的 Tair 实例：

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

## 示例

* [基础示例](https://github.com/alibabacloud-automation/terraform-alicloud-tair/tree/main/examples/basic)
* [高级示例](https://github.com/alibabacloud-automation/terraform-alicloud-tair/tree/main/examples/advanced)

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

## 提交问题

如果您在使用此模块时遇到任何问题，请提交一个 [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) 并告知我们。

**注意：** 不建议在此仓库中提交问题。

## 作者

由阿里云 Terraform 团队创建和维护 (terraform@alibabacloud.com)。

## 许可证

MIT 许可。有关完整详细信息，请参阅 LICENSE。

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
