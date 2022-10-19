// *** Create Resource Group ***
module "rg-for-vnet" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Virtual Network ***
module "virtual_network" {
  source               = "../../modules/virtual_network"
  virtual_network_name = var.virtual_network_name
  resource_group_name  = module.rg-for-vnet.name
  location             = module.rg-for-vnet.location
  address_space        = var.address_space
  address_spaces       = var.address_spaces
  dns_servers          = var.dns_servers
  depends_on = [
    module.rg-for-vnet
  ]
}