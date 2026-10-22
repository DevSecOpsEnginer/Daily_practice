rg_test = {
  "rg1" = {
    rg_name     = "resource_group1"
    rg_location = "east us"
  }
  "rg2" = {
    rg_name = "resource_grp2"

  }
}

vnet = {
  "vnet1" = {
    vnet_name     = "eastusvnet"
    location      = "CentralIndia"
    rg            = "rg3"
    address_space = ["10.0.0.0/16"]
    dns_servers   = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet = {
  "frontend-sub" = {
    name             = "frontend-subnet"
    rg               = "rg3"
    vnet_name        = "eastusvnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  "backend_sub" = {
    name             = "backend-subnet"
    rg               = "rg3"
    vnet_name        = "eastusvnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}


