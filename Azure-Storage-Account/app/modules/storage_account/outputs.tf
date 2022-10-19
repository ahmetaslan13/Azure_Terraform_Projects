// *** Azure Resource Group Outputs ***
output "storage_account_id" {
  description = ""
  value       = azurerm_storage_account.my-first-storage-account.id
}