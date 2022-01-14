# terraform-hcloud-server

Terraform module to manage the Hetzner Cloud resource (hcloud_server, hcloud_server_network).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "hcloud-server" {
  source = "dhoppeIT/server/hcloud"

  name        = "debian"
  server_type = "cx11"
  image       = "debian-10"
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-hcloud-server/blob/main/LICENSE) for full details.
