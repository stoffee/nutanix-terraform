provider "nutanix" {
  username = var.username
  password = var.password
  endpoint = var.endpoint
  insecure = true
  port     = 9440
}

resource "nutanix_image" "linux" {
  name        = var.image_name
  description = var.image_description
  source_uri  = var.linux_image_source_url
}


data "nutanix_image" "linux" {
    image_id = nutanix_image.linux.id
}

output "linux_image_id" {
  value = nutanix_image.linux.id
}

output "linux_image_name" {
  value = nutanix_image.linux.name
}