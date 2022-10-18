locals {
  server_name = "debian"
  server_type = "cx11"
  image       = "debian-10"

  create_snapshot = true
  description     = "${local.server_name}_${formatdate("YYYY-MM-DD", timestamp())}"
}
