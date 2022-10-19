// *** Azure Resource Group Variables ***
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