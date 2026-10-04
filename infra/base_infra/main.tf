resource "azurerm_storage_account" "state_storage" {
  name                     = "storageaccountstate001"
  resource_group_name      = "data-engineering"
  location                 = "Poland Central"
  account_tier             = "Standard"
  account_replication_type = "LRS"  
}

resource "azurerm_storage_container" "state_container" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.state_storage.id
  container_access_type = "private"
}