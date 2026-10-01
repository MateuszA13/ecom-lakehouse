provider "azurerm" {
  features {}

  # subscription_id celowo nie jest wpisany – provider bierze go
  # ze zmiennej środowiskowej ARM_SUBSCRIPTION_ID.

  # Operacje na danych w storage (np. kontenery) przez Entra ID zamiast access key.
  #   storage_use_azuread = true
}
