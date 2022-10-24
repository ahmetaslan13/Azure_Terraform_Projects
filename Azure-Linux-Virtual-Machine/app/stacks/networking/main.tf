// *** Create Resource Group ***
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Virtual Network ***
module "virtual_network" {
  source               = "../../modules/virtual_network"
  resource_group_name  = module.resource_group.name
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
  address_spaces       = var.address_spaces
  dns_servers          = var.dns_servers
  location             = module.resource_group.location
  depends_on = [
    module.resource_group
  ]
}

// *** Create Subnet ***
module "subnet" {
  source               = "../../modules/subnet"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  subnets              = var.subnets
  depends_on = [
    module.resource_group, module.virtual_network
  ]
}
