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

variable "public_net" {
  type = object(
    {
      ipv4_enabled = optional(bool)
      ipv4         = optional(string)
      ipv6_enabled = optional(bool)
      ipv6         = optional(string)
    }
  )
  default     = {}
  description = "In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs"
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

variable "ignore_remote_firewall_ids" {
  type        = bool
  default     = false
  description = " Ignores any updates to the firewall_ids argument which were received from the server"
}

variable "network" {
  type = object(
    {
      network_id = string
      ip         = optional(string)
      alias_ips  = optional(list(string))
    }
  )
  default     = null
  description = "Private Network the server shall be attached to"
}

variable "placement_group_id" {
  type        = string
  default     = null
  description = "Placement Group ID the server added to on creation"
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

variable "allow_deprecated_images" {
  type        = bool
  default     = false
  description = "Enable the use of deprecated images"
}

variable "shutdown_before_deletion" {
  type        = bool
  default     = false
  description = "Whether to try shutting the server down gracefully before deleting it"
}
