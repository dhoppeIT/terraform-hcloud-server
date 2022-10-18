module "hcloud_server" {
  source  = "dhoppeIT/server/hcloud"
  version = "~> 0.1"

  name        = local.server_name
  server_type = local.server_type
  image       = local.image

  create_server_network = local.create_server_network
  network_id            = data.hcloud_network.default.id
  ip                    = cidrhost(data.hcloud_network.default.ip_range, 2)
}
