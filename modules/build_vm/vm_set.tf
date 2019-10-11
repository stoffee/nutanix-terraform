data "nutanix_image" "linux_vm_set" {
  image_id = var.linux_image_id
}

data "nutanix_clusters" "vm_set_cluster" {}

data "nutanix_subnet" "vm_set_subnet" {
  subnet_id = var.subnet_id
}

resource "nutanix_virtual_machine" "linux_vm_set" {
  count        = "5"
  name         = "server-${count.index + 1}"
  cluster_uuid = data.nutanix_clusters.vm_set_cluster.entities.0.metadata.uuid
  description  = "terraforming yo ahv"
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096
  nic_list {
    subnet_uuid = data.nutanix_subnet.net-1.id
  }
}


