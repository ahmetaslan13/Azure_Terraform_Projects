// *** Azure Container Registery (ACR) Variables ***
variable "acr_name" {
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
variable "sku" {
  description = ""
  type        = string
}
variable "admin_enabled" {
  description = ""
  type        = bool
}

// *** Georeplications-1 Variables ***
# variable "georeplications_1_location" {
#   description = ""
#   type        = string
# }
# variable "zone_redundancy_1_enabled" {
#   description = ""
#   type        = string
# }
# variable "georeplications_1_tags" {
#   description = ""
#   type        = map(any)
# }

// *** Georeplications-2 Variables ***
# variable "georeplications_2_location" {
#   description = ""
#   type        = string
# }
# variable "zone_redundancy_2_enabled" {
#   description = ""
#   type        = string
# }
# variable "georeplications_2_tags" {
#   description = ""
#   type        = map(any)
# }