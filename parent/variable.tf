variable "rg_name" { //declare
  type = map(object({
    name     = string
    location = string
  })) //type of variable
}

variable "strg_acc" {
  type = map(object({
    name                     = string
    rg_name                  = string
    location                 = string
    account_tier             = string
    account_replication_type = string

    container_name = string
    strg_acc_id    = string
  }))
}

variable "vnet" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg            = string
    address_space = list(string)
    dns_servers   = list(string)
  }))
}

variable "subnet" {
  type = map(object({
    name             = string
    rg               = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}

variable "pub" {
  type = map(object({
    name     = string
    rg       = string
    location = string
  }))
}

variable "compute" {
  type = map(object({
    nic_name     = string
    nic_location = string
    nic_rg       = string

    subnet_id            = string
    public_ip_address_id = string

    vm_name        = string
    vm_location    = string
    vm_rg          = string
    admin_username = string
    admin_password = string

  }))
}

variable "nsg" {
  type = map(object({
    nsg_name = string
    location = string
    rg       = string

    subnet_name = string
    vnet_name   = string
  }))
}
