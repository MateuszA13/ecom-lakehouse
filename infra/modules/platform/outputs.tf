output "rg_name" {
  value       = azurerm_resource_group.this.name
  description = "The name of the resource group"

}

output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "The name of the storage account"
}

output "key_vault_name" {
  value       = azurerm_key_vault.this.name
  description = "The name of the key vault"
}