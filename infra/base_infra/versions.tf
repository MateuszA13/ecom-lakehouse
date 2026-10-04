terraform {
  required_version = "~> 1.11"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.7"
    }
  }

  # Remote state w storage'u z bootstrapu.
  # Wartości <...> uzupełnij po apply w infra/bootstrap (z jego outputów).
  #   backend "azurerm" {
  #     resource_group_name  = "<rg-z-bootstrapu>"
  #     storage_account_name = "<storage-z-bootstrapu>"
  #     container_name       = "tfstate"
  #     key                  = "dev/platform.tfstate"
  #     use_azuread_auth     = true
  #   }
}
