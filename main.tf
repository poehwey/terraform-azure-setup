terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "quetstroey-tfstate"
    storage_account_name = "quetstroeytfstate"
    container_name       = "state"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
