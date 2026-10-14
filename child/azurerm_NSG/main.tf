resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsg
  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.rg
}

resource "azurerm_network_security_rule" "ssh" {
  depends_on                  = [azurerm_network_security_group.nsg]
  name                        = "testssh"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "rg3"
  network_security_group_name = "frontend_nsg"
}

resource "azurerm_network_security_rule" "http" {
  depends_on                  = [azurerm_network_security_group.nsg]
  name                        = "testhttp"
  priority                    = 110
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "rg3"
  network_security_group_name = "frontend_nsg"
}

resource "azurerm_subnet_network_security_group_association" "associate" {
  depends_on                = [azurerm_network_security_group.nsg]
  for_each                  = var.nsg
  subnet_id                 = data.azurerm_subnet.subnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.nsg[each.key].id
}
