# // *** Create Resource Group Values ***
# module "resource_group" {
#   source              = "../../modules/resource-group"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   tags                = var.tags
# }

# // *** Create Azure Container Registery (ACR) ***
# module "az_container_registry" {
#   source              = "../../modules/acr"
#   acr_name            = var.acr_name
#   resource_group_name = module.rg-acr.name
#   location            = module.rg-acr.location
#   sku                 = var.sku
#   admin_enabled       = var.admin_enabled

#   // *** Georeplications-1 ***
#   # georeplications_1_location = var.georeplications_1_location
#   # zone_redundancy_1_enabled  = var.zone_redundancy_1_enabled
#   # georeplications_1_tags     = var.georeplications_1_tags

#   // *** Georeplications-2 ***
#   # georeplications_2_location = var.georeplications_2_location
#   # zone_redundancy_2_enabled  = var.zone_redundancy_2_enabled
#   # georeplications_2_tags     = var.georeplications_2_tags
# }

# // *** Create Az Kubernetes Service ***
# module "az_kubernetes_service" {
#   source                       = "../../modules/aks"
#   resource_group_name          = module.resource_group.name
#   location                     = module.resource_group.location
#   kubernetes_cluster_name      = var.kubernetes_cluster_name
#   dns_prefix                   = var.dns_prefix
#   default_node_pool_name       = var.default_node_pool_name
#   default_node_pool_node_count = var.default_node_pool_node_count
#   default_node_pool_vm_size    = var.default_node_pool_vm_size
#   identity_type                = var.identity_type
# #   enabled_attach_acr = true
# #   acr_id = module.az_container_registry.id
# }

# resource "azurerm_role_assignment" "aks_to_acr_role" {
#   scope                = module.az_container_registry.acr_name.id
#   role_definition_name = "AcrPull"
#   principal_id         = module.azure_kubernetes_service.kubelet_identity[0].object_id
# }





locals {
  acr_name = "${replace(var.dns_prefix, "-", "")}${replace(var.name, "-", "")}acr"
}
resource "azurerm_container_registry" "default" {
  name                     = "${local.acr_name}"
  resource_group_name      = "${azurerm_resource_group.default.name}"
  location                 = "${azurerm_resource_group.default.location}"
  sku                      = "Standard"
  admin_enabled            = false
}




resource "azurerm_kubernetes_cluster" "default" {
  name                = "${var.name}-aks"
  location            = "${azurerm_resource_group.default.location}"
  resource_group_name = "${azurerm_resource_group.default.name}"
  dns_prefix          = "${var.dns_prefix}-${var.name}-aks-${var.environment}"
  depends_on          = ["azurerm_role_assignment.aks_network", "azurerm_role_assignment.aks_acr"]

  agent_pool_profile {
    name            = "default"
    count           = "${var.node_count}"
    vm_size         = "${var.node_type}"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = "${azuread_application.default.application_id}"
    client_secret = "${azuread_service_principal_password.default.value}"
  }

  role_based_access_control {
    enabled = true
  }
}

resource "azuread_application" "default" {
  name = "${var.name}-${var.environment}"
}

resource "azuread_service_principal" "default" {
  application_id = "${azuread_application.default.application_id}"
}

resource "random_string" "password" {
  length  = 32
  special = true
}

resource "azuread_service_principal_password" "default" {
  service_principal_id = "${azuread_service_principal.default.id}"
  value                = "${random_string.password.result}"
  end_date             = "2099-01-01T01:00:00Z"
}

resource "azurerm_role_assignment" "aks_network" {
  scope                = "${data.azurerm_subscription.current.id}/resourceGroups/${azurerm_resource_group.default.name}"
  role_definition_name = "Network Contributor"
  principal_id         = "${azuread_service_principal.default.id}"
}

resource "azurerm_role_assignment" "aks_acr" {
  scope                = "${data.azurerm_subscription.current.id}/resourceGroups/${azurerm_resource_group.default.name}/providers/Microsoft.ContainerRegistry/registries/${azurerm_container_registry.default.name}"
  role_definition_name = "Reader"
  principal_id         = "${azuread_service_principal.default.id}"
}

# The Azure Active Resource Manager Terraform provider
provider "azurerm" {
  version = "=1.36.0"
}

# The Azure Active Directory Terraform provider
provider "azuread" {
  version = "=0.6.0"
}

# Reference to the current subscription.  Used when creating role assignments
data "azurerm_subscription" "current" {}

# The main resource group for this deployment
resource "azurerm_resource_group" "default" {
  name     = "${var.name}-${var.environment}-rg"
  location = "${var.location}"
}
