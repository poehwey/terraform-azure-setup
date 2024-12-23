terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = "= 4.7.0"
  backend "azurerm" {} # Optional: Use remote state storage
}

provider "azurerm" {
  features {}
}

locals {
  location = "West Europe"
}
