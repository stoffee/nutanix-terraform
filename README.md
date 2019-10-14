# nutanix-terraform
Deploy Nutanix workloads with HashiCorp Terraform

This repo will deploy a linux image to the image store and then deploy a VM from that image.

 # Instructions
 1. Clone the repo
    - git clone https://github.com/stoffee/nutanix-terraform.git && cd nutanix-terraform
 2. Move the terraform.tfvars.example to terraform.tvfars and change the tfvars to the appropriate info.
    - sed 's/YOURNutanixUserName/**admin**/g' terraform.tfvars.example > terraform.tfvars
    - sed -i .bak 's/YOURNutanixPassword/**RealPassword**/g' terraform.tfvars
    - sed -i .bak 's/IPorDNSofYOURNutanixcluster/**nutanix.company.org**/g' terraform.tfvars
 3. terraform plan -var-file=terraform.tfvars
 3. terraform apply -var-file=terraform.tfvars -auto-approve