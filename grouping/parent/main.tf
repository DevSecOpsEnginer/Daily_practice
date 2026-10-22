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

module "pub" {
  source     = "../child/public_ip"
  depends_on = [module.azurerm_resource_group]
  pub        = var.pub
}

module "nsg" {
  source     = "../child/azurerm_NSG"
  depends_on = [module.azurerm_resource_group]
  nsg        = var.nsg
}

module "asso_nsg" {
  source     = "../child/azurerm_association_nsg"
  depends_on = [module.azurerm_subnet, module.nsg]
  asso_nsg   = var.asso_nsg
}

module "vm" {
  source     = "../child/vm"
  depends_on = [module.azurerm_subnet, module.pub]
  compute    = var.compute
}
