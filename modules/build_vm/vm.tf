resource "random_pet" "petservername" {
}

data "nutanix_image" "linux_vm" {
  image_id = var.linux_image_id
}

data "nutanix_clusters" "clusters" {}
data "nutanix_subnet" "net-1" {
  subnet_id = var.subnet_id
}

resource "nutanix_virtual_machine" "vm" {
  name         = random_pet.petservername.id
  cluster_uuid = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  description  = "terraforming yo ahv"
  num_vcpus_per_socket = 1
  num_sockets          = 1
  memory_size_mib      = 1024
  nic_list {
    subnet_uuid = data.nutanix_subnet.net-1.id
  }
}


