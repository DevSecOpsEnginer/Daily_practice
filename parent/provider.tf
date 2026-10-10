terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.8.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg1"
    storage_account_name = "storageacco9081"
    container_name       = "tfstate"
    key                  = "terraform.tfstate1"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


