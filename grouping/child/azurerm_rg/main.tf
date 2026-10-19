
resource "azurerm_resource_group" "rg" {
  for_each = var.rg_test
  name     = each.value.rg_name
  location = each.value.rg_location
}


