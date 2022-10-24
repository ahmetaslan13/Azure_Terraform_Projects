// *** Resorce Group Values ***
resource_group_name = "rg-networking"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Virtual Network Values ***
virtual_network_name = "virtual-network-name"
address_space = "10.0.0.0/16"
address_spaces = []
dns_servers = ["10.0.0.4","10.0.0.5"]

// *** Subnets Values ***
subnets = {
  // *** Subnet for App Values ***
  "subnet-1" = {
    address_prefixes = ["10.0.1.0/24"]
    network_security_group = {
      name = "nsg-subnet-1"
    }
    security_rule = {
      name = "Subnet 1 Security Rules"
      priority = "101"
      direction = "Inbound"
      access = "Allow"
      protocol = "Tcp"
      source_port_range = "*"
      destination_port_range = "*"
      source_address_prefix = "*"
      destination_address_prefix = "*"
    }
  }
  // *** Subnet for Az Kubernetes Service Values ***
  "subnet-2" = {
    address_prefixes = ["10.0.2.0/24"]
    network_security_group = {
      name = "nsg-subnet-2"
    }
    security_rule = {
      name = "Subnet 2 Security Rules"
      priority = "202"
      direction = "Inbound"
      access = "Allow"
      protocol = "Tcp"
      source_port_range = "*"
      destination_port_range = "*"
      source_address_prefix = "*"
      destination_address_prefix = "*"
    }
  }
}

