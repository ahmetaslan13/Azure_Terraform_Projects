// *** Azure Kubernetes Service ***
resource "azurerm_kubernetes_cluster" "azure_kubernetes_cluster" {
  name                = var.kubernetes_cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix
  default_node_pool {
    name       = var.default_node_pool_name
    node_count = var.default_node_pool_node_count
    vm_size    = var.default_node_pool_vm_size
  }
  identity {
    type = var.identity_type
  }
}