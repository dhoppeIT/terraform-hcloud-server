output "id" {
  description = "Unique ID of the server"
  value       = hcloud_server.default.id
}

output "name" {
  description = "Name of the server"
  value       = hcloud_server.default.name
}

output "ipv4_address" {
  description = "The IPv4 address"
  value       = hcloud_server.default.ipv4_address
}
