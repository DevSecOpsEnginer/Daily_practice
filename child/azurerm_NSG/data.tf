data "azurerm_subnet" "subnet" {
  name                 = "frontend_subnet"
  virtual_network_name = "eastusvnet"
  resource_group_name  = "rg3"
}

# Fetch existing NSG
data "azurerm_network_security_group" "nsg" {
  name                = "frontend_nsg"
  resource_group_name = "rg3"
}
