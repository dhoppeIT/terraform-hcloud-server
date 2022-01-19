# terraform-hcloud-server

Terraform module to manage the Hetzner Cloud resource (hcloud_server, hcloud_server_network).

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

**Create one server (only public IP):**

```hcl
module "hcloud-server" {
  source = "dhoppeIT/server/hcloud"

  name        = "debian"
  server_type = "cx11"
  image       = "debian-10"
}
```

**Create one server (plus private IP):**

```hcl
data "hcloud_network" "default" {
  name = "private"
}

module "hcloud-server" {
  source = "dhoppeIT/server/hcloud"

  name        = "debian"
  server_type = "cx11"
  image       = "debian-10"

  create_server_network = true
  network_id            = data.hcloud_network.default.id
  ip                    = cidrhost("${data.hcloud_network.default.ip_range}", 2)
}
```

**Create multiple servers:**

```hcl
module "hcloud-network" {
  source = "dhoppeIT/network/hcloud"

  name             = "private"
  ip_range_network = "10.0.0.0/16"

  type            = "cloud"
  ip_range_subnet = ["10.0.0.0/24"]
  network_zone    = "eu-central"
}

module "hcloud-server" {
  source = "dhoppeIT/server/hcloud"

  count       = 3
  name        = format("debian%02d", count.index + 1)
  server_type = "cx11"
  image       = "debian-10"

  create_server_network = true
  subnet_id             = module.hcloud-network.id_subnet[0]
  ip                    = cidrhost("${module.hcloud-network.ip_range_subnet[0]}", 10 + count.index)
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.0.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.0.0, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_server.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |
| [hcloud_server_network.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_ips"></a> [alias\_ips](#input\_alias\_ips) | Additional IPs to be assigned to this server | `list(string)` | `[]` | no |
| <a name="input_backups"></a> [backups](#input\_backups) | Enable or disable backups | `bool` | `false` | no |
| <a name="input_create_server_network"></a> [create\_server\_network](#input\_create\_server\_network) | Whether to create server network | `bool` | `false` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | The datacenter name to create the server in | `string` | `null` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection | `bool` | `false` | no |
| <a name="input_firewall_ids"></a> [firewall\_ids](#input\_firewall\_ids) | Firewall IDs the server should be attached to on creation | `list(string)` | `[]` | no |
| <a name="input_image"></a> [image](#input\_image) | Name or ID of the image the server is created from | `string` | n/a | yes |
| <a name="input_ip"></a> [ip](#input\_ip) | IP to request to be assigned to this server | `string` | `null` | no |
| <a name="input_iso"></a> [iso](#input\_iso) | ID or Name of an ISO image to mount | `string` | `null` | no |
| <a name="input_keep_disk"></a> [keep\_disk](#input\_keep\_disk) | If true, do not upgrade the disk | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location name to create the server in | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the server to create | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | ID of the network which should be added to the server | `number` | `null` | no |
| <a name="input_rebuild_protection"></a> [rebuild\_protection](#input\_rebuild\_protection) | Enable or disable rebuild protection | `bool` | `false` | no |
| <a name="input_rescue"></a> [rescue](#input\_rescue) | Enable and boot in to the specified rescue system | `string` | `null` | no |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | Name of the server type this server should be created with | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH key IDs or names which should be injected into the server at creation time | `list(string)` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of the sub-network which should be added to the server | `string` | `null` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Cloud-Init user data to use during server creation | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the server |
| <a name="output_ipv4_address_private"></a> [ipv4\_address\_private](#output\_ipv4\_address\_private) | The private IPv4 address |
| <a name="output_ipv4_address_public"></a> [ipv4\_address\_public](#output\_ipv4\_address\_public) | The public IPv4 address |
| <a name="output_name"></a> [name](#output\_name) | Name of the server |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/LICENSE) for full details.
