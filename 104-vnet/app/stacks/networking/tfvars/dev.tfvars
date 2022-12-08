// *** Resorce Group Values ***
resource_group_name = "az104-06-rg1"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Virtual Network 01 Values ***
virtual_network_name = "az104-06-vnet01"
address_space = "10.60.0.0/22"
address_spaces = []
dns_servers = ["10.0.0.4","10.0.0.5"]

// *** Subnets for Vnet 01 Values ***
vnet01_snets = {
  // *** Subnet-1 Values ***
  "subnet0" = {
    address_prefixes = ["10.60.0.0/24"]
  }
  // *** Subnet-2 Values ***
  "subnet1" = {
    address_prefixes = ["10.60.1.0/24"]
  }
    "Subnet-appgw" = {
    address_prefixes = ["10.60.3.224/27"]
  }
}

// *** Virtual Network 2 Values ***
virtual_network_name2 = "az104-06-vnet2"
address_space2 = "10.62.0.0/22"
address_spaces2 = []
dns_servers2 = ["10.0.0.4","10.0.0.5"]

// *** Subnets Values ***
vnet2_snets = {
  // *** Subnet-1 Values ***
  "subnet0" = {
    address_prefixes = ["10.62.0.0/24"]
  }
}

// *** Virtual Network 3 Values ***
virtual_network_name3 = "az104-06-vnet3"
address_space3 = "10.63.0.0/22"
address_spaces3 = []
dns_servers3 = ["10.0.0.4","10.0.0.5"]

// *** Subnets Values ***
vnet3_snets = {
  // *** Subnet-1 Values ***
  "subnet0" = {
    address_prefixes = ["10.63.0.0/24"]
  }
}
