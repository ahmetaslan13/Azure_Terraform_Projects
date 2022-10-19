// *** Azure Resource Group Outputs ***

output "name" {
  description = "Name"
  value       = azurerm_resource_group.my-first-resource-group.name
}
output "location" {
  description = "Location"
  value       = azurerm_resource_group.my-first-resource-group.location
}
