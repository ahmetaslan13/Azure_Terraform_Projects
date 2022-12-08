// *** Azure Container Registery (ACR) ***
resource "azurerm_container_registry" "az_container_registry" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  // First Georeplications
  # georeplications {
  #   location                = var.georeplications_1_location
  #   zone_redundancy_enabled = var.zone_redundancy_1_enabled
  #   tags                    = var.georeplications_1_tags
  # }

  // Second Georeplications
  # georeplications {
  #   location                = var.georeplications_2_location
  #   zone_redundancy_enabled = var.zone_redundancy_2_enabled
  #   tags                    = var.georeplications_2_tags
  # }
}