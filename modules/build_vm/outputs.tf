output "ip_address" {
  value = nutanix_virtual_machine.linux.nic_list_status.0.ip_endpoint_list[0]["ip"]
}