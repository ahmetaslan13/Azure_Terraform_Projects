// *** Create Resource Group Values ***
module "my-first-resource-group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Azure Storage Account ***
module "my-first-storage_account" {
  source                   = "../../modules/storage-account"
  name                     = var.storage_account_name
  resource_group_name      = module.my-first-resource-group.name
  location                 = module.my-first-resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}