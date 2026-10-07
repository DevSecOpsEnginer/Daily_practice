variable "rg_name" { //declare
  type = map(object({
    name     = string
    location = string
  })) //type of variable
}
