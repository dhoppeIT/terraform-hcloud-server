variable "token" {
  type        = string
  default     = null
  description = "The token used to authenticate with Hetzner Cloud"
  sensitive   = true
}
