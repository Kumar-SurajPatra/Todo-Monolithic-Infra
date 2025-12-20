terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "Backend-RG"
    storage_account_name = "backstgacc"   # Azure Storage Account name
    container_name       = "backend-cont" # Blob container name
    key                  = "back.tfstate" # Blob name for the state fill

    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
  subscription_id = "2b7a34c7-0816-4cb1-89a5-d20a8aadabb5"
}
