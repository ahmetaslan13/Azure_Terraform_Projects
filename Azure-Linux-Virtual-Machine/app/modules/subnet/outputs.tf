// *** Azure Subnet Outputs ***
output "virtual_network_subnets" {
  description = ""
  value       = azurerm_subnet.subnet
}
output "subnet_ids" {
  description = ""
  value       = values(azurerm_subnet.subnet)[*].id
}
output "vm_subnet_id" {
  description = ""
  value       = values(azurerm_subnet.subnet)[0].id
}