resource "random_pet" "win_petservername" {
}

data "nutanix_image" "windows_vm" {
  win_image_id = var.win_image_id
}

data "nutanix_clusters" "winclusters" {}
data "nutanix_subnet" "winnet-1" {
  subnet_id = var.subnet_id
}

resource "nutanix_virtual_machine" "win_vm" {
  name         = random_pet.win_petservername.id
  cluster_uuid = data.nutanix_clusters.winclusters.entities.0.metadata.uuid
  description  = "terraforming yo ahv"
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096
  nic_list {
    subnet_uuid = data.nutanix_subnet.net-1.id
  }
}


