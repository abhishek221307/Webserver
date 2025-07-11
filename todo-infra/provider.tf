terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "polarish-tfstate-rg"
    storage_account_name = "polarishsa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "8f765261-0137-4fd7-b8de-53247b5236d0"
}