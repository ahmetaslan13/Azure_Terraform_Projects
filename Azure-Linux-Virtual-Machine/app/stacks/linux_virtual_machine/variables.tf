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

// *** Network Interface Variables ***
variable "ip_configuration_name" {
  description = ""
  type        = string
}
variable "private_ip_address_allocation" {
  description = ""
  type        = string
}
variable "subnet_id" {
  description = ""
  type        = list(any)
}

// *** VM Linux Variables ***
variable "vm_name" {
  description = ""
  type        = string
}
variable "vm_size" {
  description = ""
  type        = string
}
variable "linux_admin_username" {
  description = ""
  type        = string
}
variable "public_key" {
  description = ""
  type        = string
}

// *** OS Disk Variables ***
variable "caching" {
  description = ""
  type        = string
}
variable "storage_account_type" {
  description = ""
  type        = string
}

// *** Source Image Reference Variables ***
variable "publisher" {
  description = ""
  type        = string
}
variable "offer" {
  description = ""
  type        = string
}
variable "sku" {
  description = ""
  type        = string
}
variable "source_image_reference_version" {
  description = ""
  type        = string
}