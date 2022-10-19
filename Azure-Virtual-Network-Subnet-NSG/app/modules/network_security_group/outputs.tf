// *** Azure Network Security Group Outputs ***
output "network_security_group_ids" {
  description = "Location"
  value       = values(azurerm_network_security_group.network_security_group)[*].id
}