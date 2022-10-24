// *** Azure Network Interface ***
resource "azurerm_network_interface" "network_interface" {
  name                = "lx-${var.vm_name}-nic"
  resource_group_name = var.resource_group_name
  location            = var.location
  ip_configuration {
    name = var.ip_configuration_name
    //Set subnet id to VM 
    subnet_id                     = var.subnet_id[1]
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

// *** Azure Virtual Machine Linux ***
resource "azurerm_linux_virtual_machine" "vm_linux" {
  name                  = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.vm_size
  admin_username        = var.linux_admin_username
  network_interface_ids = [azurerm_network_interface.network_interface.id, ]
  admin_ssh_key {
    username   = var.linux_admin_username
    public_key = file(var.public_key)
  }
  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.source_image_reference_version
  }
}