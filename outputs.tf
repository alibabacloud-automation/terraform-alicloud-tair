output "id" {
  description = "The ID of the Tair instance."
  value       = alicloud_redis_tair_instance.this.id
}

output "tair_instance_id" {
  description = "The instance ID of the Tair instance."
  value       = alicloud_redis_tair_instance.this.tair_instance_id
}

output "connection_domain" {
  description = "The internal connection domain of the Tair instance."
  value       = alicloud_redis_tair_instance.this.connection_domain
}

output "port" {
  description = "The service port of the Tair instance."
  value       = alicloud_redis_tair_instance.this.port
}

output "status" {
  description = "The status of the Tair instance."
  value       = alicloud_redis_tair_instance.this.status
}

output "create_time" {
  description = "The creation time of the Tair instance."
  value       = alicloud_redis_tair_instance.this.create_time
}

output "max_connections" {
  description = "The maximum number of connections supported by the Tair instance."
  value       = alicloud_redis_tair_instance.this.max_connections
}

output "architecture_type" {
  description = "The architecture type of the Tair instance."
  value       = alicloud_redis_tair_instance.this.architecture_type
}

output "network_type" {
  description = "The network type of the Tair instance."
  value       = alicloud_redis_tair_instance.this.network_type
}

output "region_id" {
  description = "The region ID of the Tair instance."
  value       = alicloud_redis_tair_instance.this.region_id
}
