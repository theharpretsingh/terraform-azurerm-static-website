variable "rg-name" {
  type    = string
  default = "myrg1"
}

variable "rg-location" {
  type    = string
  default = "eastus"
}

variable "sa-name" {
  type    = string
  default = "ethanssa"
}

variable "replication-type" {
  type    = string
  default = "LRS"
}

variable "account-tier" {
  type    = string
  default = "Standard"
}

variable "access-tier" {
  type    = string
  default = "Hot"
}