resource "hcloud_server" "this" {
  name        = var.name
  server_type = var.server_type
  image       = var.image

  location                   = var.location
  datacenter                 = var.datacenter
  user_data                  = var.user_data
  ssh_keys                   = var.ssh_keys
  keep_disk                  = var.keep_disk
  iso                        = var.iso
  rescue                     = var.rescue
  labels                     = var.labels
  backups                    = var.backups
  firewall_ids               = var.firewall_ids
  ignore_remote_firewall_ids = var.ignore_remote_firewall_ids
  placement_group_id         = var.placement_group_id
  delete_protection          = var.delete_protection
  rebuild_protection         = var.rebuild_protection
  allow_deprecated_images    = var.allow_deprecated_images
  shutdown_before_deletion   = var.shutdown_before_deletion

  dynamic "public_net" {
    for_each = length(var.public_net) > 0 ? [var.public_net] : []

    content {
      ipv4_enabled = lookup(public_net.value, "ipv4_enabled", true)
      ipv4         = lookup(public_net.value, "ipv4", null)
      ipv6_enabled = lookup(public_net.value, "ipv6_enabled", true)
      ipv6         = lookup(public_net.value, "ipv6", null)
    }
  }

  dynamic "network" {
    for_each = var.network != null ? [var.network] : []

    content {
      network_id = network.value.network_id
      ip         = lookup(network.value, "ip", null)
      alias_ips  = lookup(network.value, "alias_ips", [])
    }
  }
}
