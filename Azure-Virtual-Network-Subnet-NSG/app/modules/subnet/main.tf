// *** Azure Subnet ***
resource "azurerm_subnet" "subnet" {
  for_each                                       = var.subnets
  resource_group_name                            = var.resource_group_name
  virtual_network_name                           = var.virtual_network_name
  name                                           = each.key
  address_prefixes                               = each.value.address_prefixes
  enforce_private_link_endpoint_network_policies = lookup(each.value, "enforce_private_link_endpoint_network_policies", null) == null ? false : each.value.enforce_private_link_endpoint_network_policies
  service_endpoints                              = lookup(each.value, "service_endpoints", [])
}
