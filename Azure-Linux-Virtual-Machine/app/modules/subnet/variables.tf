// *** Azure Subnet Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "virtual_network_name" {
  description = ""
  type        = string
}
variable "subnets" {
  description = ""
  type        = any
}