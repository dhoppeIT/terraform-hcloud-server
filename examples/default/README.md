# Example

The configuration in this directory creates:

* hcloud_server

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_server"></a> [hcloud\_server](#module\_hcloud\_server) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint"></a> [endpoint](#input\_endpoint) | Hetzner Cloud API endpoint, can be used to override the default API Endpoint | `string` | `"https://api.hetzner.cloud/v1"` | no |
| <a name="input_poll_function"></a> [poll\_function](#input\_poll\_function) | Configures the type of function to be used during the polling | `string` | `"exponential"` | no |
| <a name="input_poll_interval"></a> [poll\_interval](#input\_poll\_interval) | Configures the interval in which actions are polled by the client | `string` | `"500ms"` | no |
| <a name="input_token"></a> [token](#input\_token) | This is the Hetzner Cloud API Token, can also be specified with the HCLOUD\_TOKEN environment variable | `string` | n/a | yes |

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
