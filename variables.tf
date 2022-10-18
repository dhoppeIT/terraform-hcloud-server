variable "name" {
  type        = string
  description = "Name of the server to create"
}

variable "server_type" {
  type        = string
  description = "Name of the server type this server should be created with"
}

variable "image" {
  type        = string
  description = "Name or ID of the image the server is created from"
}

variable "location" {
  type        = string
  default     = null
  description = "The location name to create the server in"
}

variable "datacenter" {
  type        = string
  default     = null
  description = "The datacenter name to create the server in"
}

variable "user_data" {
  type        = string
  default     = null
  description = "Cloud-Init user data to use during server creation"
}

variable "ssh_keys" {
  type        = list(string)
  default     = []
  description = "SSH key IDs or names which should be injected into the server at creation time"
}

variable "keep_disk" {
  type        = bool
  default     = false
  description = "If true, do not upgrade the disk"
}

variable "iso" {
  type        = string
  default     = null
  description = "ID or Name of an ISO image to mount"
}

variable "rescue" {
  type        = string
  default     = null
  description = "Enable and boot in to the specified rescue system"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "User-defined labels (key-value pairs) should be created with"
}

variable "backups" {
  type        = bool
  default     = false
  description = "Enable or disable backups"
}

variable "firewall_ids" {
  type        = list(string)
  default     = []
  description = "Firewall IDs the server should be attached to on creation"
}

variable "delete_protection" {
  type        = bool
  default     = false
  description = "Enable or disable delete protection"
}

variable "rebuild_protection" {
  type        = bool
  default     = false
  description = "Enable or disable rebuild protection"
}

variable "create_server_network" {
  type        = bool
  default     = false
  description = "Whether to create server network"
}

variable "alias_ips" {
  type        = list(string)
  default     = []
  description = "Additional IPs to be assigned to this server"
}

variable "network_id" {
  type        = number
  default     = null
  description = "ID of the network which should be added to the server"
}

variable "subnet_id" {
  type        = string
  default     = null
  description = "ID of the sub-network which should be added to the server"
}

variable "ip" {
  type        = string
  default     = null
  description = "IP to request to be assigned to this server"
}

variable "create_snapshot" {
  type        = bool
  default     = false
  description = "Whether to create server snapshot"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the snapshot"
}
