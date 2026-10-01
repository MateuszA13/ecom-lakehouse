variable "env" {
  type        = string
  description = "Name of the environment"
}

variable "location_1" {
  type        = string
  description = "Azure region for the resources"
  default     = "Poland Central"
}

variable "location_2" {
  type        = string
  description = "Azure region for the resources"
  default     = "North Europe"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}