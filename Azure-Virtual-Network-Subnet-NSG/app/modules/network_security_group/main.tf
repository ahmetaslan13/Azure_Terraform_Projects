// *** Azure Network Security Group ***
resource "azurerm_network_security_group" "network_security_group" {
  for_each            = var.network_security_groups
  name                = each.value.network_security_group.name
  location            = var.location
  resource_group_name = var.resource_group_name
}

// *** Azure Network Security Rule ***
resource "azurerm_network_security_rule" "network_security_group_security_rule" {
  for_each                    = var.network_security_groups
  name                        = each.value.security_rule.name
  resource_group_name         = var.resource_group_name
  network_security_group_name = each.value.network_security_group.name
  priority                    = each.value.security_rule.priority
  direction                   = each.value.security_rule.direction
  access                      = each.value.security_rule.access
  protocol                    = each.value.security_rule.protocol
  source_port_range           = each.value.security_rule.source_port_range
  destination_port_range      = each.value.security_rule.destination_address_prefix
  source_address_prefix       = each.value.security_rule.source_address_prefix
  destination_address_prefix  = each.value.security_rule.destination_address_prefix
}