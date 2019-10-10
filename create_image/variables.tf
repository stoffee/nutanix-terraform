variable "username" {
  description = "admin username for Nutanix Cluster"
}

variable "password" {
  description = "admin password for Nutanix Cluster"
}

variable "endpoint" {
  description = "ip or hostname for Nutanix Cluster"
}

variable "image_name" {
  description = "name os OS image in Nutanix"
}

variable "image_id" {
  description = "Name OS image in Nutanix"
}

variable "image_source_url" {
  description = "URL to ISO image"
  default  = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}
