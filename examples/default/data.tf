data "hcloud_firewall" "this" {
  name = "example-firewall"
}

data "hcloud_network" "this" {
  name = "example-network"
}

data "hcloud_ssh_key" "this" {
  name = "example-ssh-key"
}
