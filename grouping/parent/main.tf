module "azurerm_resource_group" {
  source  = "../child/azurerm_rg"
  rg_test = var.rg_test
}

module "azurerm_vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../child/azurerm_vnet"
  vnet       = var.vnet
}
