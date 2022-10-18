terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.25"
    }
  }

  required_version = ">= 1.0"
}
