// *** Azure Resource Group Outputs ***
output "storage_account_id" {
  description = ""
  value       = azerm_storage_account.storage_account.id
}