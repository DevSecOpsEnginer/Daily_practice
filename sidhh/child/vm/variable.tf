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
