// *** Create Resource Group ***
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Log Analytics ***
module "log_analytics" {
  source              = "../../modules/log_analytics"
  log_analytics_name  = var.log_analytics_name
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  retention_in_days   = var.retention_in_days
  sku                 = var.sku
  depends_on = [
    module.resource_group
  ]
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

// *** Create Network Security Group ***
module "network_security_group" {
  source                  = "../../modules/network_security_group"
  network_security_groups = var.subnets
  resource_group_name     = module.resource_group.name
  location                = module.resource_group.location

}

// *** Create Network Security Group Associtation ***
module "network_security_group_assoc" {
  source                     = "../../modules/network_security_group_assoc"
  resource_group_name        = module.resource_group.name
  location                   = module.resource_group.location
  virtual_network_name       = module.virtual_network.name
  subnets                    = var.subnets
  subnet_ids                 = module.subnet.subnet_ids
  network_security_group_ids = module.network_security_group.network_security_group_ids
  depends_on = [
    module.resource_group, module.virtual_network, module.subnet, module.network_security_group
  ]
}