module "azurerm_resource_group" {
  source  = "../child/rg"
  rg_name = var.rg_name
}

module "azurerm_storage_account" {
  source     = "../child/storage_account"
  depends_on = [module.azurerm_resource_group]
  strg_acc   = var.strg_acc
}
