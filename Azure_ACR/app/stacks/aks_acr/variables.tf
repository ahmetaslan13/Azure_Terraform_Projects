# // *** Azure Resource Group Variables ***
# variable "resource_group_name" {
#   description = ""
#   type        = string
# }
# variable "location" {
#   description = ""
#   type        = string
# }
# variable "tags" {
#   description = ""
#   type        = map(any)
# }

# // *** Azure Container Registery (ACR) Variables ***
# variable "acr_name" {
#   description = ""
#   type        = string
# }
# variable "resource_group_name" {
#   description = ""
#   type        = string
# }
# variable "location" {
#   description = ""
#   type        = string
# }
# variable "sku" {
#   description = ""
#   type        = string
# }
# variable "admin_enabled" {
#   description = ""
#   type        = bool
# }

# // *** Georeplications-1 Variables ***
# # variable "georeplications_1_location" {
# #   description = ""
# #   type        = string
# # }
# # variable "zone_redundancy_1_enabled" {
# #   description = ""
# #   type        = string
# # }
# # variable "georeplications_1_tags" {
# #   description = ""
# #   type        = map(any)
# # }

# // *** Georeplications-2 Variables ***
# # variable "georeplications_2_location" {
# #   description = ""
# #   type        = string
# # }
# # variable "zone_redundancy_2_enabled" {
# #   description = ""
# #   type        = string
# # }
# # variable "georeplications_2_tags" {
# #   description = ""
# #   type        = map(any)
# # }

# // *** Azure Kubernetes Service Variables ***
# variable "kubernetes_cluster_name" {
#   description = ""
#   type        = string
# }
# variable "resource_group_name" {
#   description = ""
#   type        = string
# }
# variable "location" {
#   description = ""
#   type        = string
# }
# variable "dns_prefix" {
#   description = ""
#   type        = string
# }

# // *** Default Node Pool Variables ***
# variable "default_node_pool_name" {
#   description = ""
#   type        = any
# }
# variable "default_node_pool_node_count" {
#   description = ""
#   type        = string
# }
# variable "default_node_pool_vm_size" {
#   description = ""
#   type        = string
# }

# // *** Identity Variables
# variable "identity_type" {
#   description = ""
#   type        = string
# }





// Naming
variable "name" {
  type        = "string"
  description = "Location of the azure resource group."
  default     = "demo-tfquickstart"
}

variable "environment" {
  type        = "string"
  description = "Name of the deployment environment"
  default     = "dev"
}

// Resource information

variable "location" {
  type        = "string"
  description = "Location of the azure resource group."
  default     = "WestUS2"
}

// Node type information

variable "node_count" {
  type        = "string"
  description = "The number of K8S nodes to provision."
  default     = 3
}

variable "node_type" {
  type        = "string"
  description = "The size of each node."
  default     = "Standard_D1_v2"
}

variable "dns_prefix" {
  type        = "string"
  description = "DNS Prefix"
  default     = "tfq"
}