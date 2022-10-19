// *** Azure Virtual Network Variables ***
variable "virtual_network_name" {
  description = ""
  type        = string
}
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
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