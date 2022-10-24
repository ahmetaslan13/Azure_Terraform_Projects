// *** Azure Subnet Outputs ***
output "virtual_network_subnets" {
  description = ""
  value       = azurerm_subnet.subnet
}
output "subnet_ids" {
  description = ""
  value       = values(azurerm_subnet.subnet)[*].id
}