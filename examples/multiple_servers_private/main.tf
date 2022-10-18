module "hcloud_network" {
  source  = "dhoppeIT/network/hcloud"
  version = "~> 0.3"

  name             = local.network_name
  ip_range_network = local.ip_range_network

  type            = local.type
  ip_range_subnet = local.ip_range_subnet
  network_zone    = local.network_zone
}

module "hcloud_server" {
  source  = "dhoppeIT/server/hcloud"
  version = "~> 0.1"

  count       = local.count
  name        = format("${local.server_name}%02d", count.index + 1)
  server_type = local.server_type
  image       = local.image

  create_server_network = local.create_server_network
  subnet_id             = module.hcloud_network.id_subnet[0]
  ip                    = cidrhost(module.hcloud_network.ip_range_subnet[0], 10 + count.index)
}
