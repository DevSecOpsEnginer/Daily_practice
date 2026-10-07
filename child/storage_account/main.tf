resource "azurerm_storage_account" "strg" {
  for_each                 = var.strg_acc
  name                     = each.value.name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

resource "azurerm_storage_container" "container" {
  for_each              = var.strg_acc
  name                  = each.value.container_name
  storage_account_id    = each.value.strg_acc_id
  container_access_type = "private"
}
