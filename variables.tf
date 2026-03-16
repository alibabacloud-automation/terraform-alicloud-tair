variable "tair_instance_name" {
  description = "The name of the Tair instance."
  type        = string
  default     = "tf-tair-instance"
}

variable "instance_type" {
  description = "The storage type of the Tair instance. Valid values: tair_rdb, tair_scm, tair_essd."
  type        = string
  default     = "tair_rdb"
}

variable "instance_class" {
  description = "The instance class of the Tair instance, e.g. tair.rdb.2g."
  type        = string
  default     = "tair.rdb.2g"
}

variable "zone_id" {
  description = "The ID of the availability zone where the Tair instance will be created."
  type        = string
  default     = null
}

variable "vpc_id" {
  description = "The ID of the VPC where the Tair instance will be deployed."
  type        = string
}

variable "vswitch_id" {
  description = "The ID of the vSwitch where the Tair instance will be deployed."
  type        = string
}

variable "shard_count" {
  description = "The number of data shards for the Tair instance. Omit for standard architecture. Set to 2-32 for cluster architecture."
  type        = number
  default     = null
}

variable "password" {
  description = "The password for connecting to the Tair instance."
  type        = string
  default     = null
  sensitive   = true
}

variable "vpc_auth_mode" {
  description = "The VPC authentication mode. Valid values: Open (password required), Close (password not required)."
  type        = string
  default     = "Open"
}

variable "security_ips" {
  description = "The IP addresses in the whitelist for the Tair instance."
  type        = list(string)
  default     = ["127.0.0.1"]
}

variable "payment_type" {
  description = "The billing method of the Tair instance. Valid values: Subscription, PayAsYouGo."
  type        = string
  default     = "PayAsYouGo"
}

variable "period" {
  description = "The subscription duration in months. Valid when payment_type is Subscription."
  type        = number
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the Tair instance."
  type        = map(string)
  default     = {}
}

variable "ssl_enabled" {
  description = "Whether to enable SSL encryption. Valid values: Enable, Disable."
  type        = string
  default     = "Disable"
}

variable "read_only_count" {
  description = "The number of read-only nodes for the Tair instance."
  type        = number
  default     = 0
}

variable "engine_version" {
  description = "The engine version of the Tair instance."
  type        = string
  default     = "5.0"
}

variable "port" {
  description = "The service port of the Tair instance."
  type        = number
  default     = 6379
}
