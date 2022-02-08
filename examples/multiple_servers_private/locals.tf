locals {
  network_name     = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = ["10.0.0.0/24"]
  network_zone    = "eu-central"

  count       = 3
  server_name = "debian"
  server_type = "cx11"
  image       = "debian-10"

  create_server_network = true
}
