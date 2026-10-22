variable "vnet" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg            = string
    address_space = list(string)
    dns_servers   = list(string)
  }))
}
