output "id" {
  description = " Unique ID of the server"
  value       = module.hcloud_server.id
}

output "name" {
  description = "Name of the server"
  value       = module.hcloud_server.name
}

output "server_type" {
  description = "Name of the server type"
  value       = module.hcloud_server.server_type
}

output "image" {
  description = "Name or ID of the image the server was created from"
  value       = module.hcloud_server.image
}

output "location" {
  description = "The location name"
  value       = module.hcloud_server.location
}

output "datacenter" {
  description = "The datacenter name"
  value       = module.hcloud_server.datacenter
}

output "backups" {
  description = "Whether backups are enabled"
  value       = module.hcloud_server.backups
}

output "iso" {
  description = "ID or Name of the mounted ISO image"
  value       = module.hcloud_server.iso
}

output "ipv4_address" {
  description = "The IPv4 address"
  value       = module.hcloud_server.ipv4_address
}

output "ipv6_address" {
  description = "The first IPv6 address of the assigned network"
  value       = module.hcloud_server.ipv6_address
}

output "ipv6_network" {
  description = "The IPv6 network"
  value       = module.hcloud_server.ipv6_network
}

output "status" {
  description = "The status of the server"
  value       = module.hcloud_server.status
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = module.hcloud_server.labels
}

output "network" {
  description = "Private Network the server shall be attached to"
  value       = module.hcloud_server.network
}

output "firewall_ids" {
  description = "Firewall IDs the server is attached to"
  value       = module.hcloud_server.firewall_ids
}

output "placement_group_id" {
  description = "Placement Group ID the server is assigned to"
  value       = module.hcloud_server.placement_group_id
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = module.hcloud_server.delete_protection
}

output "rebuild_protection" {
  description = "Whether rebuild protection is enabled"
  value       = module.hcloud_server.rebuild_protection
}

output "shutdown_before_deletion" {
  description = "Whether the server will try to shut down gracefully before being deleted"
  value       = module.hcloud_server.shutdown_before_deletion
}

output "primary_disk_size" {
  description = "The size of the primary disk in GB"
  value       = module.hcloud_server.primary_disk_size
}
