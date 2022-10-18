output "server_id" {
  description = "Unique ID of the server"
  value       = module.hcloud_server.id
}

output "server_name" {
  description = "Name of the server"
  value       = module.hcloud_server.name
}

output "server_ipv4_address_public" {
  description = "The public IPv4 address"
  value       = module.hcloud_server.ipv4_address_public
}
