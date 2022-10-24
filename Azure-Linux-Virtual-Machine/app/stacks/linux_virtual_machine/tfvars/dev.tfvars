// *** Resorce Group Values ***
resource_group_name = "rg-lx-vm"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Linux Virtual Machine Values ***
vm_name = "lx-vm-dev"
vm_size  = "standard_D2_v3"
linux_admin_username = "adminuser"
public_key = "files/id_rsa.pub"
subnet_id = <%= output('networking.subnet_ids') %>
ip_configuration_name = "internal"
private_ip_address_allocation = "Dynamic"
// OS Disk
caching = "ReadWrite"
storage_account_type = "Standard_LRS"
//Soruce Image Reference
publisher = "Canonical"
offer = "UbuntuServer"
sku = "16.04-LTS"
source_image_reference_version = "latest"