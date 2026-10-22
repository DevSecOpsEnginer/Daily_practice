module "azurerm_resource_group" {
  source  = "../child/azurerm_rg"
  rg_test = var.rg_test
}
