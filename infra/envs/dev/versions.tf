terraform {
  required_version = "~> 1.11"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.7"
    }
  }

  backend "azurerm" {
      resource_group_name  = "data-engineering"
      storage_account_name = "storageaccountstate001"
      container_name       = "tfstate"
      key                  = "terraform-dev.tfstate"
  }
}
