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

// *** Log Analytics Variables ***
variable "log_analytics_name" {
  description = ""
  type        = string
}
variable "retention_in_days" {
  description = ""
  type        = string
}
variable "sku" {
  description = ""
  type        = string
}

// *** Virtual Network Variables ***
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

// *** Subnet Variables ***
variable "subnets" {
  description = ""
  type        = any
}