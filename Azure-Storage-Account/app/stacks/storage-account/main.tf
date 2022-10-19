// *** Create Resource Group Values ***
module "rg-for-st" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Azure Storage Account ***
module "my-first-storage_account" {
  source                   = "../../modules/storage_account"
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.rg-for-st.name
  location                 = module.rg-for-st.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}