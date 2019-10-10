
provider "nutanix" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  insecure = true
  port     = 9440
}
data "terraform_remote_state" "image" {
  backend = "remote"

  config = {
    organization = "cdunlap"
    workspaces = {
      name = "nutanix-terraform"
    }
  }
}

resource "nutanix_image" "linux" {
    image_id = data.nutanix_image.linux.id
}

#data "nutanix_image" "ubuntu" {
#  image_id = "2b4b5942-2c0e-45eb-b17e-a10b8479c824"
#}

data "nutanix_clusters" "clusters" {}

resource "nutanix_virtual_machine" "test" {
  name                 = "cd-ubuntuserver"
  cluster_uuid         = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  description          = "terraforming yo ahv"
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096
}

variable "username" {
  description = "admin username for Nutanix Cluster"
}

variable "password" {
  description = "admin password for Nutanix Cluster"
}

variable "endpoint" {
  description = "ip or hostname for Nutanix Cluster"
}
