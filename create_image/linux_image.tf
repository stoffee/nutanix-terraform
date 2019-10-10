terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cdunlap"

    workspaces {
      name = "nutanix-terraform-image"
    }
  }
}

provider "nutanix" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  insecure = true
  port     = 9440
}

resource "nutanix_image" "ubuntumini" {
  name        = "Ubuntu"
  description = "UbuntuMini"
  source_uri  = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}


data "nutanix_image" "ubuntumini" {
    image_id = nutanix_image.ubuntumini.id
}

data "nutanix_image" "linuxname" {
    image_name = nutanix_image.ubuntumini.name
}

output "ubuntumini_id" {
  value = nutanix_image.ubuntumini.id
}

output "ubuntumini_name" {
  value = nutanix_image.ubuntumini.name
}