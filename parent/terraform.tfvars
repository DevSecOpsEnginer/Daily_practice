rg_name = {
  "rg1" = {
    name     = "rg1"
    location = "eastus"
  }
}

strg_acc = {
  "acc1" = {
    name                     = "storageacco9081"
    rg_name                  = "rg1"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "GRS"

    container_name = "tfstate"
    strg_acc_id    = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/rg1/providers/Microsoft.Storage/storageAccounts/storageacco9081"
  }
}

vnet = {
  "vnet1" = {
    vnet_name     = "eastus_vnet"
    location      = "eastus"
    rg            = "rg1"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet = {
  "frontend-sub" = {
    name             = "frontend-subnet"
    rg               = "rg1"
    vnet_name        = "eastus_vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  "backend_sub" = {
    name             = "backend-subnet"
    rg               = "rg1"
    vnet_name        = "eastus_vnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}
