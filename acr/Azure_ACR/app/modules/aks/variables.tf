// *** Azure Kubernetes Service Variables ***
variable "kubernetes_cluster_name" {
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
variable "dns_prefix" {
  description = ""
  type        = string
}

// *** Default Node Pool Variables ***
variable "default_node_pool_name" {
  description = ""
  type        = any
}
variable "default_node_pool_node_count" {
  description = ""
  type        = string
}
variable "default_node_pool_vm_size" {
  description = ""
  type        = string
}

// *** Identity Variables
variable "identity_type" {
  description = ""
  type        = string
}