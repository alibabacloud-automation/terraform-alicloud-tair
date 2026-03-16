output "tair_instance_id" {
  description = "The ID of the Tair instance."
  value       = module.tair.tair_instance_id
}

output "connection_domain" {
  description = "The internal connection domain of the Tair instance."
  value       = module.tair.connection_domain
}

output "port" {
  description = "The service port of the Tair instance."
  value       = module.tair.port
}

output "status" {
  description = "The status of the Tair instance."
  value       = module.tair.status
}

output "architecture_type" {
  description = "The architecture type of the Tair instance."
  value       = module.tair.architecture_type
}

output "max_connections" {
  description = "The maximum number of connections supported."
  value       = module.tair.max_connections
}
