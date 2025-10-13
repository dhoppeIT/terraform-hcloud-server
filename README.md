# terraform-hcloud-server

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_server

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_server" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-server/local"
  version = "1.0.0"

  name        = "example-server"
  server_type = "cx22"
  image       = "debian-13"
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_server.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_deprecated_images"></a> [allow\_deprecated\_images](#input\_allow\_deprecated\_images) | Enable the use of deprecated images | `bool` | `false` | no |
| <a name="input_backups"></a> [backups](#input\_backups) | Enable or disable backups | `bool` | `false` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | The datacenter name to create the server in | `string` | `null` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Enable or disable delete protection | `bool` | `false` | no |
| <a name="input_firewall_ids"></a> [firewall\_ids](#input\_firewall\_ids) | Firewall IDs the server should be attached to on creation | `list(string)` | `[]` | no |
| <a name="input_ignore_remote_firewall_ids"></a> [ignore\_remote\_firewall\_ids](#input\_ignore\_remote\_firewall\_ids) | Ignores any updates to the firewall\_ids argument which were received from the server | `bool` | `false` | no |
| <a name="input_image"></a> [image](#input\_image) | Name or ID of the image the server is created from | `string` | n/a | yes |
| <a name="input_iso"></a> [iso](#input\_iso) | ID or Name of an ISO image to mount | `string` | `null` | no |
| <a name="input_keep_disk"></a> [keep\_disk](#input\_keep\_disk) | If true, do not upgrade the disk | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location name to create the server in | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the server to create | `string` | n/a | yes |
| <a name="input_network"></a> [network](#input\_network) | Private Network the server shall be attached to | ```object( { network_id = string ip = optional(string) alias_ips = optional(list(string)) } )``` | `null` | no |
| <a name="input_placement_group_id"></a> [placement\_group\_id](#input\_placement\_group\_id) | Placement Group ID the server added to on creation | `string` | `null` | no |
| <a name="input_public_net"></a> [public\_net](#input\_public\_net) | In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs | ```object( { ipv4_enabled = optional(bool) ipv4 = optional(string) ipv6_enabled = optional(bool) ipv6 = optional(string) } )``` | `{}` | no |
| <a name="input_rebuild_protection"></a> [rebuild\_protection](#input\_rebuild\_protection) | Enable or disable rebuild protection | `bool` | `false` | no |
| <a name="input_rescue"></a> [rescue](#input\_rescue) | Enable and boot in to the specified rescue system | `string` | `null` | no |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | Name of the server type this server should be created with | `string` | n/a | yes |
| <a name="input_shutdown_before_deletion"></a> [shutdown\_before\_deletion](#input\_shutdown\_before\_deletion) | Whether to try shutting the server down gracefully before deleting it | `bool` | `false` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | SSH key IDs or names which should be injected into the server at creation time | `list(string)` | `[]` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Cloud-Init user data to use during server creation | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backups"></a> [backups](#output\_backups) | Whether backups are enabled |
| <a name="output_datacenter"></a> [datacenter](#output\_datacenter) | The datacenter name |
| <a name="output_delete_protection"></a> [delete\_protection](#output\_delete\_protection) | Whether delete protection is enabled |
| <a name="output_firewall_ids"></a> [firewall\_ids](#output\_firewall\_ids) | Firewall IDs the server is attached to |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the server |
| <a name="output_image"></a> [image](#output\_image) | Name or ID of the image the server was created from |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | The IPv4 address |
| <a name="output_ipv6_address"></a> [ipv6\_address](#output\_ipv6\_address) | The first IPv6 address of the assigned network |
| <a name="output_ipv6_network"></a> [ipv6\_network](#output\_ipv6\_network) | The IPv6 network |
| <a name="output_iso"></a> [iso](#output\_iso) | ID or Name of the mounted ISO image |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_location"></a> [location](#output\_location) | The location name |
| <a name="output_name"></a> [name](#output\_name) | Name of the server |
| <a name="output_network"></a> [network](#output\_network) | Private Network the server shall be attached to |
| <a name="output_placement_group_id"></a> [placement\_group\_id](#output\_placement\_group\_id) | Placement Group ID the server is assigned to |
| <a name="output_primary_disk_size"></a> [primary\_disk\_size](#output\_primary\_disk\_size) | The size of the primary disk in GB |
| <a name="output_rebuild_protection"></a> [rebuild\_protection](#output\_rebuild\_protection) | Whether rebuild protection is enabled |
| <a name="output_server_type"></a> [server\_type](#output\_server\_type) | Name of the server type |
| <a name="output_shutdown_before_deletion"></a> [shutdown\_before\_deletion](#output\_shutdown\_before\_deletion) | Whether the server will try to shut down gracefully before being deleted |
| <a name="output_status"></a> [status](#output\_status) | The status of the server |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
