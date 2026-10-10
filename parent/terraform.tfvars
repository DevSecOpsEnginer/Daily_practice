rg_name = {
  "rg1" = {
    name     = "rgs"
    location = "central india"
  }
}

strg_acc = {
  "acc1" = {
    name                     = "storageacco9081"
    rg_name                  = "rgs"
    location                 = "central india"
    account_tier             = "Standard"
    account_replication_type = "GRS"

    container_name = "tfstate"
    strg_acc_id    = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageacco9081"
  }
}

vnet = {
  "vnet1" = {
    vnet_name     = "central india_vnet"
    location      = "central india"
    rg            = "rgs"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet = {
  "frontend-sub" = {
    name             = "frontend-subnet"
    rg               = "rgs"
    vnet_name        = "central india_vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  "backend_sub" = {
    name             = "backend-subnet"
    rg               = "rgs"
    vnet_name        = "central india_vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}
