module "hcloud_server" {
  source = "../../"

  name        = "example-server"
  image       = "debian-13"
  server_type = "cx22"

  location = "nbg1"
  firewall_ids = [
    data.hcloud_firewall.this.id
  ]
  network = {
    network_id = data.hcloud_network.this.id
    ip = cidrhost(
      cidrsubnet(data.hcloud_network.this.ip_range, 16, 1),
      2
    )
  }
  ssh_keys = [
    data.hcloud_ssh_key.this.id
  ]
}
