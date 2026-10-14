module "azurerm_resource_group" {
  source  = "../child/rg"
  rg_name = var.rg_name
}

# module "azurerm_storage_account" {
#   source     = "../child/storage_account"
#   depends_on = [module.azurerm_resource_group]
#   strg_acc   = var.strg_acc
# }

module "azurerm_virtual_network" {
  source     = "../child/vnet"
  depends_on = [module.azurerm_resource_group]
  vnet       = var.vnet
}

module "azurerm_subnet" {
  source     = "../child/subnet"
  depends_on = [module.azurerm_virtual_network]
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

module "vm" {
  source     = "../child/vm"
  depends_on = [module.azurerm_subnet, module.pub]
  compute    = var.compute
}
