// *** Create Resource Group Values ***
module "rg-acr" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Azure Container Registery (ACR) ***
module "az_container_registry" {
  source              = "../../modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.rg-acr.name
  location            = module.rg-acr.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

  // *** Georeplications-1 ***
  # georeplications_1_location = var.georeplications_1_location
  # zone_redundancy_1_enabled  = var.zone_redundancy_1_enabled
  # georeplications_1_tags     = var.georeplications_1_tags

  // *** Georeplications-2 ***
  # georeplications_2_location = var.georeplications_2_location
  # zone_redundancy_2_enabled  = var.zone_redundancy_2_enabled
  # georeplications_2_tags     = var.georeplications_2_tags
}

// *** Create Az Kubernetes Service ***
module "az_kubernetes_service" {
  source                       = "../../modules/aks"
  resource_group_name          = module.rg-acr.name
  location                     = module.rg-acr.location
  kubernetes_cluster_name      = var.kubernetes_cluster_name
  dns_prefix                   = var.dns_prefix
  default_node_pool_name       = var.default_node_pool_name
  default_node_pool_node_count = var.default_node_pool_node_count
  default_node_pool_vm_size    = var.default_node_pool_vm_size
  identity_type                = var.identity_type

}

    # resource "azurerm_role_assignment" "aks_to_acr_role" {
    #   scope                = data.azurerm_container_registry.acr_name.id
    #   role_definition_name = "AcrPull"
    #   principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
    #   skip_service_principal_aad_check = true
    # }

#     resource "azurerm_user_assigned_identity" "example" {
#   location            = azurerm_resource_group.example.location
#   name                = "example"
#   resource_group_name = azurerm_resource_group.example.name
# }