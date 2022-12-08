// *** Azure Subnet Outputs ***
output "virtual_network_subnets" {
  description = ""
  value       = azurerm_subnet.subnet
}
output "subnet_ids" {
  description = ""
  value       = values(azurerm_subnet.subnet)[*].id
}

# output "appgw_subnet_id" {
#   description = ""
#   value       = values(azurerm_subnet.subnet)[1].id
# }
