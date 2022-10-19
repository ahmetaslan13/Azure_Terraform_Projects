// *** Azure Network Security Group Association Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
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
variable "subnet_ids" {
  description = ""
  type        = any
}
variable "network_security_group_ids" {
  description = ""
  type        = any
}