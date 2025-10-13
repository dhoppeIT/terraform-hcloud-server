module "hcloud_server" {
  source = "../../"

  name        = "example-server"
  server_type = "cx22"
  image       = "debian-13"
}
