variable "username" {
  description = "admin username for Nutanix Cluster"
}

variable "password" {
  description = "admin password for Nutanix Cluster"
}

variable "endpoint" {
  description = "ip or hostname for Nutanix Cluster"
}

variable "image_description" {
  description = "description of OS image in Nutanix"
  default     = "Ubuntu Mini Latest"
}

variable "image_name" {
  description = "name os OS image in Nutanix"
  default     = "UbuntuMini-Latest"
}

variable "windows_image_source_url" {
  description = "URL to ISO image"
  default     = "https://software-download.microsoft.com/pr/Win10_1903_V2_English_x64.iso?t=68ca8f25-4dd4-4c2f-8b2a-9353b5cfb809&e=1570843548&h=021bb3f2c7902fbcadf52ff579a6f0e5"
}

variable "linux_image_source_url" {
  description = "URL to ISO image"
  default     = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}