// *** Azure Resource Group Outputs ***

output "name" {
  description = "Name"
  value       = azurerm_resource_group.resource_group.name
}
output "location" {
  description = "Location"
  value       = azurerm_resource_group.resource_group.location
}
