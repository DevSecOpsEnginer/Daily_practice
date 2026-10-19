resource "azurerm_public_ip" "pub" {
  for_each            = var.pub
  name                = each.value.name
  resource_group_name = each.value.rg
  location            = each.value.location
  allocation_method   = "Static"

}
