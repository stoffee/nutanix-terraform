
provider "nutanix" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  insecure = true
  port     = 9440
}
#data "terraform_remote_state" "image" {
#  backend = "remote"
#
#  config = {
#    organization = "cdunlap"
#    workspaces = {
#      name = "nutanix-terraform"
#    }
#  }
#}

#resource "nutanix_image" "linux" {
#    image_id = data.nutanix_image.linux.id
#}

data "nutanix_image" "ubuntu" {
  image_id = var.image_id
}

data "nutanix_clusters" "clusters" {}
data "nutanix_subnet" "net-1" {
#  subnet_id = "06e1e545-6b80-4a69-823d-6d080204af28"
}

resource "nutanix_virtual_machine" "test" {
  name                 = "cd-ubuntuserver"
  cluster_uuid         = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  description          = "terraforming yo ahv"
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096
  nic_list = {
      subnet_uuid = "${data.nutanix_subnet.net-1.id}"
  }
}


