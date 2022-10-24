// *** Create Resource Group ***
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Linux Virtual Machine ***
module "lx_virtual_machine" {
  source                        = "../../modules/vm_linux"
  vm_name                       = var.vm_name
  resource_group_name           = module.resource_group.name
  location                      = module.resource_group.location
  vm_size                       = var.vm_size
  linux_admin_username          = var.linux_admin_username
  public_key                    = var.public_key
  subnet_id                     = var.subnet_id
  ip_configuration_name         = var.ip_configuration_name
  private_ip_address_allocation = var.private_ip_address_allocation
  //OS Disk
  caching              = var.caching
  storage_account_type = var.storage_account_type
  // Source Image Reference
  publisher                      = var.publisher
  offer                          = var.offer
  sku                            = var.sku
  source_image_reference_version = var.source_image_reference_version
}