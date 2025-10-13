provider "hcloud" {
  token = var.token

  endpoint      = var.endpoint
  poll_interval = var.poll_interval
  poll_function = var.poll_function
}
