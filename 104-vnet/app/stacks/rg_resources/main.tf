// *** Create Resource Group ***

module "vnet01_vm0" {
  source = "../../modules/vm_windows"

  // *** Azure Windows Virtual Machine ***
  vm_name             = var.vm_name0
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size0
  admin_username      = var.admin_username0
  admin_password      = var.admin_password0
  vm_tags             = var.vm_tags0
  // OS Disk
  os_disk_caching              = var.os_disk_caching0
  os_disk_storage_account_type = var.os_disk_storage_account_type0
  os_disk_size_gb              = var.os_disk_size_gb0
  // Source Image Reference
  source_image_reference_publisher = var.source_image_reference_publisher0
  source_image_reference_offer     = var.source_image_reference_offer0
  source_image_reference_sku       = var.source_image_reference_sku0
  source_image_reference_version   = var.source_image_reference_version0
  // *** Azure Network Interface ***
  nic_name                      = var.nic_name0
  enable_accelerated_networking = var.enable_accelerated_networking0
  ip_conf_name                  = var.ip_conf_name0
  subnet_id                     = var.subnet_id0
  private_ip_address_allocation = var.private_ip_address_allocation0
  nic_tags                      = var.nic_tags0
}

module "vnet01_vm1" {
  source = "../../modules/vm_windows"

  // *** Azure Windows Virtual Machine ***
  vm_name             = var.vm_name1
  resource_group_name = var.resource_group_name
  location            = var.location
  vm_size             = var.vm_size1
  admin_username      = var.admin_username1
  admin_password      = var.admin_password1
  vm_tags             = var.vm_tags1
  // OS Disk
  os_disk_caching              = var.os_disk_caching1
  os_disk_storage_account_type = var.os_disk_storage_account_type1
  os_disk_size_gb              = var.os_disk_size_gb1
  // Source Image Reference
  source_image_reference_publisher = var.source_image_reference_publisher1
  source_image_reference_offer     = var.source_image_reference_offer1
  source_image_reference_sku       = var.source_image_reference_sku1
  source_image_reference_version   = var.source_image_reference_version1
  // *** Azure Network Interface ***
  nic_name                      = var.nic_name1
  enable_accelerated_networking = var.enable_accelerated_networking1
  ip_conf_name                  = var.ip_conf_name1
  subnet_id                     = var.subnet_id0
  private_ip_address_allocation = var.private_ip_address_allocation1
  nic_tags                      = var.nic_tags1
}

# module "peering_vnet01_to_vnet2" {
#   peering_name                      = var.peering_name
#   resource_group_name       = var.resource_group_name
#   virtual_network_name      = var.peering_vnet_name
#   remote_virtual_network_id = var.peering_remote_vnet_id
# }

// Application Gateway - Public IP 
module "appgw_pip" {
  source              = "../../modules/pip"
  pip_name            = var.pip_name
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = var.allocation_method
}

// Application Gateway
module "app_gateway" {
  source              = "../../modules/app_gateway"
  app_gateway_name    = var.app_gateway_name
  vnet_name           = var.app_gateway_vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  //Sku
  sku_name     = var.sku_name
  sku_tier     = var.sku_tier
  sku_capacity = var.sku_capacity
  //IP Config
  gateway_ip_configuration_name      = var.gateway_ip_configuration_name
  gateway_ip_configuration_subnet_id = var.gateway_ip_configuration_subnet_id
  // Front Port
  frontend_port = var.frontend_port
  //Front PIP
  frontend_ip_configuration_pip_id = module.appgw_pip.id
  //Backend HTTP Settings
  backend_http_settings_cookie_based_affinity = var.backend_http_settings_cookie_based_affinity
  backend_http_settings_path                  = var.backend_http_settings_path
  backend_http_settings_port                  = var.backend_http_settings_port
  backend_http_settings_protocol              = var.backend_http_settings_protocol
  backend_http_settings_request_timeout       = var.backend_http_settings_request_timeout
  //HTTP Listener
  http_listener_protocol = var.http_listener_protocol
  //Routing
  request_routing_rule_rule_type = var.request_routing_rule_rule_type
}
