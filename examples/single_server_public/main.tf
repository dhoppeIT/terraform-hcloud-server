module "hcloud_server" {
  source  = "dhoppeIT/server/hcloud"
  version = "~> 0.1"

  name        = local.name
  server_type = local.server_type
  image       = local.image
}
