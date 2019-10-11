resource "nutanix_image" "windows" {
  name        = var.image_name
  description = var.image_description
  source_uri  = var.windows_image_source_url
}

data "nutanix_image" "windows" {
    image_id = nutanix_image.windows.id
}

output "windows_image_id" {
  value = nutanix_image.windows.id
}

output "windows_image_name" {
  value = nutanix_image.windows.name
}