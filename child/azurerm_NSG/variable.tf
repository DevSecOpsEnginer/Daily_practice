variable "nsg" {
  type = map(object({
    nsg_name = string
    location = string
    rg       = string

    subnet_name = string
    vnet_name   = string
  }))
}
