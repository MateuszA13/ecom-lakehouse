module "platform" {
  source    = "../../modules/platform"
  env       = "dev"
  location_1 = "Poland Central"
  location_2 = "North Europe"
  tenant_id = var.tenant_id
}

