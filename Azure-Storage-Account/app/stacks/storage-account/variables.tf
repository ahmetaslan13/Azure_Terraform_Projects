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

// *** Azure Storage Account Variables ***
variable "storage_account_name" {
  description = ""
  type        = string
}
variable "account_tier" {
  description = ""
  type        = string
}
variable "account_replication_type" {
  description = ""
  type        = string
}