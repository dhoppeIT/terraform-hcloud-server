variable "token" {
  type        = string
  sensitive   = true
  description = "This is the Hetzner Cloud API Token, can also be specified with the HCLOUD_TOKEN environment variable"
}

variable "endpoint" {
  type        = string
  default     = "https://api.hetzner.cloud/v1"
  description = "Hetzner Cloud API endpoint, can be used to override the default API Endpoint"
}

variable "poll_interval" {
  type        = string
  default     = "500ms"
  description = "Configures the interval in which actions are polled by the client"
}

variable "poll_function" {
  type        = string
  default     = "exponential"
  description = "Configures the type of function to be used during the polling"
}
