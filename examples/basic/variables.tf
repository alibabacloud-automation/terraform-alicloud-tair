variable "region" {
  description = "The region where the Tair instance will be created."
  type        = string
  default     = "cn-hangzhou"
}

variable "tair_instance_name" {
  description = "The name of the Tair instance."
  type        = string
  default     = "tf-basic-tair"
}

variable "instance_class" {
  description = "The instance class of the Tair instance."
  type        = string
  default     = "tair.rdb.2g"
}

variable "password" {
  description = "The password for connecting to the Tair instance."
  type        = string
  default     = null
  sensitive   = true
}
