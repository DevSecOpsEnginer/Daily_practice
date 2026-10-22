variable "subnet" {
  type = map(object({
    name             = string
    rg               = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
