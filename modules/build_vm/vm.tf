resource "random_pet" "petservername" {
}

data "nutanix_image" "ubuntu" {
  image_id = var.image_id
}

data "nutanix_clusters" "clusters" {}
data "nutanix_subnet" "net-1" {
  subnet_id = "06e1e545-6b80-4a69-823d-6d080204af28"
}

resource "nutanix_virtual_machine" "linux" {
  name                 = random_pet.petservername.id
  cluster_uuid         = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  description          = "terraforming yo ahv"
  categories {
    name   = "Owner"
    value  = "stoffee"
    }
  num_vcpus_per_socket = 2
  num_sockets          = 1
  memory_size_mib      = 4096
  nic_list {
    subnet_uuid = data.nutanix_subnet.net-1.id
  }
}


