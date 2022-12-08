// *** Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = map(any)
}

// *** Virtual Network 01 Variables ***
variable "virtual_network_name" {
  description = ""
  type        = string
}
variable "address_space" {
  description = ""
  type        = string
}
variable "address_spaces" {
  description = ""
  type        = list(string)
}
variable "dns_servers" {
  description = ""
  type        = list(string)
}

// *** Subnets for Vnet01 Variables ***
variable "vnet01_snets" {
  description = ""
  type        = any
}

// *** Virtual Network 2 Variables ***
variable "virtual_network_name2" {
  description = ""
  type        = string
}
variable "address_space2" {
  description = ""
  type        = string
}
variable "address_spaces2" {
  description = ""
  type        = list(string)
}
variable "dns_servers2" {
  description = ""
  type        = list(string)
}

// *** Subnets for Vnet2 Variables ***
variable "vnet2_snets" {
  description = ""
  type        = any
}

// *** Virtual Network 3 Variables ***
variable "virtual_network_name3" {
  description = ""
  type        = string
}
variable "address_space3" {
  description = ""
  type        = string
}
variable "address_spaces3" {
  description = ""
  type        = list(string)
}
variable "dns_servers3" {
  description = ""
  type        = list(string)
}

// *** Subnets for Vnet2 Variables ***
variable "vnet3_snets" {
  description = ""
  type        = any
}

