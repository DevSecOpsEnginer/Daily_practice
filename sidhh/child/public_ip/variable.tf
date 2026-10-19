variable "pub" {
  type = map(object({
    name = string
    rg = string
    location = string
  }))
}