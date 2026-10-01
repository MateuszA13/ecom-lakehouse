terraform {
  # Moduł deklaruje tylko minimalne wymagania.
  # Konkretną wersję i konfigurację providera ustala root (envs/<env>).
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.0"
    }
  }
}
