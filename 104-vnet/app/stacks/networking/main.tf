// *** Create Resource Group ***
module "rg_networking" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Virtual Network ***
module "vnet01" {
  source               = "../../modules/virtual_network"
  resource_group_name  = module.rg_networking.name
  location             = module.rg_networking.location
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
  address_spaces       = var.address_spaces
  dns_servers          = var.dns_servers
  depends_on = [
    module.rg_networking
  ]
}

// *** Create Subnet ***
module "vnet01_snets" {
  source               = "../../modules/subnet"
  resource_group_name  = module.rg_networking.name
  virtual_network_name = module.vnet01.name
  subnets              = var.vnet01_snets
  depends_on = [
    module.rg_networking, module.vnet01
  ]
}

// *** Create Virtual Network ***
module "vnet2" {
  source               = "../../modules/virtual_network"
  resource_group_name  = module.rg_networking.name
  location             = module.rg_networking.location
  virtual_network_name = var.virtual_network_name2
  address_space        = var.address_space2
  address_spaces       = var.address_spaces2
  dns_servers          = var.dns_servers2
  depends_on = [
    module.rg_networking
  ]
}
// *** Create Subnet ***
module "vnet2_snets" {
  source               = "../../modules/subnet"
  resource_group_name  = module.rg_networking.name
  virtual_network_name = module.vnet2.name
  subnets              = var.vnet2_snets
  depends_on = [
    module.rg_networking, module.vnet2
  ]
}

// *** Create Virtual Network ***
module "vnet3" {
  source               = "../../modules/virtual_network"
  resource_group_name  = module.rg_networking.name
  location             = module.rg_networking.location
  virtual_network_name = var.virtual_network_name3
  address_space        = var.address_space3
  address_spaces       = var.address_spaces3
  dns_servers          = var.dns_servers3
  depends_on = [
    module.rg_networking
  ]
}
// *** Create Subnet ***
module "vnet3_snets" {
  source               = "../../modules/subnet"
  resource_group_name  = module.rg_networking.name
  virtual_network_name = module.vnet3.name
  subnets              = var.vnet3_snets
  depends_on = [
    module.rg_networking, module.vnet3
  ]
}
