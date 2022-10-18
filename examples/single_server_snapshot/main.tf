module "hcloud_server" {
  source  = "dhoppeIT/server/hcloud"
  version = "~> 0.2"

  name        = local.server_name
  server_type = local.server_type
  image       = local.image

  create_snapshot = local.create_snapshot
  description     = local.description
}
