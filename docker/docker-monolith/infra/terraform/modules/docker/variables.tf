variable public_key_path {
  description = "Path to the public key used to connect to instance"
  type = string
}
variable zone {
  description = "Zone"
  type = string
}
variable db_disk_image {
  description = "Disk image for docker"
  type = string
  default = "reddit-docker-base"
}
variable mach_type {
  description = "Machine type"
  type = string
  default = "n1-standart"
}
variable "enable_provision" {
  description = "enable app and db provision"
  type        = bool
  default     = false
}
variable num_instance {
  description = "Total instace"
  default     = 1
}
variable name_prefix {
  description = "Name prefix of instance"
  type        = string
  default     = "reddit"
}
variable tags {
  description = "Tags"
  type        = list
  default     = ["reddit"]
}
variable tcp_ports {
  description = "Tcp ports"
  type        = list
  default     = ["22", "9292", "27017"]
}
variable instance_network_name {
  description = "Network"
  type = string
  default = "default"
}
variable source_ranges {
  description = "Allowed IP addresses"
  type        = list
  default     = ["0.0.0.0/0"]
}
