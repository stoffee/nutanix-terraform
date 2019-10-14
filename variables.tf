variable "username" {
  description = "admin username for Nutanix Cluster"
}

variable "password" {
  description = "admin password for Nutanix Cluster"
}

variable "endpoint" {
  description = "ip or hostname for Nutanix Cluster"
}

variable "subnet_id" {
  description = "subnet_id"
}

variable "image_description" {
  description = "description of OS image in Nutanix"
  default     = "Ubuntu Mini Latest"
}

variable "linux_image_name" {
  description = "name os OS image in Nutanix"
  default     = "UbuntuMini-Latest"
}

variable "windows_image_name" {
  description = "name os OS image in Nutanix"
  default     = "UbuntuMini-Latest"
}

variable "image_source_url" {
  description = "URL to ISO image"
  default     = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}