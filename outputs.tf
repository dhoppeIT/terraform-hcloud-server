output "id" {
  description = " Unique ID of the server"
  value       = hcloud_server.this.id
}

output "name" {
  description = "Name of the server"
  value       = hcloud_server.this.name
}

output "server_type" {
  description = "Name of the server type"
  value       = hcloud_server.this.server_type
}

output "image" {
  description = "Name or ID of the image the server was created from"
  value       = hcloud_server.this.image
}

output "location" {
  description = "The location name"
  value       = hcloud_server.this.location
}

output "datacenter" {
  description = "The datacenter name"
  value       = hcloud_server.this.datacenter
}

output "backups" {
  description = "Whether backups are enabled"
  value       = hcloud_server.this.backups
}

output "iso" {
  description = "ID or Name of the mounted ISO image"
  value       = hcloud_server.this.iso
}

output "ipv4_address" {
  description = "The IPv4 address"
  value       = hcloud_server.this.ipv4_address
}

output "ipv6_address" {
  description = "The first IPv6 address of the assigned network"
  value       = hcloud_server.this.ipv6_address
}

output "ipv6_network" {
  description = "The IPv6 network"
  value       = hcloud_server.this.ipv6_network
}

output "status" {
  description = "The status of the server"
  value       = hcloud_server.this.status
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = hcloud_server.this.labels
}

output "network" {
  description = "Private Network the server shall be attached to"
  value       = hcloud_server.this.network
}

output "firewall_ids" {
  description = "Firewall IDs the server is attached to"
  value       = hcloud_server.this.firewall_ids
}

output "placement_group_id" {
  description = "Placement Group ID the server is assigned to"
  value       = hcloud_server.this.placement_group_id
}

output "delete_protection" {
  description = "Whether delete protection is enabled"
  value       = hcloud_server.this.delete_protection
}

output "rebuild_protection" {
  description = "Whether rebuild protection is enabled"
  value       = hcloud_server.this.rebuild_protection
}

output "shutdown_before_deletion" {
  description = "Whether the server will try to shut down gracefully before being deleted"
  value       = hcloud_server.this.shutdown_before_deletion
}

output "primary_disk_size" {
  description = "The size of the primary disk in GB"
  value       = hcloud_server.this.primary_disk_size
}
