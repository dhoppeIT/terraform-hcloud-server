# terraform-hcloud-server

This example will manage the Hetzner Cloud server and creates a single server with a private IP address.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/examples/single_server_private/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.25 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.32.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_server"></a> [hcloud\_server](#module\_hcloud\_server) | dhoppeIT/server/hcloud | ~> 0.1 |

## Resources

| Name | Type |
|------|------|
| [hcloud_network.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/data-sources/network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Hetzner Cloud | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_server_id"></a> [server\_id](#output\_server\_id) | Unique ID of the server |
| <a name="output_server_ipv4_address_private"></a> [server\_ipv4\_address\_private](#output\_server\_ipv4\_address\_private) | The private IPv4 address |
| <a name="output_server_ipv4_address_public"></a> [server\_ipv4\_address\_public](#output\_server\_ipv4\_address\_public) | The public IPv4 address |
| <a name="output_server_name"></a> [server\_name](#output\_server\_name) | Name of the server |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/LICENSE) for full details.
