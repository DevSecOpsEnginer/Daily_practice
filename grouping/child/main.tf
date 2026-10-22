module "azurerm_resource_group" {
  source  = "../child/azurerm_rg"
  rg_test = var.rg_test
}

module "azurerm_vnet" {
  depends_on = [module.azurerm_resource_group]
  source     = "../child/azurerm_vnet"
  vnet       = var.vnet
}

module "azurerm_subnet" {
  depends_on = [module.azurerm_vnet]
  source     = "../child/azurerm_subnet"
  subnet     = var.subnet
}
