provider "azurerm" {
  features {}
}

terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # Backend configuration (Optional: Use remote backend if needed)
}

locals {
  environment = terraform.workspace
}

output "environment" {
  value = local.environment
}
