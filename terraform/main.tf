terraform {
  backend "azurerm" {
    subscription_id      = "ecc74148-1a84-4ec7-99bb-d26aba7f9c0d"
    resource_group_name  = "rg-tf-vnet-function-app-state"
    storage_account_name = "satfvnetfastate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.35.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {
}
