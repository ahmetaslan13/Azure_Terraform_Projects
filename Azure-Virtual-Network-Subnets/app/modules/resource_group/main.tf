// *** Azure Resource Group ***
resource "azurerm_resource_group" "my-first-resource-group" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}