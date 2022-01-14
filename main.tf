resource "hcloud_server" "default" {
  name               = var.name
  server_type        = var.server_type
  image              = var.image
  location           = var.location
  datacenter         = var.datacenter
  user_data          = var.user_data
  ssh_keys           = var.ssh_keys
  keep_disk          = var.keep_disk
  iso                = var.iso
  rescue             = var.rescue
  labels             = var.labels
  backups            = var.backups
  firewall_ids       = var.firewall_ids
  delete_protection  = var.delete_protection
  rebuild_protection = var.rebuild_protection
}

resource "hcloud_server_network" "default" {
  count = var.create_server_network ? 1 : 0

  server_id  = hcloud_server.default.id
  alias_ips  = var.alias_ips
  network_id = var.network_id
  subnet_id  = var.subnet_id
  ip         = var.ip
}