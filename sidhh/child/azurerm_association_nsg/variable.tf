variable "asso_nsg" {

  type = map(object({
    nsg_name    = string
    subnet_name = string
    vnet_name   = string
    rg          = string
  }))
}
