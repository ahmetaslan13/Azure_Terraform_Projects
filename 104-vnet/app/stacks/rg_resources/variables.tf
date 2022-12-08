// *** Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}

// Windows 01
variable "vm_name0" {
  description = ""
  type        = string
}
variable "vm_size0" {
  description = ""
  type        = string
}
variable "admin_username0" {
  description = ""
  type        = string
}
variable "admin_password0" {
  description = ""
  type        = string
}

variable "vm_tags0" {
  description = ""
  type        = any
}

// Nic
variable "nic_name0" {
  description = ""
  type        = string
}
variable "ip_conf_name0" {
  description = ""
  type        = string
}
variable "enable_accelerated_networking0" {
  description = ""
  type        = string
}
variable "subnet_id0" {
  description = ""
  type        = string
}
variable "private_ip_address_allocation0" {
  description = ""
  type        = string
}
variable "nic_tags0" {
  description = ""
  type        = any
}
// OS Disk
variable "os_disk_caching0" {
  description = ""
  type        = string
}
variable "os_disk_storage_account_type0" {
  description = ""
  type        = string
}
variable "os_disk_size_gb0" {
  description = ""
  type        = string
}
// Source Image Reference
variable "source_image_reference_publisher0" {
  description = ""
  type        = string
}
variable "source_image_reference_offer0" {
  description = ""
  type        = string
}
variable "source_image_reference_sku0" {
  description = ""
  type        = string
}
variable "source_image_reference_version0" {
  description = ""
  type        = string
}

//win - 1 
// Windows
variable "vm_name1" {
  description = ""
  type        = string
}
variable "vm_size1" {
  description = ""
  type        = string
}
variable "admin_username1" {
  description = ""
  type        = string
}
variable "admin_password1" {
  description = ""
  type        = string
}

variable "vm_tags1" {
  description = ""
  type        = any
}

// Nic
variable "nic_name1" {
  description = ""
  type        = string
}
variable "ip_conf_name1" {
  description = ""
  type        = string
}
variable "enable_accelerated_networking1" {
  description = ""
  type        = string
}
variable "subnet_id1" {
  description = ""
  type        = string
}
variable "private_ip_address_allocation1" {
  description = ""
  type        = string
}
variable "nic_tags1" {
  description = ""
  type        = any
}
// OS Disk
variable "os_disk_caching1" {
  description = ""
  type        = string
}
variable "os_disk_storage_account_type1" {
  description = ""
  type        = string
}
variable "os_disk_size_gb1" {
  description = ""
  type        = string
}
// Source Image Reference
variable "source_image_reference_publisher1" {
  description = ""
  type        = string
}
variable "source_image_reference_offer1" {
  description = ""
  type        = string
}
variable "source_image_reference_sku1" {
  description = ""
  type        = string
}
variable "source_image_reference_version1" {
  description = ""
  type        = string
}
# // *** Azure Peering Variables ***
# variable "peering_name" {
#   description = ""
#   type        = string
# }

# variable "peering_vnet_name" {
#   description = ""
#   type        = string
# }
# variable "peering_remote_vnet_id" {
#   description = ""
#   type        = string
# }

//PIP
variable "pip_name" {
  description = ""
  type        = string
}
variable "allocation_method" {
  description = ""
  type        = string
}

// APP GW

variable "app_gateway_vnet_name" {
  
}
// Locals

variable "app_gateway_name" {
  
}
//SKU

variable "sku_name" {
  
}
variable "sku_capacity" {
  
}
variable "sku_tier" {
  
}
//IP Config
variable "gateway_ip_configuration_name" {
  
}
variable "gateway_ip_configuration_subnet_id" {
  
}

//Front 
variable "frontend_port" {
  
}
//Front 

//Backend HTTP Settings
variable "backend_http_settings_cookie_based_affinity" {
  
}
variable "backend_http_settings_path" {
  
}
variable "backend_http_settings_port" {
  
}
variable "backend_http_settings_protocol" {
  
}
variable "backend_http_settings_request_timeout" {
  
}
//http_listener
variable "http_listener_protocol" {
  
}
//request_routing_rule
variable "request_routing_rule_rule_type" {
  
}