data "azurerm_subnet" "subnet" {
  for_each             = var.asso_nsg
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg
}

data "azurerm_network_security_group" "nsg" {
  for_each            = var.asso_nsg
  name                = each.value.nsg_name
  resource_group_name = each.value.rg
}

