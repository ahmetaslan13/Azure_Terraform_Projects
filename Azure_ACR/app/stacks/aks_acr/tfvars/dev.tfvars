// *** Resorce Group Values ***
resource_group_name = "my-first-resource-group"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Azure Container Registery (ACR) Values ***
  acr_name            = "acrgithubdevcc"
  sku                 = "Premium"
  admin_enabled       = true

// *** Georeplications-1 Values ***
  # georeplications_1_location = "Canada Central"
  # zone_redundancy_1_enabled = false
  # georeplications_1_tags = {}

// *** Georeplications-2 Values ***
  # georeplications_2_location = "North Europe"
  # zone_redundancy_2_enabled = true
  # georeplications_2_tags = {}


// *** Az Kubernetes Service Values ***
kubernetes_cluster_name = "aks-dev"
dns_prefix = "exampleaks1"
default_node_pool_name = "default"
default_node_pool_node_count = "1"
default_node_pool_vm_size = "Standard_D2_v2"
identity_type = "SystemAssigned"