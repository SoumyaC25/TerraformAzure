terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.8.0"
    }
  }
  required_version = ">=1.9.0"
}

provider "azurerm" {
    features {
      
    }
  
}

resource "azurerm_resource_group" "rsg" {
  name     = "zwe-terra-rsg-01"
  location = "West Europe"
}

resource "azurerm_storage_account" "stgacc" {
 
  name                     = "zweterrastgacc"
  resource_group_name      = azurerm_resource_group.rsg.name
  location                 = azurerm_resource_group.rsg.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
