// *** Azure Vnet Peering ***
resource "azurerm_virtual_network_peering" "vnet_peering" {
  name                      = var.peering_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.remote_virtual_network_id
}