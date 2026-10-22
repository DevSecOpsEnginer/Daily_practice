rg_test = {
  "rg1" = {
    name     = "rg3"
    location = "CentralIndia"
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

pub = {
  "pub1" = {
    name     = "public-frontend"
    rg       = "rg3"
    location = "CentralIndia"
  }
}

nsg = {
  "frontend_nsg" = {
    nsg_name = "frontend_nsg"
    location = "CentralIndia"
    rg       = "rg3"
  }
}

asso_nsg = {
  "asso1" = {
    nsg_name    = "frontend_nsg"
    rg          = "rg3"
    subnet_name = "frontend-subnet"
    vnet_name   = "eastusvnet"
  }
}

compute = {
  "comp1" = {
    nic_name     = "nic-vm"
    nic_location = "CentralIndia"
    nic_rg       = "rg3"

    subnet_id            = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/rg3/providers/Microsoft.Network/virtualNetworks/eastusvnet/subnets/frontend-subnet"
    public_ip_address_id = "/subscriptions/9b5c4f38-6534-4978-808d-11b20dd8ad27/resourceGroups/rg3/providers/Microsoft.Network/publicIPAddresses/public-frontend"

    vm_name        = "frontendvm"
    vm_location    = "CentralIndia"
    vm_rg          = "rg3"
    admin_username = "adminuser"
    admin_password = "Devops@123"
  }
}

