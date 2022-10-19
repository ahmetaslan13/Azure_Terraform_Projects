// *** Data Network Security Group Association ***
data "azurerm_network_security_group" "network_security_group" {
  for_each            = var.subnets
  name                = each.value.network_security_group.name
  resource_group_name = var.resource_group_name
}

// *** Data Subnet ***
data "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = each.key
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
}

// *** Azure Network Security Group Association ***
resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  for_each                  = var.subnets
  subnet_id                 = data.azurerm_subnet.subnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.network_security_group[each.key].id
}