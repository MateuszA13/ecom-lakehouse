resource "azurerm_resource_group" "this" {
  name     = "ecom-lakehouse-${var.env}"
  location = var.location_1
}


resource "azurerm_storage_account" "this" {
  name                     = "ecomlakehousestorage${var.env}"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = var.env
  }
}

resource "azurerm_key_vault" "this" {
  name                       = "ecom-lakehouse-kv-${var.env}"
  resource_group_name        = azurerm_resource_group.this.name
  location                   = azurerm_resource_group.this.location
  tenant_id                  = var.tenant_id
  sku_name                   = "standard"
  rbac_authorization_enabled = true

  tags = {
    Environment = var.env
  }
}

resource "azurerm_databricks_workspace" "this" {
  name                = "ecom-lakehouse-dbr-${var.env}"
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location_2
  sku                 = "trial"

  tags = {
    Environment = var.env
  }
}