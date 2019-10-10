module "create_image" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
   source = "github.com/stoffee/nutanix-terraform//modules/create_image"
    username = var.username
  password = var.password
  endpoint = var.endpoint
name        = var.image_name
  description = var.image_description
  source_uri  = var.image_source_url
}