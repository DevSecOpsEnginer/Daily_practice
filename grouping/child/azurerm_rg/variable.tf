variable "rg_test" {
  type = map(object({
    rg_name     = string
    rg_location = string
  }))
}
