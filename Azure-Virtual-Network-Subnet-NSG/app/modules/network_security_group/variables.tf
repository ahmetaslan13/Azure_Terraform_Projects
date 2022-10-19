// *** Azure Network Security Group Variables ***
variable "network_security_groups" {
  description = ""
  type        = any
}
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}

// *** Azure Network Security Rule Variables ***