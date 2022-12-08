// *** Resorce Group Values ***
resource_group_name = "az104-06-rg1"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}


// *** Azure Windows Virtual Machine 01 ***
  vm_name0              = "az104-06-vm0"
  vm_size0                = "Standard_F2"
  admin_username0      = "adminvm0"
  admin_password0      = "Pass@@@word01"
  vm_tags0 = {
    Enviroment = "dev"
  }
// OS Disk
    os_disk_caching0              = "ReadWrite"
    os_disk_storage_account_type0 = "Standard_LRS"
    os_disk_size_gb0         = 127
// Source Image Reference
source_image_reference_publisher0 = "MicrosoftWindowsServer"
source_image_reference_offer0     = "WindowsServer"
source_image_reference_sku0       = "2016-Datacenter"
source_image_reference_version0   = "latest"
// *** Azure Network Interface ***
  nic_name0                          = "nic-vm0"
  enable_accelerated_networking0 = true
    ip_conf_name0                          = "internal"
    subnet_id0                     = <%= output('networking.vnet01_snet01_id') %>
    private_ip_address_allocation0 = "Dynamic"
  nic_tags0 = {
    Enviroment = "dev"
}


// *** Azure Windows Virtual Machine  1 ***
  vm_name1              = "az104-06-vm1"
  vm_size1                = "Standard_F2"
  admin_username1      = "adminvm1"
  admin_password1      = "Pass@@@word01"
  vm_tags1 = {
    Enviroment = "dev"
  }
// OS Disk
    os_disk_caching1              = "ReadWrite"
    os_disk_storage_account_type1 = "Standard_LRS"
    os_disk_size_gb1         = 127
// Source Image Reference
source_image_reference_publisher1 = "MicrosoftWindowsServer"
source_image_reference_offer1     = "WindowsServer"
source_image_reference_sku1       = "2016-Datacenter"
source_image_reference_version1   = "latest"
// *** Azure Network Interface ***
  nic_name1          = "nic-vm1"
  enable_accelerated_networking1 = true
    ip_conf_name1                          = "internal"
    subnet_id1                     = <%= output('networking.vnet01_snet1_id') %>
    private_ip_address_allocation1 = "Dynamic"
  nic_tags1 = {
    Enviroment = "dev"
}

//PIP
  pip_name                = "example-pip"
  allocation_method   = "Dynamic"

  
//azurerm_application_gateway"
  app_gateway_name                = "example-appgateway"
app_gateway_vnet_name  = <%= output('networking.vnet01_name') %>

  //sku 
    sku_name     = "Standard_Small"
    sku_tier     = "Standard"
    sku_capacity = 2
  

  //gateway_ip_configuration 
    gateway_ip_configuration_name      = "my-gateway-ip-configuration"
gateway_ip_configuration_subnet_id = <%= output('networking.appgw_subnet_id') %>
  //backend_http_settings 
    backend_http_settings_cookie_based_affinity = "Disabled"
    backend_http_settings_path                  = "/path1/"
    backend_http_settings_port                  = 80
    backend_http_settings_protocol              = "Http"
    backend_http_settings_request_timeout       = 60
  
  //front
  frontend_port = 80

  //http_listener 
 
    http_listener_protocol                       = "Http"
  

  //request_routing_rule 
    request_routing_rule_rule_type                  = "Basic"

 
