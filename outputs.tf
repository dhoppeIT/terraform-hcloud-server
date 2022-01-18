output "id" {
  description = "Unique ID of the server"
  value       = hcloud_server.default.id
}

output "name" {
  description = "Name of the server"
  value       = hcloud_server.default.name
}

output "ipv4_address_public" {
  description = "The public IPv4 address"
  value       = hcloud_server.default.ipv4_address
}

output "ipv4_address_private" {
  description = "The private IPv4 address"
  value       = one(hcloud_server_network.default[*].ip)
}
