variable "region" {
  description = "The region where the Tair instance will be created."
  type        = string
  default     = "cn-hangzhou"
}

variable "tair_instance_name" {
  description = "The name of the Tair instance."
  type        = string
  default     = "tf-advanced-tair"
}

variable "instance_type" {
  description = "The storage type of the Tair instance."
  type        = string
  default     = "tair_rdb"
}

variable "instance_class" {
  description = "The instance class of the Tair instance."
  type        = string
  default     = "tair.rdb.4g"
}

variable "password" {
  description = "The password for connecting to the Tair instance."
  type        = string
  default     = null
  sensitive   = true
}

variable "shard_count" {
  description = "The number of data shards."
  type        = number
  default     = 2
}

variable "read_only_count" {
  description = "The number of read-only nodes."
  type        = number
  default     = 0
}

variable "ssl_enabled" {
  description = "Whether to enable SSL encryption."
  type        = string
  default     = "Disable"
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

variable "security_ips" {
  description = "The IP addresses in the whitelist."
  type        = list(string)
  default     = ["127.0.0.1"]
}
