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
